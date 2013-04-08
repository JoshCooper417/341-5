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


define i32 @program (i32 %argc1730, { i32, [ 0 x i8* ] }* %argv1728){
__fresh365:
  %argc_slot1731 = alloca i32
  store i32 %argc1730, i32* %argc_slot1731
  %argv_slot1729 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1728, { i32, [ 0 x i8* ] }** %argv_slot1729
  %mem_ptr1732 = call i32* @oat_malloc ( i32 8 )
  %obj1733 = bitcast i32* %mem_ptr1732 to %Object* 
  %new_obj1734 = call %Object* @_Object_ctor ( %Object* %obj1733 )
  %vdecl_slot1735 = alloca %Object*
  store %Object* %new_obj1734, %Object** %vdecl_slot1735
  %mem_ptr1736 = call i32* @oat_malloc ( i32 8 )
  %obj1737 = bitcast i32* %mem_ptr1736 to %A* 
  %new_obj1738 = call %A* @_A_ctor ( %A* %obj1737 )
  %vdecl_slot1739 = alloca %A*
  store %A* %new_obj1738, %A** %vdecl_slot1739
  %mem_ptr1740 = call i32* @oat_malloc ( i32 8 )
  %obj1741 = bitcast i32* %mem_ptr1740 to %B* 
  %new_obj1742 = call %B* @_B_ctor ( %B* %obj1741 )
  %vdecl_slot1743 = alloca %B*
  store %B* %new_obj1742, %B** %vdecl_slot1743
  %mem_ptr1744 = call i32* @oat_malloc ( i32 8 )
  %obj1745 = bitcast i32* %mem_ptr1744 to %C* 
  %new_obj1746 = call %C* @_C_ctor ( %C* %obj1745 )
  %cast_op1747 = bitcast %C* %new_obj1746 to %B* 
  %vdecl_slot1748 = alloca %B*
  store %B* %cast_op1747, %B** %vdecl_slot1748
  %mem_ptr1749 = call i32* @oat_malloc ( i32 8 )
  %obj1750 = bitcast i32* %mem_ptr1749 to %D* 
  %new_obj1751 = call %D* @_D_ctor ( %D* %obj1750 )
  %cast_op1752 = bitcast %D* %new_obj1751 to %B* 
  %vdecl_slot1753 = alloca %B*
  store %B* %cast_op1752, %B** %vdecl_slot1753
  %mem_ptr1754 = call i32* @oat_malloc ( i32 8 )
  %obj1755 = bitcast i32* %mem_ptr1754 to %E* 
  %new_obj1756 = call %E* @_E_ctor ( %E* %obj1755 )
  %vdecl_slot1757 = alloca %E*
  store %E* %new_obj1756, %E** %vdecl_slot1757
  %mem_ptr1758 = call i32* @oat_malloc ( i32 8 )
  %obj1759 = bitcast i32* %mem_ptr1758 to %F* 
  %new_obj1760 = call %F* @_F_ctor ( %F* %obj1759 )
  %cast_op1761 = bitcast %F* %new_obj1760 to %B* 
  %vdecl_slot1762 = alloca %B*
  store %B* %cast_op1761, %B** %vdecl_slot1762
  %mem_ptr1763 = call i32* @oat_malloc ( i32 8 )
  %obj1764 = bitcast i32* %mem_ptr1763 to %G* 
  %new_obj1765 = call %G* @_G_ctor ( %G* %obj1764 )
  %vdecl_slot1766 = alloca %G*
  store %G* %new_obj1765, %G** %vdecl_slot1766
  %lhs_or_call1767 = load %Object** %vdecl_slot1735
  %get_name1769 = getelementptr %_Object_vtable* @_Object_vtable320, i32 0, i32 1
  %get_name1768 = load i8* (%Object*)** %get_name1769
  %cast_op1770 = bitcast %Object %lhs_or_call1767 to %Object* 
  %ret1771 = call i8* %get_name1768 ( %Object* %cast_op1770 )
  call void @print_string( i8* %ret1771 )
  %lhs_or_call1772 = load %A** %vdecl_slot1739
  %get_name1774 = getelementptr %_A_vtable* @_A_vtable321, i32 0, i32 1
  %get_name1773 = load i8* (%Object*)** %get_name1774
  %cast_op1775 = bitcast %A %lhs_or_call1772 to %Object* 
  %ret1776 = call i8* %get_name1773 ( %Object* %cast_op1775 )
  call void @print_string( i8* %ret1776 )
  %lhs_or_call1777 = load %B** %vdecl_slot1743
  %get_name1779 = getelementptr %_B_vtable* @_B_vtable322, i32 0, i32 1
  %get_name1778 = load i8* (%Object*)** %get_name1779
  %cast_op1780 = bitcast %B %lhs_or_call1777 to %Object* 
  %ret1781 = call i8* %get_name1778 ( %Object* %cast_op1780 )
  call void @print_string( i8* %ret1781 )
  %lhs_or_call1782 = load %B** %vdecl_slot1748
  %get_name1784 = getelementptr %_B_vtable* @_B_vtable322, i32 0, i32 1
  %get_name1783 = load i8* (%Object*)** %get_name1784
  %cast_op1785 = bitcast %B %lhs_or_call1782 to %Object* 
  %ret1786 = call i8* %get_name1783 ( %Object* %cast_op1785 )
  call void @print_string( i8* %ret1786 )
  %lhs_or_call1787 = load %B** %vdecl_slot1753
  %get_name1789 = getelementptr %_B_vtable* @_B_vtable322, i32 0, i32 1
  %get_name1788 = load i8* (%Object*)** %get_name1789
  %cast_op1790 = bitcast %B %lhs_or_call1787 to %Object* 
  %ret1791 = call i8* %get_name1788 ( %Object* %cast_op1790 )
  call void @print_string( i8* %ret1791 )
  %lhs_or_call1792 = load %E** %vdecl_slot1757
  %get_name1794 = getelementptr %_E_vtable* @_E_vtable325, i32 0, i32 1
  %get_name1793 = load i8* (%Object*)** %get_name1794
  %cast_op1795 = bitcast %E %lhs_or_call1792 to %Object* 
  %ret1796 = call i8* %get_name1793 ( %Object* %cast_op1795 )
  call void @print_string( i8* %ret1796 )
  %lhs_or_call1797 = load %B** %vdecl_slot1762
  %get_name1799 = getelementptr %_B_vtable* @_B_vtable322, i32 0, i32 1
  %get_name1798 = load i8* (%Object*)** %get_name1799
  %cast_op1800 = bitcast %B %lhs_or_call1797 to %Object* 
  %ret1801 = call i8* %get_name1798 ( %Object* %cast_op1800 )
  call void @print_string( i8* %ret1801 )
  %lhs_or_call1802 = load %G** %vdecl_slot1766
  %get_name1804 = getelementptr %_G_vtable* @_G_vtable327, i32 0, i32 1
  %get_name1803 = load i8* (%Object*)** %get_name1804
  %cast_op1805 = bitcast %G %lhs_or_call1802 to %Object* 
  %ret1806 = call i8* %get_name1803 ( %Object* %cast_op1805 )
  call void @print_string( i8* %ret1806 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh364:
  %cast_op1722 = bitcast %G* %_this1 to %D* 
  %mem_ptr1723 = call i32* @oat_malloc ( i32 8 )
  %obj1724 = bitcast i32* %mem_ptr1723 to %G* 
  %new_obj1725 = call %D* @_D_ctor ( %G* %obj1724, %D* %cast_op1722 )
  %_this1 = bitcast %D* %new_obj1725 to %G 
  %_name1726 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str335, i8** %_name1726
  %this_vtable1727 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable327, %_G_vtable** %this_vtable1727
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh363:
  %cast_op1716 = bitcast %F* %_this1 to %B* 
  %mem_ptr1717 = call i32* @oat_malloc ( i32 8 )
  %obj1718 = bitcast i32* %mem_ptr1717 to %F* 
  %new_obj1719 = call %B* @_B_ctor ( %F* %obj1718, %B* %cast_op1716 )
  %_this1 = bitcast %B* %new_obj1719 to %F 
  %_name1720 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str334, i8** %_name1720
  %this_vtable1721 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable326, %_F_vtable** %this_vtable1721
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh362:
  %cast_op1710 = bitcast %E* %_this1 to %Object* 
  %mem_ptr1711 = call i32* @oat_malloc ( i32 8 )
  %obj1712 = bitcast i32* %mem_ptr1711 to %E* 
  %new_obj1713 = call %Object* @_Object_ctor ( %E* %obj1712, %Object* %cast_op1710 )
  %_this1 = bitcast %Object* %new_obj1713 to %E 
  %_name1714 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str333, i8** %_name1714
  %this_vtable1715 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable325, %_E_vtable** %this_vtable1715
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh361:
  %cast_op1704 = bitcast %D* %_this1 to %C* 
  %mem_ptr1705 = call i32* @oat_malloc ( i32 8 )
  %obj1706 = bitcast i32* %mem_ptr1705 to %D* 
  %new_obj1707 = call %C* @_C_ctor ( %D* %obj1706, %C* %cast_op1704 )
  %_this1 = bitcast %C* %new_obj1707 to %D 
  %_name1708 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str332, i8** %_name1708
  %this_vtable1709 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable324, %_D_vtable** %this_vtable1709
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh360:
  %cast_op1698 = bitcast %C* %_this1 to %B* 
  %mem_ptr1699 = call i32* @oat_malloc ( i32 8 )
  %obj1700 = bitcast i32* %mem_ptr1699 to %C* 
  %new_obj1701 = call %B* @_B_ctor ( %C* %obj1700, %B* %cast_op1698 )
  %_this1 = bitcast %B* %new_obj1701 to %C 
  %_name1702 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str331, i8** %_name1702
  %this_vtable1703 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable323, %_C_vtable** %this_vtable1703
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh359:
  %cast_op1692 = bitcast %B* %_this1 to %Object* 
  %mem_ptr1693 = call i32* @oat_malloc ( i32 8 )
  %obj1694 = bitcast i32* %mem_ptr1693 to %B* 
  %new_obj1695 = call %Object* @_Object_ctor ( %B* %obj1694, %Object* %cast_op1692 )
  %_this1 = bitcast %Object* %new_obj1695 to %B 
  %_name1696 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str330, i8** %_name1696
  %this_vtable1697 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable322, %_B_vtable** %this_vtable1697
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh358:
  %cast_op1686 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1687 = call i32* @oat_malloc ( i32 8 )
  %obj1688 = bitcast i32* %mem_ptr1687 to %A* 
  %new_obj1689 = call %Object* @_Object_ctor ( %A* %obj1688, %Object* %cast_op1686 )
  %_this1 = bitcast %Object* %new_obj1689 to %A 
  %_name1690 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str329, i8** %_name1690
  %this_vtable1691 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable321, %_A_vtable** %this_vtable1691
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh357:
  %_name1684 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1685 = load i8** %_name1684
  ret i8* %lhs_or_call1685
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh356:
  %_name1682 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str328, i8** %_name1682
  %this_vtable1683 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable320, %_Object_vtable** %this_vtable1683
  ret %Object* %_this1
}


