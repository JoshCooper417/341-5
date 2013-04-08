%A = type { %_A_vtable*, i8*, i32, i32, %O*, { i32, [ 0 x %A* ] }* }
%_A_vtable = type { %_O_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, i32 (%A*)* }
%O = type { %_O_vtable*, i8* }
%_O_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str286.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str286 = alias bitcast([ 2 x i8 ]* @_const_str286.str. to i8*)@_const_str285.str. = private unnamed_addr constant [ 2 x i8 ] c "O\00", align 4
@_const_str285 = alias bitcast([ 2 x i8 ]* @_const_str285.str. to i8*)@_const_str284.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str284 = alias bitcast([ 7 x i8 ]* @_const_str284.str. to i8*)@_A_vtable283 = private constant %_A_vtable {%_O_vtable* @_O_vtable282, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_init, void (%A*)* @_A_incr, i32 (%A*)* @_A_sum}, align 4
@_O_vtable282 = private constant %_O_vtable {%_Object_vtable* @_Object_vtable281, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable281 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh528:
  ret void
}


define i32 @program (i32 %argc1627, { i32, [ 0 x i8* ] }* %argv1625){
__fresh527:
  %argc_slot1628 = alloca i32
  store i32 %argc1627, i32* %argc_slot1628
  %argv_slot1626 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1625, { i32, [ 0 x i8* ] }** %argv_slot1626
  %mem_ptr1629 = call i32* @oat_malloc ( i32 24 )
  %obj1630 = bitcast i32* %mem_ptr1629 to %A* 
  %new_obj1631 = call %A* @_A_ctor ( %A* %obj1630 )
  %vdecl_slot1632 = alloca %A*
  store %A* %new_obj1631, %A** %vdecl_slot1632
  %lhs_or_call1633 = load %A** %vdecl_slot1632
  %vtable_ptr1634 = getelementptr %A* %lhs_or_call1633, i32 0
  %vtable1635 = load %_A_vtable** %vtable_ptr1634
  %init1637 = getelementptr %_A_vtable* %vtable1635, i32 0, i32 2
  %init1636 = load void (%A*)** %init1637
  %cast_op1638 = bitcast %A %lhs_or_call1633 to %A* 
  call void %init1636( %A* %cast_op1638 )
  %lhs_or_call1639 = load %A** %vdecl_slot1632
  %vtable_ptr1640 = getelementptr %A* %lhs_or_call1639, i32 0
  %vtable1641 = load %_A_vtable** %vtable_ptr1640
  %sum1643 = getelementptr %_A_vtable* %vtable1641, i32 0, i32 4
  %sum1642 = load i32 (%A*)** %sum1643
  %cast_op1644 = bitcast %A %lhs_or_call1639 to %A* 
  %ret1645 = call i32 %sum1642 ( %A* %cast_op1644 )
  ret i32 %ret1645
}


