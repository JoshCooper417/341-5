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
@_const_str305.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str305 = alias bitcast([ 2 x i8 ]* @_const_str305.str. to i8*)@_const_str304.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str304 = alias bitcast([ 2 x i8 ]* @_const_str304.str. to i8*)@_const_str303.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str303 = alias bitcast([ 2 x i8 ]* @_const_str303.str. to i8*)@_const_str302.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str302 = alias bitcast([ 2 x i8 ]* @_const_str302.str. to i8*)@_const_str301.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str301 = alias bitcast([ 2 x i8 ]* @_const_str301.str. to i8*)@_const_str300.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str300 = alias bitcast([ 2 x i8 ]* @_const_str300.str. to i8*)@_const_str299.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str299 = alias bitcast([ 7 x i8 ]* @_const_str299.str. to i8*)@_C_vtable298 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable295, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print}, align 4
@_B_vtable297 = private constant %_B_vtable {%_A_vtable* @_A_vtable296, i8* (%Object*)* @_Object_get_name, %C* (%B*)* @_B_f, void (%B*)* @_B_print}, align 4
@_A_vtable296 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable295, i8* (%Object*)* @_Object_get_name, %Object* (%A*)* @_A_f, void (%A*)* @_A_print}, align 4
@_Object_vtable295 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh588:
  ret void
}


