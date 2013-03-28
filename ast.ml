(* generated by Ott 0.21.2 from: oat.ott *)

type n = int32 (* Constant int *)
type b = bool (* Constant bool *)
type cstr = string (* Constant string *)
type 'a id = 'a * string (* Identifiers *)
type cid = string (* Class identifiers *)

type 
typ =  (* Types *)
   TBot (* bottom *)
 | TBool (* bool *)
 | TInt (* int *)
 | TRef of ref (* reference *)
 | TNullable of ref (* nullable *)

and ref =  (* References *)
   RString (* string *)
 | RClass of cid (* class *)
 | RArray of typ (* array *)


type
'a unop = Neg of 'a | Lognot of 'a | Not of 'a


type
'a binop = Plus of 'a | Times of 'a | Minus of 'a
  | Eq of 'a | Neq of 'a
  | Lt of 'a | Lte of 'a | Gt of 'a | Gte of 'a
  | And of 'a | Or of 'a | IAnd of 'a | IOr of 'a
  | Shl of 'a | Shr of 'a | Sar of 'a


type
'a const = Cnull of 'a
 | Cbool of 'a * b 
 | Cint of 'a * n 
 | Cstring of 'a * cstr


type 
'a path =  (* Paths *)
   ThisId of 'a id (* identifiers in this class *)
 | PathId of 'a lhs_or_call * 'a id (* path identifiers, e.g, a.b.f().c *)

and 'a call =  (* Calls *)
   Func of 'a id * ('a exp) list (* global functions *)
 | SuperMethod of 'a id * ('a exp) list (* super methods *)
 | PathMethod of 'a path * ('a exp) list (* path methods, e.g. a.f().b.g() *)

and 'a lhs_or_call =  (* Left-hand sides or calls *)
   Lhs of 'a lhs (* left-hand sides *)
 | Call of 'a call (* calls *)

and 'a lhs =  (* Left-hand sides *)
   Var of 'a id (* variables *)
 | Path of 'a path (* paths *)
 | Index of 'a lhs_or_call * 'a exp (* array index *)

and 'a exp =  (* Expressions *)
   Const of 'a const (* constant *)
 | This of 'a
 | LhsOrCall of 'a lhs_or_call (* left-hand sides or calls *)
 | New of typ * 'a exp * 'a id * 'a exp (* new array creation *)
 | Ctor of ('a * cid) * 'a exp list
 | Binop of 'a binop * 'a exp * 'a exp (* binary arithmetic *)
 | Unop of 'a unop * 'a exp (* unary arithmetic *)


type
'a init = Iexp of 'a exp
  | Iarray of 'a * (('a init) list)


type
'a vdecl = {v_ty : typ; v_id : 'a id; v_init : 'a init;}


type
'a opt_exp = ('a exp) option


type
'a vdecls = (('a vdecl) list)


type 
'a stmt =  (* Statements *)
   Assign of 'a lhs * 'a exp (* assignment *)
 | Scall of 'a call (* call *)
 | Fail of 'a exp (* fail *)
 | If of 'a exp * 'a stmt * ('a stmt) option (* if-then, optional else *)
 | IfNull of ref * 'a id * 'a exp * 'a stmt * ('a stmt) option (* if null, optional else *)
 | Cast of cid * 'a id * 'a exp * 'a stmt * ('a stmt) option (* checked cast, optional else *)
 | While of 'a exp * 'a stmt (* while loop *)
 | For of 'a vdecls * 'a opt_exp * ('a stmt) option * 'a stmt (* for loop *)
 | Block of 'a block (* block *)

and 'a stmts = ('a stmt) list


and 'a block = ('a vdecls) * ('a stmts)


type
'a args = (typ * ('a id)) list


type
rtyp = typ option


type
'a fdecl = (typ option)*('a id)*('a args)*('a block)*('a exp) option


type
'a cinits = (('a id * 'a init) list)


type
ftyp = typ list*rtyp


type
'a fdecls = ('a fdecl) list


type
'a ctor = ('a args) * ('a exp) list * 'a cinits * 'a block


type
ext_cid = cid option


type
'a fields = ((typ * 'a id) list)


type 
gtyp =  (* Global types *)
   GFn of ftyp (* functions *)
 | GVal of typ (* values *)


type
mcontext = (string * ftyp) list


type
fcontext = (string * typ) list


type
'a efdecl = rtyp*('a id) * ('a args)


type
'a cdecl = cid * cid option * ('a fields) * ('a ctor) * ('a fdecl list)


type
'a lcontext = (string*typ) list


type
'a gcontext = (string*gtyp) list


type
signature = (string*(string option * fcontext * typ list * mcontext)) list


type
opt_cid = cid option


type
'a gdecl = Gvdecl of 'a vdecl 
  | Gfdecl of 'a fdecl
  | Gefdecl of 'a efdecl 
  | Gcdecl of 'a cdecl


type
opt_typ = typ option


type
opt_ftyp = ftyp option


type
ctxt = unit


type
'a prog = ('a gdecl) list



