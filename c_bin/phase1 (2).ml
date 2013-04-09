open Ll
open Lllib
open Ctxt
let sprintf = Printf.sprintf

(* We generate code as a stream of elements, now augmented to include
 * global string constants that should be lifted to the top level. *)
type elt = 
  | L of lbl                (* Block labels *)
  | I of insn               (* LL IR instruction *)
  | T of terminator         (* Block terminators *)
  | G of operand * string   (* String constant -> global *)

(* During generation, we typically emit code so that it is in reverse
 * order when the stream is viewed as a list.  That is, instructions
 * closer to the head of the list are to be executed later in the
 * program.  That is because cons is more efficient then append.
 * 
 * To help make code generation easier, we define snoc (reverse cons)
 * and reverse append, which let us write code sequences in their
 * natural order. *)
type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x


(**************************)
(* LL IR helper functions *)
(**************************)

(* "Lift" Ocaml constants to LL IR constant operands of the right type. *)
let i1_op_of_bool b   = (I1, Const (if b then 1l else 0l))
let i32_op_of_int i   = (I32, Const (Int32.of_int i))
let i32_op_of_int32 i = (I32, Const i)

(* Compute a gep path to index into an Oat array represented as
 *   {i32, [ 0 x u] }*
 *)
let gep_array_index (i:operand) = [
  i32_op_of_int 0;   (* dereference the pointer *)
  i32_op_of_int 1;   (* focus on the array component of the struct *)
  i;                 (* index into the array *)
]


(* Compute a gep path to the length field of an Oat array. *)
let gep_array_len = [
  i32_op_of_int 0;  (* dereference the pointer *)
  i32_op_of_int 0;  (* focus on the length component of the struct *)
]

(* Functions to generate global identifiers. Legal oat identifiers
   can't begin with '_', so we can be sure these won't collide with 
   user-defined global identifiers *)
let mk_meth_name cid id = sprintf "_%s_%s" cid id
let mk_ctor_name cid = sprintf "_%s_ctor" cid
let mk_vtbl_name cid = sprintf "_%s_vtable" cid
let mk_type_name str = sprintf "_%s_ty" str

(* Create a local operand that can always be used as the 'this' pointer.
   Invariant: The first argument of every method and constructor is this
   operand, and ctxt.this is always set when compiling a method or ctor. *)
let this_op : ctxt -> operand =
  let this_id = mk_uid "_this" in
  fun (c:ctxt) -> 
    let this = lookup_this c in
    (Ptr (Namedt this), Id this_id)


let field_offset = 1            (* struct elements before first field *)
let method_offset = 1           (* struct elements before first method *)

(* Get the static size of an oat object *)

let sizeof (c:ctxt) (cid:string) : int =
  let fields = (lookup_csig c cid).fields in
  4 * (field_offset + List.length fields)



(* Insert a cast to the specified type, if necessary. This is most 
   useful for wrapping the returned operand, stream pair from many
   of the cmp_* functions *)
let cast_op (op, stream) ty : operand * stream =
  let (oty, _) = op in
  if ty = oty
  then (op, stream)
  else let cast_id, cast_op = gen_local_op ty "cast_op" in
       (cast_op, stream >:: I (Bitcast (cast_id, op, ty)))

(* Cast a list of operands. *)
let cast_ops ops tys : operand list * stream =
  List.fold_right2 (fun op ty (ops, stream) ->
    let (op, cast) = cast_op (op, []) ty in
    (op::ops, cast@stream)
  ) ops tys ([],[])


(* Replace or cons onto assoc list. Used for building vtables. *)
let rec replace_or_assoc a (k, v) =
  match a with
    | [] -> [(k,v)]
    | (k', _)::a' when k = k' -> (k, v)::a'
    | h::a' -> h::(replace_or_assoc a' (k, v))

(*******************)
(* Compiling Types *)
(*******************)

(* Compile Oat types to LLVM types.  Arrays are represented as a
 * pointer to a structure of the form {i32, [0 x t]}.  The first i32
 * stores the size of the array.  A C-style string is stored as a
 * pointer to an array of chars, with no length information, since
 * Oat strings are immutable.
 * 
 * Note cmp_ty the translation of the *expression* types of the
 * language.  Left-hand-sides (of assignments ) are pointers to their
 * contained types.
 * 
 * Thus, a source variable of type t will have LL type: Ptr(cmp_ty t)
 * when used on the left-hand side of an assignment.
 * 
 * INVARIANT: The translation context maps source variables to their
 * LHS types.  *)
let rec cmp_ty (t:Ast.typ) =
  match t with
    | Ast.TBot -> Ptr I8
    | Ast.TInt  -> I32
    | Ast.TBool -> I1
    | Ast.TRef r -> cmp_ref r
    | Ast.TNullable r -> cmp_ref r

and cmp_ref (r:Ast.ref) =
  match r with
    | Ast.RString -> Ptr I8
    | Ast.RClass cid -> Ptr (Namedt cid)
    | Ast.RArray u -> Ptr (Struct [I32; Array(0l, cmp_ty u)])

let cmp_ty_option topt =
  match topt with
    | None -> None
    | Some t -> Some (cmp_ty t)

let cmp_ftyp (name:string) ((args,rto):Ast.ftyp) : fn = {
  name = mk_gid_unsafe name;
  rty = cmp_ty_option rto;
  ty_args = List.map (fun t -> cmp_ty t) args;
}

let op_of_fn {name; ty_args; rty} : operand =
  (Fptr (ty_args, rty), Gid name)


(************)
(* Builtins *)
(************)

(* Tc.ml defines a collection of 'builtin' functions that are
 * implicitly available for Oat programmers to use.  Here we define
 * their type translation.  *)

(* These functions are implemented in runtime.c but available to the programmer. *)
let builtin_fns = List.map (fun (n, ft) -> (n, cmp_ftyp n ft)) Tc.builtin_functions

(*****************)
(* Oat Internals *)
(*****************)
(* Oat runtime internal functions. These should not be exposed to the
   programmer. *)

(* They are not stored in the context, so they won't be found unless
   the user redefines them.  The compiler generates references to them
   directly. *)
let oat_malloc_fn : fn = 
  {name = mk_gid_unsafe "oat_malloc"; rty = Some (Ptr I32); ty_args = [I32]; }

let oat_alloc_array_fn : fn = 
  {name = mk_gid_unsafe "oat_alloc_array"; rty = Some (cmp_ty (Ast.TRef (Ast.RArray Ast.TInt))); ty_args = [cmp_ty Ast.TInt];}

let oat_array_bounds_check_fn : fn = 
  {name = mk_gid_unsafe "oat_array_bounds_check"; rty = None; ty_args = [I32; I32]; }

let oat_abort_fn : fn =
  {name = mk_gid_unsafe "oat_abort"; rty = None; ty_args = [I32]; }

let internal_fns = [
  oat_malloc_fn;
  oat_alloc_array_fn;
  oat_array_bounds_check_fn;
  oat_abort_fn;
]


