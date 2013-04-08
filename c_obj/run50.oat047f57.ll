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
@_const_str344.str. = private unnamed_addr constant [ 2 x i8 ] c "G\00", align 4
@_const_str344 = alias bitcast([ 2 x i8 ]* @_const_str344.str. to i8*)@_const_str343.str. = private unnamed_addr constant [ 2 x i8 ] c "F\00", align 4
@_const_str343 = alias bitcast([ 2 x i8 ]* @_const_str343.str. to i8*)@_const_str342.str. = private unnamed_addr constant [ 2 x i8 ] c "E\00", align 4
@_const_str342 = alias bitcast([ 2 x i8 ]* @_const_str342.str. to i8*)@_const_str341.str. = private unnamed_addr constant [ 2 x i8 ] c "D\00", align 4
@_const_str341 = alias bitcast([ 2 x i8 ]* @_const_str341.str. to i8*)@_const_str340.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str340 = alias bitcast([ 2 x i8 ]* @_const_str340.str. to i8*)@_const_str339.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str339 = alias bitcast([ 2 x i8 ]* @_const_str339.str. to i8*)@_const_str338.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str338 = alias bitcast([ 2 x i8 ]* @_const_str338.str. to i8*)@_const_str337.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str337 = alias bitcast([ 7 x i8 ]* @_const_str337.str. to i8*)@_G_vtable336 = private constant %_G_vtable {%_D_vtable* @_D_vtable333, i8* (%Object*)* @_Object_get_name}, align 4
@_F_vtable335 = private constant %_F_vtable {%_B_vtable* @_B_vtable331, i8* (%Object*)* @_Object_get_name}, align 4
@_E_vtable334 = private constant %_E_vtable {%_Object_vtable* @_Object_vtable329, i8* (%Object*)* @_Object_get_name}, align 4
@_D_vtable333 = private constant %_D_vtable {%_C_vtable* @_C_vtable332, i8* (%Object*)* @_Object_get_name}, align 4
@_C_vtable332 = private constant %_C_vtable {%_B_vtable* @_B_vtable331, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable331 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable329, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable330 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable329, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable329 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh371:
  ret void
}


