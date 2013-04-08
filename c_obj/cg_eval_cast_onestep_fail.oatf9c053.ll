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
@_const_str359.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str359 = alias bitcast([ 4 x i8 ]* @_const_str359.str. to i8*)@_const_str358.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str358 = alias bitcast([ 4 x i8 ]* @_const_str358.str. to i8*)@_const_str357.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str357 = alias bitcast([ 4 x i8 ]* @_const_str357.str. to i8*)@_const_str356.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str356 = alias bitcast([ 4 x i8 ]* @_const_str356.str. to i8*)@_const_str355.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str355 = alias bitcast([ 3 x i8 ]* @_const_str355.str. to i8*)@_const_str354.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str354 = alias bitcast([ 3 x i8 ]* @_const_str354.str. to i8*)@_const_str353.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str353 = alias bitcast([ 2 x i8 ]* @_const_str353.str. to i8*)@_const_str352.str. = private unnamed_addr constant [ 3 x i8 ] c "Aa\00", align 4
@_const_str352 = alias bitcast([ 3 x i8 ]* @_const_str352.str. to i8*)@_const_str351.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str351 = alias bitcast([ 2 x i8 ]* @_const_str351.str. to i8*)@_const_str350.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str350 = alias bitcast([ 7 x i8 ]* @_const_str350.str. to i8*)@_CCC_vtable349 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable345, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable348 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable345, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable347 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable344, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable346 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable344, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable345 = private constant %_CC_vtable {%_B_vtable* @_B_vtable343, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable344 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable343, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable343 = private constant %_B_vtable {%_A_vtable* @_A_vtable341, i8* (%Object*)* @_Object_get_name}, align 4
@_Aa_vtable342 = private constant %_Aa_vtable {%_Object_vtable* @_Object_vtable340, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable341 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable340, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable340 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh434:
  ret void
}


define i32 @program (i32 %argc2044, { i32, [ 0 x i8* ] }* %argv2042){
__fresh433:
  %argc_slot2045 = alloca i32
  store i32 %argc2044, i32* %argc_slot2045
  %argv_slot2043 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2042, { i32, [ 0 x i8* ] }** %argv_slot2043
  %mem_ptr2046 = call i32* @oat_malloc ( i32 8 )
  %obj2047 = bitcast i32* %mem_ptr2046 to %Aa* 
  %new_obj2048 = call %Aa* @_Aa_ctor ( %Aa* %obj2047 )
  %cast_op2049 = bitcast %Aa* %new_obj2048 to %Object* 
  %ret2050 = call i32 @docast ( %Object* %cast_op2049 )
  ret i32 %ret2050
}


define i32 @docast (%Object* %o2032){
__fresh428:
  %o_slot2033 = alloca %Object*
  store %Object* %o2032, %Object** %o_slot2033
  %vdecl_slot2034 = alloca i32
  store i32 0, i32* %vdecl_slot2034
  br label %__bound_check423

__fresh429:
  br label %__bound_check423

__bound_check423:
  %cast_op2040 = bitcast %_A_vtable* @_A_vtable341 to i8** 
  %rvtable2039 = load i8** %rvtable2036
  %lvtable2037 = load i8** %cast_op2040
  %compare2038 = icmp eq i8* %rvtable2039, null
  br i1 %compare2038, label %__end_no426, label %__check_curr425

__fresh430:
  br label %__check_curr425

__check_curr425:
  %compare2038 = icmp eq i8** %lvtable2037, %rvtable2039
  br i1 %compare2038, label %__end_yes427, label %__move_up424

__fresh431:
  br label %__move_up424

__move_up424:
  %rvtable2036 = getelementptr i8* %rvtable2039, i32 0
  br label %__bound_check423

__fresh432:
  br label %__end_yes427

__end_yes427:
  store i32 12, i32* %vdecl_slot2034
  br label %__end_no426

__end_no426:
  store i32 21, i32* %vdecl_slot2034
  %lhs_or_call2041 = load i32* %vdecl_slot2034
  ret i32 %lhs_or_call2041
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh422:
  %mem_ptr2027 = call i32* @oat_malloc ( i32 8 )
  %obj2028 = bitcast i32* %mem_ptr2027 to %CC* 
  %new_obj2029 = call %CC* @_CC_ctor ( %CC* %obj2028 )
  %_this1 = bitcast %CC* %new_obj2029 to %CCC 
  %_name2030 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str359, i8** %_name2030
  %this_vtable2031 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable349, %_CCC_vtable** %this_vtable2031
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh421:
  %mem_ptr2022 = call i32* @oat_malloc ( i32 8 )
  %obj2023 = bitcast i32* %mem_ptr2022 to %CC* 
  %new_obj2024 = call %CC* @_CC_ctor ( %CC* %obj2023 )
  %_this1 = bitcast %CC* %new_obj2024 to %CCc 
  %_name2025 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str358, i8** %_name2025
  %this_vtable2026 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable348, %_CCc_vtable** %this_vtable2026
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh420:
  %mem_ptr2017 = call i32* @oat_malloc ( i32 8 )
  %obj2018 = bitcast i32* %mem_ptr2017 to %Cc* 
  %new_obj2019 = call %Cc* @_Cc_ctor ( %Cc* %obj2018 )
  %_this1 = bitcast %Cc* %new_obj2019 to %CcC 
  %_name2020 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str357, i8** %_name2020
  %this_vtable2021 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable347, %_CcC_vtable** %this_vtable2021
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh419:
  %mem_ptr2012 = call i32* @oat_malloc ( i32 8 )
  %obj2013 = bitcast i32* %mem_ptr2012 to %Cc* 
  %new_obj2014 = call %Cc* @_Cc_ctor ( %Cc* %obj2013 )
  %_this1 = bitcast %Cc* %new_obj2014 to %Ccc 
  %_name2015 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str356, i8** %_name2015
  %this_vtable2016 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable346, %_Ccc_vtable** %this_vtable2016
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh418:
  %mem_ptr2007 = call i32* @oat_malloc ( i32 8 )
  %obj2008 = bitcast i32* %mem_ptr2007 to %B* 
  %new_obj2009 = call %B* @_B_ctor ( %B* %obj2008 )
  %_this1 = bitcast %B* %new_obj2009 to %CC 
  %_name2010 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str355, i8** %_name2010
  %this_vtable2011 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable345, %_CC_vtable** %this_vtable2011
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh417:
  %mem_ptr2002 = call i32* @oat_malloc ( i32 8 )
  %obj2003 = bitcast i32* %mem_ptr2002 to %B* 
  %new_obj2004 = call %B* @_B_ctor ( %B* %obj2003 )
  %_this1 = bitcast %B* %new_obj2004 to %Cc 
  %_name2005 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str354, i8** %_name2005
  %this_vtable2006 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable344, %_Cc_vtable** %this_vtable2006
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh416:
  %mem_ptr1997 = call i32* @oat_malloc ( i32 8 )
  %obj1998 = bitcast i32* %mem_ptr1997 to %A* 
  %new_obj1999 = call %A* @_A_ctor ( %A* %obj1998 )
  %_this1 = bitcast %A* %new_obj1999 to %B 
  %_name2000 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str353, i8** %_name2000
  %this_vtable2001 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable343, %_B_vtable** %this_vtable2001
  ret %B* %_this1
}


define %Aa* @_Aa_ctor (%Aa* %_this1){
__fresh415:
  %mem_ptr1992 = call i32* @oat_malloc ( i32 8 )
  %obj1993 = bitcast i32* %mem_ptr1992 to %Object* 
  %new_obj1994 = call %Object* @_Object_ctor ( %Object* %obj1993 )
  %_this1 = bitcast %Object* %new_obj1994 to %Aa 
  %_name1995 = getelementptr %Aa* %_this1, i32 0, i32 1
  store i8* @_const_str352, i8** %_name1995
  %this_vtable1996 = getelementptr %Aa* %_this1, i32 0, i32 0
  store %_Aa_vtable* @_Aa_vtable342, %_Aa_vtable** %this_vtable1996
  ret %Aa* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh414:
  %mem_ptr1987 = call i32* @oat_malloc ( i32 8 )
  %obj1988 = bitcast i32* %mem_ptr1987 to %Object* 
  %new_obj1989 = call %Object* @_Object_ctor ( %Object* %obj1988 )
  %_this1 = bitcast %Object* %new_obj1989 to %A 
  %_name1990 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str351, i8** %_name1990
  %this_vtable1991 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable341, %_A_vtable** %this_vtable1991
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh413:
  %_name1985 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1986 = load i8** %_name1985
  ret i8* %lhs_or_call1986
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh412:
  %_name1983 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str350, i8** %_name1983
  %this_vtable1984 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable340, %_Object_vtable** %this_vtable1984
  ret %Object* %_this1
}