(* 
 * Generate a call to the runtime.c function oat_alloc_array.
 *   t is the src type
 *   size is an I32 operand, the number of elements in the array
 * returns: an operand of type (cmp_ty (Ast.TArray t)) and the
 * code for allocating the array.  Note that because oat_all-c_array_fn
 * polymorphic (its proper return type is generic in the element type), 
 * we have to use the Bitcast operation to let LL IR know what type 
 * the array should have. 
 *)
let oat_alloc_array_dynamic (t:ty) (size:operand) : operand * stream =
  let ans_ty = Ptr (Struct [I32; Array(0l, t)]) in
  let (ptr_id, ptr_op) = gen_local_op (cmp_ty (Ast.TRef (Ast.RArray Ast.TInt))) "array_ptr" in
  let (ans_id, ans_op) = gen_local_op ans_ty "array" in 
    (ans_op, [] >::
      I (Call (Some ptr_id, op_of_fn oat_alloc_array_fn, [size])) >::
      I (Bitcast(ans_id, ptr_op, ans_ty))) 

let oat_alloc_array_static (t:ty) (n:int) : operand * stream =
  let static_size = i32_op_of_int n in
    oat_alloc_array_dynamic t static_size

let oat_alloc_object (c:ctxt) (cid:string) : operand * stream =
  let ans_ty = Ptr (Namedt cid) in
  let size = i32_op_of_int (sizeof c cid) in
  let (ptr_id, ptr_op) = gen_local_op (Ptr I32) "mem_ptr" in
  let (ans_id, ans_op) = gen_local_op ans_ty "obj" in 
  (ans_op, [] >::
    I (Call(Some ptr_id, op_of_fn oat_malloc_fn, [size])) >::
    I (Bitcast(ans_id, ptr_op, ans_ty))) 


