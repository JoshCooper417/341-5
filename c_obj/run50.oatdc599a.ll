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
@_const_str335.str. = private unnamed_addr constant [ 2 x i8 ] c "G\00", align 4
@_const_str335 = alias bitcast([ 2 x i8 ]* @_const_str335.str. to i8*)@_const_str334.str. = private unnamed_addr constant [ 2 x i8 ] c "F\00", align 4
@_const_str334 = alias bitcast([ 2 x i8 ]* @_const_str334.str. to i8*)@_const_str333.str. = private unnamed_addr constant [ 2 x i8 ] c "E\00", align 4
@_const_str333 = alias bitcast([ 2 x i8 ]* @_const_str333.str. to i8*)@_const_str332.str. = private unnamed_addr constant [ 2 x i8 ] c "D\00", align 4
@_const_str332 = alias bitcast([ 2 x i8 ]* @_const_str332.str. to i8*)@_const_str331.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str331 = alias bitcast([ 2 x i8 ]* @_const_str331.str. to i8*)@_const_str330.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str330 = alias bitcast([ 2 x i8 ]* @_const_str330.str. to i8*)@_const_str329.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str329 = alias bitcast([ 2 x i8 ]* @_const_str329.str. to i8*)@_const_str328.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str328 = alias bitcast([ 7 x i8 ]* @_const_str328.str. to i8*)@_G_vtable327 = private constant %_G_vtable {%_D_vtable* @_D_vtable324, i8* (%Object*)* @_Object_get_name}, align 4
@_F_vtable326 = private constant %_F_vtable {%_B_vtable* @_B_vtable322, i8* (%Object*)* @_Object_get_name}, align 4
@_E_vtable325 = private constant %_E_vtable {%_Object_vtable* @_Object_vtable320, i8* (%Object*)* @_Object_get_name}, align 4
@_D_vtable324 = private constant %_D_vtable {%_C_vtable* @_C_vtable323, i8* (%Object*)* @_Object_get_name}, align 4
@_C_vtable323 = private constant %_C_vtable {%_B_vtable* @_B_vtable322, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable322 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable320, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable321 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable320, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable320 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh366:
  ret void
}


