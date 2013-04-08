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


define i32 @program (i32 %argc1593, { i32, [ 0 x i8* ] }* %argv1591){
__fresh384:
  %argc_slot1594 = alloca i32
  store i32 %argc1593, i32* %argc_slot1594
  %argv_slot1592 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1591, { i32, [ 0 x i8* ] }** %argv_slot1592
  %mem_ptr1595 = call i32* @oat_malloc ( i32 8 )
  %obj1596 = bitcast i32* %mem_ptr1595 to %B* 
  %new_obj1597 = call %B* @_B_ctor ( %B* %obj1596 )
  %vdecl_slot1598 = alloca %B*
  store %B* %new_obj1597, %B** %vdecl_slot1598
  %lhs_or_call1599 = load %B** %vdecl_slot1598
  %vtable_ptr1600 = getelementptr %B* %lhs_or_call1599, i32 0
  %vtable1601 = load %_B_vtable** %vtable_ptr1600
  %f1603 = getelementptr %_B_vtable* %vtable1601, i32 0, i32 2
  %f1602 = load %A* (%B*)** %f1603
  %cast_op1604 = bitcast %B %lhs_or_call1599 to %B* 
  %ret1605 = call %A* %f1602 ( %B* %cast_op1604 )
  %s1606 = getelementptr %A* %ret1605, i32 0, i32 3
  %lhs_or_call1607 = load %S** %s1606
  %vtable_ptr1608 = getelementptr %S* %lhs_or_call1607, i32 0
  %vtable1609 = load %_S_vtable** %vtable_ptr1608
  %g1611 = getelementptr %_S_vtable* %vtable1609, i32 0, i32 2
  %g1610 = load { i32, [ 0 x i32 ] }* (%S*)** %g1611
  %cast_op1612 = bitcast %S %lhs_or_call1607 to %S* 
  %ret1613 = call { i32, [ 0 x i32 ] }* %g1610 ( %S* %cast_op1612 )
  %bound_ptr1615 = getelementptr { i32, [ 0 x i32 ] }* %ret1613, i32 0, i32 0
  %bound1616 = load i32* %bound_ptr1615
  call void @oat_array_bounds_check( i32 %bound1616, i32 1 )
  %elt1614 = getelementptr { i32, [ 0 x i32 ] }* %ret1613, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1614
  %lhs_or_call1617 = load %B** %vdecl_slot1598
  %vtable_ptr1618 = getelementptr %B* %lhs_or_call1617, i32 0
  %vtable1619 = load %_B_vtable** %vtable_ptr1618
  %f1621 = getelementptr %_B_vtable* %vtable1619, i32 0, i32 2
  %f1620 = load %A* (%B*)** %f1621
  %cast_op1622 = bitcast %B %lhs_or_call1617 to %B* 
  %ret1623 = call %A* %f1620 ( %B* %cast_op1622 )
  %i1624 = getelementptr %A* %ret1623, i32 0, i32 2
  %lhs_or_call1625 = load i32* %i1624
  %lhs_or_call1626 = load %B** %vdecl_slot1598
  %vtable_ptr1627 = getelementptr %B* %lhs_or_call1626, i32 0
  %vtable1628 = load %_B_vtable** %vtable_ptr1627
  %f1630 = getelementptr %_B_vtable* %vtable1628, i32 0, i32 2
  %f1629 = load %A* (%B*)** %f1630
  %cast_op1631 = bitcast %B %lhs_or_call1626 to %B* 
  %ret1632 = call %A* %f1629 ( %B* %cast_op1631 )
  %vtable_ptr1633 = getelementptr %A* %ret1632, i32 0
  %vtable1634 = load %_A_vtable** %vtable_ptr1633
  %g1636 = getelementptr %_A_vtable* %vtable1634, i32 0, i32 2
  %g1635 = load %A* (%A*)** %g1636
  %cast_op1637 = bitcast %A %ret1632 to %A* 
  %ret1638 = call %A* %g1635 ( %A* %cast_op1637 )
  %vtable_ptr1639 = getelementptr %A* %ret1638, i32 0
  %vtable1640 = load %_A_vtable** %vtable_ptr1639
  %g1642 = getelementptr %_A_vtable* %vtable1640, i32 0, i32 2
  %g1641 = load %A* (%A*)** %g1642
  %cast_op1643 = bitcast %A %ret1638 to %A* 
  %ret1644 = call %A* %g1641 ( %A* %cast_op1643 )
  %vtable_ptr1645 = getelementptr %A* %ret1644, i32 0
  %vtable1646 = load %_A_vtable** %vtable_ptr1645
  %g1648 = getelementptr %_A_vtable* %vtable1646, i32 0, i32 2
  %g1647 = load %A* (%A*)** %g1648
  %cast_op1649 = bitcast %A %ret1644 to %A* 
  %ret1650 = call %A* %g1647 ( %A* %cast_op1649 )
  %i1651 = getelementptr %A* %ret1650, i32 0, i32 2
  %lhs_or_call1652 = load i32* %i1651
  %bop1653 = add i32 %lhs_or_call1625, %lhs_or_call1652
  %lhs_or_call1654 = load %B** %vdecl_slot1598
  %vtable_ptr1655 = getelementptr %B* %lhs_or_call1654, i32 0
  %vtable1656 = load %_B_vtable** %vtable_ptr1655
  %f1658 = getelementptr %_B_vtable* %vtable1656, i32 0, i32 2
  %f1657 = load %A* (%B*)** %f1658
  %cast_op1659 = bitcast %B %lhs_or_call1654 to %B* 
  %ret1660 = call %A* %f1657 ( %B* %cast_op1659 )
  %vtable_ptr1661 = getelementptr %A* %ret1660, i32 0
  %vtable1662 = load %_A_vtable** %vtable_ptr1661
  %g1664 = getelementptr %_A_vtable* %vtable1662, i32 0, i32 2
  %g1663 = load %A* (%A*)** %g1664
  %cast_op1665 = bitcast %A %ret1660 to %A* 
  %ret1666 = call %A* %g1663 ( %A* %cast_op1665 )
  %vtable_ptr1667 = getelementptr %A* %ret1666, i32 0
  %vtable1668 = load %_A_vtable** %vtable_ptr1667
  %g1670 = getelementptr %_A_vtable* %vtable1668, i32 0, i32 2
  %g1669 = load %A* (%A*)** %g1670
  %cast_op1671 = bitcast %A %ret1666 to %A* 
  %ret1672 = call %A* %g1669 ( %A* %cast_op1671 )
  %vtable_ptr1673 = getelementptr %A* %ret1672, i32 0
  %vtable1674 = load %_A_vtable** %vtable_ptr1673
  %g1676 = getelementptr %_A_vtable* %vtable1674, i32 0, i32 2
  %g1675 = load %A* (%A*)** %g1676
  %cast_op1677 = bitcast %A %ret1672 to %A* 
  %ret1678 = call %A* %g1675 ( %A* %cast_op1677 )
  %vtable_ptr1679 = getelementptr %A* %ret1678, i32 0
  %vtable1680 = load %_A_vtable** %vtable_ptr1679
  %g1682 = getelementptr %_A_vtable* %vtable1680, i32 0, i32 2
  %g1681 = load %A* (%A*)** %g1682
  %cast_op1683 = bitcast %A %ret1678 to %A* 
  %ret1684 = call %A* %g1681 ( %A* %cast_op1683 )
  %vtable_ptr1685 = getelementptr %A* %ret1684, i32 0
  %vtable1686 = load %_A_vtable** %vtable_ptr1685
  %g1688 = getelementptr %_A_vtable* %vtable1686, i32 0, i32 2
  %g1687 = load %A* (%A*)** %g1688
  %cast_op1689 = bitcast %A %ret1684 to %A* 
  %ret1690 = call %A* %g1687 ( %A* %cast_op1689 )
  %vtable_ptr1691 = getelementptr %A* %ret1690, i32 0
  %vtable1692 = load %_A_vtable** %vtable_ptr1691
  %g1694 = getelementptr %_A_vtable* %vtable1692, i32 0, i32 2
  %g1693 = load %A* (%A*)** %g1694
  %cast_op1695 = bitcast %A %ret1690 to %A* 
  %ret1696 = call %A* %g1693 ( %A* %cast_op1695 )
  %vtable_ptr1697 = getelementptr %A* %ret1696, i32 0
  %vtable1698 = load %_A_vtable** %vtable_ptr1697
  %g1700 = getelementptr %_A_vtable* %vtable1698, i32 0, i32 2
  %g1699 = load %A* (%A*)** %g1700
  %cast_op1701 = bitcast %A %ret1696 to %A* 
  %ret1702 = call %A* %g1699 ( %A* %cast_op1701 )
  %vtable_ptr1703 = getelementptr %A* %ret1702, i32 0
  %vtable1704 = load %_A_vtable** %vtable_ptr1703
  %g1706 = getelementptr %_A_vtable* %vtable1704, i32 0, i32 2
  %g1705 = load %A* (%A*)** %g1706
  %cast_op1707 = bitcast %A %ret1702 to %A* 
  %ret1708 = call %A* %g1705 ( %A* %cast_op1707 )
  %vtable_ptr1709 = getelementptr %A* %ret1708, i32 0
  %vtable1710 = load %_A_vtable** %vtable_ptr1709
  %g1712 = getelementptr %_A_vtable* %vtable1710, i32 0, i32 2
  %g1711 = load %A* (%A*)** %g1712
  %cast_op1713 = bitcast %A %ret1708 to %A* 
  %ret1714 = call %A* %g1711 ( %A* %cast_op1713 )
  %i1715 = getelementptr %A* %ret1714, i32 0, i32 2
  %lhs_or_call1716 = load i32* %i1715
  %bop1717 = add i32 %bop1653, %lhs_or_call1716
  %lhs_or_call1718 = load %B** %vdecl_slot1598
  %vtable_ptr1719 = getelementptr %B* %lhs_or_call1718, i32 0
  %vtable1720 = load %_B_vtable** %vtable_ptr1719
  %f1722 = getelementptr %_B_vtable* %vtable1720, i32 0, i32 2
  %f1721 = load %A* (%B*)** %f1722
  %cast_op1723 = bitcast %B %lhs_or_call1718 to %B* 
  %ret1724 = call %A* %f1721 ( %B* %cast_op1723 )
  %s1725 = getelementptr %A* %ret1724, i32 0, i32 3
  %lhs_or_call1726 = load %S** %s1725
  %vtable_ptr1727 = getelementptr %S* %lhs_or_call1726, i32 0
  %vtable1728 = load %_S_vtable** %vtable_ptr1727
  %f1730 = getelementptr %_S_vtable* %vtable1728, i32 0, i32 3
  %f1729 = load %S* (%S*)** %f1730
  %cast_op1731 = bitcast %S %lhs_or_call1726 to %S* 
  %ret1732 = call %S* %f1729 ( %S* %cast_op1731 )
  %i1733 = getelementptr %S* %ret1732, i32 0, i32 2
  %lhs_or_call1734 = load i32* %i1733
  %bop1735 = add i32 %bop1717, %lhs_or_call1734
  %lhs_or_call1736 = load { i32, [ 0 x i32 ] }** @arr302
  %bound_ptr1738 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1736, i32 0, i32 0
  %bound1739 = load i32* %bound_ptr1738
  call void @oat_array_bounds_check( i32 %bound1739, i32 1 )
  %elt1737 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1736, i32 0, i32 1, i32 1
  %lhs_or_call1740 = load i32* %elt1737
  %bop1741 = add i32 %bop1735, %lhs_or_call1740
  %lhs_or_call1742 = load %B** %vdecl_slot1598
  %vtable_ptr1743 = getelementptr %B* %lhs_or_call1742, i32 0
  %vtable1744 = load %_B_vtable** %vtable_ptr1743
  %f1746 = getelementptr %_B_vtable* %vtable1744, i32 0, i32 2
  %f1745 = load %A* (%B*)** %f1746
  %cast_op1747 = bitcast %B %lhs_or_call1742 to %B* 
  %ret1748 = call %A* %f1745 ( %B* %cast_op1747 )
  %s1749 = getelementptr %A* %ret1748, i32 0, i32 3
  %lhs_or_call1750 = load %S** %s1749
  %vtable_ptr1751 = getelementptr %S* %lhs_or_call1750, i32 0
  %vtable1752 = load %_S_vtable** %vtable_ptr1751
  %g1754 = getelementptr %_S_vtable* %vtable1752, i32 0, i32 2
  %g1753 = load { i32, [ 0 x i32 ] }* (%S*)** %g1754
  %cast_op1755 = bitcast %S %lhs_or_call1750 to %S* 
  %ret1756 = call { i32, [ 0 x i32 ] }* %g1753 ( %S* %cast_op1755 )
  %bound_ptr1758 = getelementptr { i32, [ 0 x i32 ] }* %ret1756, i32 0, i32 0
  %bound1759 = load i32* %bound_ptr1758
  call void @oat_array_bounds_check( i32 %bound1759, i32 1 )
  %elt1757 = getelementptr { i32, [ 0 x i32 ] }* %ret1756, i32 0, i32 1, i32 1
  %lhs_or_call1760 = load i32* %elt1757
  %bop1761 = add i32 %bop1741, %lhs_or_call1760
  ret i32 %bop1761
}


