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
%Aa = type { %_Aa_vtable*, i8* }
%_Aa_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str358.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str358 = alias bitcast([ 4 x i8 ]* @_const_str358.str. to i8*)@_const_str357.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str357 = alias bitcast([ 4 x i8 ]* @_const_str357.str. to i8*)@_const_str356.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str356 = alias bitcast([ 4 x i8 ]* @_const_str356.str. to i8*)@_const_str355.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str355 = alias bitcast([ 4 x i8 ]* @_const_str355.str. to i8*)@_const_str354.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str354 = alias bitcast([ 3 x i8 ]* @_const_str354.str. to i8*)@_const_str353.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str353 = alias bitcast([ 3 x i8 ]* @_const_str353.str. to i8*)@_const_str352.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str352 = alias bitcast([ 2 x i8 ]* @_const_str352.str. to i8*)@_const_str351.str. = private unnamed_addr constant [ 3 x i8 ] c "Aa\00", align 4
@_const_str351 = alias bitcast([ 3 x i8 ]* @_const_str351.str. to i8*)@_const_str350.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str350 = alias bitcast([ 2 x i8 ]* @_const_str350.str. to i8*)@_const_str349.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str349 = alias bitcast([ 7 x i8 ]* @_const_str349.str. to i8*)@_CCC_vtable348 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable344, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable347 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable344, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable346 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable343, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable345 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable343, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable344 = private constant %_CC_vtable {%_B_vtable* @_B_vtable342, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable343 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable342, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable342 = private constant %_B_vtable {%_A_vtable* @_A_vtable340, i8* (%Object*)* @_Object_get_name}, align 4
@_Aa_vtable341 = private constant %_Aa_vtable {%_Object_vtable* @_Object_vtable339, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable340 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable339, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable339 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh370:
  ret void
}


define i32 @program (i32 %argc1606, { i32, [ 0 x i8* ] }* %argv1604){
__fresh369:
  %argc_slot1607 = alloca i32
  store i32 %argc1606, i32* %argc_slot1607
  %argv_slot1605 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1604, { i32, [ 0 x i8* ] }** %argv_slot1605
  %mem_ptr1608 = call i32* @oat_malloc ( i32 8 )
  %obj1609 = bitcast i32* %mem_ptr1608 to %Aa* 
  %new_obj1610 = call %Aa* @_Aa_ctor ( %Aa* %obj1609 )
  %cast_op1611 = bitcast %Aa* %new_obj1610 to %Object* 
  %ret1612 = call i32 @docast ( %Object* %cast_op1611 )
  ret i32 %ret1612
}


define i32 @docast (%Object* %o1594){
__fresh364:
  %o_slot1595 = alloca %Object*
  store %Object* %o1594, %Object** %o_slot1595
  %vdecl_slot1596 = alloca i32
  store i32 0, i32* %vdecl_slot1596
  br label %__bound_check359

__fresh365:
  br label %__bound_check359

__bound_check359:
  %cast_op1602 = bitcast %_A_vtable* @_A_vtable340 to i8** 
  %rvtable1601 = load i8** %rvtable1598
  %lvtable1599 = load i8** %cast_op1602
  %compare1600 = icmp eq i8* %rvtable1601, null
  br i1 %compare1600, label %__end_no362, label %__check_curr361

__fresh366:
  br label %__check_curr361

__check_curr361:
  %compare1600 = icmp eq i8** %lvtable1599, %rvtable1601
  br i1 %compare1600, label %__end_yes363, label %__move_up360

__fresh367:
  br label %__move_up360

__move_up360:
  %rvtable1598 = getelementptr i8* %rvtable1601, i32 0
  br label %__bound_check359

__fresh368:
  br label %__end_yes363

__end_yes363:
  store i32 12, i32* %vdecl_slot1596
  br label %__end_no362

__end_no362:
  store i32 21, i32* %vdecl_slot1596
  %lhs_or_call1603 = load i32* %vdecl_slot1596
  ret i32 %lhs_or_call1603
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh358:
  %mem_ptr1589 = call i32* @oat_malloc ( i32 8 )
  %obj1590 = bitcast i32* %mem_ptr1589 to %CC* 
  %new_obj1591 = call %CC* @_CC_ctor ( %CC* %obj1590 )
  %_this1 = bitcast %CC* %new_obj1591 to %CCC 
  %_name1592 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str358, i8** %_name1592
  %this_vtable1593 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable348, %_CCC_vtable** %this_vtable1593
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh357:
  %mem_ptr1584 = call i32* @oat_malloc ( i32 8 )
  %obj1585 = bitcast i32* %mem_ptr1584 to %CC* 
  %new_obj1586 = call %CC* @_CC_ctor ( %CC* %obj1585 )
  %_this1 = bitcast %CC* %new_obj1586 to %CCc 
  %_name1587 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str357, i8** %_name1587
  %this_vtable1588 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable347, %_CCc_vtable** %this_vtable1588
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh356:
  %mem_ptr1579 = call i32* @oat_malloc ( i32 8 )
  %obj1580 = bitcast i32* %mem_ptr1579 to %Cc* 
  %new_obj1581 = call %Cc* @_Cc_ctor ( %Cc* %obj1580 )
  %_this1 = bitcast %Cc* %new_obj1581 to %CcC 
  %_name1582 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str356, i8** %_name1582
  %this_vtable1583 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable346, %_CcC_vtable** %this_vtable1583
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh355:
  %mem_ptr1574 = call i32* @oat_malloc ( i32 8 )
  %obj1575 = bitcast i32* %mem_ptr1574 to %Cc* 
  %new_obj1576 = call %Cc* @_Cc_ctor ( %Cc* %obj1575 )
  %_this1 = bitcast %Cc* %new_obj1576 to %Ccc 
  %_name1577 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str355, i8** %_name1577
  %this_vtable1578 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable345, %_Ccc_vtable** %this_vtable1578
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh354:
  %mem_ptr1569 = call i32* @oat_malloc ( i32 8 )
  %obj1570 = bitcast i32* %mem_ptr1569 to %B* 
  %new_obj1571 = call %B* @_B_ctor ( %B* %obj1570 )
  %_this1 = bitcast %B* %new_obj1571 to %CC 
  %_name1572 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str354, i8** %_name1572
  %this_vtable1573 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable344, %_CC_vtable** %this_vtable1573
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh353:
  %mem_ptr1564 = call i32* @oat_malloc ( i32 8 )
  %obj1565 = bitcast i32* %mem_ptr1564 to %B* 
  %new_obj1566 = call %B* @_B_ctor ( %B* %obj1565 )
  %_this1 = bitcast %B* %new_obj1566 to %Cc 
  %_name1567 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str353, i8** %_name1567
  %this_vtable1568 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable343, %_Cc_vtable** %this_vtable1568
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh352:
  %mem_ptr1559 = call i32* @oat_malloc ( i32 8 )
  %obj1560 = bitcast i32* %mem_ptr1559 to %A* 
  %new_obj1561 = call %A* @_A_ctor ( %A* %obj1560 )
  %_this1 = bitcast %A* %new_obj1561 to %B 
  %_name1562 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str352, i8** %_name1562
  %this_vtable1563 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable342, %_B_vtable** %this_vtable1563
  ret %B* %_this1
}


define %Aa* @_Aa_ctor (%Aa* %_this1){
__fresh351:
  %mem_ptr1554 = call i32* @oat_malloc ( i32 8 )
  %obj1555 = bitcast i32* %mem_ptr1554 to %Object* 
  %new_obj1556 = call %Object* @_Object_ctor ( %Object* %obj1555 )
  %_this1 = bitcast %Object* %new_obj1556 to %Aa 
  %_name1557 = getelementptr %Aa* %_this1, i32 0, i32 1
  store i8* @_const_str351, i8** %_name1557
  %this_vtable1558 = getelementptr %Aa* %_this1, i32 0, i32 0
  store %_Aa_vtable* @_Aa_vtable341, %_Aa_vtable** %this_vtable1558
  ret %Aa* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh350:
  %mem_ptr1549 = call i32* @oat_malloc ( i32 8 )
  %obj1550 = bitcast i32* %mem_ptr1549 to %Object* 
  %new_obj1551 = call %Object* @_Object_ctor ( %Object* %obj1550 )
  %_this1 = bitcast %Object* %new_obj1551 to %A 
  %_name1552 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str350, i8** %_name1552
  %this_vtable1553 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable340, %_A_vtable** %this_vtable1553
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh349:
  %_name1547 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1548 = load i8** %_name1547
  ret i8* %lhs_or_call1548
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh348:
  %_name1545 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str349, i8** %_name1545
  %this_vtable1546 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable339, %_Object_vtable** %this_vtable1546
  ret %Object* %_this1
}