define i32 @program (i32 %argc1736, { i32, [ 0 x i8* ] }* %argv1734){
__fresh365:
  %argc_slot1737 = alloca i32
  store i32 %argc1736, i32* %argc_slot1737
  %argv_slot1735 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1734, { i32, [ 0 x i8* ] }** %argv_slot1735
  %mem_ptr1738 = call i32* @oat_malloc ( i32 8 )
  %obj1739 = bitcast i32* %mem_ptr1738 to %Object* 
  %new_obj1740 = call %Object* @_Object_ctor ( %Object* %obj1739 )
  %vdecl_slot1741 = alloca %Object*
  store %Object* %new_obj1740, %Object** %vdecl_slot1741
  %mem_ptr1742 = call i32* @oat_malloc ( i32 8 )
  %obj1743 = bitcast i32* %mem_ptr1742 to %A* 
  %new_obj1744 = call %A* @_A_ctor ( %A* %obj1743 )
  %vdecl_slot1745 = alloca %A*
  store %A* %new_obj1744, %A** %vdecl_slot1745
  %mem_ptr1746 = call i32* @oat_malloc ( i32 8 )
  %obj1747 = bitcast i32* %mem_ptr1746 to %B* 
  %new_obj1748 = call %B* @_B_ctor ( %B* %obj1747 )
  %vdecl_slot1749 = alloca %B*
  store %B* %new_obj1748, %B** %vdecl_slot1749
  %mem_ptr1750 = call i32* @oat_malloc ( i32 8 )
  %obj1751 = bitcast i32* %mem_ptr1750 to %C* 
  %new_obj1752 = call %C* @_C_ctor ( %C* %obj1751 )
  %cast_op1753 = bitcast %C* %new_obj1752 to %B* 
  %vdecl_slot1754 = alloca %B*
  store %B* %cast_op1753, %B** %vdecl_slot1754
  %mem_ptr1755 = call i32* @oat_malloc ( i32 8 )
  %obj1756 = bitcast i32* %mem_ptr1755 to %D* 
  %new_obj1757 = call %D* @_D_ctor ( %D* %obj1756 )
  %cast_op1758 = bitcast %D* %new_obj1757 to %B* 
  %vdecl_slot1759 = alloca %B*
  store %B* %cast_op1758, %B** %vdecl_slot1759
  %mem_ptr1760 = call i32* @oat_malloc ( i32 8 )
  %obj1761 = bitcast i32* %mem_ptr1760 to %E* 
  %new_obj1762 = call %E* @_E_ctor ( %E* %obj1761 )
  %vdecl_slot1763 = alloca %E*
  store %E* %new_obj1762, %E** %vdecl_slot1763
  %mem_ptr1764 = call i32* @oat_malloc ( i32 8 )
  %obj1765 = bitcast i32* %mem_ptr1764 to %F* 
  %new_obj1766 = call %F* @_F_ctor ( %F* %obj1765 )
  %cast_op1767 = bitcast %F* %new_obj1766 to %B* 
  %vdecl_slot1768 = alloca %B*
  store %B* %cast_op1767, %B** %vdecl_slot1768
  %mem_ptr1769 = call i32* @oat_malloc ( i32 8 )
  %obj1770 = bitcast i32* %mem_ptr1769 to %G* 
  %new_obj1771 = call %G* @_G_ctor ( %G* %obj1770 )
  %vdecl_slot1772 = alloca %G*
  store %G* %new_obj1771, %G** %vdecl_slot1772
  %lhs_or_call1773 = load %Object** %vdecl_slot1741
  %vtable_ptr1774 = getelementptr %Object* %lhs_or_call1773, i32 0
  %vtable1775 = load %_Object_vtable** %vtable_ptr1774
  %get_name1777 = getelementptr %_Object_vtable* %vtable1775, i32 0, i32 1
  %get_name1776 = load i8* (%Object*)** %get_name1777
  %cast_op1778 = bitcast %Object %lhs_or_call1773 to %Object* 
  %ret1779 = call i8* %get_name1776 ( %Object* %cast_op1778 )
  call void @print_string( i8* %ret1779 )
  %lhs_or_call1780 = load %A** %vdecl_slot1745
  %vtable_ptr1781 = getelementptr %A* %lhs_or_call1780, i32 0
  %vtable1782 = load %_A_vtable** %vtable_ptr1781
  %get_name1784 = getelementptr %_A_vtable* %vtable1782, i32 0, i32 1
  %get_name1783 = load i8* (%Object*)** %get_name1784
  %cast_op1785 = bitcast %A %lhs_or_call1780 to %Object* 
  %ret1786 = call i8* %get_name1783 ( %Object* %cast_op1785 )
  call void @print_string( i8* %ret1786 )
  %lhs_or_call1787 = load %B** %vdecl_slot1749
  %vtable_ptr1788 = getelementptr %B* %lhs_or_call1787, i32 0
  %vtable1789 = load %_B_vtable** %vtable_ptr1788
  %get_name1791 = getelementptr %_B_vtable* %vtable1789, i32 0, i32 1
  %get_name1790 = load i8* (%Object*)** %get_name1791
  %cast_op1792 = bitcast %B %lhs_or_call1787 to %Object* 
  %ret1793 = call i8* %get_name1790 ( %Object* %cast_op1792 )
  call void @print_string( i8* %ret1793 )
  %lhs_or_call1794 = load %B** %vdecl_slot1754
  %vtable_ptr1795 = getelementptr %B* %lhs_or_call1794, i32 0
  %vtable1796 = load %_B_vtable** %vtable_ptr1795
  %get_name1798 = getelementptr %_B_vtable* %vtable1796, i32 0, i32 1
  %get_name1797 = load i8* (%Object*)** %get_name1798
  %cast_op1799 = bitcast %B %lhs_or_call1794 to %Object* 
  %ret1800 = call i8* %get_name1797 ( %Object* %cast_op1799 )
  call void @print_string( i8* %ret1800 )
  %lhs_or_call1801 = load %B** %vdecl_slot1759
  %vtable_ptr1802 = getelementptr %B* %lhs_or_call1801, i32 0
  %vtable1803 = load %_B_vtable** %vtable_ptr1802
  %get_name1805 = getelementptr %_B_vtable* %vtable1803, i32 0, i32 1
  %get_name1804 = load i8* (%Object*)** %get_name1805
  %cast_op1806 = bitcast %B %lhs_or_call1801 to %Object* 
  %ret1807 = call i8* %get_name1804 ( %Object* %cast_op1806 )
  call void @print_string( i8* %ret1807 )
  %lhs_or_call1808 = load %E** %vdecl_slot1763
  %vtable_ptr1809 = getelementptr %E* %lhs_or_call1808, i32 0
  %vtable1810 = load %_E_vtable** %vtable_ptr1809
  %get_name1812 = getelementptr %_E_vtable* %vtable1810, i32 0, i32 1
  %get_name1811 = load i8* (%Object*)** %get_name1812
  %cast_op1813 = bitcast %E %lhs_or_call1808 to %Object* 
  %ret1814 = call i8* %get_name1811 ( %Object* %cast_op1813 )
  call void @print_string( i8* %ret1814 )
  %lhs_or_call1815 = load %B** %vdecl_slot1768
  %vtable_ptr1816 = getelementptr %B* %lhs_or_call1815, i32 0
  %vtable1817 = load %_B_vtable** %vtable_ptr1816
  %get_name1819 = getelementptr %_B_vtable* %vtable1817, i32 0, i32 1
  %get_name1818 = load i8* (%Object*)** %get_name1819
  %cast_op1820 = bitcast %B %lhs_or_call1815 to %Object* 
  %ret1821 = call i8* %get_name1818 ( %Object* %cast_op1820 )
  call void @print_string( i8* %ret1821 )
  %lhs_or_call1822 = load %G** %vdecl_slot1772
  %vtable_ptr1823 = getelementptr %G* %lhs_or_call1822, i32 0
  %vtable1824 = load %_G_vtable** %vtable_ptr1823
  %get_name1826 = getelementptr %_G_vtable* %vtable1824, i32 0, i32 1
  %get_name1825 = load i8* (%Object*)** %get_name1826
  %cast_op1827 = bitcast %G %lhs_or_call1822 to %Object* 
  %ret1828 = call i8* %get_name1825 ( %Object* %cast_op1827 )
  call void @print_string( i8* %ret1828 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh364:
  %mem_ptr1729 = call i32* @oat_malloc ( i32 8 )
  %obj1730 = bitcast i32* %mem_ptr1729 to %D* 
  %new_obj1731 = call %D* @_D_ctor ( %D* %obj1730 )
  %_this1 = bitcast %D* %new_obj1731 to %G 
  %_name1732 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str335, i8** %_name1732
  %this_vtable1733 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable327, %_G_vtable** %this_vtable1733
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh363:
  %mem_ptr1724 = call i32* @oat_malloc ( i32 8 )
  %obj1725 = bitcast i32* %mem_ptr1724 to %B* 
  %new_obj1726 = call %B* @_B_ctor ( %B* %obj1725 )
  %_this1 = bitcast %B* %new_obj1726 to %F 
  %_name1727 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str334, i8** %_name1727
  %this_vtable1728 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable326, %_F_vtable** %this_vtable1728
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh362:
  %mem_ptr1719 = call i32* @oat_malloc ( i32 8 )
  %obj1720 = bitcast i32* %mem_ptr1719 to %Object* 
  %new_obj1721 = call %Object* @_Object_ctor ( %Object* %obj1720 )
  %_this1 = bitcast %Object* %new_obj1721 to %E 
  %_name1722 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str333, i8** %_name1722
  %this_vtable1723 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable325, %_E_vtable** %this_vtable1723
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh361:
  %mem_ptr1714 = call i32* @oat_malloc ( i32 8 )
  %obj1715 = bitcast i32* %mem_ptr1714 to %C* 
  %new_obj1716 = call %C* @_C_ctor ( %C* %obj1715 )
  %_this1 = bitcast %C* %new_obj1716 to %D 
  %_name1717 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str332, i8** %_name1717
  %this_vtable1718 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable324, %_D_vtable** %this_vtable1718
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh360:
  %mem_ptr1709 = call i32* @oat_malloc ( i32 8 )
  %obj1710 = bitcast i32* %mem_ptr1709 to %B* 
  %new_obj1711 = call %B* @_B_ctor ( %B* %obj1710 )
  %_this1 = bitcast %B* %new_obj1711 to %C 
  %_name1712 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str331, i8** %_name1712
  %this_vtable1713 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable323, %_C_vtable** %this_vtable1713
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh359:
  %mem_ptr1704 = call i32* @oat_malloc ( i32 8 )
  %obj1705 = bitcast i32* %mem_ptr1704 to %Object* 
  %new_obj1706 = call %Object* @_Object_ctor ( %Object* %obj1705 )
  %_this1 = bitcast %Object* %new_obj1706 to %B 
  %_name1707 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str330, i8** %_name1707
  %this_vtable1708 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable322, %_B_vtable** %this_vtable1708
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh358:
  %mem_ptr1699 = call i32* @oat_malloc ( i32 8 )
  %obj1700 = bitcast i32* %mem_ptr1699 to %Object* 
  %new_obj1701 = call %Object* @_Object_ctor ( %Object* %obj1700 )
  %_this1 = bitcast %Object* %new_obj1701 to %A 
  %_name1702 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str329, i8** %_name1702
  %this_vtable1703 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable321, %_A_vtable** %this_vtable1703
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh357:
  %_name1697 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1698 = load i8** %_name1697
  ret i8* %lhs_or_call1698
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh356:
  %_name1695 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str328, i8** %_name1695
  %this_vtable1696 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable320, %_Object_vtable** %this_vtable1696
  ret %Object* %_this1
}