define %A* @_B_f (%B* %_this1){
__fresh383:
  %mem_ptr1588 = call i32* @oat_malloc ( i32 16 )
  %obj1589 = bitcast i32* %mem_ptr1588 to %A* 
  %new_obj1590 = call %A* @_A_ctor ( %A* %obj1589 )
  ret %A* %new_obj1590
}


define %B* @_B_ctor (%B* %_this1){
__fresh382:
  %mem_ptr1583 = call i32* @oat_malloc ( i32 8 )
  %obj1584 = bitcast i32* %mem_ptr1583 to %Object* 
  %new_obj1585 = call %Object* @_Object_ctor ( %Object* %obj1584 )
  %_this1 = bitcast %Object* %new_obj1585 to %B 
  %_name1586 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str306, i8** %_name1586
  %this_vtable1587 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable300, %_B_vtable** %this_vtable1587
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh381:
  %mem_ptr1580 = call i32* @oat_malloc ( i32 16 )
  %obj1581 = bitcast i32* %mem_ptr1580 to %A* 
  %new_obj1582 = call %A* @_A_ctor ( %A* %obj1581 )
  ret %A* %new_obj1582
}


define %A* @_A_ctor (%A* %_this1){
__fresh380:
  %mem_ptr1571 = call i32* @oat_malloc ( i32 8 )
  %obj1572 = bitcast i32* %mem_ptr1571 to %Object* 
  %new_obj1573 = call %Object* @_Object_ctor ( %Object* %obj1572 )
  %_this1 = bitcast %Object* %new_obj1573 to %A 
  %_name1574 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str305, i8** %_name1574
  %s1575 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1576 = call i32* @oat_malloc ( i32 12 )
  %obj1577 = bitcast i32* %mem_ptr1576 to %S* 
  %new_obj1578 = call %S* @_S_ctor ( %S* %obj1577 )
  store %S* %new_obj1578, %S** %s1575
  %this_vtable1579 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable299, %_A_vtable** %this_vtable1579
  %i1570 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i1570
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh379:
  %mem_ptr1567 = call i32* @oat_malloc ( i32 12 )
  %obj1568 = bitcast i32* %mem_ptr1567 to %S* 
  %new_obj1569 = call %S* @_S_ctor ( %S* %obj1568 )
  ret %S* %new_obj1569
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh378:
  %lhs_or_call1566 = load { i32, [ 0 x i32 ] }** @arr302
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1566
}