define i32 @_A_sum (%A* %_this1){
__fresh520:
  %vdecl_slot1572 = alloca i32
  store i32 0, i32* %vdecl_slot1572
  %arr1573 = getelementptr %A* %_this1, i32 0, i32 5
  %lhs_or_call1574 = load { i32, [ 0 x %A* ] }** %arr1573
  %ifnull_slot1575 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %lhs_or_call1574, { i32, [ 0 x %A* ] }** %ifnull_slot1575
  %ifnull_guard1576 = icmp ne { i32, [ 0 x %A* ] }* %lhs_or_call1574, null
  br i1 %ifnull_guard1576, label %__then519, label %__else518

__fresh521:
  br label %__then519

__then519:
  %vdecl_slot1577 = alloca i32
  store i32 0, i32* %vdecl_slot1577
  br label %__cond513

__cond513:
  %lhs_or_call1578 = load i32* %vdecl_slot1577
  %lhs_or_call1579 = load { i32, [ 0 x %A* ] }** %ifnull_slot1575
  %len_ptr1580 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1579, i32 0, i32 0
  %len1581 = load i32* %len_ptr1580
  %bop1582 = icmp slt i32 %lhs_or_call1578, %len1581
  br i1 %bop1582, label %__body512, label %__post511

__fresh522:
  br label %__body512

__body512:
  %lhs_or_call1583 = load { i32, [ 0 x %A* ] }** %ifnull_slot1575
  %lhs_or_call1584 = load i32* %vdecl_slot1577
  %bound_ptr1586 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1583, i32 0, i32 0
  %bound1587 = load i32* %bound_ptr1586
  call void @oat_array_bounds_check( i32 %bound1587, i32 %lhs_or_call1584 )
  %elt1585 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1583, i32 0, i32 1, i32 %lhs_or_call1584
  %lhs_or_call1588 = load %A** %elt1585
  %vtable_ptr1589 = getelementptr %A* %lhs_or_call1588, i32 0
  %vtable1590 = load %_A_vtable** %vtable_ptr1589
  %incr1592 = getelementptr %_A_vtable* %vtable1590, i32 0, i32 3
  %incr1591 = load void (%A*)** %incr1592
  %cast_op1593 = bitcast %A %lhs_or_call1588 to %A* 
  call void %incr1591( %A* %cast_op1593 )
  %lhs_or_call1594 = load i32* %vdecl_slot1577
  %bop1595 = add i32 %lhs_or_call1594, 1
  store i32 %bop1595, i32* %vdecl_slot1577
  br label %__cond513

__fresh523:
  br label %__post511

__post511:
  %vdecl_slot1596 = alloca i32
  store i32 0, i32* %vdecl_slot1596
  br label %__cond516

__cond516:
  %lhs_or_call1597 = load i32* %vdecl_slot1596
  %lhs_or_call1598 = load { i32, [ 0 x %A* ] }** %ifnull_slot1575
  %len_ptr1599 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1598, i32 0, i32 0
  %len1600 = load i32* %len_ptr1599
  %bop1601 = icmp slt i32 %lhs_or_call1597, %len1600
  br i1 %bop1601, label %__body515, label %__post514

__fresh524:
  br label %__body515

__body515:
  %lhs_or_call1602 = load i32* %vdecl_slot1572
  %lhs_or_call1603 = load { i32, [ 0 x %A* ] }** %ifnull_slot1575
  %lhs_or_call1604 = load i32* %vdecl_slot1596
  %bound_ptr1606 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1603, i32 0, i32 0
  %bound1607 = load i32* %bound_ptr1606
  call void @oat_array_bounds_check( i32 %bound1607, i32 %lhs_or_call1604 )
  %elt1605 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1603, i32 0, i32 1, i32 %lhs_or_call1604
  %lhs_or_call1608 = load %A** %elt1605
  %a1609 = getelementptr %A* %lhs_or_call1608, i32 0, i32 2
  %lhs_or_call1610 = load i32* %a1609
  %bop1611 = add i32 %lhs_or_call1602, %lhs_or_call1610
  store i32 %bop1611, i32* %vdecl_slot1572
  %lhs_or_call1612 = load i32* %vdecl_slot1572
  %lhs_or_call1613 = load { i32, [ 0 x %A* ] }** %ifnull_slot1575
  %lhs_or_call1614 = load i32* %vdecl_slot1596
  %bound_ptr1616 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1613, i32 0, i32 0
  %bound1617 = load i32* %bound_ptr1616
  call void @oat_array_bounds_check( i32 %bound1617, i32 %lhs_or_call1614 )
  %elt1615 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1613, i32 0, i32 1, i32 %lhs_or_call1614
  %lhs_or_call1618 = load %A** %elt1615
  %b1619 = getelementptr %A* %lhs_or_call1618, i32 0, i32 3
  %lhs_or_call1620 = load i32* %b1619
  %bop1621 = add i32 %lhs_or_call1612, %lhs_or_call1620
  store i32 %bop1621, i32* %vdecl_slot1572
  %lhs_or_call1622 = load i32* %vdecl_slot1596
  %bop1623 = add i32 %lhs_or_call1622, 1
  store i32 %bop1623, i32* %vdecl_slot1596
  br label %__cond516

__fresh525:
  br label %__post514

__post514:
  br label %__merge517

__fresh526:
  br label %__else518

__else518:
  br label %__merge517

__merge517:
  %lhs_or_call1624 = load i32* %vdecl_slot1572
  ret i32 %lhs_or_call1624
}


define void @_A_incr (%A* %_this1){
__fresh510:
  %a1564 = getelementptr %A* %_this1, i32 0, i32 2
  %a1565 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1566 = load i32* %a1565
  %bop1567 = add i32 %lhs_or_call1566, 1
  store i32 %bop1567, i32* %a1564
  %b1568 = getelementptr %A* %_this1, i32 0, i32 3
  %b1569 = getelementptr %A* %_this1, i32 0, i32 3
  %lhs_or_call1570 = load i32* %b1569
  %bop1571 = add i32 %lhs_or_call1570, 1
  store i32 %bop1571, i32* %b1568
  ret void
}