(*
 * Generate code to write eop to the array index i of array array_op.
 * Note that array_op has LL type cmp_ty (TArray t) 
 *    =   Ptr ((Struct [I32; Array(0l, cmp_ty u)])
 * So generate a getelementptr instruction to index into the array.
 *)
let cmp_array_update_static (t:ty) (i:int) (array_op:operand) (eop:operand) : stream =
  let elt_ty = t in
  let (index_id, index_op) = gen_local_op (Ptr elt_ty) "index_ptr" in
    [ I (Gep(index_id, array_op, gep_array_index (i32_op_of_int i))) ] >::
      I (Store(eop, index_op))

(*
 * Because LL IR is typed, we need some type information about the operations
 * to generate LL operands of the appropriate types.
 *)

(* Find the (source) result type of a binary operation. *)
let ty_of_bop (bop:Range.t Ast.binop) : ty =
  let open Ast in
  match bop with
    | Plus _ | Times _ | Minus _ | Shl _ | Shr _ | Sar _  | IAnd _ | IOr _ -> 
      cmp_ty TInt
    | Eq _ | Neq _ | Lt _ | Lte _ | Gt _ | Gte _ | And _ | Or _ -> 
      cmp_ty TBool

(* Find the (source) result type of a unary operation. *)
let ty_of_unop (unop:Range.t Ast.unop) : ty =
  let open Ast in
  match unop with
    | Neg _ | Not _ -> cmp_ty TInt
    | Lognot _ -> cmp_ty TBool


(* 
 * Compile a source binop to an LL instruction.
 *)
let cmp_binop (b : Range.t Ast.binop) : uid -> operand -> operand -> insn =
  let ib b id op1 op2 = (Ll.Binop (id, b, op1, op2)) in
  let ic c id op1 op2 = (Ll.Icmp (id, c, op1, op2)) in
  match b with
  | Ast.Plus _  -> ib Ll.Add
  | Ast.Times _ -> ib Ll.Mul
  | Ast.Minus _ -> ib Ll.Sub
  | Ast.And _   -> ib Ll.And
  | Ast.IAnd _  -> ib Ll.And 
  | Ast.IOr _   -> ib Ll.Or
  | Ast.Or _    -> ib Ll.Or
  | Ast.Shl _   -> ib Ll.Shl
  | Ast.Shr _   -> ib Ll.Lshr
  | Ast.Sar _   -> ib Ll.Ashr

  | Ast.Eq  _  -> ic Ll.Eq
  | Ast.Neq _  -> ic Ll.Ne
  | Ast.Lt  _  -> ic Ll.Slt
  | Ast.Lte _  -> ic Ll.Sle
  | Ast.Gt  _  -> ic Ll.Sgt
  | Ast.Gte _  -> ic Ll.Sge


(* Compile a constant expression.  Booleans and integers 
 * are just straightforward operands.
 * Strings generate a global string identifier and 
 * create a pointer operand. *)
let cmp_const  (cn:Range.t Ast.const) : operand * stream =
  match cn with
    | Ast.Cnull _      -> ((Ptr I8, Null), [])
    | Ast.Cbool(_,b)   -> (i1_op_of_bool b, [])
    | Ast.Cint(_,i)    -> print_endline("FOUND A CONST OF VAL "^(Int32.to_string i)); (i32_op_of_int32 i, [])
    | Ast.Cstring(_,s) -> 
      let (gid, gop) = gen_global_op (cmp_ty Ast.(TRef RString)) "_const_str" in
	  (gop, [G (gop, s)])

        
(* Compile an expression, yielding a value computed by the stream and
 * stored in the resulting (usually fresh) operand. *)
let rec cmp_exp (c:ctxt) (exp:Range.t Ast.exp) : (operand * stream) =
  	print_endline("\n The exp in CMP_EXP is "^(Astlib.string_of_exp exp));
  match exp with
    | Ast.Const cn -> cmp_const cn

    | Ast.This info -> (this_op c, [])

    | Ast.LhsOrCall lhsc ->
      cmp_lhs_or_call c lhsc 

    | Ast.Binop (bop, e1, e2) -> 
	  let (op1, code1) = try cmp_exp c e1 with Not_found -> failwith "problem in line 311" in
	  let (op2, code2) = try cmp_exp c e2 with Not_found -> failwith "problem in line 312" in
	  let (ans_id, ans_op) = gen_local_op (ty_of_bop bop) "bop" in 
	  ((ans_op , code1 >@ code2 >:: I (cmp_binop bop ans_id op1 op2)))

    | Ast.Unop (uop, e) -> 
	  let (op, code) = cmp_exp c e in
	  let (ans_id, ans_op) = gen_local_op (ty_of_unop uop) "unop" in
	  ((ans_op, code >::
        I (match uop with
		  | Ast.Neg _    -> Binop (ans_id, Sub, i32_op_of_int 0, op)
		  | Ast.Lognot _ -> Icmp  (ans_id, Eq, op, i1_op_of_bool false)
		  | Ast.Not  _   -> Binop (ans_id, Xor, op, i32_op_of_int (-1)))))

    | Ast.Ctor ((info,cid), es) -> print_endline("THE CLASS IS "^cid);
      let ctor = (lookup_csig c cid).ctor in
      let args, arg_code = try cmp_exps c es with Not_found -> failwith "problem in line 327" in
      let this, mem_code = oat_alloc_object c cid in
      let res_id, res_op = gen_local_op (Ptr (Namedt cid)) "new_obj" in

      (res_op, arg_code >@ mem_code >::
        I (Call (Some res_id, op_of_fn ctor, this::args)))

    | Ast.New(elem_ty,e1,id,e2) -> 
      let (size, code_e1) = try cmp_exp c e1 with Not_found -> failwith "problem in line 335" in
      let t = cmp_ty elem_ty in
      let (array_op, alloc_code) = oat_alloc_array_dynamic t size in

      (* Set up the context to add the fresh loop variables *)
      let bound = mk_tmp () in
      let bound_ty = I32 in
      let (bound_id, bound_op) = gen_local_op (Ptr bound_ty) bound in
      let c = add_local c bound bound_op in

      let ptr = mk_tmp () in
      let ptr_ty = cmp_ty (Ast.TRef (Ast.RArray elem_ty)) in
      let (ptr_id, ptr_op) = gen_local_op (Ptr ptr_ty) ptr in
      let c = add_local c ptr ptr_op in

      let loop_code = cmp_stmt c
        Ast.(For([{v_ty=TInt; v_id=id; v_init=Iexp (Astlib.ast_of_int 0)}],
                 Some (Binop (Lt Range.norange,
                              LhsOrCall (Lhs (Var id)),
                              LhsOrCall (Lhs (Var (Range.norange, bound))))),
                 Some (Assign (Var id,
                               (Binop (Plus Range.norange,
                                       LhsOrCall (Lhs (Var id)),
                                       Astlib.ast_of_int 1)))),
                 Assign (Index (Lhs (Var (Range.norange, ptr)), 
                                LhsOrCall (Lhs (Var id))), e2))) in
      (array_op, code_e1 >@ alloc_code >::
        I (Alloca(bound_id, bound_ty)) >::
        I (Store (size, bound_op)) >::
        I (Alloca(ptr_id, ptr_ty)) >::
        I (Store (array_op, ptr_op)) >@
        loop_code)

and cmp_exps (c:ctxt) (es:'a Ast.exp list) : (operand list * stream) =
  let x = try List.fold_right (fun e (ops, code) ->
      let op, s = try cmp_exp c e with Not_found -> failwith "problem in line 370" in
      (op::ops, s @ code)
  ) es ([],[]) with Not_found -> failwith"problem in line 372" in x 

(* Because length_of_array is polymorphic, we'd have to use bitcast to
 * call it However, its implementation is just a simple lookup of the
 * length data at the pointer representing the array, so we just inline
 * the instructions to do access the length field here. *)
and cmp_length_of_array (c:ctxt) (es:Range.t Ast.exp list) : operand option * stream =
  begin match es with
    | [e] ->
	let (array_op, array_code) = try cmp_exp c e with Not_found -> failwith "problem in line 381" in
	let (len_id, len_op) = gen_local_op (Ptr I32) "len_ptr" in 
	let (ans_id, ans_op) = gen_local_op I32 "len" in 
	  (Some ans_op,
           array_code >:: 
	     I (Gep(len_id, array_op, gep_array_len)) >:: 
	     I (Load(ans_id, len_op)))

    | _ -> failwith "Compiler error: length_of_array called on wrong number of arguments"
  end


(* In contrast to an expression, which yields a value, a
 * left-hand-side computes an address in memory to which a value can be
 * stored.  We therefore do not dereference the pointer here.  *)
and cmp_lhs (c:ctxt) (l:Range.t Ast.lhs) : operand * stream =
print_string("\nHere, and now the exp we're processing is is "^(Astlib.ml_string_of_exp (Ast.LhsOrCall(Ast.Lhs l))));
  match l with
    | Ast.Var(_, id) -> print_endline("matched lhs to a VAR");
      begin match lookup_local id c, lookup_global_val id c with
        | None, None -> failwith ("cmp_lhs: variable not in the context: " ^ id)
        | None, Some op ->print_string("\nWe've matched to this var 404"); (op, [])
	| Some op, _ ->print_endline("\nWe've matched to this var 405" ^ (string_of_operand op)); (op, [])
	  end
    | Ast.Path p ->print_endline("matched lhs to a PATH");
      let (_, op, code) = cmp_path c p in (op, code)
    | Ast.Index (lhsc, exp) ->
	  let (array_ptr, array_code) = try cmp_lhs_or_call c lhsc with Not_found -> failwith"problem in line 405" in
	  let (index, index_code) = try cmp_exp c exp with Not_found -> failwith "problem in line 406" in   
	  begin match array_ptr with
	    | (Ptr (Struct [I32; Array(0l, u)]), id) ->
		  (* Translation invariant: arrays as lhs translate as above
		   * we need to extract the element type u*)
	      let (id, op) = gen_local_op (Ptr u) "elt" in
	      let (bound_ptr, bound_ptr_op) = gen_local_op (Ptr I32) "bound_ptr" in
	      let (bound, bound_op) = gen_local_op I32 "bound" in
		  (op, array_code >@ index_code >::
		    I (Gep (bound_ptr, array_ptr, gep_array_len)) >::
		    I (Load (bound, bound_ptr_op)) >::
		    I (Call (None, op_of_fn oat_array_bounds_check_fn, [bound_op; index])) >::
		    I (Gep (id, array_ptr, gep_array_index index)))
	    | (t, _) -> failwith ("cmp_lhs: index base had type: " ^ (string_of_ty t))
      end

(* When we treat a left-hand-side as an expression yielding a value,
   we dereference the resulting pointer. *)
and cmp_lhs_or_call (c:ctxt) (lc:Range.t Ast.lhs_or_call) : operand * stream =
      print_string("\n\n\nThe exp is: "^(Astlib.string_of_exp(Ast.LhsOrCall lc)));

  match lc with
    | Ast.Lhs l -> 
      print_endline ("The exp in cmp_lhs_or_call is an LHS");
      let (t,_) as lhs_op, lhs_code = cmp_lhs c l in
      begin match t with
        | Ptr t' ->
          let ans_id, ans_op = gen_local_op t' "lhs_or_call" in
          (ans_op, lhs_code >:: I (Load (ans_id, lhs_op)))
        | _ -> print_endline("The failing exp is" ^Astlib.(string_of_exp(Ast.LhsOrCall lc)));failwith "cmp_lhs_or_call: cmp_lhs did not return ptr type" 
      end
    | Ast.Call ca ->print_string("\nCompiling a call"); match cmp_call c ca with
        | (None, _) -> failwith "cmp_lhs_or_call: call did not return operand"
        | (Some op, stream) -> (op, stream)

(* Compile a call.
 * The returned operand is None if the function of type unit. *)
and cmp_call (c:ctxt) (ca:Range.t Ast.call) : operand option * stream =
  (* Provide common interface for direct/indirect calls *)
  let pack fn = (fn.ty_args, fn.rty, Gid fn.name) in
   
  let call_of (argtys, rty, opn) args = 
   print_endline ("Length of args: "^(string_of_int (List.length args))^"length of argtys:"^(string_of_int (List.length argtys))^"\n");
    let args', code = cast_ops args argtys in
   
    let fop = (Fptr (argtys, rty), opn) in
    match rty with
      | None -> (None, code >:: I (Call (None, fop, args')))
      | Some rt -> let id, op = gen_local_op rt "ret" in
        (Some op, code >:: I (Call (Some id, fop, args')))
  in

  match ca with
    | Ast.Func ((_,"length_of_array"), es) -> cmp_length_of_array c es
    | Ast.Func ((_,id), es) ->
      let (args, arg_code) = try cmp_exps c es with Not_found -> failwith "problem in line 456" in
      let fn = lookup_fn c id in
      let (op, call_code) = call_of (pack fn) args in
      (op, arg_code >@ call_code)

    | Ast.SuperMethod ((_,id), es) ->
        print_endline("SUPER METHOD CALLED");
      let (args, arg_code) = try cmp_exps c es with Not_found -> failwith "problem in line 461" in
      let path = Ast.ThisId (Range.norange, id) in
      let (op,fnop,stream) = try cmp_path c path with Not_found -> failwith "problem in line 463" in
       let dr_op = 
	begin match op with
	|(Ptr(t), id) ->(t, id) 
	|_ -> failwith "expected a pointer from cmp_path"
	end in
      let full_args = dr_op::args in
      let typ_list, typ_opt = 
      begin match fnop with
      	| (Fptr(ty_list, ty_opt), Id fid)-> ty_list, ty_opt
      	| _ -> failwith "cmp_call expected a function"
      end in

      let (op1, call_code) = call_of (typ_list, typ_opt, (snd fnop)) full_args in
      (op1, arg_code >@ stream >@ call_code)
      (* failwith "phase1.ml: supermethod not implemented" *)

    | Ast.PathMethod (p, es) ->
      print_endline("PATH METHOD CALLED");
      let x = 
	try
      let (args, arg_code) = try cmp_exps c es with Not_found -> failwith "problem in line 474" in
      print_endline "tried to compile path \n";
      let (op,fnop,stream) = cmp_path c p in
	(* try cmp_path c p with Not_found -> failwith "problem in line 475" in *)
      print_string("Line 487 the operand is: "^(string_of_operand op)^"\n\n");
      let dr_op = 
	begin match op with
	|(Ptr(t), id) ->(t, id) 
	|_ -> failwith "expected a pointer from cmp_path"
	end in
      let full_args = dr_op::args in
      let typ_list, typ_opt = 
      begin match fnop with
      	| (Fptr(ty_list, ty_opt), Id fid)-> ty_list, ty_opt
      	| _ -> failwith "cmp_call expected a function"
      end in

      let (op1, call_code) = call_of (typ_list, typ_opt, (snd fnop)) full_args in
      (op1, arg_code >@ stream >@ call_code)
	with Invalid_argument("List.fold_right2") -> failwith "problem in cmp_call pathmethod" in x

(* Compile an Oat path:
 * Invariant: the base of the path ('this' or lhs_or_call) must be a pointer
 * to an oat object. This function should raise an error if compiling it does
 * not return an Ll operand type (Namedt <cid>).
 * 
 * The first returned operand must be a pointer to the Oat object being
 * indexed. It must have type (Ptr (Namedt <cid>)).
 *
 * If the path identifier corresponds to a field of the base object, the second
 * returned operand should be a pointer to the field inside the object.
 *
 * If the path identifier corresponds to a method of the base object, the second
 * return operand should be the function pointer to the Ll function implementing
 * that method.
 *)
and cmp_path (c:ctxt) (p:Range.t Ast.path) : operand * operand * stream =

 let (first_op,insns1,class_string,id_string,fields,methods,c_signature) = 
    begin match p with
    | Ast.ThisId (id) ->
        let _c_signature =
	  (* print_string("\nAnd now we need to compile the ThisId so first let's do a lookup"); *)
	  List.assoc (lookup_this c) (get_csigs c) in 
	let _fields = _c_signature.fields in
	let _methods = _c_signature.methods in
       let op1 = this_op c in
        (* print_endline("In cmp_path, op1 is "^ (string_of_operand op1)); *)
       (op1,[],(lookup_this c),(snd id),_fields,_methods,_c_signature)


    | Ast.PathId (l_or_call,id)->
      let (op,str) = cmp_lhs_or_call c l_or_call in
      print_string("\nThe exp in cmp_path is: "^(Astlib.string_of_exp(Ast.LhsOrCall l_or_call)));
      print_string("\nThe op in cmp_path is: "^(string_of_operand op));
      (* get the class of the current object *)
      let cid =
      begin match (fst op) with
      	| Ptr (Namedt (class_name)) -> class_name
      	| _ -> print_endline("The non pointer op is "^string_of_operand op);failwith "Should have returned a Ptr(Namedt(cid)) in cmp_path"
      end in
      print_endline("cid in compile path is "^ cid);
       let _c_signature =  try (lookup_csig c cid) with Not_found -> failwith "problem line 540" in 
            (* get the vtable of the class*)
       let vtable_op = _c_signature.vtable in

	let _fields = _c_signature.fields in
	let _methods = _c_signature.methods in
       (op,str, cid ,(snd id),_fields,_methods,_c_signature)
     end in

      (* let op1 = try this_op c with Not_found -> failwith "problem line 547" in *)
      let start = 1 in
      let id_type_option = get_this_field_info fields start id_string in
      begin match id_type_option with
      	| Some (s1,idx) ->
	  let (uid2,op2) = gen_local_op (Ptr(s1)) id_string in
	   
	   (* print_string("\nThe type of the uid is: "^(string_of_ty s1)^"\n"); *)
	  	   
	  let insns = [I(Gep(uid2,first_op,[(i32_op_of_int 0);(i32_op_of_int idx)]))]@insns1 in
	  (first_op,op2,insns)
	     
      	| None -> let fn_type_option = get_this_fn_info methods 1 id_string in
      		  begin match fn_type_option with
      		    | Some (s2,idx) -> let vtable = c_signature.vtable in
      		  		       let fptr = Fptr (s2.ty_args,s2.rty) in
				       let vtable_id_ptr, vtable_ptr_op = gen_local_op (Ptr(fst c_signature.vtable)) "vtable_ptr" in
				       let vtable_id, vtable_op = gen_local_op (fst c_signature.vtable) "vtable" in
				       (* print_endline ("the function name is "^ (string_of_gid s2.name)); *)

				       begin match s2.ty_args with
				       |h::t -> print_endline("In cmp_path, the first type arg is "^ (string_of_ty h))
				       end;

      		  		       let (uid2,op2) = gen_local_op fptr id_string in
      		  		       let ptr = Ptr(Fptr (s2.ty_args,s2.rty)) in
      		  		       let ptr_op = gen_local_op ptr id_string in

				        let insns = [I(Load(uid2,(snd ptr_op)));
						     I(Gep((fst ptr_op),vtable_op,[i32_op_of_int 0;i32_op_of_int idx]));
						     I(Load(vtable_id,vtable_ptr_op));
						     I(Gep(vtable_id_ptr, first_op, [i32_op_of_int 0]))]@insns1 in

				        (first_op,op2,insns)
      		    | None -> failwith "Impossible case."
      		  end
      end 

and get_this_field_info (fields)(idx:int)(id:string) : (Ll.ty*int)option =
  begin match fields with
    | h::t->if (fst h) = id then
	let tuple = ((snd h), idx) in
         Some tuple
      else get_this_field_info t (idx+1) id
    |[]->None
   end

and get_this_fn_info (methods)(idx:int)(id:string) : (Ll.fn*int) option =
 begin match methods with
    | h::t->if (fst h) = id then	
	let tuple = ((snd h), idx) in
         Some tuple
      else get_this_fn_info t (idx+1) id
    |[]->None
   end
 

(* Compile an initializer. To avoid computing a common subtype of all elements
   of an array initializer, this function takes an extra parameter supplying the
   expected ll type of the initializer and then inserts the appropriate casts.
   Static arrays, like {1, 2, 3} have known size, so we can unroll the loop that
   initializes them. This does not work for the 'new' construct, since the array 
   length isn't known until runtime. *)
and cmp_init (c:ctxt) (ty:ty) (init:Range.t Ast.init) : (operand * stream) =
  match init with
    | Ast.Iexp e -> let x = try cast_op (cmp_exp c e) ty with Not_found -> failwith "problem in line 575" in x
    | Ast.Iarray (_, is) ->
      let et = match ty with
        | Ptr (Struct [_; Array (_, t)]) -> t
        | _ -> failwith "cmp_init: Iarray expects an array type"
      in
      
      let arr_op, arr_code = oat_alloc_array_static et (List.length is) in
      let init_code, _ = List.fold_left (fun (acc,i) init ->
        let eop, ecode = cmp_init c et init in
    	(acc >@ ecode >@ cmp_array_update_static et i arr_op eop, i+1)
      ) ([],0) is in
      (arr_op, arr_code >@ init_code)


(* Compile a variable declaration in a local scope. *)    
and cmp_vdecls (c:ctxt) (vs: Range.t Ast.vdecls) : (ctxt * stream) =
  List.fold_left (fun (c, code) {Ast.v_id=(_,src_id); v_init; v_ty} ->
    let ll_ty = cmp_ty v_ty in
    let init_op, init_code = cmp_init c ll_ty v_init in
    let slot_id, slot_op = gen_local_op (Ptr ll_ty) "vdecl_slot" in
    let c' = add_local c src_id slot_op in
	(c', code >@ init_code >::
	  I (Alloca (slot_id, ll_ty)) >::
	  I (Store (init_op, slot_op)) )
  ) (c,[]) vs

(* Helper function for if and ifnull. *)
and cmp_conditional c guard_op st sto : stream =
	let then_code = cmp_stmt c st in
	let else_code = match sto with None -> [] | Some s -> cmp_stmt c s in
	let lt, le, lm = mk_lbl_hint "then", mk_lbl_hint "else", mk_lbl_hint "merge" in
    [] >::
	  T (Cbr (guard_op, lt, le)) >:: 
	  L lt >@ then_code >:: T (Br lm) >:: 
      L le >@ else_code >:: 
      L lm

(* Compile statements. *)
and cmp_stmt (c:ctxt) (stmt : Range.t Ast.stmt) : stream =
  print_endline("The statement we're compiling is "^(Astlib.string_of_stmt stmt));
  match stmt with
    | Ast.Assign (lhs ,e) ->
      let l =  cmp_lhs c lhs in
      (* print_endline("LHS compiled by cmp_lhs is "^ (string_of_operand(fst l))); *)
      begin match l with
        | (Ptr ty,_) as lop, lhs_code ->
	  (* let c_e, _ = (cmp_exp c e) in *)
	  (* print_endline("EXPRESSION compiled by cmp_exp is "^(string_of_operand(c_e))); *)
          let eop, exp_code = cast_op (cmp_exp c e) ty in
          lhs_code >@ exp_code >@ [I (Store (eop, lop))]
        | _ -> failwith "cmp_stmt: lhs of assign is not of ptr type"
      end

    | Ast.If (guard, st1, sto2) -> 
	  let op, guard_code = try cmp_exp c guard with Not_found -> failwith "problem in line 625" in
      guard_code >@ cmp_conditional c op st1 sto2

    | Ast.While (guard, body) ->
	  let (op, guard_code) = try cmp_exp c guard with Not_found -> failwith "problem in line 629" in
	  let (lcond, lbody, lpost) = 
        mk_lbl_hint "cond", mk_lbl_hint "body", mk_lbl_hint "post" in
	  let body_code = cmp_stmt c body in 
      [] >::
	    L lcond >@ guard_code >:: T (Cbr (op, lbody, lpost)) >::
        L lbody >@ body_code  >:: T (Br lcond) >::
        L lpost

    | Ast.For (inits, guard, after, body) ->
	  let guard = match guard with Some e -> e | None -> Astlib.ast_of_bool true in
	  let after = match after with | Some s -> [s] | None -> [] in
	  let body = Ast.Block ([], body :: after) in
      cmp_stmt c (Ast.Block (inits, [Ast.While (guard, body)]))

    | Ast.Scall call  -> snd (cmp_call c call)
    | Ast.Block block -> snd (cmp_block c block)

    | Ast.IfNull (r, (_,id), e, st, sto) -> 
      (* Adding id to the ctxt of sto is ok since the typechecking phase
       * guarantees that is never referenced *)
      let ref_op, ref_code = try cmp_exp c e with Not_found -> failwith "problem in line 650" in
      let ref_ty = cmp_ty (Ast.TRef r) in
      let slot_id, slot_op = gen_local_op (Ptr ref_ty) "ifnull_slot" in
      let guard_id, guard_op = gen_local_op I1 "ifnull_guard" in
      let c' = add_local c id slot_op in
      ref_code >::
        I (Alloca (slot_id, ref_ty)) >::
        I (Store (ref_op, slot_op)) >::
        I (Icmp (guard_id, Ne, ref_op, (Ptr I8, Null))) >@
        cmp_conditional c' guard_op st sto

    | Ast.Fail e -> 
      let print_code = cmp_stmt c
        (Ast.Scall (Ast.Func ((Range.ghost, "print_string"), [e]))) in
      print_code >::
        I (Call (None, op_of_fn oat_abort_fn, [i32_op_of_int (-1)]))

    | Ast.Cast (cid, (_, id), e, st, sto)  ->
      let (new_op_id,new_op_operand) = gen_local_op (Ptr(Ptr(Namedt(cid)))) "cast_ptr" in
      let c2 = add_local c id (new_op_operand) in
      let alloca_insn = [I(Alloca((new_op_id),(Ptr(Namedt(cid)))))]in
      let assign_op, cmp_exp_code = (cmp_exp c2 e) in
      let assign_code = [I(Store(assign_op,new_op_operand))] in
      print_string("\n\n\n\n\nThe operand on line 732 was: "^(string_of_operand assign_op)^"\n\n\n");
      (* let assign_stream = [I(Bitcast((fst op), assign_op, (Ptr(Namedt(cid)))))]@assign_code in *)
      let stmt_stream =  cmp_stmt c2 st in
      let stmt_opt_stream = begin match sto with
  	                      |Some s->(cmp_stmt c s)
  			      |None -> []
                            end in
      let obj_opt = lookup_local id c in			      
      let right_vtable_id, right_vtable_ptr = gen_local_op (Ptr(Ptr I8)) "rvtable_ptr" in
      let left_vtable_id, left_vtable_ptr = gen_local_op (Ptr(Ptr I8)) "lvtable_ptr" in
      let left_csig = lookup_csig c cid in
      let (left_vtable_operand) = left_csig.vtable in
      let lbl_bound_check = mk_lbl_hint "bound_check"in
      let lbl_move_up = mk_lbl_hint "move_up" in
      let lbl_check_curr = mk_lbl_hint "check_curr" in
      let lbl_end_no = mk_lbl_hint "end_no" in
      let lbl_end_yes = mk_lbl_hint "end_yes" in
      let lbl_merge = mk_lbl_hint "merge" in
      let (cmp_id,cmp_operand) = gen_local_op I1 "compare" in
      let (rvtable_id,rvtable_operand) = gen_local_op (Ptr I8) "rvtable" in
      let load_right_vtable_insn = [I(Gep(right_vtable_id, assign_op, [i32_op_of_int 0;i32_op_of_int 0]))] in
      let (leftvtable_cast_op, cast_leftvtable_op_insn) = (cast_op (left_vtable_operand, []) (Ptr(Ptr I8))) in
      let (rightvtable_cast_op, cast_rightvtable_op_insn) = (cast_op (right_vtable_ptr, []) (Ptr(Ptr I8))) in
      let load_insn = [I(Load(rvtable_id,rightvtable_cast_op))] in
      let left_load_insn = [I(Load(left_vtable_id,leftvtable_cast_op))] in
      let cmp_bound_insn = [I(Icmp(cmp_id, Eq, rvtable_operand, (Ptr(I8), Null)))] in
      let cbr_insn1 = [T(Cbr(cmp_operand,lbl_end_no,lbl_check_curr))] in
      let cmp_insn = [I(Icmp(cmp_id,Eq,left_vtable_ptr,rvtable_operand))] in
      let cbr_insn2 = [T(Cbr(cmp_operand,lbl_end_yes,lbl_move_up))] in
      let move_up_insn = [I(Gep(right_vtable_id, rvtable_operand, [i32_op_of_int 0]))] in
      let loop =alloca_insn>@cmp_exp_code>@load_right_vtable_insn>@[T(Br(lbl_bound_check))]>@[L(lbl_bound_check)]>@
	cast_leftvtable_op_insn>@load_insn>@left_load_insn>@cast_rightvtable_op_insn>@cmp_bound_insn>@cbr_insn1>@
	[L(lbl_check_curr)]>@cmp_insn>@cbr_insn2>@
             [L(lbl_move_up)]>@move_up_insn>@[T(Br(lbl_bound_check))]>@
  	     [L(lbl_end_yes)]>@assign_code>@stmt_stream>@[T(Br(lbl_merge))]>@
	[L(lbl_end_no)]>@stmt_opt_stream>@[T(Br(lbl_merge))]>@[L(lbl_merge)] in
      loop

and cmp_stmts (c:ctxt) (stmts:Range.t Ast.stmts) : stream =
  List.fold_left (fun code s -> code >@ (cmp_stmt c s)) [] stmts

and cmp_block (c:ctxt) ((vdecls, stmts):Range.t Ast.block) : (ctxt * stream) =
  let (c, vdecl_code) = cmp_vdecls c vdecls in
  let block_code =  cmp_stmts c stmts in
  (c, vdecl_code >@ block_code)

(* Turns code for a function into a fdecl and adds it to the context
 * Along the way, it hoists global string values into the context too. *)

let rec print_stream(insns: elt list):unit =
  begin match insns with
  | h::t -> begin match h with
              | I (Binop (u, bop,operand ,operand1)) -> print_endline "binop"; print_stream t

	      | I(Alloca (u, ty)) -> print_endline "alloca"; print_stream t

	      |I( Load ( u, operand))-> print_endline "load"; print_stream t
        
	      | I(Store(operand, operand1)) -> print_endline "store"; print_stream t
	      | I(Icmp (u, cmpop, operand, operand1))-> print_endline "compare"; print_stream t
	      | I(Call(u, operand, operandlist))-> print_endline "call"; print_stream t
	      | I(Bitcast(u, operand , ty ))->print_endline "bitcast"; print_stream t
	      |I( Gep(u, operand, (operandlist)))-> print_endline "gep"; print_stream t
	      |T(Ret o) -> print_endline "return"; print_stream t
  end 
  | [] -> ()
  end 


let build_fdecl (c:ctxt) (f:fn) (args:operand list) (code:stream) : ctxt =
  (* print_stream code; *)
  (* print_string("\nThe big list's in fdecl size is: "); *)
  (* print_int(List.length(code)); *)
  (* print_string("\n"); *)
  let blocks_of_stream (c:ctxt) (elts:stream) : ctxt * bblock list =
    (* print_endline "PRINTING STREAM"; *)
    (* print_stream(elts); *)
    let fresh_or o = match o with Some l -> l | None -> mk_lbl_hint "fresh" in
    let (c, _l, _is, bs) =
      List.fold_right (fun e (c, l, is,  bs) ->
        match e with
          | L l' -> (c, Some l', [], 
			         {label=fresh_or l;
			          insns=List.rev is;
			          terminator=Ll.Br l'}::bs)
          | I i  ->  (c, l, i::is, bs)
          | T t  -> 
		      (c, None, [], 
			         {label=fresh_or l;
			          insns=List.rev is;
			          terminator=t}::bs)
	      | G (op, s) -> 
            (add_global c (mk_tmp ()) op (GString s), l, is, bs))
	    elts (c, None, [], []) in
    (c, List.rev bs)
  in
    
  let (c, cfg) = blocks_of_stream c code in

  (* begin match cfg with *)
  (* |h::t ->  print_endline("CFG has "^(string_of_int(List.length h.insns))^"instructions") *)
  (* |[]->() *)
  (* end; *)
 
  let fdecl = {
    ll_name = f.name;
    ll_type = f.rty;
    ll_args = args;
    ll_cfg = cfg;
  } 
  in
  add_fdecl c fdecl

(* Compile the arguments to a function, mapping them to alloca'd storage space. *)
let cmp_args (c:ctxt) args : (ctxt * stream * operand list) =
 List.fold_right
    (fun  (src_ty,(_,src_arg_name)) (c,code,args) ->
      let ll_ty = cmp_ty src_ty in

       (* arg_op is the LL representation of the 'formal argument' *)
      let arg_op = id_op ll_ty (gen_local src_arg_name) in 

       (* alloca_id is the name of the stack slot for the argument *)
      let alloca_id = gen_local (src_arg_name ^ "_slot") in

       (* Invariant: the context maps source variables to pointers *)
      let slot = id_op (Ptr ll_ty) alloca_id in
      let c = add_local c src_arg_name slot in
      (c, [I (Alloca (alloca_id, ll_ty))] >::
	       I (Store (arg_op, slot)) >@ code,
       arg_op :: args)
    ) args (c,[],[]) 


(* Compile a function declaration. *)
let cmp_fdecl (c:ctxt) ((_, (_, fid), args, block, reto) : Range.t Ast.fdecl) : ctxt = 
  let c = enter_local_scope c in
  let c, args_code, args = cmp_args c args in
  let c, block_code = cmp_block c block in

  (* If 'this' is set, we are in class scope definining a method *)
  let args, fsig = 
    match (try Some (lookup_this c) with Not_found -> None) with
      | None -> args, lookup_fn c fid 
      | Some cid -> this_op c::args, List.assoc fid (lookup_csig c cid).methods
  in
  (* print_string("Starting function " ^ fid^ "\n"); *)
  let fn_body = match reto, fsig.rty with
    | Some ret, Some rty ->
      print_string("\n and the rty is: "^(string_of_ty rty));
      let ans, ret_code =
	print_string("\nand the ret is "^(Astlib.string_of_exp ret));
	 let e = try cmp_exp c ret with Not_found -> failwith "problem in line 750" in
	 cast_op (e) rty in
      args_code >@ block_code >@ ret_code >:: T (Ret (Some ans))
    | None, None ->
      args_code >@ block_code >:: T (Ret None)
    | _, _ -> failwith "fdecl sig and return operand don't match"
  in
(* print_string("\nEnding function " ^ fid); *)
  build_fdecl c fsig args fn_body


(* The toplevel compilation context needs to have mappings for the
   signatures of all the builtin Oat functions. *)
let toplevel_ctxt = List.fold_left (fun c (name, fsig) ->
  add_external c name fsig) empty_ctxt builtin_fns

let cmp_gvdecl (c:ctxt) (v:Range.t Ast.vdecl) : ctxt =
  let {Ast.v_ty=t; Ast.v_id=(info,id); Ast.v_init=init} = v in
    (* Note that global initializers are compiled in the toplevel
       context -- they cannot refer to other globals. *)
  let u = cmp_ty t in
  let toplevel_ctxt' = List.fold_left (fun c (cid, csig) ->
    add_csig c cid csig 
  ) toplevel_ctxt (get_csigs c) in        
  let (op, code) = cmp_init toplevel_ctxt' u init in
  let gid = mk_gid id in  (* globals are always pointer types *)
  let gop = (Ptr u, Gid gid) in 
    begin match op with
      | (_, Const x) -> add_global c id gop (GConst x)  (* code should be empty *)
      | _ -> 
	  let init_name = (string_of_gid gid) ^ ".init" in
      let init_gid = mk_gid init_name in
	  let init_fn = {name = init_gid; rty = None; ty_args = []} in
	  let init_code = (code >@ [I(Store(op, gop))] >:: T (Ret None)) in
	  let c = build_fdecl c init_fn [] init_code in
	    add_global c id gop (GInit {name=init_gid; ty_args=[]; rty=None})
    end

let rec cmp_cinits (c:ctxt) (is:Range.t Ast.cinits) : stream = 
  begin match is with
    |(field_id,init)::t->
      let path = Ast.ThisId field_id in
      let (_,o2,pathstream) = try cmp_path c path with Not_found -> failwith "problem in line 788" in
      let o2_type = begin match (fst o2) with
	| Ptr t -> t
	| _ -> failwith "o2 should have been a pointer"
      end in
      let (oinit,initstream) = cmp_init c o2_type init in
       let store_insn = [I(Store(oinit,o2))] in
      let recurse_stream = cmp_cinits c t in
      pathstream>@initstream>@store_insn>@recurse_stream
    |[]->[]
  end 
    
(* Compile a constructor function.
 * 1) Compile the argument list, and extend the resulting Ll operand list 
 *    with an argument representing the 'this' pointer.
 * 2) Add the extended args to the local context
 * 3) Compile each expression in 'es', using the context extended by the
 *    constructor arguments
 * 4) Generate code to bitcast each operand representing the value of 'es' 
 *    to the types of the arguments required by the super class of cid
 * 5) Generate code to call the superclass constructor using 'es'
 * 6) Extend the 'is', the initializer list to set the field _name to the
 *    cid of the current class.
 * 7) Compile the initializer list
 * 8) Generate code to update the vtable pointer to this class' vtable pointer
 * 9) Return the _this pointer passed as the first argument to the compiled 
 *    function
 * 10) Call build_fdecl with the function signature and code you generated to
 *     add the function to the context and return the extended context.
 *)

