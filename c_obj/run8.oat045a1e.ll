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


define i32 @program (i32 %argc403, { i32, [ 0 x i8* ] }* %argv401){
__fresh97:
  %argc_slot404 = alloca i32
  store i32 %argc403, i32* %argc_slot404
  %argv_slot402 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv401, { i32, [ 0 x i8* ] }** %argv_slot402
  %mem_ptr405 = call i32* @oat_malloc ( i32 12 )
  %obj406 = bitcast i32* %mem_ptr405 to %A* 
  %new_obj407 = call %A* @_A_ctor ( %A* %obj406 )
  %vdecl_slot408 = alloca %A*
  store %A* %new_obj407, %A** %vdecl_slot408
  %lhs_or_call409 = load %A** %vdecl_slot408
  %vtable_ptr410 = getelementptr %A* %lhs_or_call409, i32 0
  %vtable411 = load %_A_vtable** %vtable_ptr410
  %f413 = getelementptr %_A_vtable* %vtable411, i32 0, i32 2
  %f412 = load i32 (%A*)** %f413
  %cast_op414 = bitcast %A %lhs_or_call409 to %A* 
  %ret415 = call i32 %f412 ( %A* %cast_op414 )
  ret i32 %ret415
}


define i32 @_A_f (%A* %_this1){
__fresh96:
  %i398 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call399 = load i32* %i398
  %bop400 = add i32 %lhs_or_call399, 1
  ret i32 %bop400
}


define %A* @_A_ctor (%A* %_this1){
__fresh95:
  %mem_ptr393 = call i32* @oat_malloc ( i32 8 )
  %obj394 = bitcast i32* %mem_ptr393 to %Object* 
  %new_obj395 = call %Object* @_Object_ctor ( %Object* %obj394 )
  %_this1 = bitcast %Object* %new_obj395 to %A 
  %_name396 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str68, i8** %_name396
  %this_vtable397 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable66, %_A_vtable** %this_vtable397
  %i392 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i392
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh94:
  %_name390 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call391 = load i8** %_name390
  ret i8* %lhs_or_call391
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh93:
  %_name388 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str67, i8** %_name388
  %this_vtable389 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable65, %_Object_vtable** %this_vtable389
  ret %Object* %_this1
}