define void @_A_init (%A* %_this1){
__fresh500:
  %o1528 = getelementptr %A* %_this1, i32 0, i32 4
  %mem_ptr1529 = call i32* @oat_malloc ( i32 24 )
  %obj1530 = bitcast i32* %mem_ptr1529 to %A* 
  %new_obj1531 = call %A* @_A_ctor ( %A* %obj1530 )
  %cast_op1532 = bitcast %A* %new_obj1531 to %O* 
  store %O* %cast_op1532, %O** %o1528
  %o1533 = getelementptr %A* %_this1, i32 0, i32 4
  %lhs_or_call1534 = load %O** %o1533
  %ifnull_slot1535 = alloca %O*
  store %O* %lhs_or_call1534, %O** %ifnull_slot1535
  %ifnull_guard1536 = icmp ne %O* %lhs_or_call1534, null
  br i1 %ifnull_guard1536, label %__then496, label %__else495

__fresh501:
  br label %__then496

__then496:
  br label %__init488

__fresh502:
  br label %__init488

__init488:
  %lhs_or_call1538 = load %O** %ifnull_slot1535
  %rvtable1539 = getelementptr %O* %lhs_or_call1538, i32 0
  br label %__bound_check489

__fresh503:
  br label %__bound_check489

__bound_check489:
  %cast_op1543 = bitcast %_A_vtable* @_A_vtable283 to i8** 
  %lvtable1540 = load i8** %cast_op1543
  %cast_vtable1544 = bitcast i8** %rvtable1539 to i8** 
  %rvtable1542 = load i8** %cast_vtable1544
  %compare1541 = icmp eq i8* %rvtable1542, null
  br i1 %compare1541, label %__end_no492, label %__check_curr491

__fresh504:
  br label %__check_curr491

__check_curr491:
  %compare1541 = icmp eq i8** %lvtable1540, %rvtable1542
  br i1 %compare1541, label %__end_yes493, label %__move_up490

__fresh505:
  br label %__move_up490

__move_up490:
  %rvtable1539 = getelementptr i8* %rvtable1542, i32 0
  br label %__bound_check489

__fresh506:
  br label %__end_yes493

__end_yes493:
  %lhs_or_call1538 = load %O** %ifnull_slot1535
  %cast_ptr1537 = bitcast %O* %lhs_or_call1538 to %A* 
  br label %__end_no492

__end_no492:
  br label %__merge494

__fresh507:
  br label %__else495

__else495:
  br label %__merge494

__merge494:
  %arr1545 = getelementptr %A* %_this1, i32 0, i32 5
  %array_ptr1546 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1547 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1546 to { i32, [ 0 x %A* ] }* 
  %_tmp2891548 = alloca i32
  store i32 2, i32* %_tmp2891548
  %_tmp2901549 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1547, { i32, [ 0 x %A* ] }** %_tmp2901549
  %vdecl_slot1550 = alloca i32
  store i32 0, i32* %vdecl_slot1550
  br label %__cond499

__cond499:
  %lhs_or_call1551 = load i32* %vdecl_slot1550
  %lhs_or_call1552 = load i32* %_tmp2891548
  %bop1553 = icmp slt i32 %lhs_or_call1551, %lhs_or_call1552
  br i1 %bop1553, label %__body498, label %__post497

__fresh508:
  br label %__body498

__body498:
  %lhs_or_call1554 = load { i32, [ 0 x %A* ] }** %_tmp2901549
  %lhs_or_call1555 = load i32* %vdecl_slot1550
  %bound_ptr1557 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1554, i32 0, i32 0
  %bound1558 = load i32* %bound_ptr1557
  call void @oat_array_bounds_check( i32 %bound1558, i32 %lhs_or_call1555 )
  %elt1556 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1554, i32 0, i32 1, i32 %lhs_or_call1555
  %mem_ptr1559 = call i32* @oat_malloc ( i32 24 )
  %obj1560 = bitcast i32* %mem_ptr1559 to %A* 
  %new_obj1561 = call %A* @_A_ctor ( %A* %obj1560 )
  store %A* %new_obj1561, %A** %elt1556
  %lhs_or_call1562 = load i32* %vdecl_slot1550
  %bop1563 = add i32 %lhs_or_call1562, 1
  store i32 %bop1563, i32* %vdecl_slot1550
  br label %__cond499

__fresh509:
  br label %__post497

__post497:
  store { i32, [ 0 x %A* ] }* %array1547, { i32, [ 0 x %A* ] }** %arr1545
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh487:
  %mem_ptr1521 = call i32* @oat_malloc ( i32 8 )
  %obj1522 = bitcast i32* %mem_ptr1521 to %O* 
  %new_obj1523 = call %O* @_O_ctor ( %O* %obj1522 )
  %_this1 = bitcast %O* %new_obj1523 to %A 
  %_name1524 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str286, i8** %_name1524
  %a1525 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %a1525
  %b1526 = getelementptr %A* %_this1, i32 0, i32 3
  store i32 2, i32* %b1526
  %this_vtable1527 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable283, %_A_vtable** %this_vtable1527
  ret %A* %_this1
}


define %O* @_O_ctor (%O* %_this1){
__fresh486:
  %mem_ptr1516 = call i32* @oat_malloc ( i32 8 )
  %obj1517 = bitcast i32* %mem_ptr1516 to %Object* 
  %new_obj1518 = call %Object* @_Object_ctor ( %Object* %obj1517 )
  %_this1 = bitcast %Object* %new_obj1518 to %O 
  %_name1519 = getelementptr %O* %_this1, i32 0, i32 1
  store i8* @_const_str285, i8** %_name1519
  %this_vtable1520 = getelementptr %O* %_this1, i32 0, i32 0
  store %_O_vtable* @_O_vtable282, %_O_vtable** %this_vtable1520
  ret %O* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh485:
  %_name1514 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1515 = load i8** %_name1514
  ret i8* %lhs_or_call1515
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh484:
  %_name1512 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str284, i8** %_name1512
  %this_vtable1513 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable281, %_Object_vtable** %this_vtable1513
  ret %Object* %_this1
}


