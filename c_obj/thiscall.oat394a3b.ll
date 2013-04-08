%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@_A_vtable31 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable30, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_addToMine}, align 4
@_Object_vtable30 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh82:
  ret void
}


define i32 @program (i32 %argc379, { i32, [ 0 x i8* ] }* %argv377){
__fresh81:
  %argc_slot380 = alloca i32
  store i32 %argc379, i32* %argc_slot380
  %argv_slot378 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv377, { i32, [ 0 x i8* ] }** %argv_slot378
  %mem_ptr381 = call i32* @oat_malloc ( i32 12 )
  %obj382 = bitcast i32* %mem_ptr381 to %A* 
  %new_obj383 = call %A* @_A_ctor ( %A* %obj382, i32 1 )
  %vdecl_slot384 = alloca %A*
  store %A* %new_obj383, %A** %vdecl_slot384
  %lhs_or_call385 = load %A** %vdecl_slot384
  %addToMine387 = getelementptr %_A_vtable* @_A_vtable31, i32 0, i32 2
  %addToMine386 = load i32 (%A*, i32)** %addToMine387
  %cast_op388 = bitcast %A %lhs_or_call385 to %A* 
  %ret389 = call i32 %addToMine386 ( %A* %cast_op388, i32 2 )
  ret i32 %ret389
}


define i32 @_A_addToMine (%A* %_this1, i32 %n371){
__fresh80:
  %n_slot372 = alloca i32
  store i32 %n371, i32* %n_slot372
  %mine373 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call374 = load i32* %mine373
  %lhs_or_call375 = load i32* %n_slot372
  %bop376 = add i32 %lhs_or_call374, %lhs_or_call375
  ret i32 %bop376
}


define %A* @_A_ctor (%A* %_this1, i32 %v360){
__fresh79:
  %v_slot361 = alloca i32
  store i32 %v360, i32* %v_slot361
  %lhs_or_call362 = load %A* %_this1
  %cast_op363 = bitcast %A %lhs_or_call362 to %Object* 
  %mem_ptr364 = call i32* @oat_malloc ( i32 8 )
  %obj365 = bitcast i32* %mem_ptr364 to %Object* 
  %new_obj366 = call %Object* @_Object_ctor ( %Object* %obj365, %Object* %cast_op363 )
  %_name367 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call368 = load %A* %_this1
  %cast_op369 = bitcast %A %lhs_or_call368 to i8* 
  store i8* %cast_op369, i8** %_name367
  %this_vtable370 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable370
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh78:
  %_name358 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call359 = load i8** %_name358
  ret i8* %lhs_or_call359
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh77:
  %_name354 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call355 = load %Object* %_this1
  %cast_op356 = bitcast %Object %lhs_or_call355 to i8* 
  store i8* %cast_op356, i8** %_name354
  %this_vtable357 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable357
  ret %Object* %_this1
}


