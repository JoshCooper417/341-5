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
@_const_str284.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str284 = alias bitcast([ 2 x i8 ]* @_const_str284.str. to i8*)@_const_str285.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str285 = alias bitcast([ 2 x i8 ]* @_const_str285.str. to i8*)@_const_str282.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str282 = alias bitcast([ 2 x i8 ]* @_const_str282.str. to i8*)@_const_str283.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str283 = alias bitcast([ 2 x i8 ]* @_const_str283.str. to i8*)@_const_str281.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str281 = alias bitcast([ 7 x i8 ]* @_const_str281.str. to i8*)@_B_vtable280 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable278, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable279 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable278, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable278 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh361:
  ret void
}


define i32 @program (i32 %argc1473, { i32, [ 0 x i8* ] }* %argv1471){
__fresh360:
  %argc_slot1474 = alloca i32
  store i32 %argc1473, i32* %argc_slot1474
  %argv_slot1472 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1471, { i32, [ 0 x i8* ] }** %argv_slot1472
  %mem_ptr1475 = call i32* @oat_malloc ( i32 12 )
  %obj1476 = bitcast i32* %mem_ptr1475 to %A* 
  %new_obj1477 = call %A* @_A_ctor ( %A* %obj1476 )
  %vdecl_slot1478 = alloca %A*
  store %A* %new_obj1477, %A** %vdecl_slot1478
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh359:
  %mem_ptr1466 = call i32* @oat_malloc ( i32 8 )
  %obj1467 = bitcast i32* %mem_ptr1466 to %Object* 
  %new_obj1468 = call %Object* @_Object_ctor ( %Object* %obj1467 )
  %_this1 = bitcast %Object* %new_obj1468 to %B 
  %_name1469 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str285, i8** %_name1469
  %this_vtable1470 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable280, %_B_vtable** %this_vtable1470
  call void @print_string( i8* @_const_str284 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh358:
  %mem_ptr1457 = call i32* @oat_malloc ( i32 8 )
  %obj1458 = bitcast i32* %mem_ptr1457 to %Object* 
  %new_obj1459 = call %Object* @_Object_ctor ( %Object* %obj1458 )
  %_this1 = bitcast %Object* %new_obj1459 to %A 
  %_name1460 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str283, i8** %_name1460
  %b1461 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1462 = call i32* @oat_malloc ( i32 8 )
  %obj1463 = bitcast i32* %mem_ptr1462 to %B* 
  %new_obj1464 = call %B* @_B_ctor ( %B* %obj1463 )
  store %B* %new_obj1464, %B** %b1461
  %this_vtable1465 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable279, %_A_vtable** %this_vtable1465
  call void @print_string( i8* @_const_str282 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh357:
  %_name1455 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1456 = load i8** %_name1455
  ret i8* %lhs_or_call1456
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh356:
  %_name1453 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str281, i8** %_name1453
  %this_vtable1454 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable278, %_Object_vtable** %this_vtable1454
  ret %Object* %_this1
}


