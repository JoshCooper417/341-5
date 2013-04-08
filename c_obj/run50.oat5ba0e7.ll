%G = type { %_G_vtable*, i8* }
%_G_vtable = type { %_D_vtable*, i8* (%Object*)* }
%F = type { %_F_vtable*, i8* }
%_F_vtable = type { %_B_vtable*, i8* (%Object*)* }
%E = type { %_E_vtable*, i8* }
%_E_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%D = type { %_D_vtable*, i8* }
%_D_vtable = type { %_C_vtable*, i8* (%Object*)* }
%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
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
@_const_str324.str. = private unnamed_addr constant [ 2 x i8 ] c "G\00", align 4
@_const_str324 = alias bitcast([ 2 x i8 ]* @_const_str324.str. to i8*)@_const_str323.str. = private unnamed_addr constant [ 2 x i8 ] c "F\00", align 4
@_const_str323 = alias bitcast([ 2 x i8 ]* @_const_str323.str. to i8*)@_const_str322.str. = private unnamed_addr constant [ 2 x i8 ] c "E\00", align 4
@_const_str322 = alias bitcast([ 2 x i8 ]* @_const_str322.str. to i8*)@_const_str321.str. = private unnamed_addr constant [ 2 x i8 ] c "D\00", align 4
@_const_str321 = alias bitcast([ 2 x i8 ]* @_const_str321.str. to i8*)@_const_str320.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str320 = alias bitcast([ 2 x i8 ]* @_const_str320.str. to i8*)@_const_str319.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str319 = alias bitcast([ 2 x i8 ]* @_const_str319.str. to i8*)@_const_str318.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str318 = alias bitcast([ 2 x i8 ]* @_const_str318.str. to i8*)@_const_str317.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str317 = alias bitcast([ 7 x i8 ]* @_const_str317.str. to i8*)@_G_vtable316 = private constant %_G_vtable {%_D_vtable* @_D_vtable313, i8* (%Object*)* @_Object_get_name}, align 4
@_F_vtable315 = private constant %_F_vtable {%_B_vtable* @_B_vtable311, i8* (%Object*)* @_Object_get_name}, align 4
@_E_vtable314 = private constant %_E_vtable {%_Object_vtable* @_Object_vtable309, i8* (%Object*)* @_Object_get_name}, align 4
@_D_vtable313 = private constant %_D_vtable {%_C_vtable* @_C_vtable312, i8* (%Object*)* @_Object_get_name}, align 4
@_C_vtable312 = private constant %_C_vtable {%_B_vtable* @_B_vtable311, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable311 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable309, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable310 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable309, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable309 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh366:
  ret void
}


