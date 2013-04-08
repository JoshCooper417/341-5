%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, %C* (%B*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Object* (%A*)*, void (%A*)* }
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
@_const_str296.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str296 = alias bitcast([ 2 x i8 ]* @_const_str296.str. to i8*)@_const_str295.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str295 = alias bitcast([ 2 x i8 ]* @_const_str295.str. to i8*)@_const_str294.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str294 = alias bitcast([ 2 x i8 ]* @_const_str294.str. to i8*)@_const_str293.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str293 = alias bitcast([ 2 x i8 ]* @_const_str293.str. to i8*)@_const_str292.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str292 = alias bitcast([ 2 x i8 ]* @_const_str292.str. to i8*)@_const_str291.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str291 = alias bitcast([ 2 x i8 ]* @_const_str291.str. to i8*)@_const_str290.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str290 = alias bitcast([ 7 x i8 ]* @_const_str290.str. to i8*)@_C_vtable289 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable286, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print}, align 4
@_B_vtable288 = private constant %_B_vtable {%_A_vtable* @_A_vtable287, i8* (%Object*)* @_Object_get_name, %C* (%B*)* @_B_f, void (%B*)* @_B_print}, align 4
@_A_vtable287 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable286, i8* (%Object*)* @_Object_get_name, %Object* (%A*)* @_A_f, void (%A*)* @_A_print}, align 4
@_Object_vtable286 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh373:
  ret void
}