let rec work_es_list (c:ctxt) (es) : (operand list) * (stream) =
  begin match es with
    |h::t-> let (op,str1) = cmp_exp c h in
	    (* let dr_op =  *)
	    (* begin match op with *)
	    (*  |(Ptr(t), Id i) ->(t, Id i)  *)
	    (*  |(Ptr(t), Gid g) -> (t, Gid g) *)
	    (*  |(Ptr(t), Const c) -> (t, Const c) *)
	    (*  | _-> op *)
	    (*  end in *)
	    let (olist,str2) = work_es_list c t in
	    (olist@[op],str2@str1)
    |[] -> ([],[])
  end

let rec print_op_list(op_list):unit =
    begin match op_list with
  |h::t -> print_endline(string_of_operand h); print_op_list t
  | [] -> ()
    end

let cmp_ctor (c:ctxt) cid _ ((ar, es, is, b):Range.t Ast.ctor) : ctxt =
  let (c2, insns, op_list_old) = cmp_args c ar in
  let thisop = this_op c in
  let op_list = thisop::op_list_old in
  let c3 = add_local c2 cid thisop in

  let (_, blockstream) = cmp_block c3 b in
  let csig = lookup_csig c3 cid in
  let ctor_fn = csig.ctor in
  let super_cid_opt = csig.ext in

  (* let this_obj = Ast.LhsOrCall(Ast.Lhs(Ast.Var((Range.norange, cid)))) in *)
  let this_obj = Ast.Const(Ast.Cstring(Range.norange, cid)) in
  let super_ctor_args =
    begin match super_cid_opt with
      | Some super_cid -> print_string("\n\nThe class is "^cid);
	                  print_string("\nThe super_id is: "^super_cid);
			  let super_csig = try 
					   lookup_csig c3 super_cid 
			                   with Not_found-> failwith "superclass definition not found" in
			  let super_ctor_fn = super_csig.ctor in 
			  begin match super_ctor_fn.ty_args with
			  | h::t -> t
			  | [] -> []
			  end 
			 
      | None -> []
    end in
  let (super_op_list_pre,super_op_stream) = work_es_list c3 es in
    (* if (cid = "Object") then work_es_list c3 es *)
    (*   else work_es_list c3 (this_obj::es) in *)
  (* let super_op_list =  *)
  (*    if (cid = "Object") then super_op_list_pre *)
  (*    else thisop::super_op_list_pre in *)

  let (super_list,super_stream) = cast_ops super_op_list_pre super_ctor_args in

  let super_op_list = 
     if (cid = "Object") then super_op_list_pre
     else thisop::super_op_list_pre in

  let thisop_id_opt =
  begin match thisop with
  |(Ptr t, Id i ) -> Some i
  | _ -> None
  end in

  let thisop_id 
 =
  begin match thisop with
  |(Ptr t, Id i ) -> i
  | _ -> failwith "should have an id"
  end in

  let call_insns = 
    begin match super_cid_opt with
      | Some super_class -> let csig_super = try lookup_csig c3 super_class with Not_found -> failwith "failed to look up super class" in
			    let super_ctor_fn = csig_super.ctor in
			     let this, mem_code = oat_alloc_object c super_class in
			     let res_id, res_op = gen_local_op (Ptr (Namedt super_class)) "new_obj" in
			     (* (res_op, arg_code >@  *)
			        mem_code >@
			       [ I(Bitcast(thisop_id,res_op, Namedt(cid))); I (Call (Some res_id, op_of_fn super_ctor_fn, this::super_list))]
      | None-> []
    end in

  let _name_id = (Range.norange,"_name") in
  let _name_iexp = Ast.Iexp(this_obj) in
  let new_is = (_name_id,_name_iexp)::is in
  let cinits_code = cmp_cinits c3 new_is in


  let vtable_ptr = csig.vtable in
  let (this_vtable_id,this_vtable_operand) = gen_local_op (Ptr(fst vtable_ptr)) "this_vtable" in
  let set_vtable_insns = [I(Store((* thisop *)vtable_ptr, this_vtable_operand));
			  I(Gep(this_vtable_id,thisop,
			 [i32_op_of_int 0;i32_op_of_int 0]))] in
  let ret_cmd = [T(Ret(Some thisop))] in
  
 let code = ret_cmd@blockstream@set_vtable_insns@cinits_code@call_insns@super_stream@super_op_stream@insns in

  build_fdecl c3 ctor_fn op_list code

(* Compile a class definition *)
let cmp_cdecl (c:ctxt) ((cid, extopt, fs, ctor, ms):Range.t Ast.cdecl) : ctxt =
  let c' = set_this c (Some cid) in
  let c' = cmp_ctor c' cid extopt ctor in
  let c' = try List.fold_left cmp_fdecl c' ms with Not_found -> failwith "problem on line 898 " in
  set_this c' None

(* Compile all of the program's top-level declarations, producing a
   new context *)
let cmp_prog (c:ctxt) (p:Range.t Ast.prog) : ctxt =
  List.fold_left (fun c -> function
    | Ast.Gvdecl  vd -> cmp_gvdecl c vd
    | Ast.Gfdecl  fd -> cmp_fdecl c fd
    | Ast.Gefdecl ed -> c
    | Ast.Gcdecl  cd -> cmp_cdecl c cd) c p

(* The Object class. This is set to be the super class in cmp_fctxt whenever 
   a class besides 'Object' has extopt = None. This should be the only class 
   with no super class. *)
let object_cid = "Object"
let object_decl = 
  let open Ast in
  (Gcdecl 
     (object_cid, None, 
      [(TRef RString, (Range.norange, "_name"))], 
      ([], [], [], ([], [])), 
      [(Some (TRef RString), 
        (Range.norange, "get_name"),[],([], []), 
        Some (LhsOrCall (Lhs (Path (ThisId (Range.norange, "_name"))))))
      ]))

(* Add information about a Gcdecl to the translation context:
   1) create a function signature for the constructor
   2) build up field and method tables used to calculate offsets when compiling
      path expressions
   3) create a vtable based on the method table of the class, add it to the
      ctxt globals, and remember a pointer operand for it
   4) add type aliases for the vtable and object struct of this class *)
