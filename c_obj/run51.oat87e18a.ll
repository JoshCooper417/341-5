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
@_const_str159.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str159 = alias bitcast([ 2 x i8 ]* @_const_str159.str. to i8*)@_const_str158.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str158 = alias bitcast([ 2 x i8 ]* @_const_str158.str. to i8*)@_const_str157.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str157 = alias bitcast([ 2 x i8 ]* @_const_str157.str. to i8*)@_C_vtable156 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable153, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print}, align 4
@_B_vtable155 = private constant %_B_vtable {%_A_vtable* @_A_vtable154, i8* (%Object*)* @_Object_get_name, %C* (%B*)* @_B_f, void (%B*)* @_B_print}, align 4
@_A_vtable154 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable153, i8* (%Object*)* @_Object_get_name, %Object* (%A*)* @_A_f, void (%A*)* @_A_print}, align 4
@_Object_vtable153 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh334:
  ret void
}


define i32 @program (i32 %argc1714, { i32, [ 0 x i8* ] }* %argv1712){
__fresh333:
  %argc_slot1715 = alloca i32
  store i32 %argc1714, i32* %argc_slot1715
  %argv_slot1713 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1712, { i32, [ 0 x i8* ] }** %argv_slot1713
  %mem_ptr1716 = call i32* @oat_malloc ( i32 8 )
  %obj1717 = bitcast i32* %mem_ptr1716 to %A* 
  %new_obj1718 = call %A* @_A_ctor ( %A* %obj1717 )
  %vdecl_slot1719 = alloca %A*
  store %A* %new_obj1718, %A** %vdecl_slot1719
  %mem_ptr1720 = call i32* @oat_malloc ( i32 8 )
  %obj1721 = bitcast i32* %mem_ptr1720 to %B* 
  %new_obj1722 = call %B* @_B_ctor ( %B* %obj1721 )
  %vdecl_slot1723 = alloca %B*
  store %B* %new_obj1722, %B** %vdecl_slot1723
  %mem_ptr1724 = call i32* @oat_malloc ( i32 8 )
  %obj1725 = bitcast i32* %mem_ptr1724 to %C* 
  %new_obj1726 = call %C* @_C_ctor ( %C* %obj1725 )
  %vdecl_slot1727 = alloca %C*
  store %C* %new_obj1726, %C** %vdecl_slot1727
  %lhs_or_call1728 = load %A** %vdecl_slot1719
  %print1730 = getelementptr %_A_vtable* @_A_vtable154, i32 0, i32 3
  %print1729 = load void (%A*)** %print1730
  %cast_op1731 = bitcast %A %lhs_or_call1728 to %A* 
  call void %print1729( %A* %cast_op1731 )
  %lhs_or_call1732 = load %B** %vdecl_slot1723
  %print1734 = getelementptr %_B_vtable* @_B_vtable155, i32 0, i32 3
  %print1733 = load void (%B*)** %print1734
  %cast_op1735 = bitcast %B %lhs_or_call1732 to %B* 
  call void %print1733( %B* %cast_op1735 )
  %lhs_or_call1736 = load %B** %vdecl_slot1723
  %f1738 = getelementptr %_B_vtable* @_B_vtable155, i32 0, i32 2
  %f1737 = load %C* (%B*)** %f1738
  %cast_op1739 = bitcast %B %lhs_or_call1736 to %B* 
  %ret1740 = call %C* %f1737 ( %B* %cast_op1739 )
  %print1742 = getelementptr %_C_vtable* @_C_vtable156, i32 0, i32 2
  %print1741 = load void (%C*)** %print1742
  %cast_op1743 = bitcast %C %ret1740 to %C* 
  call void %print1741( %C* %cast_op1743 )
  %lhs_or_call1744 = load %C** %vdecl_slot1727
  %print1746 = getelementptr %_C_vtable* @_C_vtable156, i32 0, i32 2
  %print1745 = load void (%C*)** %print1746
  %cast_op1747 = bitcast %C %lhs_or_call1744 to %C* 
  call void %print1745( %C* %cast_op1747 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh332:
  call void @print_string( i8* @_const_str159 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh331:
  %lhs_or_call1703 = load %C* %_this1
  %cast_op1704 = bitcast %C %lhs_or_call1703 to %Object* 
  %mem_ptr1705 = call i32* @oat_malloc ( i32 8 )
  %obj1706 = bitcast i32* %mem_ptr1705 to %Object* 
  %new_obj1707 = call %Object* @_Object_ctor ( %Object* %obj1706, %Object* %cast_op1704 )
  %_name1708 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call1709 = load %C* %_this1
  %cast_op1710 = bitcast %C %lhs_or_call1709 to i8* 
  store i8* %cast_op1710, i8** %_name1708
  %this_vtable1711 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable1711
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh330:
  call void @print_string( i8* @_const_str158 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh329:
  %mem_ptr1700 = call i32* @oat_malloc ( i32 8 )
  %obj1701 = bitcast i32* %mem_ptr1700 to %C* 
  %new_obj1702 = call %C* @_C_ctor ( %C* %obj1701 )
  ret %C* %new_obj1702
}


define %B* @_B_ctor (%B* %_this1){
__fresh328:
  %lhs_or_call1691 = load %B* %_this1
  %cast_op1692 = bitcast %B %lhs_or_call1691 to %A* 
  %mem_ptr1693 = call i32* @oat_malloc ( i32 8 )
  %obj1694 = bitcast i32* %mem_ptr1693 to %A* 
  %new_obj1695 = call %A* @_A_ctor ( %A* %obj1694, %A* %cast_op1692 )
  %_name1696 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call1697 = load %B* %_this1
  %cast_op1698 = bitcast %B %lhs_or_call1697 to i8* 
  store i8* %cast_op1698, i8** %_name1696
  %this_vtable1699 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable1699
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh327:
  call void @print_string( i8* @_const_str157 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh326:
  %mem_ptr1687 = call i32* @oat_malloc ( i32 8 )
  %obj1688 = bitcast i32* %mem_ptr1687 to %B* 
  %new_obj1689 = call %B* @_B_ctor ( %B* %obj1688 )
  %cast_op1690 = bitcast %B* %new_obj1689 to %Object* 
  ret %Object* %cast_op1690
}


define %A* @_A_ctor (%A* %_this1){
__fresh325:
  %lhs_or_call1678 = load %A* %_this1
  %cast_op1679 = bitcast %A %lhs_or_call1678 to %Object* 
  %mem_ptr1680 = call i32* @oat_malloc ( i32 8 )
  %obj1681 = bitcast i32* %mem_ptr1680 to %Object* 
  %new_obj1682 = call %Object* @_Object_ctor ( %Object* %obj1681, %Object* %cast_op1679 )
  %_name1683 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call1684 = load %A* %_this1
  %cast_op1685 = bitcast %A %lhs_or_call1684 to i8* 
  store i8* %cast_op1685, i8** %_name1683
  %this_vtable1686 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable1686
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh324:
  %_name1676 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1677 = load i8** %_name1676
  ret i8* %lhs_or_call1677
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh323:
  %_name1672 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1673 = load %Object* %_this1
  %cast_op1674 = bitcast %Object %lhs_or_call1673 to i8* 
  store i8* %cast_op1674, i8** %_name1672
  %this_vtable1675 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1675
  ret %Object* %_this1
}