define i32 @program (i32 %argc1496, { i32, [ 0 x i8* ] }* %argv1494){
__fresh372:
  %argc_slot1497 = alloca i32
  store i32 %argc1496, i32* %argc_slot1497
  %argv_slot1495 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1494, { i32, [ 0 x i8* ] }** %argv_slot1495
  %mem_ptr1498 = call i32* @oat_malloc ( i32 8 )
  %obj1499 = bitcast i32* %mem_ptr1498 to %A* 
  %new_obj1500 = call %A* @_A_ctor ( %A* %obj1499 )
  %vdecl_slot1501 = alloca %A*
  store %A* %new_obj1500, %A** %vdecl_slot1501
  %mem_ptr1502 = call i32* @oat_malloc ( i32 8 )
  %obj1503 = bitcast i32* %mem_ptr1502 to %B* 
  %new_obj1504 = call %B* @_B_ctor ( %B* %obj1503 )
  %vdecl_slot1505 = alloca %B*
  store %B* %new_obj1504, %B** %vdecl_slot1505
  %mem_ptr1506 = call i32* @oat_malloc ( i32 8 )
  %obj1507 = bitcast i32* %mem_ptr1506 to %C* 
  %new_obj1508 = call %C* @_C_ctor ( %C* %obj1507 )
  %vdecl_slot1509 = alloca %C*
  store %C* %new_obj1508, %C** %vdecl_slot1509
  %lhs_or_call1510 = load %A** %vdecl_slot1501
  %vtable_ptr1511 = getelementptr %A* %lhs_or_call1510, i32 0
  %vtable1512 = load %_A_vtable** %vtable_ptr1511
  %print1514 = getelementptr %_A_vtable* %vtable1512, i32 0, i32 3
  %print1513 = load void (%A*)** %print1514
  %cast_op1515 = bitcast %A %lhs_or_call1510 to %A* 
  call void %print1513( %A* %cast_op1515 )
  %lhs_or_call1516 = load %B** %vdecl_slot1505
  %vtable_ptr1517 = getelementptr %B* %lhs_or_call1516, i32 0
  %vtable1518 = load %_B_vtable** %vtable_ptr1517
  %print1520 = getelementptr %_B_vtable* %vtable1518, i32 0, i32 3
  %print1519 = load void (%B*)** %print1520
  %cast_op1521 = bitcast %B %lhs_or_call1516 to %B* 
  call void %print1519( %B* %cast_op1521 )
  %lhs_or_call1522 = load %B** %vdecl_slot1505
  %vtable_ptr1523 = getelementptr %B* %lhs_or_call1522, i32 0
  %vtable1524 = load %_B_vtable** %vtable_ptr1523
  %f1526 = getelementptr %_B_vtable* %vtable1524, i32 0, i32 2
  %f1525 = load %C* (%B*)** %f1526
  %cast_op1527 = bitcast %B %lhs_or_call1522 to %B* 
  %ret1528 = call %C* %f1525 ( %B* %cast_op1527 )
  %vtable_ptr1529 = getelementptr %C* %ret1528, i32 0
  %vtable1530 = load %_C_vtable** %vtable_ptr1529
  %print1532 = getelementptr %_C_vtable* %vtable1530, i32 0, i32 2
  %print1531 = load void (%C*)** %print1532
  %cast_op1533 = bitcast %C %ret1528 to %C* 
  call void %print1531( %C* %cast_op1533 )
  %lhs_or_call1534 = load %C** %vdecl_slot1509
  %vtable_ptr1535 = getelementptr %C* %lhs_or_call1534, i32 0
  %vtable1536 = load %_C_vtable** %vtable_ptr1535
  %print1538 = getelementptr %_C_vtable* %vtable1536, i32 0, i32 2
  %print1537 = load void (%C*)** %print1538
  %cast_op1539 = bitcast %C %lhs_or_call1534 to %C* 
  call void %print1537( %C* %cast_op1539 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh371:
  call void @print_string( i8* @_const_str296 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh370:
  %mem_ptr1489 = call i32* @oat_malloc ( i32 8 )
  %obj1490 = bitcast i32* %mem_ptr1489 to %Object* 
  %new_obj1491 = call %Object* @_Object_ctor ( %Object* %obj1490 )
  %_this1 = bitcast %Object* %new_obj1491 to %C 
  %_name1492 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str295, i8** %_name1492
  %this_vtable1493 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable289, %_C_vtable** %this_vtable1493
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh369:
  call void @print_string( i8* @_const_str294 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh368:
  %mem_ptr1486 = call i32* @oat_malloc ( i32 8 )
  %obj1487 = bitcast i32* %mem_ptr1486 to %C* 
  %new_obj1488 = call %C* @_C_ctor ( %C* %obj1487 )
  ret %C* %new_obj1488
}


define %B* @_B_ctor (%B* %_this1){
__fresh367:
  %mem_ptr1481 = call i32* @oat_malloc ( i32 8 )
  %obj1482 = bitcast i32* %mem_ptr1481 to %A* 
  %new_obj1483 = call %A* @_A_ctor ( %A* %obj1482 )
  %_this1 = bitcast %A* %new_obj1483 to %B 
  %_name1484 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str293, i8** %_name1484
  %this_vtable1485 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable288, %_B_vtable** %this_vtable1485
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh366:
  call void @print_string( i8* @_const_str292 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh365:
  %mem_ptr1477 = call i32* @oat_malloc ( i32 8 )
  %obj1478 = bitcast i32* %mem_ptr1477 to %B* 
  %new_obj1479 = call %B* @_B_ctor ( %B* %obj1478 )
  %cast_op1480 = bitcast %B* %new_obj1479 to %Object* 
  ret %Object* %cast_op1480
}


define %A* @_A_ctor (%A* %_this1){
__fresh364:
  %mem_ptr1472 = call i32* @oat_malloc ( i32 8 )
  %obj1473 = bitcast i32* %mem_ptr1472 to %Object* 
  %new_obj1474 = call %Object* @_Object_ctor ( %Object* %obj1473 )
  %_this1 = bitcast %Object* %new_obj1474 to %A 
  %_name1475 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str291, i8** %_name1475
  %this_vtable1476 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable287, %_A_vtable** %this_vtable1476
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh363:
  %_name1470 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call1471 = load i8** %_name1470
  ret i8* %lhs_or_call1471
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh362:
  %_name1468 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str290, i8** %_name1468
  %this_vtable1469 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable286, %_Object_vtable** %this_vtable1469
  ret %Object* %_this1
}