define %S* @_S_ctor (%S* %_this1){
__fresh377:
  %mem_ptr1561 = call i32* @oat_malloc ( i32 8 )
  %obj1562 = bitcast i32* %mem_ptr1561 to %Object* 
  %new_obj1563 = call %Object* @_Object_ctor ( %Object* %obj1562 )
  %_this1 = bitcast %Object* %new_obj1563 to %S 
  %_name1564 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str304, i8** %_name1564
  %this_vtable1565 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable298, %_S_vtable** %this_vtable1565
  %i1560 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %i1560
  ret %S* %_this1
}


define void @arr302.init303 (){
__fresh376:
  %array_ptr1555 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1556 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1555 to { i32, [ 0 x i32 ] }* 
  %index_ptr1557 = getelementptr { i32, [ 0 x i32 ] }* %array1556, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1557
  %index_ptr1558 = getelementptr { i32, [ 0 x i32 ] }* %array1556, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1558
  %index_ptr1559 = getelementptr { i32, [ 0 x i32 ] }* %array1556, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1559
  store { i32, [ 0 x i32 ] }* %array1556, { i32, [ 0 x i32 ] }** @arr302
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh375:
  %_name1553 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1554 = load i8** %_name1553
  ret i8* %lhs_or_call1554
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh374:
  %_name1551 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str301, i8** %_name1551
  %this_vtable1552 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable297, %_Object_vtable** %this_vtable1552
  ret %Object* %_this1
}