let cmp_cctxt (c:ctxt) (cid, ext, fs, ctor_decl, ms) : ctxt = 
  let this_ty = Ast.TRef (Ast.RClass cid) in

  (* Create ctor function signature from the declaration *)
  let ctor = 
    let (arg_ops, _, _ ,_) = ctor_decl in
    let carg_tys = this_ty::List.map fst arg_ops in
    cmp_ftyp (mk_ctor_name cid) (carg_tys, (Some this_ty))
  in

  (* Get field and method sigs from decls *)
  let new_fs = List.map (fun (t, (_, id)) -> (id, (cmp_ty t))) fs in

  let new_ms = List.map (fun (rt, (_, mid), margs, _, _) ->
    let marg_tys = this_ty::List.map fst margs in
    let msig = cmp_ftyp (mk_meth_name cid mid) (marg_tys, rt) in
    (mid, msig)
  ) ms in

  (* If class has a superclass, extend fields and override methods *)
  let fields, methods = match ext with
    | None -> new_fs, new_ms
    | Some ext -> let sup = lookup_csig c ext in
      (sup.fields @ new_fs, List.fold_left replace_or_assoc sup.methods new_ms)
  in

  (* Find super class vtable pointer and build this vtable *)
  let ext_vt = match ext with
    | None -> (Ptr (Struct []), Null)
    | Some ext_cid -> (lookup_csig c ext_cid).vtable
  in

  (* Generate vtable named type and operand *)
  let vtname = mk_vtbl_name cid in
  let vtpty  = Ptr (Namedt vtname) in
  let vtable = (vtpty, Gid (mk_gid vtname)) in

  (* Generate real types *)
  let vtos = ext_vt :: List.map (fun (_, fn) -> op_of_fn fn) methods in
  let vtty = Struct (List.map fst vtos) in
  let obty = Struct (vtpty :: List.map snd fields) in

  (* Add named types and vtable structs to the context *)
  let c' = add_namedt c vtname vtty in
  let c' = add_namedt c' cid obty in
  let c' = add_global c' (mk_tmp()) vtable (GStruct vtos) in
  let c' = add_csig c' cid {ext;vtable;ctor;fields;methods} in
  c'

