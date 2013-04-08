%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str79.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str79 = alias bitcast([ 2 x i8 ]* @_const_str79.str. to i8*)@_const_str78.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str78 = alias bitcast([ 7 x i8 ]* @_const_str78.str. to i8*)@_A_vtable77 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable76, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f}, align 4
@_Object_vtable76 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh98:
  ret void
}


define i32 @program (i32 %argc413, { i32, [ 0 x i8* ] }* %argv411){
__fresh97:
  %argc_slot414 = alloca i32
  store i32 %argc413, i32* %argc_slot414
  %argv_slot412 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv411, { i32, [ 0 x i8* ] }** %argv_slot412
  %mem_ptr415 = call i32* @oat_malloc ( i32 12 )
  %obj416 = bitcast i32* %mem_ptr415 to %A* 
  %new_obj417 = call %A* @_A_ctor ( %A* %obj416 )
  %vdecl_slot418 = alloca %A*
  store %A* %new_obj417, %A** %vdecl_slot418
  %lhs_or_call419 = load %A** %vdecl_slot418
  %vtable_ptr420 = getelementptr %A* %lhs_or_call419, i32 0
  %vtable421 = load %_A_vtable** %vtable_ptr420
  %f423 = getelementptr %_A_vtable* %vtable421, i32 0, i32 2
  %f422 = load i32 (%A*)** %f423
  %cast_op424 = bitcast %A %lhs_or_call419 to %A* 
  %ret425 = call i32 %f422 ( %A* %cast_op424 )
  ret i32 %ret425
}


define i32 @_A_f (%A* %_this1){
__fresh96:
  %i408 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call409 = load i32* %i408
  %bop410 = add i32 %lhs_or_call409, 1
  ret i32 %bop410
}


define %A* @_A_ctor (%A* %_this1){
__fresh95:
  %mem_ptr403 = call i32* @oat_malloc ( i32 8 )
  %obj404 = bitcast i32* %mem_ptr403 to %Object* 
  %new_obj405 = call %Object* @_Object_ctor ( %Object* %obj404 )
  %_this1 = bitcast %Object* %new_obj405 to %A 
  %_name406 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str79, i8** %_name406
  %this_vtable407 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable77, %_A_vtable** %this_vtable407
  %i402 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i402
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh94:
  %_name400 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call401 = load i8** %_name400
  ret i8* %lhs_or_call401
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh93:
  %_name398 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str78, i8** %_name398
  %this_vtable399 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable76, %_Object_vtable** %this_vtable399
  ret %Object* %_this1
}


