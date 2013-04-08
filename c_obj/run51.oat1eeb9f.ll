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


define i32 @program (i32 %argc1507, { i32, [ 0 x i8* ] }* %argv1505){
__fresh372:
  %argc_slot1508 = alloca i32
  store i32 %argc1507, i32* %argc_slot1508
  %argv_slot1506 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1505, { i32, [ 0 x i8* ] }** %argv_slot1506
  %mem_ptr1509 = call i32* @oat_malloc ( i32 8 )
  %obj1510 = bitcast i32* %mem_ptr1509 to %A* 
  %new_obj1511 = call %A* @_A_ctor ( %A* %obj1510 )
  %vdecl_slot1512 = alloca %A*
  store %A* %new_obj1511, %A** %vdecl_slot1512
  %mem_ptr1513 = call i32* @oat_malloc ( i32 8 )
  %obj1514 = bitcast i32* %mem_ptr1513 to %B* 
  %new_obj1515 = call %B* @_B_ctor ( %B* %obj1514 )
  %vdecl_slot1516 = alloca %B*
  store %B* %new_obj1515, %B** %vdecl_slot1516
  %mem_ptr1517 = call i32* @oat_malloc ( i32 8 )
  %obj1518 = bitcast i32* %mem_ptr1517 to %C* 
  %new_obj1519 = call %C* @_C_ctor ( %C* %obj1518 )
  %vdecl_slot1520 = alloca %C*
  store %C* %new_obj1519, %C** %vdecl_slot1520
  %lhs_or_call1521 = load %A** %vdecl_slot1512
  %vtable_ptr1522 = getelementptr %A* %lhs_or_call1521, i32 0
  %vtable1523 = load %_A_vtable** %vtable_ptr1522
  %print1525 = getelementptr %_A_vtable* %vtable1523, i32 0, i32 3
  %print1524 = load void (%A*)** %print1525
  %cast_op1526 = bitcast %A %lhs_or_call1521 to %A* 
  call void %print1524( %A* %cast_op1526 )
  %lhs_or_call1527 = load %B** %vdecl_slot1516
  %vtable_ptr1528 = getelementptr %B* %lhs_or_call1527, i32 0
  %vtable1529 = load %_B_vtable** %vtable_ptr1528
  %print1531 = getelementptr %_B_vtable* %vtable1529, i32 0, i32 3
  %print1530 = load void (%B*)** %print1531
  %cast_op1532 = bitcast %B %lhs_or_call1527 to %B* 
  call void %print1530( %B* %cast_op1532 )
  %lhs_or_call1533 = load %B** %vdecl_slot1516
  %vtable_ptr1534 = getelementptr %B* %lhs_or_call1533, i32 0
  %vtable1535 = load %_B_vtable** %vtable_ptr1534
  %f1537 = getelementptr %_B_vtable* %vtable1535, i32 0, i32 2
  %f1536 = load %C* (%B*)** %f1537
  %cast_op1538 = bitcast %B %lhs_or_call1533 to %B* 
  %ret1539 = call %C* %f1536 ( %B* %cast_op1538 )
  %vtable_ptr1540 = getelementptr %C* %ret1539, i32 0
  %vtable1541 = load %_C_vtable** %vtable_ptr1540
  %print1543 = getelementptr %_C_vtable* %vtable1541, i32 0, i32 2
  %print1542 = load void (%C*)** %print1543
  %cast_op1544 = bitcast %C %ret1539 to %C* 
  call void %print1542( %C* %cast_op1544 )
  %lhs_or_call1545 = load %C** %vdecl_slot1520
  %vtable_ptr1546 = getelementptr %C* %lhs_or_call1545, i32 0
  %vtable1547 = load %_C_vtable** %vtable_ptr1546
  %print1549 = getelementptr %_C_vtable* %vtable1547, i32 0, i32 2
  %print1548 = load void (%C*)** %print1549
  %cast_op1550 = bitcast %C %lhs_or_call1545 to %C* 
  call void %print1548( %C* %cast_op1550 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh371:
  call void @print_string( i8* @_const_str296 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh370:
  %mem_ptr1500 = call i32* @oat_malloc ( i32 8 )
  %obj1501 = bitcast i32* %mem_ptr1500 to %Object* 
  %new_obj1502 = call %Object* @_Object_ctor ( %Object* %obj1501 )
  %_this1 = bitcast %Object* %new_obj1502 to %C 
  %_name1503 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str295, i8** %_name1503
  %this_vtable1504 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable289, %_C_vtable** %this_vtable1504
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh369:
  call void @print_string( i8* @_const_str294 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh368:
  %mem_ptr1497 = call i32* @oat_malloc ( i32 8 )
  %obj1498 = bitcast i32* %mem_ptr1497 to %C* 
  %new_obj1499 = call %C* @_C_ctor ( %C* %obj1498 )
  ret %C* %new_obj1499
}


define %B* @_B_ctor (%B* %_this1){
__fresh367:
  %mem_ptr1492 = call i32* @oat_malloc ( i32 8 )
  %obj1493 = bitcast i32* %mem_ptr1492 to %A* 
  %new_obj1494 = call %A* @_A_ctor ( %A* %obj1493 )
  %_this1 = bitcast %A* %new_obj1494 to %B 
  %_name1495 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str293, i8** %_name1495
  %this_vtable1496 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable288, %_B_vtable** %this_vtable1496
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh366:
  call void @print_string( i8* @_const_str292 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh365:
  %mem_ptr1488 = call i32* @oat_malloc ( i32 8 )
  %obj1489 = bitcast i32* %mem_ptr1488 to %B* 
  %new_obj1490 = call %B* @_B_ctor ( %B* %obj1489 )
  %cast_op1491 = bitcast %B* %new_obj1490 to %Object* 
  ret %Object* %cast_op1491
}


define %A* @_A_ctor (%A* %_this1){
__fresh364:
  %mem_ptr1483 = call i32* @oat_malloc ( i32 8 )
  %obj1484 = bitcast i32* %mem_ptr1483 to %Object* 
  %new_obj1485 = call %Object* @_Object_ctor ( %Object* %obj1484 )
  %_this1 = bitcast %Object* %new_obj1485 to %A 
  %_name1486 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str291, i8** %_name1486
  %this_vtable1487 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable287, %_A_vtable** %this_vtable1487
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh363:
  %_name1481 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1482 = load i8** %_name1481
  ret i8* %lhs_or_call1482
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh362:
  %_name1479 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str290, i8** %_name1479
  %this_vtable1480 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable286, %_Object_vtable** %this_vtable1480
  ret %Object* %_this1
}


