%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)*, %A* (%B*)* }
%A = type { %_A_vtable*, i8*, i32, %S* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, %A* (%A*)* }
%S = type { %_S_vtable*, i8*, i32 }
%_S_vtable = type { %_Object_vtable*, i8* (%Object*)*, { i32, [ 0 x i32 ] }* (%S*)*, %S* (%S*)* }
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
@_const_str317.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str317 = alias bitcast([ 2 x i8 ]* @_const_str317.str. to i8*)@_const_str316.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str316 = alias bitcast([ 2 x i8 ]* @_const_str316.str. to i8*)@_const_str315.str. = private unnamed_addr constant [ 2 x i8 ] c "S\00", align 4
@_const_str315 = alias bitcast([ 2 x i8 ]* @_const_str315.str. to i8*)@arr313 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by @arr313.init314
@_const_str312.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str312 = alias bitcast([ 7 x i8 ]* @_const_str312.str. to i8*)@_B_vtable311 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable308, i8* (%Object*)* @_Object_get_name, %A* (%B*)* @_B_f}, align 4
@_A_vtable310 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable308, i8* (%Object*)* @_Object_get_name, %A* (%A*)* @_A_g}, align 4
@_S_vtable309 = private constant %_S_vtable {%_Object_vtable* @_Object_vtable308, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%S*)* @_S_g, %S* (%S*)* @_S_f}, align 4
@_Object_vtable308 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh351:
  call void @arr313.init314(  )
  ret void
}


