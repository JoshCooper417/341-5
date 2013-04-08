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
@_const_str306.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str306 = alias bitcast([ 2 x i8 ]* @_const_str306.str. to i8*)@_const_str305.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str305 = alias bitcast([ 2 x i8 ]* @_const_str305.str. to i8*)@_const_str304.str. = private unnamed_addr constant [ 2 x i8 ] c "S\00", align 4
@_const_str304 = alias bitcast([ 2 x i8 ]* @_const_str304.str. to i8*)@arr302 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by @arr302.init303
@_const_str301.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str301 = alias bitcast([ 7 x i8 ]* @_const_str301.str. to i8*)@_B_vtable300 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable297, i8* (%Object*)* @_Object_get_name, %A* (%B*)* @_B_f}, align 4
@_A_vtable299 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable297, i8* (%Object*)* @_Object_get_name, %A* (%A*)* @_A_g}, align 4
@_S_vtable298 = private constant %_S_vtable {%_Object_vtable* @_Object_vtable297, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%S*)* @_S_g, %S* (%S*)* @_S_f}, align 4
@_Object_vtable297 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh385:
  call void @arr302.init303(  )
  ret void
}


define i32 @program (i32 %argc1582, { i32, [ 0 x i8* ] }* %argv1580){
__fresh384:
  %argc_slot1583 = alloca i32
  store i32 %argc1582, i32* %argc_slot1583
  %argv_slot1581 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1580, { i32, [ 0 x i8* ] }** %argv_slot1581
  %mem_ptr1584 = call i32* @oat_malloc ( i32 8 )
  %obj1585 = bitcast i32* %mem_ptr1584 to %B* 
  %new_obj1586 = call %B* @_B_ctor ( %B* %obj1585 )
  %vdecl_slot1587 = alloca %B*
  store %B* %new_obj1586, %B** %vdecl_slot1587
  %lhs_or_call1588 = load %B** %vdecl_slot1587
  %vtable_ptr1589 = getelementptr %B* %lhs_or_call1588, i32 0
  %vtable1590 = load %_B_vtable** %vtable_ptr1589
  %f1592 = getelementptr %_B_vtable* %vtable1590, i32 0, i32 2
  %f1591 = load %A* (%B*)** %f1592
  %cast_op1593 = bitcast %B %lhs_or_call1588 to %B* 
  %ret1594 = call %A* %f1591 ( %B* %cast_op1593 )
  %s1595 = getelementptr %A* %ret1594, i32 0, i32 0, i32 3
  %lhs_or_call1596 = load %S** %s1595
  %vtable_ptr1597 = getelementptr %S* %lhs_or_call1596, i32 0
  %vtable1598 = load %_S_vtable** %vtable_ptr1597
  %g1600 = getelementptr %_S_vtable* %vtable1598, i32 0, i32 2
  %g1599 = load { i32, [ 0 x i32 ] }* (%S*)** %g1600
  %cast_op1601 = bitcast %S %lhs_or_call1596 to %S* 
  %ret1602 = call { i32, [ 0 x i32 ] }* %g1599 ( %S* %cast_op1601 )
  %bound_ptr1604 = getelementptr { i32, [ 0 x i32 ] }* %ret1602, i32 0, i32 0
  %bound1605 = load i32* %bound_ptr1604
  call void @oat_array_bounds_check( i32 %bound1605, i32 1 )
  %elt1603 = getelementptr { i32, [ 0 x i32 ] }* %ret1602, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1603
  %lhs_or_call1606 = load %B** %vdecl_slot1587
  %vtable_ptr1607 = getelementptr %B* %lhs_or_call1606, i32 0
  %vtable1608 = load %_B_vtable** %vtable_ptr1607
  %f1610 = getelementptr %_B_vtable* %vtable1608, i32 0, i32 2
  %f1609 = load %A* (%B*)** %f1610
  %cast_op1611 = bitcast %B %lhs_or_call1606 to %B* 
  %ret1612 = call %A* %f1609 ( %B* %cast_op1611 )
  %i1613 = getelementptr %A* %ret1612, i32 0, i32 0, i32 2
  %lhs_or_call1614 = load i32* %i1613
  %lhs_or_call1615 = load %B** %vdecl_slot1587
  %vtable_ptr1616 = getelementptr %B* %lhs_or_call1615, i32 0
  %vtable1617 = load %_B_vtable** %vtable_ptr1616
  %f1619 = getelementptr %_B_vtable* %vtable1617, i32 0, i32 2
  %f1618 = load %A* (%B*)** %f1619
  %cast_op1620 = bitcast %B %lhs_or_call1615 to %B* 
  %ret1621 = call %A* %f1618 ( %B* %cast_op1620 )
  %vtable_ptr1622 = getelementptr %A* %ret1621, i32 0
  %vtable1623 = load %_A_vtable** %vtable_ptr1622
  %g1625 = getelementptr %_A_vtable* %vtable1623, i32 0, i32 2
  %g1624 = load %A* (%A*)** %g1625
  %cast_op1626 = bitcast %A %ret1621 to %A* 
  %ret1627 = call %A* %g1624 ( %A* %cast_op1626 )
  %vtable_ptr1628 = getelementptr %A* %ret1627, i32 0
  %vtable1629 = load %_A_vtable** %vtable_ptr1628
  %g1631 = getelementptr %_A_vtable* %vtable1629, i32 0, i32 2
  %g1630 = load %A* (%A*)** %g1631
  %cast_op1632 = bitcast %A %ret1627 to %A* 
  %ret1633 = call %A* %g1630 ( %A* %cast_op1632 )
  %vtable_ptr1634 = getelementptr %A* %ret1633, i32 0
  %vtable1635 = load %_A_vtable** %vtable_ptr1634
  %g1637 = getelementptr %_A_vtable* %vtable1635, i32 0, i32 2
  %g1636 = load %A* (%A*)** %g1637
  %cast_op1638 = bitcast %A %ret1633 to %A* 
  %ret1639 = call %A* %g1636 ( %A* %cast_op1638 )
  %i1640 = getelementptr %A* %ret1639, i32 0, i32 0, i32 2
  %lhs_or_call1641 = load i32* %i1640
  %bop1642 = add i32 %lhs_or_call1614, %lhs_or_call1641
  %lhs_or_call1643 = load %B** %vdecl_slot1587
  %vtable_ptr1644 = getelementptr %B* %lhs_or_call1643, i32 0
  %vtable1645 = load %_B_vtable** %vtable_ptr1644
  %f1647 = getelementptr %_B_vtable* %vtable1645, i32 0, i32 2
  %f1646 = load %A* (%B*)** %f1647
  %cast_op1648 = bitcast %B %lhs_or_call1643 to %B* 
  %ret1649 = call %A* %f1646 ( %B* %cast_op1648 )
  %vtable_ptr1650 = getelementptr %A* %ret1649, i32 0
  %vtable1651 = load %_A_vtable** %vtable_ptr1650
  %g1653 = getelementptr %_A_vtable* %vtable1651, i32 0, i32 2
  %g1652 = load %A* (%A*)** %g1653
  %cast_op1654 = bitcast %A %ret1649 to %A* 
  %ret1655 = call %A* %g1652 ( %A* %cast_op1654 )
  %vtable_ptr1656 = getelementptr %A* %ret1655, i32 0
  %vtable1657 = load %_A_vtable** %vtable_ptr1656
  %g1659 = getelementptr %_A_vtable* %vtable1657, i32 0, i32 2
  %g1658 = load %A* (%A*)** %g1659
  %cast_op1660 = bitcast %A %ret1655 to %A* 
  %ret1661 = call %A* %g1658 ( %A* %cast_op1660 )
  %vtable_ptr1662 = getelementptr %A* %ret1661, i32 0
  %vtable1663 = load %_A_vtable** %vtable_ptr1662
  %g1665 = getelementptr %_A_vtable* %vtable1663, i32 0, i32 2
  %g1664 = load %A* (%A*)** %g1665
  %cast_op1666 = bitcast %A %ret1661 to %A* 
  %ret1667 = call %A* %g1664 ( %A* %cast_op1666 )
  %vtable_ptr1668 = getelementptr %A* %ret1667, i32 0
  %vtable1669 = load %_A_vtable** %vtable_ptr1668
  %g1671 = getelementptr %_A_vtable* %vtable1669, i32 0, i32 2
  %g1670 = load %A* (%A*)** %g1671
  %cast_op1672 = bitcast %A %ret1667 to %A* 
  %ret1673 = call %A* %g1670 ( %A* %cast_op1672 )
  %vtable_ptr1674 = getelementptr %A* %ret1673, i32 0
  %vtable1675 = load %_A_vtable** %vtable_ptr1674
  %g1677 = getelementptr %_A_vtable* %vtable1675, i32 0, i32 2
  %g1676 = load %A* (%A*)** %g1677
  %cast_op1678 = bitcast %A %ret1673 to %A* 
  %ret1679 = call %A* %g1676 ( %A* %cast_op1678 )
  %vtable_ptr1680 = getelementptr %A* %ret1679, i32 0
  %vtable1681 = load %_A_vtable** %vtable_ptr1680
  %g1683 = getelementptr %_A_vtable* %vtable1681, i32 0, i32 2
  %g1682 = load %A* (%A*)** %g1683
  %cast_op1684 = bitcast %A %ret1679 to %A* 
  %ret1685 = call %A* %g1682 ( %A* %cast_op1684 )
  %vtable_ptr1686 = getelementptr %A* %ret1685, i32 0
  %vtable1687 = load %_A_vtable** %vtable_ptr1686
  %g1689 = getelementptr %_A_vtable* %vtable1687, i32 0, i32 2
  %g1688 = load %A* (%A*)** %g1689
  %cast_op1690 = bitcast %A %ret1685 to %A* 
  %ret1691 = call %A* %g1688 ( %A* %cast_op1690 )
  %vtable_ptr1692 = getelementptr %A* %ret1691, i32 0
  %vtable1693 = load %_A_vtable** %vtable_ptr1692
  %g1695 = getelementptr %_A_vtable* %vtable1693, i32 0, i32 2
  %g1694 = load %A* (%A*)** %g1695
  %cast_op1696 = bitcast %A %ret1691 to %A* 
  %ret1697 = call %A* %g1694 ( %A* %cast_op1696 )
  %vtable_ptr1698 = getelementptr %A* %ret1697, i32 0
  %vtable1699 = load %_A_vtable** %vtable_ptr1698
  %g1701 = getelementptr %_A_vtable* %vtable1699, i32 0, i32 2
  %g1700 = load %A* (%A*)** %g1701
  %cast_op1702 = bitcast %A %ret1697 to %A* 
  %ret1703 = call %A* %g1700 ( %A* %cast_op1702 )
  %i1704 = getelementptr %A* %ret1703, i32 0, i32 0, i32 2
  %lhs_or_call1705 = load i32* %i1704
  %bop1706 = add i32 %bop1642, %lhs_or_call1705
  %lhs_or_call1707 = load %B** %vdecl_slot1587
  %vtable_ptr1708 = getelementptr %B* %lhs_or_call1707, i32 0
  %vtable1709 = load %_B_vtable** %vtable_ptr1708
  %f1711 = getelementptr %_B_vtable* %vtable1709, i32 0, i32 2
  %f1710 = load %A* (%B*)** %f1711
  %cast_op1712 = bitcast %B %lhs_or_call1707 to %B* 
  %ret1713 = call %A* %f1710 ( %B* %cast_op1712 )
  %s1714 = getelementptr %A* %ret1713, i32 0, i32 0, i32 3
  %lhs_or_call1715 = load %S** %s1714
  %vtable_ptr1716 = getelementptr %S* %lhs_or_call1715, i32 0
  %vtable1717 = load %_S_vtable** %vtable_ptr1716
  %f1719 = getelementptr %_S_vtable* %vtable1717, i32 0, i32 3
  %f1718 = load %S* (%S*)** %f1719
  %cast_op1720 = bitcast %S %lhs_or_call1715 to %S* 
  %ret1721 = call %S* %f1718 ( %S* %cast_op1720 )
  %i1722 = getelementptr %S* %ret1721, i32 0, i32 0, i32 2
  %lhs_or_call1723 = load i32* %i1722
  %bop1724 = add i32 %bop1706, %lhs_or_call1723
  %lhs_or_call1725 = load { i32, [ 0 x i32 ] }** @arr302
  %bound_ptr1727 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1725, i32 0, i32 0
  %bound1728 = load i32* %bound_ptr1727
  call void @oat_array_bounds_check( i32 %bound1728, i32 1 )
  %elt1726 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1725, i32 0, i32 1, i32 1
  %lhs_or_call1729 = load i32* %elt1726
  %bop1730 = add i32 %bop1724, %lhs_or_call1729
  %lhs_or_call1731 = load %B** %vdecl_slot1587
  %vtable_ptr1732 = getelementptr %B* %lhs_or_call1731, i32 0
  %vtable1733 = load %_B_vtable** %vtable_ptr1732
  %f1735 = getelementptr %_B_vtable* %vtable1733, i32 0, i32 2
  %f1734 = load %A* (%B*)** %f1735
  %cast_op1736 = bitcast %B %lhs_or_call1731 to %B* 
  %ret1737 = call %A* %f1734 ( %B* %cast_op1736 )
  %s1738 = getelementptr %A* %ret1737, i32 0, i32 0, i32 3
  %lhs_or_call1739 = load %S** %s1738
  %vtable_ptr1740 = getelementptr %S* %lhs_or_call1739, i32 0
  %vtable1741 = load %_S_vtable** %vtable_ptr1740
  %g1743 = getelementptr %_S_vtable* %vtable1741, i32 0, i32 2
  %g1742 = load { i32, [ 0 x i32 ] }* (%S*)** %g1743
  %cast_op1744 = bitcast %S %lhs_or_call1739 to %S* 
  %ret1745 = call { i32, [ 0 x i32 ] }* %g1742 ( %S* %cast_op1744 )
  %bound_ptr1747 = getelementptr { i32, [ 0 x i32 ] }* %ret1745, i32 0, i32 0
  %bound1748 = load i32* %bound_ptr1747
  call void @oat_array_bounds_check( i32 %bound1748, i32 1 )
  %elt1746 = getelementptr { i32, [ 0 x i32 ] }* %ret1745, i32 0, i32 1, i32 1
  %lhs_or_call1749 = load i32* %elt1746
  %bop1750 = add i32 %bop1730, %lhs_or_call1749
  ret i32 %bop1750
}


