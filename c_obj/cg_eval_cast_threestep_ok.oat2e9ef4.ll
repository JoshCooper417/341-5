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
@_const_str394.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str394 = alias bitcast([ 4 x i8 ]* @_const_str394.str. to i8*)@_const_str393.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str393 = alias bitcast([ 4 x i8 ]* @_const_str393.str. to i8*)@_const_str392.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str392 = alias bitcast([ 4 x i8 ]* @_const_str392.str. to i8*)@_const_str391.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str391 = alias bitcast([ 4 x i8 ]* @_const_str391.str. to i8*)@_const_str390.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str390 = alias bitcast([ 3 x i8 ]* @_const_str390.str. to i8*)@_const_str389.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str389 = alias bitcast([ 3 x i8 ]* @_const_str389.str. to i8*)@_const_str388.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str388 = alias bitcast([ 2 x i8 ]* @_const_str388.str. to i8*)@_const_str387.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str387 = alias bitcast([ 2 x i8 ]* @_const_str387.str. to i8*)@_const_str386.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str386 = alias bitcast([ 7 x i8 ]* @_const_str386.str. to i8*)@_CCC_vtable385 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable381, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable384 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable381, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable383 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable380, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable382 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable380, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable381 = private constant %_CC_vtable {%_B_vtable* @_B_vtable379, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable380 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable379, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable379 = private constant %_B_vtable {%_A_vtable* @_A_vtable378, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable378 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable377, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable377 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh414:
  ret void
}


define i32 @program (i32 %argc1732, { i32, [ 0 x i8* ] }* %argv1730){
__fresh413:
  %argc_slot1733 = alloca i32
  store i32 %argc1732, i32* %argc_slot1733
  %argv_slot1731 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1730, { i32, [ 0 x i8* ] }** %argv_slot1731
  %mem_ptr1734 = call i32* @oat_malloc ( i32 8 )
  %obj1735 = bitcast i32* %mem_ptr1734 to %Ccc* 
  %new_obj1736 = call %Ccc* @_Ccc_ctor ( %Ccc* %obj1735 )
  %cast_op1737 = bitcast %Ccc* %new_obj1736 to %Object* 
  %ret1738 = call i32 @docast ( %Object* %cast_op1737 )
  ret i32 %ret1738
}


define i32 @docast (%Object* %o1720){
__fresh408:
  %o_slot1721 = alloca %Object*
  store %Object* %o1720, %Object** %o_slot1721
  %vdecl_slot1722 = alloca i32
  store i32 0, i32* %vdecl_slot1722
  br label %__bound_check403

__fresh409:
  br label %__bound_check403

__bound_check403:
  %cast_op1728 = bitcast %_A_vtable* @_A_vtable378 to i8** 
  %rvtable1727 = load i8** %rvtable1724
  %lvtable1725 = load i8** %cast_op1728
  %compare1726 = icmp eq i8* %rvtable1727, null
  br i1 %compare1726, label %__end_no406, label %__check_curr405

__fresh410:
  br label %__check_curr405

__check_curr405:
  %compare1726 = icmp eq i8** %lvtable1725, %rvtable1727
  br i1 %compare1726, label %__end_yes407, label %__move_up404

__fresh411:
  br label %__move_up404

__move_up404:
  %rvtable1724 = getelementptr i8* %rvtable1727, i32 0
  br label %__bound_check403

__fresh412:
  br label %__end_yes407

__end_yes407:
  store i32 12, i32* %vdecl_slot1722
  br label %__end_no406

__end_no406:
  store i32 21, i32* %vdecl_slot1722
  %lhs_or_call1729 = load i32* %vdecl_slot1722
  ret i32 %lhs_or_call1729
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh402:
  %mem_ptr1715 = call i32* @oat_malloc ( i32 8 )
  %obj1716 = bitcast i32* %mem_ptr1715 to %CC* 
  %new_obj1717 = call %CC* @_CC_ctor ( %CC* %obj1716 )
  %_this1 = bitcast %CC* %new_obj1717 to %CCC 
  %_name1718 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str394, i8** %_name1718
  %this_vtable1719 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable385, %_CCC_vtable** %this_vtable1719
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh401:
  %mem_ptr1710 = call i32* @oat_malloc ( i32 8 )
  %obj1711 = bitcast i32* %mem_ptr1710 to %CC* 
  %new_obj1712 = call %CC* @_CC_ctor ( %CC* %obj1711 )
  %_this1 = bitcast %CC* %new_obj1712 to %CCc 
  %_name1713 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str393, i8** %_name1713
  %this_vtable1714 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable384, %_CCc_vtable** %this_vtable1714
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh400:
  %mem_ptr1705 = call i32* @oat_malloc ( i32 8 )
  %obj1706 = bitcast i32* %mem_ptr1705 to %Cc* 
  %new_obj1707 = call %Cc* @_Cc_ctor ( %Cc* %obj1706 )
  %_this1 = bitcast %Cc* %new_obj1707 to %CcC 
  %_name1708 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str392, i8** %_name1708
  %this_vtable1709 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable383, %_CcC_vtable** %this_vtable1709
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh399:
  %mem_ptr1700 = call i32* @oat_malloc ( i32 8 )
  %obj1701 = bitcast i32* %mem_ptr1700 to %Cc* 
  %new_obj1702 = call %Cc* @_Cc_ctor ( %Cc* %obj1701 )
  %_this1 = bitcast %Cc* %new_obj1702 to %Ccc 
  %_name1703 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str391, i8** %_name1703
  %this_vtable1704 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable382, %_Ccc_vtable** %this_vtable1704
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh398:
  %mem_ptr1695 = call i32* @oat_malloc ( i32 8 )
  %obj1696 = bitcast i32* %mem_ptr1695 to %B* 
  %new_obj1697 = call %B* @_B_ctor ( %B* %obj1696 )
  %_this1 = bitcast %B* %new_obj1697 to %CC 
  %_name1698 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str390, i8** %_name1698
  %this_vtable1699 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable381, %_CC_vtable** %this_vtable1699
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh397:
  %mem_ptr1690 = call i32* @oat_malloc ( i32 8 )
  %obj1691 = bitcast i32* %mem_ptr1690 to %B* 
  %new_obj1692 = call %B* @_B_ctor ( %B* %obj1691 )
  %_this1 = bitcast %B* %new_obj1692 to %Cc 
  %_name1693 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str389, i8** %_name1693
  %this_vtable1694 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable380, %_Cc_vtable** %this_vtable1694
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh396:
  %mem_ptr1685 = call i32* @oat_malloc ( i32 8 )
  %obj1686 = bitcast i32* %mem_ptr1685 to %A* 
  %new_obj1687 = call %A* @_A_ctor ( %A* %obj1686 )
  %_this1 = bitcast %A* %new_obj1687 to %B 
  %_name1688 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str388, i8** %_name1688
  %this_vtable1689 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable379, %_B_vtable** %this_vtable1689
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh395:
  %mem_ptr1680 = call i32* @oat_malloc ( i32 8 )
  %obj1681 = bitcast i32* %mem_ptr1680 to %Object* 
  %new_obj1682 = call %Object* @_Object_ctor ( %Object* %obj1681 )
  %_this1 = bitcast %Object* %new_obj1682 to %A 
  %_name1683 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str387, i8** %_name1683
  %this_vtable1684 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable378, %_A_vtable** %this_vtable1684
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh394:
  %_name1678 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1679 = load i8** %_name1678
  ret i8* %lhs_or_call1679
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh393:
  %_name1676 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str386, i8** %_name1676
  %this_vtable1677 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable377, %_Object_vtable** %this_vtable1677
  ret %Object* %_this1
}