define i32 @program (i32 %argc1529, { i32, [ 0 x i8* ] }* %argv1527){
__fresh350:
  %argc_slot1530 = alloca i32
  store i32 %argc1529, i32* %argc_slot1530
  %argv_slot1528 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1527, { i32, [ 0 x i8* ] }** %argv_slot1528
  %mem_ptr1531 = call i32* @oat_malloc ( i32 8 )
  %obj1532 = bitcast i32* %mem_ptr1531 to %B* 
  %new_obj1533 = call %B* @_B_ctor ( %B* %obj1532 )
  %vdecl_slot1534 = alloca %B*
  store %B* %new_obj1533, %B** %vdecl_slot1534
  %lhs_or_call1535 = load %B** %vdecl_slot1534
  %f1537 = getelementptr %_B_vtable* @_B_vtable311, i32 0, i32 2
  %f1536 = load %A* (%B*)** %f1537
  %cast_op1538 = bitcast %B %lhs_or_call1535 to %B* 
  %ret1539 = call %A* %f1536 ( %B* %cast_op1538 )
  %s1540 = getelementptr %A* %ret1539, i32 0, i32 3
  %lhs_or_call1541 = load %S** %s1540
  %g1543 = getelementptr %_S_vtable* @_S_vtable309, i32 0, i32 2
  %g1542 = load { i32, [ 0 x i32 ] }* (%S*)** %g1543
  %cast_op1544 = bitcast %S %lhs_or_call1541 to %S* 
  %ret1545 = call { i32, [ 0 x i32 ] }* %g1542 ( %S* %cast_op1544 )
  %bound_ptr1547 = getelementptr { i32, [ 0 x i32 ] }* %ret1545, i32 0, i32 0
  %bound1548 = load i32* %bound_ptr1547
  call void @oat_array_bounds_check( i32 %bound1548, i32 1 )
  %elt1546 = getelementptr { i32, [ 0 x i32 ] }* %ret1545, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1546
  %lhs_or_call1549 = load %B** %vdecl_slot1534
  %f1551 = getelementptr %_B_vtable* @_B_vtable311, i32 0, i32 2
  %f1550 = load %A* (%B*)** %f1551
  %cast_op1552 = bitcast %B %lhs_or_call1549 to %B* 
  %ret1553 = call %A* %f1550 ( %B* %cast_op1552 )
  %i1554 = getelementptr %A* %ret1553, i32 0, i32 2
  %lhs_or_call1555 = load i32* %i1554
  %lhs_or_call1556 = load %B** %vdecl_slot1534
  %f1558 = getelementptr %_B_vtable* @_B_vtable311, i32 0, i32 2
  %f1557 = load %A* (%B*)** %f1558
  %cast_op1559 = bitcast %B %lhs_or_call1556 to %B* 
  %ret1560 = call %A* %f1557 ( %B* %cast_op1559 )
  %g1562 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1561 = load %A* (%A*)** %g1562
  %cast_op1563 = bitcast %A %ret1560 to %A* 
  %ret1564 = call %A* %g1561 ( %A* %cast_op1563 )
  %g1566 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1565 = load %A* (%A*)** %g1566
  %cast_op1567 = bitcast %A %ret1564 to %A* 
  %ret1568 = call %A* %g1565 ( %A* %cast_op1567 )
  %g1570 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1569 = load %A* (%A*)** %g1570
  %cast_op1571 = bitcast %A %ret1568 to %A* 
  %ret1572 = call %A* %g1569 ( %A* %cast_op1571 )
  %i1573 = getelementptr %A* %ret1572, i32 0, i32 2
  %lhs_or_call1574 = load i32* %i1573
  %bop1575 = add i32 %lhs_or_call1555, %lhs_or_call1574
  %lhs_or_call1576 = load %B** %vdecl_slot1534
  %f1578 = getelementptr %_B_vtable* @_B_vtable311, i32 0, i32 2
  %f1577 = load %A* (%B*)** %f1578
  %cast_op1579 = bitcast %B %lhs_or_call1576 to %B* 
  %ret1580 = call %A* %f1577 ( %B* %cast_op1579 )
  %g1582 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1581 = load %A* (%A*)** %g1582
  %cast_op1583 = bitcast %A %ret1580 to %A* 
  %ret1584 = call %A* %g1581 ( %A* %cast_op1583 )
  %g1586 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1585 = load %A* (%A*)** %g1586
  %cast_op1587 = bitcast %A %ret1584 to %A* 
  %ret1588 = call %A* %g1585 ( %A* %cast_op1587 )
  %g1590 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1589 = load %A* (%A*)** %g1590
  %cast_op1591 = bitcast %A %ret1588 to %A* 
  %ret1592 = call %A* %g1589 ( %A* %cast_op1591 )
  %g1594 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1593 = load %A* (%A*)** %g1594
  %cast_op1595 = bitcast %A %ret1592 to %A* 
  %ret1596 = call %A* %g1593 ( %A* %cast_op1595 )
  %g1598 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1597 = load %A* (%A*)** %g1598
  %cast_op1599 = bitcast %A %ret1596 to %A* 
  %ret1600 = call %A* %g1597 ( %A* %cast_op1599 )
  %g1602 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1601 = load %A* (%A*)** %g1602
  %cast_op1603 = bitcast %A %ret1600 to %A* 
  %ret1604 = call %A* %g1601 ( %A* %cast_op1603 )
  %g1606 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1605 = load %A* (%A*)** %g1606
  %cast_op1607 = bitcast %A %ret1604 to %A* 
  %ret1608 = call %A* %g1605 ( %A* %cast_op1607 )
  %g1610 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1609 = load %A* (%A*)** %g1610
  %cast_op1611 = bitcast %A %ret1608 to %A* 
  %ret1612 = call %A* %g1609 ( %A* %cast_op1611 )
  %g1614 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %g1613 = load %A* (%A*)** %g1614
  %cast_op1615 = bitcast %A %ret1612 to %A* 
  %ret1616 = call %A* %g1613 ( %A* %cast_op1615 )
  %i1617 = getelementptr %A* %ret1616, i32 0, i32 2
  %lhs_or_call1618 = load i32* %i1617
  %bop1619 = add i32 %bop1575, %lhs_or_call1618
  %lhs_or_call1620 = load %B** %vdecl_slot1534
  %f1622 = getelementptr %_B_vtable* @_B_vtable311, i32 0, i32 2
  %f1621 = load %A* (%B*)** %f1622
  %cast_op1623 = bitcast %B %lhs_or_call1620 to %B* 
  %ret1624 = call %A* %f1621 ( %B* %cast_op1623 )
  %s1625 = getelementptr %A* %ret1624, i32 0, i32 3
  %lhs_or_call1626 = load %S** %s1625
  %f1628 = getelementptr %_S_vtable* @_S_vtable309, i32 0, i32 3
  %f1627 = load %S* (%S*)** %f1628
  %cast_op1629 = bitcast %S %lhs_or_call1626 to %S* 
  %ret1630 = call %S* %f1627 ( %S* %cast_op1629 )
  %i1631 = getelementptr %S* %ret1630, i32 0, i32 2
  %lhs_or_call1632 = load i32* %i1631
  %bop1633 = add i32 %bop1619, %lhs_or_call1632
  %lhs_or_call1634 = load { i32, [ 0 x i32 ] }** @arr313
  %bound_ptr1636 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1634, i32 0, i32 0
  %bound1637 = load i32* %bound_ptr1636
  call void @oat_array_bounds_check( i32 %bound1637, i32 1 )
  %elt1635 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1634, i32 0, i32 1, i32 1
  %lhs_or_call1638 = load i32* %elt1635
  %bop1639 = add i32 %bop1633, %lhs_or_call1638
  %lhs_or_call1640 = load %B** %vdecl_slot1534
  %f1642 = getelementptr %_B_vtable* @_B_vtable311, i32 0, i32 2
  %f1641 = load %A* (%B*)** %f1642
  %cast_op1643 = bitcast %B %lhs_or_call1640 to %B* 
  %ret1644 = call %A* %f1641 ( %B* %cast_op1643 )
  %s1645 = getelementptr %A* %ret1644, i32 0, i32 3
  %lhs_or_call1646 = load %S** %s1645
  %g1648 = getelementptr %_S_vtable* @_S_vtable309, i32 0, i32 2
  %g1647 = load { i32, [ 0 x i32 ] }* (%S*)** %g1648
  %cast_op1649 = bitcast %S %lhs_or_call1646 to %S* 
  %ret1650 = call { i32, [ 0 x i32 ] }* %g1647 ( %S* %cast_op1649 )
  %bound_ptr1652 = getelementptr { i32, [ 0 x i32 ] }* %ret1650, i32 0, i32 0
  %bound1653 = load i32* %bound_ptr1652
  call void @oat_array_bounds_check( i32 %bound1653, i32 1 )
  %elt1651 = getelementptr { i32, [ 0 x i32 ] }* %ret1650, i32 0, i32 1, i32 1
  %lhs_or_call1654 = load i32* %elt1651
  %bop1655 = add i32 %bop1639, %lhs_or_call1654
  ret i32 %bop1655
}


