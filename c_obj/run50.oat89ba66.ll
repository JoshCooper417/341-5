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


define i32 @program (i32 %argc1717, { i32, [ 0 x i8* ] }* %argv1715){
__fresh365:
  %argc_slot1718 = alloca i32
  store i32 %argc1717, i32* %argc_slot1718
  %argv_slot1716 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1715, { i32, [ 0 x i8* ] }** %argv_slot1716
  %mem_ptr1719 = call i32* @oat_malloc ( i32 8 )
  %obj1720 = bitcast i32* %mem_ptr1719 to %Object* 
  %new_obj1721 = call %Object* @_Object_ctor ( %Object* %obj1720 )
  %vdecl_slot1722 = alloca %Object*
  store %Object* %new_obj1721, %Object** %vdecl_slot1722
  %mem_ptr1723 = call i32* @oat_malloc ( i32 8 )
  %obj1724 = bitcast i32* %mem_ptr1723 to %A* 
  %new_obj1725 = call %A* @_A_ctor ( %A* %obj1724 )
  %vdecl_slot1726 = alloca %A*
  store %A* %new_obj1725, %A** %vdecl_slot1726
  %mem_ptr1727 = call i32* @oat_malloc ( i32 8 )
  %obj1728 = bitcast i32* %mem_ptr1727 to %B* 
  %new_obj1729 = call %B* @_B_ctor ( %B* %obj1728 )
  %vdecl_slot1730 = alloca %B*
  store %B* %new_obj1729, %B** %vdecl_slot1730
  %mem_ptr1731 = call i32* @oat_malloc ( i32 8 )
  %obj1732 = bitcast i32* %mem_ptr1731 to %C* 
  %new_obj1733 = call %C* @_C_ctor ( %C* %obj1732 )
  %cast_op1734 = bitcast %C* %new_obj1733 to %B* 
  %vdecl_slot1735 = alloca %B*
  store %B* %cast_op1734, %B** %vdecl_slot1735
  %mem_ptr1736 = call i32* @oat_malloc ( i32 8 )
  %obj1737 = bitcast i32* %mem_ptr1736 to %D* 
  %new_obj1738 = call %D* @_D_ctor ( %D* %obj1737 )
  %cast_op1739 = bitcast %D* %new_obj1738 to %B* 
  %vdecl_slot1740 = alloca %B*
  store %B* %cast_op1739, %B** %vdecl_slot1740
  %mem_ptr1741 = call i32* @oat_malloc ( i32 8 )
  %obj1742 = bitcast i32* %mem_ptr1741 to %E* 
  %new_obj1743 = call %E* @_E_ctor ( %E* %obj1742 )
  %vdecl_slot1744 = alloca %E*
  store %E* %new_obj1743, %E** %vdecl_slot1744
  %mem_ptr1745 = call i32* @oat_malloc ( i32 8 )
  %obj1746 = bitcast i32* %mem_ptr1745 to %F* 
  %new_obj1747 = call %F* @_F_ctor ( %F* %obj1746 )
  %cast_op1748 = bitcast %F* %new_obj1747 to %B* 
  %vdecl_slot1749 = alloca %B*
  store %B* %cast_op1748, %B** %vdecl_slot1749
  %mem_ptr1750 = call i32* @oat_malloc ( i32 8 )
  %obj1751 = bitcast i32* %mem_ptr1750 to %G* 
  %new_obj1752 = call %G* @_G_ctor ( %G* %obj1751 )
  %vdecl_slot1753 = alloca %G*
  store %G* %new_obj1752, %G** %vdecl_slot1753
  %lhs_or_call1754 = load %Object** %vdecl_slot1722
  %vtable_ptr1755 = getelementptr %Object* %lhs_or_call1754, i32 0
  %vtable1756 = load %_Object_vtable** %vtable_ptr1755
  %get_name1758 = getelementptr %_Object_vtable* %vtable1756, i32 0, i32 1
  %get_name1757 = load i8* (%Object*)** %get_name1758
  %cast_op1759 = bitcast %Object %lhs_or_call1754 to %Object* 
  %ret1760 = call i8* %get_name1757 ( %Object* %cast_op1759 )
  call void @print_string( i8* %ret1760 )
  %lhs_or_call1761 = load %A** %vdecl_slot1726
  %vtable_ptr1762 = getelementptr %A* %lhs_or_call1761, i32 0
  %vtable1763 = load %_A_vtable** %vtable_ptr1762
  %get_name1765 = getelementptr %_A_vtable* %vtable1763, i32 0, i32 1
  %get_name1764 = load i8* (%Object*)** %get_name1765
  %cast_op1766 = bitcast %A %lhs_or_call1761 to %Object* 
  %ret1767 = call i8* %get_name1764 ( %Object* %cast_op1766 )
  call void @print_string( i8* %ret1767 )
  %lhs_or_call1768 = load %B** %vdecl_slot1730
  %vtable_ptr1769 = getelementptr %B* %lhs_or_call1768, i32 0
  %vtable1770 = load %_B_vtable** %vtable_ptr1769
  %get_name1772 = getelementptr %_B_vtable* %vtable1770, i32 0, i32 1
  %get_name1771 = load i8* (%Object*)** %get_name1772
  %cast_op1773 = bitcast %B %lhs_or_call1768 to %Object* 
  %ret1774 = call i8* %get_name1771 ( %Object* %cast_op1773 )
  call void @print_string( i8* %ret1774 )
  %lhs_or_call1775 = load %B** %vdecl_slot1735
  %vtable_ptr1776 = getelementptr %B* %lhs_or_call1775, i32 0
  %vtable1777 = load %_B_vtable** %vtable_ptr1776
  %get_name1779 = getelementptr %_B_vtable* %vtable1777, i32 0, i32 1
  %get_name1778 = load i8* (%Object*)** %get_name1779
  %cast_op1780 = bitcast %B %lhs_or_call1775 to %Object* 
  %ret1781 = call i8* %get_name1778 ( %Object* %cast_op1780 )
  call void @print_string( i8* %ret1781 )
  %lhs_or_call1782 = load %B** %vdecl_slot1740
  %vtable_ptr1783 = getelementptr %B* %lhs_or_call1782, i32 0
  %vtable1784 = load %_B_vtable** %vtable_ptr1783
  %get_name1786 = getelementptr %_B_vtable* %vtable1784, i32 0, i32 1
  %get_name1785 = load i8* (%Object*)** %get_name1786
  %cast_op1787 = bitcast %B %lhs_or_call1782 to %Object* 
  %ret1788 = call i8* %get_name1785 ( %Object* %cast_op1787 )
  call void @print_string( i8* %ret1788 )
  %lhs_or_call1789 = load %E** %vdecl_slot1744
  %vtable_ptr1790 = getelementptr %E* %lhs_or_call1789, i32 0
  %vtable1791 = load %_E_vtable** %vtable_ptr1790
  %get_name1793 = getelementptr %_E_vtable* %vtable1791, i32 0, i32 1
  %get_name1792 = load i8* (%Object*)** %get_name1793
  %cast_op1794 = bitcast %E %lhs_or_call1789 to %Object* 
  %ret1795 = call i8* %get_name1792 ( %Object* %cast_op1794 )
  call void @print_string( i8* %ret1795 )
  %lhs_or_call1796 = load %B** %vdecl_slot1749
  %vtable_ptr1797 = getelementptr %B* %lhs_or_call1796, i32 0
  %vtable1798 = load %_B_vtable** %vtable_ptr1797
  %get_name1800 = getelementptr %_B_vtable* %vtable1798, i32 0, i32 1
  %get_name1799 = load i8* (%Object*)** %get_name1800
  %cast_op1801 = bitcast %B %lhs_or_call1796 to %Object* 
  %ret1802 = call i8* %get_name1799 ( %Object* %cast_op1801 )
  call void @print_string( i8* %ret1802 )
  %lhs_or_call1803 = load %G** %vdecl_slot1753
  %vtable_ptr1804 = getelementptr %G* %lhs_or_call1803, i32 0
  %vtable1805 = load %_G_vtable** %vtable_ptr1804
  %get_name1807 = getelementptr %_G_vtable* %vtable1805, i32 0, i32 1
  %get_name1806 = load i8* (%Object*)** %get_name1807
  %cast_op1808 = bitcast %G %lhs_or_call1803 to %Object* 
  %ret1809 = call i8* %get_name1806 ( %Object* %cast_op1808 )
  call void @print_string( i8* %ret1809 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh364:
  %mem_ptr1710 = call i32* @oat_malloc ( i32 8 )
  %obj1711 = bitcast i32* %mem_ptr1710 to %D* 
  %new_obj1712 = call %D* @_D_ctor ( %D* %obj1711 )
  %_this1 = bitcast %D* %new_obj1712 to %G 
  %_name1713 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str324, i8** %_name1713
  %this_vtable1714 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable316, %_G_vtable** %this_vtable1714
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh363:
  %mem_ptr1705 = call i32* @oat_malloc ( i32 8 )
  %obj1706 = bitcast i32* %mem_ptr1705 to %B* 
  %new_obj1707 = call %B* @_B_ctor ( %B* %obj1706 )
  %_this1 = bitcast %B* %new_obj1707 to %F 
  %_name1708 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str323, i8** %_name1708
  %this_vtable1709 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable315, %_F_vtable** %this_vtable1709
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh362:
  %mem_ptr1700 = call i32* @oat_malloc ( i32 8 )
  %obj1701 = bitcast i32* %mem_ptr1700 to %Object* 
  %new_obj1702 = call %Object* @_Object_ctor ( %Object* %obj1701 )
  %_this1 = bitcast %Object* %new_obj1702 to %E 
  %_name1703 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str322, i8** %_name1703
  %this_vtable1704 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable314, %_E_vtable** %this_vtable1704
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh361:
  %mem_ptr1695 = call i32* @oat_malloc ( i32 8 )
  %obj1696 = bitcast i32* %mem_ptr1695 to %C* 
  %new_obj1697 = call %C* @_C_ctor ( %C* %obj1696 )
  %_this1 = bitcast %C* %new_obj1697 to %D 
  %_name1698 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str321, i8** %_name1698
  %this_vtable1699 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable313, %_D_vtable** %this_vtable1699
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh360:
  %mem_ptr1690 = call i32* @oat_malloc ( i32 8 )
  %obj1691 = bitcast i32* %mem_ptr1690 to %B* 
  %new_obj1692 = call %B* @_B_ctor ( %B* %obj1691 )
  %_this1 = bitcast %B* %new_obj1692 to %C 
  %_name1693 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str320, i8** %_name1693
  %this_vtable1694 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable312, %_C_vtable** %this_vtable1694
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh359:
  %mem_ptr1685 = call i32* @oat_malloc ( i32 8 )
  %obj1686 = bitcast i32* %mem_ptr1685 to %Object* 
  %new_obj1687 = call %Object* @_Object_ctor ( %Object* %obj1686 )
  %_this1 = bitcast %Object* %new_obj1687 to %B 
  %_name1688 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str319, i8** %_name1688
  %this_vtable1689 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable311, %_B_vtable** %this_vtable1689
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh358:
  %mem_ptr1680 = call i32* @oat_malloc ( i32 8 )
  %obj1681 = bitcast i32* %mem_ptr1680 to %Object* 
  %new_obj1682 = call %Object* @_Object_ctor ( %Object* %obj1681 )
  %_this1 = bitcast %Object* %new_obj1682 to %A 
  %_name1683 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str318, i8** %_name1683
  %this_vtable1684 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable310, %_A_vtable** %this_vtable1684
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh357:
  %_name1678 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1679 = load i8** %_name1678
  ret i8* %lhs_or_call1679
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh356:
  %_name1676 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str317, i8** %_name1676
  %this_vtable1677 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable309, %_Object_vtable** %this_vtable1677
  ret %Object* %_this1
}


