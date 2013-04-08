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
@_const_str68.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str68 = alias bitcast([ 2 x i8 ]* @_const_str68.str. to i8*)@_const_str67.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str67 = alias bitcast([ 7 x i8 ]* @_const_str67.str. to i8*)@_A_vtable66 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable65, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f}, align 4
@_Object_vtable65 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh98:
  ret void
}


define i32 @program (i32 %argc402, { i32, [ 0 x i8* ] }* %argv400){
__fresh97:
  %argc_slot403 = alloca i32
  store i32 %argc402, i32* %argc_slot403
  %argv_slot401 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv400, { i32, [ 0 x i8* ] }** %argv_slot401
  %mem_ptr404 = call i32* @oat_malloc ( i32 12 )
  %obj405 = bitcast i32* %mem_ptr404 to %A* 
  %new_obj406 = call %A* @_A_ctor ( %A* %obj405 )
  %vdecl_slot407 = alloca %A*
  store %A* %new_obj406, %A** %vdecl_slot407
  %lhs_or_call408 = load %A** %vdecl_slot407
  %vtable_ptr409 = getelementptr %A* %lhs_or_call408, i32 0
  %vtable410 = load %_A_vtable** %vtable_ptr409
  %f412 = getelementptr %_A_vtable* %vtable410, i32 0, i32 2
  %f411 = load i32 (%A*)** %f412
  %cast_op413 = bitcast %A %lhs_or_call408 to %A* 
  %ret414 = call i32 %f411 ( %A* %cast_op413 )
  ret i32 %ret414
}


define i32 @_A_f (%A* %_this1){
__fresh96:
  %i397 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call398 = load i32* %i397
  %bop399 = add i32 %lhs_or_call398, 1
  ret i32 %bop399
}


define %A* @_A_ctor (%A* %_this1){
__fresh95:
  %mem_ptr392 = call i32* @oat_malloc ( i32 8 )
  %obj393 = bitcast i32* %mem_ptr392 to %Object* 
  %new_obj394 = call %Object* @_Object_ctor ( %Object* %obj393 )
  %_this1 = bitcast %Object* %new_obj394 to %A 
  %_name395 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str68, i8** %_name395
  %this_vtable396 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable66, %_A_vtable** %this_vtable396
  %i391 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i391
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh94:
  %_name389 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call390 = load i8** %_name389
  ret i8* %lhs_or_call390
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh93:
  %_name387 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str67, i8** %_name387
  %this_vtable388 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable65, %_Object_vtable** %this_vtable388
  ret %Object* %_this1
}