define %A* @_B_f (%B* %_this1){
__fresh349:
  %mem_ptr1524 = call i32* @oat_malloc ( i32 16 )
  %obj1525 = bitcast i32* %mem_ptr1524 to %A* 
  %new_obj1526 = call %A* @_A_ctor ( %A* %obj1525 )
  ret %A* %new_obj1526
}


define %B* @_B_ctor (%B* %_this1){
__fresh348:
  %cast_op1518 = bitcast %B* %_this1 to %Object* 
  %mem_ptr1519 = call i32* @oat_malloc ( i32 8 )
  %obj1520 = bitcast i32* %mem_ptr1519 to %B* 
  %new_obj1521 = call %Object* @_Object_ctor ( %B* %obj1520, %Object* %cast_op1518 )
  %_this1 = bitcast %Object* %new_obj1521 to %B 
  %_name1522 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str317, i8** %_name1522
  %this_vtable1523 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable311, %_B_vtable** %this_vtable1523
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh347:
  %mem_ptr1515 = call i32* @oat_malloc ( i32 16 )
  %obj1516 = bitcast i32* %mem_ptr1515 to %A* 
  %new_obj1517 = call %A* @_A_ctor ( %A* %obj1516 )
  ret %A* %new_obj1517
}


define %A* @_A_ctor (%A* %_this1){
__fresh346:
  %cast_op1505 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1506 = call i32* @oat_malloc ( i32 16 )
  %obj1507 = bitcast i32* %mem_ptr1506 to %A* 
  %new_obj1508 = call %Object* @_Object_ctor ( %A* %obj1507, %Object* %cast_op1505 )
  %_this1 = bitcast %Object* %new_obj1508 to %A 
  %_name1509 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str316, i8** %_name1509
  %s1510 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1511 = call i32* @oat_malloc ( i32 12 )
  %obj1512 = bitcast i32* %mem_ptr1511 to %S* 
  %new_obj1513 = call %S* @_S_ctor ( %S* %obj1512 )
  store %S* %new_obj1513, %S** %s1510
  %this_vtable1514 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable310, %_A_vtable** %this_vtable1514
  %i1504 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i1504
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh345:
  %mem_ptr1501 = call i32* @oat_malloc ( i32 12 )
  %obj1502 = bitcast i32* %mem_ptr1501 to %S* 
  %new_obj1503 = call %S* @_S_ctor ( %S* %obj1502 )
  ret %S* %new_obj1503
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh344:
  %lhs_or_call1500 = load { i32, [ 0 x i32 ] }** @arr313
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1500
}


define %S* @_S_ctor (%S* %_this1){
__fresh343:
  %cast_op1494 = bitcast %S* %_this1 to %Object* 
  %mem_ptr1495 = call i32* @oat_malloc ( i32 12 )
  %obj1496 = bitcast i32* %mem_ptr1495 to %S* 
  %new_obj1497 = call %Object* @_Object_ctor ( %S* %obj1496, %Object* %cast_op1494 )
  %_this1 = bitcast %Object* %new_obj1497 to %S 
  %_name1498 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str315, i8** %_name1498
  %this_vtable1499 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable309, %_S_vtable** %this_vtable1499
  %i1493 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %i1493
  ret %S* %_this1
}


define void @arr313.init314 (){
__fresh342:
  %array_ptr1488 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1489 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1488 to { i32, [ 0 x i32 ] }* 
  %index_ptr1490 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1490
  %index_ptr1491 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1491
  %index_ptr1492 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1492
  store { i32, [ 0 x i32 ] }* %array1489, { i32, [ 0 x i32 ] }** @arr313
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh341:
  %_name1486 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1487 = load i8** %_name1486
  ret i8* %lhs_or_call1487
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh340:
  %_name1484 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str312, i8** %_name1484
  %this_vtable1485 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable308, %_Object_vtable** %this_vtable1485
  ret %Object* %_this1
}