define i32 @program (i32 %argc1747, { i32, [ 0 x i8* ] }* %argv1745){
__fresh370:
  %argc_slot1748 = alloca i32
  store i32 %argc1747, i32* %argc_slot1748
  %argv_slot1746 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1745, { i32, [ 0 x i8* ] }** %argv_slot1746
  %mem_ptr1749 = call i32* @oat_malloc ( i32 8 )
  %obj1750 = bitcast i32* %mem_ptr1749 to %Object* 
  %new_obj1751 = call %Object* @_Object_ctor ( %Object* %obj1750 )
  %vdecl_slot1752 = alloca %Object*
  store %Object* %new_obj1751, %Object** %vdecl_slot1752
  %mem_ptr1753 = call i32* @oat_malloc ( i32 8 )
  %obj1754 = bitcast i32* %mem_ptr1753 to %A* 
  %new_obj1755 = call %A* @_A_ctor ( %A* %obj1754 )
  %vdecl_slot1756 = alloca %A*
  store %A* %new_obj1755, %A** %vdecl_slot1756
  %mem_ptr1757 = call i32* @oat_malloc ( i32 8 )
  %obj1758 = bitcast i32* %mem_ptr1757 to %B* 
  %new_obj1759 = call %B* @_B_ctor ( %B* %obj1758 )
  %vdecl_slot1760 = alloca %B*
  store %B* %new_obj1759, %B** %vdecl_slot1760
  %mem_ptr1761 = call i32* @oat_malloc ( i32 8 )
  %obj1762 = bitcast i32* %mem_ptr1761 to %C* 
  %new_obj1763 = call %C* @_C_ctor ( %C* %obj1762 )
  %cast_op1764 = bitcast %C* %new_obj1763 to %B* 
  %vdecl_slot1765 = alloca %B*
  store %B* %cast_op1764, %B** %vdecl_slot1765
  %mem_ptr1766 = call i32* @oat_malloc ( i32 8 )
  %obj1767 = bitcast i32* %mem_ptr1766 to %D* 
  %new_obj1768 = call %D* @_D_ctor ( %D* %obj1767 )
  %cast_op1769 = bitcast %D* %new_obj1768 to %B* 
  %vdecl_slot1770 = alloca %B*
  store %B* %cast_op1769, %B** %vdecl_slot1770
  %mem_ptr1771 = call i32* @oat_malloc ( i32 8 )
  %obj1772 = bitcast i32* %mem_ptr1771 to %E* 
  %new_obj1773 = call %E* @_E_ctor ( %E* %obj1772 )
  %vdecl_slot1774 = alloca %E*
  store %E* %new_obj1773, %E** %vdecl_slot1774
  %mem_ptr1775 = call i32* @oat_malloc ( i32 8 )
  %obj1776 = bitcast i32* %mem_ptr1775 to %F* 
  %new_obj1777 = call %F* @_F_ctor ( %F* %obj1776 )
  %cast_op1778 = bitcast %F* %new_obj1777 to %B* 
  %vdecl_slot1779 = alloca %B*
  store %B* %cast_op1778, %B** %vdecl_slot1779
  %mem_ptr1780 = call i32* @oat_malloc ( i32 8 )
  %obj1781 = bitcast i32* %mem_ptr1780 to %G* 
  %new_obj1782 = call %G* @_G_ctor ( %G* %obj1781 )
  %vdecl_slot1783 = alloca %G*
  store %G* %new_obj1782, %G** %vdecl_slot1783
  %lhs_or_call1784 = load %Object** %vdecl_slot1752
  %get_name1786 = getelementptr %_Object_vtable* @_Object_vtable329, i32 0, i32 1
  %get_name1785 = load i8* (%Object*)** %get_name1786
  %cast_op1787 = bitcast %Object %lhs_or_call1784 to %Object* 
  %ret1788 = call i8* %get_name1785 ( %Object* %cast_op1787 )
  call void @print_string( i8* %ret1788 )
  %lhs_or_call1789 = load %A** %vdecl_slot1756
  %get_name1791 = getelementptr %_A_vtable* @_A_vtable330, i32 0, i32 1
  %get_name1790 = load i8* (%Object*)** %get_name1791
  %cast_op1792 = bitcast %A %lhs_or_call1789 to %Object* 
  %ret1793 = call i8* %get_name1790 ( %Object* %cast_op1792 )
  call void @print_string( i8* %ret1793 )
  %lhs_or_call1794 = load %B** %vdecl_slot1760
  %get_name1796 = getelementptr %_B_vtable* @_B_vtable331, i32 0, i32 1
  %get_name1795 = load i8* (%Object*)** %get_name1796
  %cast_op1797 = bitcast %B %lhs_or_call1794 to %Object* 
  %ret1798 = call i8* %get_name1795 ( %Object* %cast_op1797 )
  call void @print_string( i8* %ret1798 )
  %lhs_or_call1799 = load %B** %vdecl_slot1765
  %get_name1801 = getelementptr %_B_vtable* @_B_vtable331, i32 0, i32 1
  %get_name1800 = load i8* (%Object*)** %get_name1801
  %cast_op1802 = bitcast %B %lhs_or_call1799 to %Object* 
  %ret1803 = call i8* %get_name1800 ( %Object* %cast_op1802 )
  call void @print_string( i8* %ret1803 )
  %lhs_or_call1804 = load %B** %vdecl_slot1770
  %get_name1806 = getelementptr %_B_vtable* @_B_vtable331, i32 0, i32 1
  %get_name1805 = load i8* (%Object*)** %get_name1806
  %cast_op1807 = bitcast %B %lhs_or_call1804 to %Object* 
  %ret1808 = call i8* %get_name1805 ( %Object* %cast_op1807 )
  call void @print_string( i8* %ret1808 )
  %lhs_or_call1809 = load %E** %vdecl_slot1774
  %get_name1811 = getelementptr %_E_vtable* @_E_vtable334, i32 0, i32 1
  %get_name1810 = load i8* (%Object*)** %get_name1811
  %cast_op1812 = bitcast %E %lhs_or_call1809 to %Object* 
  %ret1813 = call i8* %get_name1810 ( %Object* %cast_op1812 )
  call void @print_string( i8* %ret1813 )
  %lhs_or_call1814 = load %B** %vdecl_slot1779
  %get_name1816 = getelementptr %_B_vtable* @_B_vtable331, i32 0, i32 1
  %get_name1815 = load i8* (%Object*)** %get_name1816
  %cast_op1817 = bitcast %B %lhs_or_call1814 to %Object* 
  %ret1818 = call i8* %get_name1815 ( %Object* %cast_op1817 )
  call void @print_string( i8* %ret1818 )
  %lhs_or_call1819 = load %G** %vdecl_slot1783
  %get_name1821 = getelementptr %_G_vtable* @_G_vtable336, i32 0, i32 1
  %get_name1820 = load i8* (%Object*)** %get_name1821
  %cast_op1822 = bitcast %G %lhs_or_call1819 to %Object* 
  %ret1823 = call i8* %get_name1820 ( %Object* %cast_op1822 )
  call void @print_string( i8* %ret1823 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh369:
  %cast_op1739 = bitcast %G* %_this1 to %D* 
  %mem_ptr1740 = call i32* @oat_malloc ( i32 8 )
  %obj1741 = bitcast i32* %mem_ptr1740 to %G* 
  %new_obj1742 = call %D* @_D_ctor ( %G* %obj1741, %D* %cast_op1739 )
  %_this1 = bitcast %D* %new_obj1742 to %G 
  %_name1743 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str344, i8** %_name1743
  %this_vtable1744 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable336, %_G_vtable** %this_vtable1744
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh368:
  %cast_op1733 = bitcast %F* %_this1 to %B* 
  %mem_ptr1734 = call i32* @oat_malloc ( i32 8 )
  %obj1735 = bitcast i32* %mem_ptr1734 to %F* 
  %new_obj1736 = call %B* @_B_ctor ( %F* %obj1735, %B* %cast_op1733 )
  %_this1 = bitcast %B* %new_obj1736 to %F 
  %_name1737 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str343, i8** %_name1737
  %this_vtable1738 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable335, %_F_vtable** %this_vtable1738
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh367:
  %cast_op1727 = bitcast %E* %_this1 to %Object* 
  %mem_ptr1728 = call i32* @oat_malloc ( i32 8 )
  %obj1729 = bitcast i32* %mem_ptr1728 to %E* 
  %new_obj1730 = call %Object* @_Object_ctor ( %E* %obj1729, %Object* %cast_op1727 )
  %_this1 = bitcast %Object* %new_obj1730 to %E 
  %_name1731 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str342, i8** %_name1731
  %this_vtable1732 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable334, %_E_vtable** %this_vtable1732
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh366:
  %cast_op1721 = bitcast %D* %_this1 to %C* 
  %mem_ptr1722 = call i32* @oat_malloc ( i32 8 )
  %obj1723 = bitcast i32* %mem_ptr1722 to %D* 
  %new_obj1724 = call %C* @_C_ctor ( %D* %obj1723, %C* %cast_op1721 )
  %_this1 = bitcast %C* %new_obj1724 to %D 
  %_name1725 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str341, i8** %_name1725
  %this_vtable1726 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable333, %_D_vtable** %this_vtable1726
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh365:
  %cast_op1715 = bitcast %C* %_this1 to %B* 
  %mem_ptr1716 = call i32* @oat_malloc ( i32 8 )
  %obj1717 = bitcast i32* %mem_ptr1716 to %C* 
  %new_obj1718 = call %B* @_B_ctor ( %C* %obj1717, %B* %cast_op1715 )
  %_this1 = bitcast %B* %new_obj1718 to %C 
  %_name1719 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str340, i8** %_name1719
  %this_vtable1720 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable332, %_C_vtable** %this_vtable1720
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh364:
  %cast_op1709 = bitcast %B* %_this1 to %Object* 
  %mem_ptr1710 = call i32* @oat_malloc ( i32 8 )
  %obj1711 = bitcast i32* %mem_ptr1710 to %B* 
  %new_obj1712 = call %Object* @_Object_ctor ( %B* %obj1711, %Object* %cast_op1709 )
  %_this1 = bitcast %Object* %new_obj1712 to %B 
  %_name1713 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str339, i8** %_name1713
  %this_vtable1714 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable331, %_B_vtable** %this_vtable1714
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh363:
  %cast_op1703 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1704 = call i32* @oat_malloc ( i32 8 )
  %obj1705 = bitcast i32* %mem_ptr1704 to %A* 
  %new_obj1706 = call %Object* @_Object_ctor ( %A* %obj1705, %Object* %cast_op1703 )
  %_this1 = bitcast %Object* %new_obj1706 to %A 
  %_name1707 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str338, i8** %_name1707
  %this_vtable1708 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable330, %_A_vtable** %this_vtable1708
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh362:
  %_name1701 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1702 = load i8** %_name1701
  ret i8* %lhs_or_call1702
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh361:
  %_name1699 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str337, i8** %_name1699
  %this_vtable1700 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable329, %_Object_vtable** %this_vtable1700
  ret %Object* %_this1
}


