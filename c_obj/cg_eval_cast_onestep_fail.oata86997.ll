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


define i32 @program (i32 %argc2033, { i32, [ 0 x i8* ] }* %argv2031){
__fresh433:
  %argc_slot2034 = alloca i32
  store i32 %argc2033, i32* %argc_slot2034
  %argv_slot2032 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2031, { i32, [ 0 x i8* ] }** %argv_slot2032
  %mem_ptr2035 = call i32* @oat_malloc ( i32 8 )
  %obj2036 = bitcast i32* %mem_ptr2035 to %Aa* 
  %new_obj2037 = call %Aa* @_Aa_ctor ( %Aa* %obj2036 )
  %cast_op2038 = bitcast %Aa* %new_obj2037 to %Object* 
  %ret2039 = call i32 @docast ( %Object* %cast_op2038 )
  ret i32 %ret2039
}


define i32 @docast (%Object* %o2021){
__fresh428:
  %o_slot2022 = alloca %Object*
  store %Object* %o2021, %Object** %o_slot2022
  %vdecl_slot2023 = alloca i32
  store i32 0, i32* %vdecl_slot2023
  br label %__bound_check423

__fresh429:
  br label %__bound_check423

__bound_check423:
  %cast_op2029 = bitcast %_A_vtable* @_A_vtable341 to i8** 
  %rvtable2028 = load i8** %rvtable2025
  %lvtable2026 = load i8** %cast_op2029
  %compare2027 = icmp eq i8* %rvtable2028, null
  br i1 %compare2027, label %__end_no426, label %__check_curr425

__fresh430:
  br label %__check_curr425

__check_curr425:
  %compare2027 = icmp eq i8** %lvtable2026, %rvtable2028
  br i1 %compare2027, label %__end_yes427, label %__move_up424

__fresh431:
  br label %__move_up424

__move_up424:
  %rvtable2025 = getelementptr i8* %rvtable2028, i32 0
  br label %__bound_check423

__fresh432:
  br label %__end_yes427

__end_yes427:
  store i32 12, i32* %vdecl_slot2023
  br label %__end_no426

__end_no426:
  store i32 21, i32* %vdecl_slot2023
  %lhs_or_call2030 = load i32* %vdecl_slot2023
  ret i32 %lhs_or_call2030
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh422:
  %mem_ptr2016 = call i32* @oat_malloc ( i32 8 )
  %obj2017 = bitcast i32* %mem_ptr2016 to %CC* 
  %new_obj2018 = call %CC* @_CC_ctor ( %CC* %obj2017 )
  %_this1 = bitcast %CC* %new_obj2018 to %CCC 
  %_name2019 = getelementptr %CCC* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str359, i8** %_name2019
  %this_vtable2020 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable349, %_CCC_vtable** %this_vtable2020
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh421:
  %mem_ptr2011 = call i32* @oat_malloc ( i32 8 )
  %obj2012 = bitcast i32* %mem_ptr2011 to %CC* 
  %new_obj2013 = call %CC* @_CC_ctor ( %CC* %obj2012 )
  %_this1 = bitcast %CC* %new_obj2013 to %CCc 
  %_name2014 = getelementptr %CCc* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str358, i8** %_name2014
  %this_vtable2015 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable348, %_CCc_vtable** %this_vtable2015
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh420:
  %mem_ptr2006 = call i32* @oat_malloc ( i32 8 )
  %obj2007 = bitcast i32* %mem_ptr2006 to %Cc* 
  %new_obj2008 = call %Cc* @_Cc_ctor ( %Cc* %obj2007 )
  %_this1 = bitcast %Cc* %new_obj2008 to %CcC 
  %_name2009 = getelementptr %CcC* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str357, i8** %_name2009
  %this_vtable2010 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable347, %_CcC_vtable** %this_vtable2010
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh419:
  %mem_ptr2001 = call i32* @oat_malloc ( i32 8 )
  %obj2002 = bitcast i32* %mem_ptr2001 to %Cc* 
  %new_obj2003 = call %Cc* @_Cc_ctor ( %Cc* %obj2002 )
  %_this1 = bitcast %Cc* %new_obj2003 to %Ccc 
  %_name2004 = getelementptr %Ccc* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str356, i8** %_name2004
  %this_vtable2005 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable346, %_Ccc_vtable** %this_vtable2005
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh418:
  %mem_ptr1996 = call i32* @oat_malloc ( i32 8 )
  %obj1997 = bitcast i32* %mem_ptr1996 to %B* 
  %new_obj1998 = call %B* @_B_ctor ( %B* %obj1997 )
  %_this1 = bitcast %B* %new_obj1998 to %CC 
  %_name1999 = getelementptr %CC* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str355, i8** %_name1999
  %this_vtable2000 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable345, %_CC_vtable** %this_vtable2000
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh417:
  %mem_ptr1991 = call i32* @oat_malloc ( i32 8 )
  %obj1992 = bitcast i32* %mem_ptr1991 to %B* 
  %new_obj1993 = call %B* @_B_ctor ( %B* %obj1992 )
  %_this1 = bitcast %B* %new_obj1993 to %Cc 
  %_name1994 = getelementptr %Cc* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str354, i8** %_name1994
  %this_vtable1995 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable344, %_Cc_vtable** %this_vtable1995
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh416:
  %mem_ptr1986 = call i32* @oat_malloc ( i32 8 )
  %obj1987 = bitcast i32* %mem_ptr1986 to %A* 
  %new_obj1988 = call %A* @_A_ctor ( %A* %obj1987 )
  %_this1 = bitcast %A* %new_obj1988 to %B 
  %_name1989 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str353, i8** %_name1989
  %this_vtable1990 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable343, %_B_vtable** %this_vtable1990
  ret %B* %_this1
}


define %Aa* @_Aa_ctor (%Aa* %_this1){
__fresh415:
  %mem_ptr1981 = call i32* @oat_malloc ( i32 8 )
  %obj1982 = bitcast i32* %mem_ptr1981 to %Object* 
  %new_obj1983 = call %Object* @_Object_ctor ( %Object* %obj1982 )
  %_this1 = bitcast %Object* %new_obj1983 to %Aa 
  %_name1984 = getelementptr %Aa* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str352, i8** %_name1984
  %this_vtable1985 = getelementptr %Aa* %_this1, i32 0, i32 0
  store %_Aa_vtable* @_Aa_vtable342, %_Aa_vtable** %this_vtable1985
  ret %Aa* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh414:
  %mem_ptr1976 = call i32* @oat_malloc ( i32 8 )
  %obj1977 = bitcast i32* %mem_ptr1976 to %Object* 
  %new_obj1978 = call %Object* @_Object_ctor ( %Object* %obj1977 )
  %_this1 = bitcast %Object* %new_obj1978 to %A 
  %_name1979 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str351, i8** %_name1979
  %this_vtable1980 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable341, %_A_vtable** %this_vtable1980
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh413:
  %_name1974 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call1975 = load i8** %_name1974
  ret i8* %lhs_or_call1975
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh412:
  %_name1972 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str350, i8** %_name1972
  %this_vtable1973 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable340, %_Object_vtable** %this_vtable1973
  ret %Object* %_this1
}


