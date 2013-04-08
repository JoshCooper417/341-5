%CCC = type { %_CCC_vtable*, i8* }
%_CCC_vtable = type { %_CC_vtable*, i8* (%Object*)* }
%CCc = type { %_CCc_vtable*, i8* }
%_CCc_vtable = type { %_CC_vtable*, i8* (%Object*)* }
%CcC = type { %_CcC_vtable*, i8* }
%_CcC_vtable = type { %_Cc_vtable*, i8* (%Object*)* }
%Ccc = type { %_Ccc_vtable*, i8* }
%_Ccc_vtable = type { %_Cc_vtable*, i8* (%Object*)* }
%CC = type { %_CC_vtable*, i8* }
%_CC_vtable = type { %_B_vtable*, i8* (%Object*)* }
%Cc = type { %_Cc_vtable*, i8* }
%_Cc_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@_const_str376.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str376 = alias bitcast([ 4 x i8 ]* @_const_str376.str. to i8*)@_const_str375.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str375 = alias bitcast([ 4 x i8 ]* @_const_str375.str. to i8*)@_const_str374.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str374 = alias bitcast([ 4 x i8 ]* @_const_str374.str. to i8*)@_const_str373.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str373 = alias bitcast([ 4 x i8 ]* @_const_str373.str. to i8*)@_const_str372.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str372 = alias bitcast([ 3 x i8 ]* @_const_str372.str. to i8*)@_const_str371.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str371 = alias bitcast([ 3 x i8 ]* @_const_str371.str. to i8*)@_const_str370.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str370 = alias bitcast([ 2 x i8 ]* @_const_str370.str. to i8*)@_const_str369.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str369 = alias bitcast([ 2 x i8 ]* @_const_str369.str. to i8*)@_const_str368.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str368 = alias bitcast([ 7 x i8 ]* @_const_str368.str. to i8*)@_CCC_vtable367 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable363, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable366 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable363, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable365 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable362, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable364 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable362, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable363 = private constant %_CC_vtable {%_B_vtable* @_B_vtable361, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable362 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable361, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable361 = private constant %_B_vtable {%_A_vtable* @_A_vtable360, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable360 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable359, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable359 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh392:
  ret void
}


define i32 @program (i32 %argc1669, { i32, [ 0 x i8* ] }* %argv1667){
__fresh391:
  %argc_slot1670 = alloca i32
  store i32 %argc1669, i32* %argc_slot1670
  %argv_slot1668 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1667, { i32, [ 0 x i8* ] }** %argv_slot1668
  %mem_ptr1671 = call i32* @oat_malloc ( i32 8 )
  %obj1672 = bitcast i32* %mem_ptr1671 to %Cc* 
  %new_obj1673 = call %Cc* @_Cc_ctor ( %Cc* %obj1672 )
  %cast_op1674 = bitcast %Cc* %new_obj1673 to %Object* 
  %ret1675 = call i32 @docast ( %Object* %cast_op1674 )
  ret i32 %ret1675
}


define i32 @docast (%Object* %o1657){
__fresh386:
  %o_slot1658 = alloca %Object*
  store %Object* %o1657, %Object** %o_slot1658
  %vdecl_slot1659 = alloca i32
  store i32 0, i32* %vdecl_slot1659
  br label %__bound_check381

__fresh387:
  br label %__bound_check381

__bound_check381:
  %cast_op1665 = bitcast %_CCC_vtable* @_CCC_vtable367 to i8** 
  %rvtable1664 = load i8** %rvtable1661
  %lvtable1662 = load i8** %cast_op1665
  %compare1663 = icmp eq i8* %rvtable1664, null
  br i1 %compare1663, label %__end_no384, label %__check_curr383

__fresh388:
  br label %__check_curr383

__check_curr383:
  %compare1663 = icmp eq i8** %lvtable1662, %rvtable1664
  br i1 %compare1663, label %__end_yes385, label %__move_up382

__fresh389:
  br label %__move_up382

__move_up382:
  %rvtable1661 = getelementptr i8* %rvtable1664, i32 0
  br label %__bound_check381

__fresh390:
  br label %__end_yes385

__end_yes385:
  store i32 12, i32* %vdecl_slot1659
  br label %__end_no384

__end_no384:
  store i32 21, i32* %vdecl_slot1659
  %lhs_or_call1666 = load i32* %vdecl_slot1659
  ret i32 %lhs_or_call1666
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh380:
  %mem_ptr1652 = call i32* @oat_malloc ( i32 8 )
  %obj1653 = bitcast i32* %mem_ptr1652 to %CC* 
  %new_obj1654 = call %CC* @_CC_ctor ( %CC* %obj1653 )
  %_this1 = bitcast %CC* %new_obj1654 to %CCC 
  %_name1655 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str376, i8** %_name1655
  %this_vtable1656 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable367, %_CCC_vtable** %this_vtable1656
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh379:
  %mem_ptr1647 = call i32* @oat_malloc ( i32 8 )
  %obj1648 = bitcast i32* %mem_ptr1647 to %CC* 
  %new_obj1649 = call %CC* @_CC_ctor ( %CC* %obj1648 )
  %_this1 = bitcast %CC* %new_obj1649 to %CCc 
  %_name1650 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str375, i8** %_name1650
  %this_vtable1651 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable366, %_CCc_vtable** %this_vtable1651
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh378:
  %mem_ptr1642 = call i32* @oat_malloc ( i32 8 )
  %obj1643 = bitcast i32* %mem_ptr1642 to %Cc* 
  %new_obj1644 = call %Cc* @_Cc_ctor ( %Cc* %obj1643 )
  %_this1 = bitcast %Cc* %new_obj1644 to %CcC 
  %_name1645 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str374, i8** %_name1645
  %this_vtable1646 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable365, %_CcC_vtable** %this_vtable1646
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh377:
  %mem_ptr1637 = call i32* @oat_malloc ( i32 8 )
  %obj1638 = bitcast i32* %mem_ptr1637 to %Cc* 
  %new_obj1639 = call %Cc* @_Cc_ctor ( %Cc* %obj1638 )
  %_this1 = bitcast %Cc* %new_obj1639 to %Ccc 
  %_name1640 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str373, i8** %_name1640
  %this_vtable1641 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable364, %_Ccc_vtable** %this_vtable1641
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh376:
  %mem_ptr1632 = call i32* @oat_malloc ( i32 8 )
  %obj1633 = bitcast i32* %mem_ptr1632 to %B* 
  %new_obj1634 = call %B* @_B_ctor ( %B* %obj1633 )
  %_this1 = bitcast %B* %new_obj1634 to %CC 
  %_name1635 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str372, i8** %_name1635
  %this_vtable1636 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable363, %_CC_vtable** %this_vtable1636
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh375:
  %mem_ptr1627 = call i32* @oat_malloc ( i32 8 )
  %obj1628 = bitcast i32* %mem_ptr1627 to %B* 
  %new_obj1629 = call %B* @_B_ctor ( %B* %obj1628 )
  %_this1 = bitcast %B* %new_obj1629 to %Cc 
  %_name1630 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str371, i8** %_name1630
  %this_vtable1631 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable362, %_Cc_vtable** %this_vtable1631
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh374:
  %mem_ptr1622 = call i32* @oat_malloc ( i32 8 )
  %obj1623 = bitcast i32* %mem_ptr1622 to %A* 
  %new_obj1624 = call %A* @_A_ctor ( %A* %obj1623 )
  %_this1 = bitcast %A* %new_obj1624 to %B 
  %_name1625 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str370, i8** %_name1625
  %this_vtable1626 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable361, %_B_vtable** %this_vtable1626
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh373:
  %mem_ptr1617 = call i32* @oat_malloc ( i32 8 )
  %obj1618 = bitcast i32* %mem_ptr1617 to %Object* 
  %new_obj1619 = call %Object* @_Object_ctor ( %Object* %obj1618 )
  %_this1 = bitcast %Object* %new_obj1619 to %A 
  %_name1620 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str369, i8** %_name1620
  %this_vtable1621 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable360, %_A_vtable** %this_vtable1621
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh372:
  %_name1615 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1616 = load i8** %_name1615
  ret i8* %lhs_or_call1616
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh371:
  %_name1613 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str368, i8** %_name1613
  %this_vtable1614 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable359, %_Object_vtable** %this_vtable1614
  ret %Object* %_this1
}


