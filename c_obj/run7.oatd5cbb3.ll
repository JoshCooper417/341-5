%A = type { %_A_vtable*, i8*, { i32, [ 0 x i32 ] }* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%Object = type { %_Object_vtable*, i8* }
%_Object_vtable = type { {  }*, i8* (%Object*)* }
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
declare void @oat_abort(i32)
declare void @print_bool(i1)
declare void @print_int(i32)
declare void @print_string(i8*)
declare i32 @length_of_string(i8*)
declare i8* @string_cat(i8*, i8*)
declare i8* @string_of_int(i32)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
@_const_str44.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str44 = alias bitcast([ 2 x i8 ]* @_const_str44.str. to i8*)@_const_str43.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str43 = alias bitcast([ 7 x i8 ]* @_const_str43.str. to i8*)@_A_vtable42 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable41, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable41 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh69:
  ret void
}


define i32 @program (i32 %argc256, { i32, [ 0 x i8* ] }* %argv254){
__fresh68:
  %argc_slot257 = alloca i32
  store i32 %argc256, i32* %argc_slot257
  %argv_slot255 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv254, { i32, [ 0 x i8* ] }** %argv_slot255
  %mem_ptr258 = call i32* @oat_malloc ( i32 12 )
  %obj259 = bitcast i32* %mem_ptr258 to %A* 
  %new_obj260 = call %A* @_A_ctor ( %A* %obj259 )
  %vdecl_slot261 = alloca %A*
  store %A* %new_obj260, %A** %vdecl_slot261
  %lhs_or_call262 = load %A** %vdecl_slot261
  %arr263 = getelementptr %A* %lhs_or_call262, i32 0, i32 2
  %lhs_or_call264 = load { i32, [ 0 x i32 ] }** %arr263
  %ret265 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call264 )
  call void @print_string( i8* %ret265 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh65:
  %mem_ptr233 = call i32* @oat_malloc ( i32 8 )
  %obj234 = bitcast i32* %mem_ptr233 to %Object* 
  %new_obj235 = call %Object* @_Object_ctor ( %Object* %obj234 )
  %_this1 = bitcast %Object* %new_obj235 to %A 
  %_name236 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str44, i8** %_name236
  %arr237 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr238 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array239 = bitcast { i32, [ 0 x i32 ] }* %array_ptr238 to { i32, [ 0 x i32 ] }* 
  %_tmp41240 = alloca i32
  store i32 10, i32* %_tmp41240
  %_tmp42241 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array239, { i32, [ 0 x i32 ] }** %_tmp42241
  %vdecl_slot242 = alloca i32
  store i32 0, i32* %vdecl_slot242
  br label %__cond64

__cond64:
  %lhs_or_call243 = load i32* %vdecl_slot242
  %lhs_or_call244 = load i32* %_tmp41240
  %bop245 = icmp slt i32 %lhs_or_call243, %lhs_or_call244
  br i1 %bop245, label %__body63, label %__post62

__fresh66:
  br label %__body63

__body63:
  %lhs_or_call246 = load { i32, [ 0 x i32 ] }** %_tmp42241
  %lhs_or_call247 = load i32* %vdecl_slot242
  %bound_ptr249 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call246, i32 0, i32 0
  %bound250 = load i32* %bound_ptr249
  call void @oat_array_bounds_check( i32 %bound250, i32 %lhs_or_call247 )
  %elt248 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call246, i32 0, i32 1, i32 %lhs_or_call247
  store i32 110, i32* %elt248
  %lhs_or_call251 = load i32* %vdecl_slot242
  %bop252 = add i32 %lhs_or_call251, 1
  store i32 %bop252, i32* %vdecl_slot242
  br label %__cond64

__fresh67:
  br label %__post62

__post62:
  store { i32, [ 0 x i32 ] }* %array239, { i32, [ 0 x i32 ] }** %arr237
  %this_vtable253 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable42, %_A_vtable** %this_vtable253
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh61:
  %_name231 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call232 = load i8** %_name231
  ret i8* %lhs_or_call232
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh60:
  %_name229 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str43, i8** %_name229
  %this_vtable230 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable41, %_Object_vtable** %this_vtable230
  ret %Object* %_this1
}


