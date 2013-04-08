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


define i32 @program (i32 %argc401, { i32, [ 0 x i8* ] }* %argv399){
__fresh97:
  %argc_slot402 = alloca i32
  store i32 %argc401, i32* %argc_slot402
  %argv_slot400 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv399, { i32, [ 0 x i8* ] }** %argv_slot400
  %mem_ptr403 = call i32* @oat_malloc ( i32 12 )
  %obj404 = bitcast i32* %mem_ptr403 to %A* 
  %new_obj405 = call %A* @_A_ctor ( %A* %obj404 )
  %vdecl_slot406 = alloca %A*
  store %A* %new_obj405, %A** %vdecl_slot406
  %lhs_or_call407 = load %A** %vdecl_slot406
  %vtable_ptr408 = getelementptr %A* %lhs_or_call407, i32 0
  %vtable409 = load %_A_vtable** %vtable_ptr408
  %f411 = getelementptr %_A_vtable* %vtable409, i32 0, i32 2
  %f410 = load i32 (%A*)** %f411
  %cast_op412 = bitcast %A %lhs_or_call407 to %A* 
  %ret413 = call i32 %f410 ( %A* %cast_op412 )
  ret i32 %ret413
}


define i32 @_A_f (%A* %_this1){
__fresh96:
  %i396 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call397 = load i32* %i396
  %bop398 = add i32 %lhs_or_call397, 1
  ret i32 %bop398
}


define %A* @_A_ctor (%A* %_this1){
__fresh95:
  %mem_ptr391 = call i32* @oat_malloc ( i32 8 )
  %obj392 = bitcast i32* %mem_ptr391 to %Object* 
  %new_obj393 = call %Object* @_Object_ctor ( %Object* %obj392 )
  %_this1 = bitcast %Object* %new_obj393 to %A 
  %_name394 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str68, i8** %_name394
  %this_vtable395 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable66, %_A_vtable** %this_vtable395
  %i390 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i390
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh94:
  %_name388 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call389 = load i8** %_name388
  ret i8* %lhs_or_call389
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh93:
  %_name386 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str67, i8** %_name386
  %this_vtable387 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable65, %_Object_vtable** %this_vtable387
  ret %Object* %_this1
}


