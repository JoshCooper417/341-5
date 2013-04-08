%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, %B* }
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
@_const_str295.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str295 = alias bitcast([ 2 x i8 ]* @_const_str295.str. to i8*)@_const_str296.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str296 = alias bitcast([ 2 x i8 ]* @_const_str296.str. to i8*)@_const_str293.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str293 = alias bitcast([ 2 x i8 ]* @_const_str293.str. to i8*)@_const_str294.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str294 = alias bitcast([ 2 x i8 ]* @_const_str294.str. to i8*)@_const_str292.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str292 = alias bitcast([ 7 x i8 ]* @_const_str292.str. to i8*)@_B_vtable291 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable289, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable290 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable289, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable289 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh327:
  ret void
}


define i32 @program (i32 %argc1413, { i32, [ 0 x i8* ] }* %argv1411){
__fresh326:
  %argc_slot1414 = alloca i32
  store i32 %argc1413, i32* %argc_slot1414
  %argv_slot1412 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1411, { i32, [ 0 x i8* ] }** %argv_slot1412
  %mem_ptr1415 = call i32* @oat_malloc ( i32 12 )
  %obj1416 = bitcast i32* %mem_ptr1415 to %A* 
  %new_obj1417 = call %A* @_A_ctor ( %A* %obj1416 )
  %vdecl_slot1418 = alloca %A*
  store %A* %new_obj1417, %A** %vdecl_slot1418
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh325:
  %cast_op1405 = bitcast %B* %_this1 to %Object* 
  %mem_ptr1406 = call i32* @oat_malloc ( i32 8 )
  %obj1407 = bitcast i32* %mem_ptr1406 to %B* 
  %new_obj1408 = call %Object* @_Object_ctor ( %B* %obj1407, %Object* %cast_op1405 )
  %_this1 = bitcast %Object* %new_obj1408 to %B 
  %_name1409 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str296, i8** %_name1409
  %this_vtable1410 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable291, %_B_vtable** %this_vtable1410
  call void @print_string( i8* @_const_str295 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh324:
  %cast_op1395 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1396 = call i32* @oat_malloc ( i32 12 )
  %obj1397 = bitcast i32* %mem_ptr1396 to %A* 
  %new_obj1398 = call %Object* @_Object_ctor ( %A* %obj1397, %Object* %cast_op1395 )
  %_this1 = bitcast %Object* %new_obj1398 to %A 
  %_name1399 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str294, i8** %_name1399
  %b1400 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1401 = call i32* @oat_malloc ( i32 8 )
  %obj1402 = bitcast i32* %mem_ptr1401 to %B* 
  %new_obj1403 = call %B* @_B_ctor ( %B* %obj1402 )
  store %B* %new_obj1403, %B** %b1400
  %this_vtable1404 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable290, %_A_vtable** %this_vtable1404
  call void @print_string( i8* @_const_str293 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh323:
  %_name1393 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1394 = load i8** %_name1393
  ret i8* %lhs_or_call1394
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh322:
  %_name1391 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str292, i8** %_name1391
  %this_vtable1392 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable289, %_Object_vtable** %this_vtable1392
  ret %Object* %_this1
}


