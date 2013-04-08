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


define i32 @program (i32 %argc1638, { i32, [ 0 x i8* ] }* %argv1636){
__fresh365:
  %argc_slot1639 = alloca i32
  store i32 %argc1638, i32* %argc_slot1639
  %argv_slot1637 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1636, { i32, [ 0 x i8* ] }** %argv_slot1637
  %mem_ptr1640 = call i32* @oat_malloc ( i32 8 )
  %obj1641 = bitcast i32* %mem_ptr1640 to %Object* 
  %new_obj1642 = call %Object* @_Object_ctor ( %Object* %obj1641 )
  %vdecl_slot1643 = alloca %Object*
  store %Object* %new_obj1642, %Object** %vdecl_slot1643
  %mem_ptr1644 = call i32* @oat_malloc ( i32 8 )
  %obj1645 = bitcast i32* %mem_ptr1644 to %A* 
  %new_obj1646 = call %A* @_A_ctor ( %A* %obj1645 )
  %vdecl_slot1647 = alloca %A*
  store %A* %new_obj1646, %A** %vdecl_slot1647
  %mem_ptr1648 = call i32* @oat_malloc ( i32 8 )
  %obj1649 = bitcast i32* %mem_ptr1648 to %B* 
  %new_obj1650 = call %B* @_B_ctor ( %B* %obj1649 )
  %vdecl_slot1651 = alloca %B*
  store %B* %new_obj1650, %B** %vdecl_slot1651
  %mem_ptr1652 = call i32* @oat_malloc ( i32 8 )
  %obj1653 = bitcast i32* %mem_ptr1652 to %C* 
  %new_obj1654 = call %C* @_C_ctor ( %C* %obj1653 )
  %cast_op1655 = bitcast %C* %new_obj1654 to %B* 
  %vdecl_slot1656 = alloca %B*
  store %B* %cast_op1655, %B** %vdecl_slot1656
  %mem_ptr1657 = call i32* @oat_malloc ( i32 8 )
  %obj1658 = bitcast i32* %mem_ptr1657 to %D* 
  %new_obj1659 = call %D* @_D_ctor ( %D* %obj1658 )
  %cast_op1660 = bitcast %D* %new_obj1659 to %B* 
  %vdecl_slot1661 = alloca %B*
  store %B* %cast_op1660, %B** %vdecl_slot1661
  %mem_ptr1662 = call i32* @oat_malloc ( i32 8 )
  %obj1663 = bitcast i32* %mem_ptr1662 to %E* 
  %new_obj1664 = call %E* @_E_ctor ( %E* %obj1663 )
  %vdecl_slot1665 = alloca %E*
  store %E* %new_obj1664, %E** %vdecl_slot1665
  %mem_ptr1666 = call i32* @oat_malloc ( i32 8 )
  %obj1667 = bitcast i32* %mem_ptr1666 to %F* 
  %new_obj1668 = call %F* @_F_ctor ( %F* %obj1667 )
  %cast_op1669 = bitcast %F* %new_obj1668 to %B* 
  %vdecl_slot1670 = alloca %B*
  store %B* %cast_op1669, %B** %vdecl_slot1670
  %mem_ptr1671 = call i32* @oat_malloc ( i32 8 )
  %obj1672 = bitcast i32* %mem_ptr1671 to %G* 
  %new_obj1673 = call %G* @_G_ctor ( %G* %obj1672 )
  %vdecl_slot1674 = alloca %G*
  store %G* %new_obj1673, %G** %vdecl_slot1674
  %lhs_or_call1675 = load %Object** %vdecl_slot1643
  %get_name1677 = getelementptr %_Object_vtable* @_Object_vtable320, i32 0, i32 1
  %get_name1676 = load i8* (%Object*)** %get_name1677
  %cast_op1678 = bitcast %Object %lhs_or_call1675 to %Object* 
  %ret1679 = call i8* %get_name1676 ( %Object* %cast_op1678 )
  call void @print_string( i8* %ret1679 )
  %lhs_or_call1680 = load %A** %vdecl_slot1647
  %get_name1682 = getelementptr %_A_vtable* @_A_vtable321, i32 0, i32 1
  %get_name1681 = load i8* (%Object*)** %get_name1682
  %cast_op1683 = bitcast %A %lhs_or_call1680 to %Object* 
  %ret1684 = call i8* %get_name1681 ( %Object* %cast_op1683 )
  call void @print_string( i8* %ret1684 )
  %lhs_or_call1685 = load %B** %vdecl_slot1651
  %get_name1687 = getelementptr %_B_vtable* @_B_vtable322, i32 0, i32 1
  %get_name1686 = load i8* (%Object*)** %get_name1687
  %cast_op1688 = bitcast %B %lhs_or_call1685 to %Object* 
  %ret1689 = call i8* %get_name1686 ( %Object* %cast_op1688 )
  call void @print_string( i8* %ret1689 )
  %lhs_or_call1690 = load %B** %vdecl_slot1656
  %get_name1692 = getelementptr %_B_vtable* @_B_vtable322, i32 0, i32 1
  %get_name1691 = load i8* (%Object*)** %get_name1692
  %cast_op1693 = bitcast %B %lhs_or_call1690 to %Object* 
  %ret1694 = call i8* %get_name1691 ( %Object* %cast_op1693 )
  call void @print_string( i8* %ret1694 )
  %lhs_or_call1695 = load %B** %vdecl_slot1661
  %get_name1697 = getelementptr %_B_vtable* @_B_vtable322, i32 0, i32 1
  %get_name1696 = load i8* (%Object*)** %get_name1697
  %cast_op1698 = bitcast %B %lhs_or_call1695 to %Object* 
  %ret1699 = call i8* %get_name1696 ( %Object* %cast_op1698 )
  call void @print_string( i8* %ret1699 )
  %lhs_or_call1700 = load %E** %vdecl_slot1665
  %get_name1702 = getelementptr %_E_vtable* @_E_vtable325, i32 0, i32 1
  %get_name1701 = load i8* (%Object*)** %get_name1702
  %cast_op1703 = bitcast %E %lhs_or_call1700 to %Object* 
  %ret1704 = call i8* %get_name1701 ( %Object* %cast_op1703 )
  call void @print_string( i8* %ret1704 )
  %lhs_or_call1705 = load %B** %vdecl_slot1670
  %get_name1707 = getelementptr %_B_vtable* @_B_vtable322, i32 0, i32 1
  %get_name1706 = load i8* (%Object*)** %get_name1707
  %cast_op1708 = bitcast %B %lhs_or_call1705 to %Object* 
  %ret1709 = call i8* %get_name1706 ( %Object* %cast_op1708 )
  call void @print_string( i8* %ret1709 )
  %lhs_or_call1710 = load %G** %vdecl_slot1674
  %get_name1712 = getelementptr %_G_vtable* @_G_vtable327, i32 0, i32 1
  %get_name1711 = load i8* (%Object*)** %get_name1712
  %cast_op1713 = bitcast %G %lhs_or_call1710 to %Object* 
  %ret1714 = call i8* %get_name1711 ( %Object* %cast_op1713 )
  call void @print_string( i8* %ret1714 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh364:
  %mem_ptr1631 = call i32* @oat_malloc ( i32 8 )
  %obj1632 = bitcast i32* %mem_ptr1631 to %D* 
  %new_obj1633 = call %D* @_D_ctor ( %D* %obj1632 )
  %_this1 = bitcast %D* %new_obj1633 to %G 
  %_name1634 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str335, i8** %_name1634
  %this_vtable1635 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable327, %_G_vtable** %this_vtable1635
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh363:
  %mem_ptr1626 = call i32* @oat_malloc ( i32 8 )
  %obj1627 = bitcast i32* %mem_ptr1626 to %B* 
  %new_obj1628 = call %B* @_B_ctor ( %B* %obj1627 )
  %_this1 = bitcast %B* %new_obj1628 to %F 
  %_name1629 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str334, i8** %_name1629
  %this_vtable1630 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable326, %_F_vtable** %this_vtable1630
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh362:
  %mem_ptr1621 = call i32* @oat_malloc ( i32 8 )
  %obj1622 = bitcast i32* %mem_ptr1621 to %Object* 
  %new_obj1623 = call %Object* @_Object_ctor ( %Object* %obj1622 )
  %_this1 = bitcast %Object* %new_obj1623 to %E 
  %_name1624 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str333, i8** %_name1624
  %this_vtable1625 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable325, %_E_vtable** %this_vtable1625
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh361:
  %mem_ptr1616 = call i32* @oat_malloc ( i32 8 )
  %obj1617 = bitcast i32* %mem_ptr1616 to %C* 
  %new_obj1618 = call %C* @_C_ctor ( %C* %obj1617 )
  %_this1 = bitcast %C* %new_obj1618 to %D 
  %_name1619 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str332, i8** %_name1619
  %this_vtable1620 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable324, %_D_vtable** %this_vtable1620
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh360:
  %mem_ptr1611 = call i32* @oat_malloc ( i32 8 )
  %obj1612 = bitcast i32* %mem_ptr1611 to %B* 
  %new_obj1613 = call %B* @_B_ctor ( %B* %obj1612 )
  %_this1 = bitcast %B* %new_obj1613 to %C 
  %_name1614 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str331, i8** %_name1614
  %this_vtable1615 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable323, %_C_vtable** %this_vtable1615
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh359:
  %mem_ptr1606 = call i32* @oat_malloc ( i32 8 )
  %obj1607 = bitcast i32* %mem_ptr1606 to %Object* 
  %new_obj1608 = call %Object* @_Object_ctor ( %Object* %obj1607 )
  %_this1 = bitcast %Object* %new_obj1608 to %B 
  %_name1609 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str330, i8** %_name1609
  %this_vtable1610 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable322, %_B_vtable** %this_vtable1610
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh358:
  %mem_ptr1601 = call i32* @oat_malloc ( i32 8 )
  %obj1602 = bitcast i32* %mem_ptr1601 to %Object* 
  %new_obj1603 = call %Object* @_Object_ctor ( %Object* %obj1602 )
  %_this1 = bitcast %Object* %new_obj1603 to %A 
  %_name1604 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str329, i8** %_name1604
  %this_vtable1605 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable321, %_A_vtable** %this_vtable1605
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh357:
  %_name1599 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1600 = load i8** %_name1599
  ret i8* %lhs_or_call1600
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh356:
  %_name1597 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str328, i8** %_name1597
  %this_vtable1598 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable320, %_Object_vtable** %this_vtable1598
  ret %Object* %_this1
}