(* Collect the signatures for the global context. *)
let rec cmp_fctxt (c:ctxt) (p:Range.t Ast.prog) : ctxt =
  List.fold_left (fun c gdecl -> match gdecl with
    | Ast.Gvdecl _ -> c
    | Ast.Gfdecl (rto, (_,fid), args, _, _) ->
      let arg_tys = List.map fst args in
      add_fn c fid (cmp_ftyp fid (arg_tys, rto))
    | Ast.Gefdecl (rto, (_,fid), args) ->
      let arg_tys = List.map fst args in
      add_external c fid (cmp_ftyp fid (arg_tys, rto))
    | Ast.Gcdecl (cid, extopt, fs, ctfd, ms) ->
      (* In AST, we assume that the super class is implicitly Object
         when cidext = None . Make super classes explicit: *)
      let ext = match extopt with 
        | None when cid <> object_cid -> Some object_cid
        | None -> None
        | Some c -> Some c 
      in
      cmp_cctxt c (cid, ext, fs, ctfd, ms)
  ) c p

(* Compile a toplevel program.  This program also creates an oat
   function called oat_init that is run before the program starts to
   initialize all the global data values by running the code
   associated with them.  The function prototypes exposed include both
   the builtin functions and the Oat internal functions. *)
let cmp_toplevel (p: Range.t Ast.prog) : Ll.prog =
  let p = object_decl :: p in
  let global_initializer c gs =
    let code = List.concat 
      (List.map (fun (_, ginit) -> match ginit with
		| GConst _ | GString _ | GStruct _ -> []
		| GInit fn -> [I(Call(None, op_of_fn fn, []))]) gs) 
    in
    build_fdecl c {name=mk_gid_unsafe "oat_init"; rty=None; ty_args=[]} 
      [] (code >:: (T (Ret None)))
  in		      
  let c = cmp_fctxt toplevel_ctxt p in
  let c = cmp_prog c p in
  let c = global_initializer c (get_globals c) in
  let p = {
    Ll.namedts    = get_namedts c;
    Ll.prototypes = internal_fns @ (get_efdecls c);
    Ll.globals    = get_globals c;
    Ll.functions  = get_fdecls c;
  } in
 Lllib.write_prog_to_file "output" p; p