define %A* @_B_f (%B* %_this1){
__fresh383:
  %mem_ptr1577 = call i32* @oat_malloc ( i32 16 )
  %obj1578 = bitcast i32* %mem_ptr1577 to %A* 
  %new_obj1579 = call %A* @_A_ctor ( %A* %obj1578 )
  ret %A* %new_obj1579
}


define %B* @_B_ctor (%B* %_this1){
__fresh382:
  %mem_ptr1572 = call i32* @oat_malloc ( i32 8 )
  %obj1573 = bitcast i32* %mem_ptr1572 to %Object* 
  %new_obj1574 = call %Object* @_Object_ctor ( %Object* %obj1573 )
  %_this1 = bitcast %Object* %new_obj1574 to %B 
  %_name1575 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str306, i8** %_name1575
  %this_vtable1576 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable300, %_B_vtable** %this_vtable1576
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh381:
  %mem_ptr1569 = call i32* @oat_malloc ( i32 16 )
  %obj1570 = bitcast i32* %mem_ptr1569 to %A* 
  %new_obj1571 = call %A* @_A_ctor ( %A* %obj1570 )
  ret %A* %new_obj1571
}


define %A* @_A_ctor (%A* %_this1){
__fresh380:
  %mem_ptr1560 = call i32* @oat_malloc ( i32 8 )
  %obj1561 = bitcast i32* %mem_ptr1560 to %Object* 
  %new_obj1562 = call %Object* @_Object_ctor ( %Object* %obj1561 )
  %_this1 = bitcast %Object* %new_obj1562 to %A 
  %_name1563 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str305, i8** %_name1563
  %s1564 = getelementptr %A* %_this1, i32 0, i32 0, i32 3
  %mem_ptr1565 = call i32* @oat_malloc ( i32 12 )
  %obj1566 = bitcast i32* %mem_ptr1565 to %S* 
  %new_obj1567 = call %S* @_S_ctor ( %S* %obj1566 )
  store %S* %new_obj1567, %S** %s1564
  %this_vtable1568 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable299, %_A_vtable** %this_vtable1568
  %i1559 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  store i32 1, i32* %i1559
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh379:
  %mem_ptr1556 = call i32* @oat_malloc ( i32 12 )
  %obj1557 = bitcast i32* %mem_ptr1556 to %S* 
  %new_obj1558 = call %S* @_S_ctor ( %S* %obj1557 )
  ret %S* %new_obj1558
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh378:
  %lhs_or_call1555 = load { i32, [ 0 x i32 ] }** @arr302
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1555
}