define i32 @program (i32 %argc1700, { i32, [ 0 x i8* ] }* %argv1698){
__fresh587:
  %argc_slot1701 = alloca i32
  store i32 %argc1700, i32* %argc_slot1701
  %argv_slot1699 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1698, { i32, [ 0 x i8* ] }** %argv_slot1699
  %mem_ptr1702 = call i32* @oat_malloc ( i32 8 )
  %obj1703 = bitcast i32* %mem_ptr1702 to %A* 
  %new_obj1704 = call %A* @_A_ctor ( %A* %obj1703 )
  %vdecl_slot1705 = alloca %A*
  store %A* %new_obj1704, %A** %vdecl_slot1705
  %mem_ptr1706 = call i32* @oat_malloc ( i32 8 )
  %obj1707 = bitcast i32* %mem_ptr1706 to %B* 
  %new_obj1708 = call %B* @_B_ctor ( %B* %obj1707 )
  %vdecl_slot1709 = alloca %B*
  store %B* %new_obj1708, %B** %vdecl_slot1709
  %mem_ptr1710 = call i32* @oat_malloc ( i32 8 )
  %obj1711 = bitcast i32* %mem_ptr1710 to %C* 
  %new_obj1712 = call %C* @_C_ctor ( %C* %obj1711 )
  %vdecl_slot1713 = alloca %C*
  store %C* %new_obj1712, %C** %vdecl_slot1713
  %lhs_or_call1714 = load %A** %vdecl_slot1705
  %vtable_ptr1715 = getelementptr %A* %lhs_or_call1714, i32 0
  %vtable1716 = load %_A_vtable** %vtable_ptr1715
  %print1718 = getelementptr %_A_vtable* %vtable1716, i32 0, i32 3
  %print1717 = load void (%A*)** %print1718
  %cast_op1719 = bitcast %A %lhs_or_call1714 to %A* 
  call void %print1717( %A* %cast_op1719 )
  %lhs_or_call1720 = load %B** %vdecl_slot1709
  %vtable_ptr1721 = getelementptr %B* %lhs_or_call1720, i32 0
  %vtable1722 = load %_B_vtable** %vtable_ptr1721
  %print1724 = getelementptr %_B_vtable* %vtable1722, i32 0, i32 3
  %print1723 = load void (%B*)** %print1724
  %cast_op1725 = bitcast %B %lhs_or_call1720 to %B* 
  call void %print1723( %B* %cast_op1725 )
  %lhs_or_call1726 = load %B** %vdecl_slot1709
  %vtable_ptr1727 = getelementptr %B* %lhs_or_call1726, i32 0
  %vtable1728 = load %_B_vtable** %vtable_ptr1727
  %f1730 = getelementptr %_B_vtable* %vtable1728, i32 0, i32 2
  %f1729 = load %C* (%B*)** %f1730
  %cast_op1731 = bitcast %B %lhs_or_call1726 to %B* 
  %ret1732 = call %C* %f1729 ( %B* %cast_op1731 )
  %vtable_ptr1733 = getelementptr %C* %ret1732, i32 0
  %vtable1734 = load %_C_vtable** %vtable_ptr1733
  %print1736 = getelementptr %_C_vtable* %vtable1734, i32 0, i32 2
  %print1735 = load void (%C*)** %print1736
  %cast_op1737 = bitcast %C %ret1732 to %C* 
  call void %print1735( %C* %cast_op1737 )
  %lhs_or_call1738 = load %C** %vdecl_slot1713
  %vtable_ptr1739 = getelementptr %C* %lhs_or_call1738, i32 0
  %vtable1740 = load %_C_vtable** %vtable_ptr1739
  %print1742 = getelementptr %_C_vtable* %vtable1740, i32 0, i32 2
  %print1741 = load void (%C*)** %print1742
  %cast_op1743 = bitcast %C %lhs_or_call1738 to %C* 
  call void %print1741( %C* %cast_op1743 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh586:
  call void @print_string( i8* @_const_str305 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh585:
  %mem_ptr1693 = call i32* @oat_malloc ( i32 8 )
  %obj1694 = bitcast i32* %mem_ptr1693 to %Object* 
  %new_obj1695 = call %Object* @_Object_ctor ( %Object* %obj1694 )
  %_this1 = bitcast %Object* %new_obj1695 to %C 
  %_name1696 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str304, i8** %_name1696
  %this_vtable1697 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable298, %_C_vtable** %this_vtable1697
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh584:
  call void @print_string( i8* @_const_str303 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh583:
  %mem_ptr1690 = call i32* @oat_malloc ( i32 8 )
  %obj1691 = bitcast i32* %mem_ptr1690 to %C* 
  %new_obj1692 = call %C* @_C_ctor ( %C* %obj1691 )
  ret %C* %new_obj1692
}


define %B* @_B_ctor (%B* %_this1){
__fresh582:
  %mem_ptr1685 = call i32* @oat_malloc ( i32 8 )
  %obj1686 = bitcast i32* %mem_ptr1685 to %A* 
  %new_obj1687 = call %A* @_A_ctor ( %A* %obj1686 )
  %_this1 = bitcast %A* %new_obj1687 to %B 
  %_name1688 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str302, i8** %_name1688
  %this_vtable1689 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable297, %_B_vtable** %this_vtable1689
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh581:
  call void @print_string( i8* @_const_str301 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh580:
  %mem_ptr1681 = call i32* @oat_malloc ( i32 8 )
  %obj1682 = bitcast i32* %mem_ptr1681 to %B* 
  %new_obj1683 = call %B* @_B_ctor ( %B* %obj1682 )
  %cast_op1684 = bitcast %B* %new_obj1683 to %Object* 
  ret %Object* %cast_op1684
}


define %A* @_A_ctor (%A* %_this1){
__fresh579:
  %mem_ptr1676 = call i32* @oat_malloc ( i32 8 )
  %obj1677 = bitcast i32* %mem_ptr1676 to %Object* 
  %new_obj1678 = call %Object* @_Object_ctor ( %Object* %obj1677 )
  %_this1 = bitcast %Object* %new_obj1678 to %A 
  %_name1679 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str300, i8** %_name1679
  %this_vtable1680 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable296, %_A_vtable** %this_vtable1680
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh578:
  %_name1674 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1675 = load i8** %_name1674
  ret i8* %lhs_or_call1675
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh577:
  %_name1672 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str299, i8** %_name1672
  %this_vtable1673 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable295, %_Object_vtable** %this_vtable1673
  ret %Object* %_this1
}


