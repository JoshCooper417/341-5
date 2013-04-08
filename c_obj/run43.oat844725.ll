%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_A_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str280.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str280 = alias bitcast([ 2 x i8 ]* @_const_str280.str. to i8*)@_const_str279.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str279 = alias bitcast([ 2 x i8 ]* @_const_str279.str. to i8*)@_const_str278.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str278 = alias bitcast([ 2 x i8 ]* @_const_str278.str. to i8*)@_const_str277.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str277 = alias bitcast([ 7 x i8 ]* @_const_str277.str. to i8*)@_C_vtable276 = private constant %_C_vtable {%_A_vtable* @_A_vtable274, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable275 = private constant %_B_vtable {%_A_vtable* @_A_vtable274, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable274 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable273, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable273 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh483:
  ret void
}


define i32 @program (i32 %argc1477, { i32, [ 0 x i8* ] }* %argv1475){
__fresh480:
  %argc_slot1478 = alloca i32
  store i32 %argc1477, i32* %argc_slot1478
  %argv_slot1476 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1475, { i32, [ 0 x i8* ] }** %argv_slot1476
  %array_ptr1479 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1480 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1479 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1481 = call i32* @oat_malloc ( i32 12 )
  %obj1482 = bitcast i32* %mem_ptr1481 to %A* 
  %new_obj1483 = call %A* @_A_ctor ( %A* %obj1482 )
  %index_ptr1484 = getelementptr { i32, [ 0 x %A* ] }* %array1480, i32 0, i32 1, i32 0
  store %A* %new_obj1483, %A** %index_ptr1484
  %mem_ptr1485 = call i32* @oat_malloc ( i32 12 )
  %obj1486 = bitcast i32* %mem_ptr1485 to %B* 
  %new_obj1487 = call %B* @_B_ctor ( %B* %obj1486 )
  %cast_op1488 = bitcast %B* %new_obj1487 to %A* 
  %index_ptr1489 = getelementptr { i32, [ 0 x %A* ] }* %array1480, i32 0, i32 1, i32 1
  store %A* %cast_op1488, %A** %index_ptr1489
  %mem_ptr1490 = call i32* @oat_malloc ( i32 12 )
  %obj1491 = bitcast i32* %mem_ptr1490 to %C* 
  %new_obj1492 = call %C* @_C_ctor ( %C* %obj1491 )
  %cast_op1493 = bitcast %C* %new_obj1492 to %A* 
  %index_ptr1494 = getelementptr { i32, [ 0 x %A* ] }* %array1480, i32 0, i32 1, i32 2
  store %A* %cast_op1493, %A** %index_ptr1494
  %vdecl_slot1495 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1480, { i32, [ 0 x %A* ] }** %vdecl_slot1495
  %vdecl_slot1496 = alloca i32
  store i32 0, i32* %vdecl_slot1496
  br label %__cond479

__cond479:
  %lhs_or_call1497 = load i32* %vdecl_slot1496
  %lhs_or_call1498 = load { i32, [ 0 x %A* ] }** %vdecl_slot1495
  %len_ptr1499 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1498, i32 0, i32 0
  %len1500 = load i32* %len_ptr1499
  %bop1501 = icmp slt i32 %lhs_or_call1497, %len1500
  br i1 %bop1501, label %__body478, label %__post477

__fresh481:
  br label %__body478

__body478:
  %lhs_or_call1502 = load { i32, [ 0 x %A* ] }** %vdecl_slot1495
  %lhs_or_call1503 = load i32* %vdecl_slot1496
  %bound_ptr1505 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1502, i32 0, i32 0
  %bound1506 = load i32* %bound_ptr1505
  call void @oat_array_bounds_check( i32 %bound1506, i32 %lhs_or_call1503 )
  %elt1504 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1502, i32 0, i32 1, i32 %lhs_or_call1503
  %lhs_or_call1507 = load %A** %elt1504
  %i1508 = getelementptr %A* %lhs_or_call1507, i32 0, i32 2
  %lhs_or_call1509 = load i32* %i1508
  call void @print_int( i32 %lhs_or_call1509 )
  %lhs_or_call1510 = load i32* %vdecl_slot1496
  %bop1511 = add i32 %lhs_or_call1510, 1
  store i32 %bop1511, i32* %vdecl_slot1496
  br label %__cond479

__fresh482:
  br label %__post477

__post477:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh476:
  %mem_ptr1470 = call i32* @oat_malloc ( i32 12 )
  %obj1471 = bitcast i32* %mem_ptr1470 to %A* 
  %new_obj1472 = call %A* @_A_ctor ( %A* %obj1471 )
  %_this1 = bitcast %A* %new_obj1472 to %C 
  %_name1473 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str280, i8** %_name1473
  %this_vtable1474 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable276, %_C_vtable** %this_vtable1474
  %i1469 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1469
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh475:
  %mem_ptr1464 = call i32* @oat_malloc ( i32 12 )
  %obj1465 = bitcast i32* %mem_ptr1464 to %A* 
  %new_obj1466 = call %A* @_A_ctor ( %A* %obj1465 )
  %_this1 = bitcast %A* %new_obj1466 to %B 
  %_name1467 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str279, i8** %_name1467
  %this_vtable1468 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable275, %_B_vtable** %this_vtable1468
  %i1463 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1463
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh474:
  %mem_ptr1458 = call i32* @oat_malloc ( i32 8 )
  %obj1459 = bitcast i32* %mem_ptr1458 to %Object* 
  %new_obj1460 = call %Object* @_Object_ctor ( %Object* %obj1459 )
  %_this1 = bitcast %Object* %new_obj1460 to %A 
  %_name1461 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str278, i8** %_name1461
  %this_vtable1462 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable274, %_A_vtable** %this_vtable1462
  %i1457 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1457
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh473:
  %_name1455 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1456 = load i8** %_name1455
  ret i8* %lhs_or_call1456
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh472:
  %_name1453 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str277, i8** %_name1453
  %this_vtable1454 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable273, %_Object_vtable** %this_vtable1454
  ret %Object* %_this1
}