define %S* @_S_ctor (%S* %_this1){
__fresh377:
  %mem_ptr1550 = call i32* @oat_malloc ( i32 8 )
  %obj1551 = bitcast i32* %mem_ptr1550 to %Object* 
  %new_obj1552 = call %Object* @_Object_ctor ( %Object* %obj1551 )
  %_this1 = bitcast %Object* %new_obj1552 to %S 
  %_name1553 = getelementptr %S* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str304, i8** %_name1553
  %this_vtable1554 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable298, %_S_vtable** %this_vtable1554
  %i1549 = getelementptr %S* %_this1, i32 0, i32 0, i32 2
  store i32 2, i32* %i1549
  ret %S* %_this1
}


define void @arr302.init303 (){
__fresh376:
  %array_ptr1544 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1545 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1544 to { i32, [ 0 x i32 ] }* 
  %index_ptr1546 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1546
  %index_ptr1547 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1547
  %index_ptr1548 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1548
  store { i32, [ 0 x i32 ] }* %array1545, { i32, [ 0 x i32 ] }** @arr302
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh375:
  %_name1542 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call1543 = load i8** %_name1542
  ret i8* %lhs_or_call1543
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh374:
  %_name1540 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str301, i8** %_name1540
  %this_vtable1541 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable297, %_Object_vtable** %this_vtable1541
  ret %Object* %_this1
}