define i32 @program (i32 %argc1724, { i32, [ 0 x i8* ] }* %argv1722){
__fresh365:
  %argc_slot1725 = alloca i32
  store i32 %argc1724, i32* %argc_slot1725
  %argv_slot1723 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1722, { i32, [ 0 x i8* ] }** %argv_slot1723
  %mem_ptr1726 = call i32* @oat_malloc ( i32 8 )
  %obj1727 = bitcast i32* %mem_ptr1726 to %Object* 
  %new_obj1728 = call %Object* @_Object_ctor ( %Object* %obj1727 )
  %vdecl_slot1729 = alloca %Object*
  store %Object* %new_obj1728, %Object** %vdecl_slot1729
  %mem_ptr1730 = call i32* @oat_malloc ( i32 8 )
  %obj1731 = bitcast i32* %mem_ptr1730 to %A* 
  %new_obj1732 = call %A* @_A_ctor ( %A* %obj1731 )
  %vdecl_slot1733 = alloca %A*
  store %A* %new_obj1732, %A** %vdecl_slot1733
  %mem_ptr1734 = call i32* @oat_malloc ( i32 8 )
  %obj1735 = bitcast i32* %mem_ptr1734 to %B* 
  %new_obj1736 = call %B* @_B_ctor ( %B* %obj1735 )
  %vdecl_slot1737 = alloca %B*
  store %B* %new_obj1736, %B** %vdecl_slot1737
  %mem_ptr1738 = call i32* @oat_malloc ( i32 8 )
  %obj1739 = bitcast i32* %mem_ptr1738 to %C* 
  %new_obj1740 = call %C* @_C_ctor ( %C* %obj1739 )
  %cast_op1741 = bitcast %C* %new_obj1740 to %B* 
  %vdecl_slot1742 = alloca %B*
  store %B* %cast_op1741, %B** %vdecl_slot1742
  %mem_ptr1743 = call i32* @oat_malloc ( i32 8 )
  %obj1744 = bitcast i32* %mem_ptr1743 to %D* 
  %new_obj1745 = call %D* @_D_ctor ( %D* %obj1744 )
  %cast_op1746 = bitcast %D* %new_obj1745 to %B* 
  %vdecl_slot1747 = alloca %B*
  store %B* %cast_op1746, %B** %vdecl_slot1747
  %mem_ptr1748 = call i32* @oat_malloc ( i32 8 )
  %obj1749 = bitcast i32* %mem_ptr1748 to %E* 
  %new_obj1750 = call %E* @_E_ctor ( %E* %obj1749 )
  %vdecl_slot1751 = alloca %E*
  store %E* %new_obj1750, %E** %vdecl_slot1751
  %mem_ptr1752 = call i32* @oat_malloc ( i32 8 )
  %obj1753 = bitcast i32* %mem_ptr1752 to %F* 
  %new_obj1754 = call %F* @_F_ctor ( %F* %obj1753 )
  %cast_op1755 = bitcast %F* %new_obj1754 to %B* 
  %vdecl_slot1756 = alloca %B*
  store %B* %cast_op1755, %B** %vdecl_slot1756
  %mem_ptr1757 = call i32* @oat_malloc ( i32 8 )
  %obj1758 = bitcast i32* %mem_ptr1757 to %G* 
  %new_obj1759 = call %G* @_G_ctor ( %G* %obj1758 )
  %vdecl_slot1760 = alloca %G*
  store %G* %new_obj1759, %G** %vdecl_slot1760
  %lhs_or_call1761 = load %Object** %vdecl_slot1729
  %vtable_ptr1762 = getelementptr %Object* %lhs_or_call1761, i32 0
  %vtable1763 = load %_Object_vtable** %vtable_ptr1762
  %get_name1765 = getelementptr %_Object_vtable* %vtable1763, i32 0, i32 1
  %get_name1764 = load i8* (%Object*)** %get_name1765
  %cast_op1766 = bitcast %Object %lhs_or_call1761 to %Object* 
  %ret1767 = call i8* %get_name1764 ( %Object* %cast_op1766 )
  call void @print_string( i8* %ret1767 )
  %lhs_or_call1768 = load %A** %vdecl_slot1733
  %vtable_ptr1769 = getelementptr %A* %lhs_or_call1768, i32 0
  %vtable1770 = load %_A_vtable** %vtable_ptr1769
  %get_name1772 = getelementptr %_A_vtable* %vtable1770, i32 0, i32 1
  %get_name1771 = load i8* (%Object*)** %get_name1772
  %cast_op1773 = bitcast %A %lhs_or_call1768 to %Object* 
  %ret1774 = call i8* %get_name1771 ( %Object* %cast_op1773 )
  call void @print_string( i8* %ret1774 )
  %lhs_or_call1775 = load %B** %vdecl_slot1737
  %vtable_ptr1776 = getelementptr %B* %lhs_or_call1775, i32 0
  %vtable1777 = load %_B_vtable** %vtable_ptr1776
  %get_name1779 = getelementptr %_B_vtable* %vtable1777, i32 0, i32 1
  %get_name1778 = load i8* (%Object*)** %get_name1779
  %cast_op1780 = bitcast %B %lhs_or_call1775 to %Object* 
  %ret1781 = call i8* %get_name1778 ( %Object* %cast_op1780 )
  call void @print_string( i8* %ret1781 )
  %lhs_or_call1782 = load %B** %vdecl_slot1742
  %vtable_ptr1783 = getelementptr %B* %lhs_or_call1782, i32 0
  %vtable1784 = load %_B_vtable** %vtable_ptr1783
  %get_name1786 = getelementptr %_B_vtable* %vtable1784, i32 0, i32 1
  %get_name1785 = load i8* (%Object*)** %get_name1786
  %cast_op1787 = bitcast %B %lhs_or_call1782 to %Object* 
  %ret1788 = call i8* %get_name1785 ( %Object* %cast_op1787 )
  call void @print_string( i8* %ret1788 )
  %lhs_or_call1789 = load %B** %vdecl_slot1747
  %vtable_ptr1790 = getelementptr %B* %lhs_or_call1789, i32 0
  %vtable1791 = load %_B_vtable** %vtable_ptr1790
  %get_name1793 = getelementptr %_B_vtable* %vtable1791, i32 0, i32 1
  %get_name1792 = load i8* (%Object*)** %get_name1793
  %cast_op1794 = bitcast %B %lhs_or_call1789 to %Object* 
  %ret1795 = call i8* %get_name1792 ( %Object* %cast_op1794 )
  call void @print_string( i8* %ret1795 )
  %lhs_or_call1796 = load %E** %vdecl_slot1751
  %vtable_ptr1797 = getelementptr %E* %lhs_or_call1796, i32 0
  %vtable1798 = load %_E_vtable** %vtable_ptr1797
  %get_name1800 = getelementptr %_E_vtable* %vtable1798, i32 0, i32 1
  %get_name1799 = load i8* (%Object*)** %get_name1800
  %cast_op1801 = bitcast %E %lhs_or_call1796 to %Object* 
  %ret1802 = call i8* %get_name1799 ( %Object* %cast_op1801 )
  call void @print_string( i8* %ret1802 )
  %lhs_or_call1803 = load %B** %vdecl_slot1756
  %vtable_ptr1804 = getelementptr %B* %lhs_or_call1803, i32 0
  %vtable1805 = load %_B_vtable** %vtable_ptr1804
  %get_name1807 = getelementptr %_B_vtable* %vtable1805, i32 0, i32 1
  %get_name1806 = load i8* (%Object*)** %get_name1807
  %cast_op1808 = bitcast %B %lhs_or_call1803 to %Object* 
  %ret1809 = call i8* %get_name1806 ( %Object* %cast_op1808 )
  call void @print_string( i8* %ret1809 )
  %lhs_or_call1810 = load %G** %vdecl_slot1760
  %vtable_ptr1811 = getelementptr %G* %lhs_or_call1810, i32 0
  %vtable1812 = load %_G_vtable** %vtable_ptr1811
  %get_name1814 = getelementptr %_G_vtable* %vtable1812, i32 0, i32 1
  %get_name1813 = load i8* (%Object*)** %get_name1814
  %cast_op1815 = bitcast %G %lhs_or_call1810 to %Object* 
  %ret1816 = call i8* %get_name1813 ( %Object* %cast_op1815 )
  call void @print_string( i8* %ret1816 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh364:
  %mem_ptr1717 = call i32* @oat_malloc ( i32 8 )
  %obj1718 = bitcast i32* %mem_ptr1717 to %D* 
  %new_obj1719 = call %D* @_D_ctor ( %D* %obj1718 )
  %_this1 = bitcast %D* %new_obj1719 to %G 
  %_name1720 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str324, i8** %_name1720
  %this_vtable1721 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable316, %_G_vtable** %this_vtable1721
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh363:
  %mem_ptr1712 = call i32* @oat_malloc ( i32 8 )
  %obj1713 = bitcast i32* %mem_ptr1712 to %B* 
  %new_obj1714 = call %B* @_B_ctor ( %B* %obj1713 )
  %_this1 = bitcast %B* %new_obj1714 to %F 
  %_name1715 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str323, i8** %_name1715
  %this_vtable1716 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable315, %_F_vtable** %this_vtable1716
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh362:
  %mem_ptr1707 = call i32* @oat_malloc ( i32 8 )
  %obj1708 = bitcast i32* %mem_ptr1707 to %Object* 
  %new_obj1709 = call %Object* @_Object_ctor ( %Object* %obj1708 )
  %_this1 = bitcast %Object* %new_obj1709 to %E 
  %_name1710 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str322, i8** %_name1710
  %this_vtable1711 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable314, %_E_vtable** %this_vtable1711
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh361:
  %mem_ptr1702 = call i32* @oat_malloc ( i32 8 )
  %obj1703 = bitcast i32* %mem_ptr1702 to %C* 
  %new_obj1704 = call %C* @_C_ctor ( %C* %obj1703 )
  %_this1 = bitcast %C* %new_obj1704 to %D 
  %_name1705 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str321, i8** %_name1705
  %this_vtable1706 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable313, %_D_vtable** %this_vtable1706
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh360:
  %mem_ptr1697 = call i32* @oat_malloc ( i32 8 )
  %obj1698 = bitcast i32* %mem_ptr1697 to %B* 
  %new_obj1699 = call %B* @_B_ctor ( %B* %obj1698 )
  %_this1 = bitcast %B* %new_obj1699 to %C 
  %_name1700 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str320, i8** %_name1700
  %this_vtable1701 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable312, %_C_vtable** %this_vtable1701
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh359:
  %mem_ptr1692 = call i32* @oat_malloc ( i32 8 )
  %obj1693 = bitcast i32* %mem_ptr1692 to %Object* 
  %new_obj1694 = call %Object* @_Object_ctor ( %Object* %obj1693 )
  %_this1 = bitcast %Object* %new_obj1694 to %B 
  %_name1695 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str319, i8** %_name1695
  %this_vtable1696 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable311, %_B_vtable** %this_vtable1696
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh358:
  %mem_ptr1687 = call i32* @oat_malloc ( i32 8 )
  %obj1688 = bitcast i32* %mem_ptr1687 to %Object* 
  %new_obj1689 = call %Object* @_Object_ctor ( %Object* %obj1688 )
  %_this1 = bitcast %Object* %new_obj1689 to %A 
  %_name1690 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str318, i8** %_name1690
  %this_vtable1691 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable310, %_A_vtable** %this_vtable1691
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh357:
  %_name1685 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1686 = load i8** %_name1685
  ret i8* %lhs_or_call1686
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh356:
  %_name1683 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str317, i8** %_name1683
  %this_vtable1684 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable309, %_Object_vtable** %this_vtable1684
  ret %Object* %_this1
}


