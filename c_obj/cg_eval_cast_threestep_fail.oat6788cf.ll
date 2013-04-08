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
@_const_str377.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str377 = alias bitcast([ 4 x i8 ]* @_const_str377.str. to i8*)@_const_str376.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str376 = alias bitcast([ 4 x i8 ]* @_const_str376.str. to i8*)@_const_str375.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str375 = alias bitcast([ 4 x i8 ]* @_const_str375.str. to i8*)@_const_str374.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str374 = alias bitcast([ 4 x i8 ]* @_const_str374.str. to i8*)@_const_str373.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str373 = alias bitcast([ 3 x i8 ]* @_const_str373.str. to i8*)@_const_str372.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str372 = alias bitcast([ 3 x i8 ]* @_const_str372.str. to i8*)@_const_str371.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str371 = alias bitcast([ 2 x i8 ]* @_const_str371.str. to i8*)@_const_str370.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str370 = alias bitcast([ 2 x i8 ]* @_const_str370.str. to i8*)@_const_str369.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str369 = alias bitcast([ 7 x i8 ]* @_const_str369.str. to i8*)@_CCC_vtable368 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable364, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable367 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable364, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable366 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable363, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable365 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable363, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable364 = private constant %_CC_vtable {%_B_vtable* @_B_vtable362, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable363 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable362, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable362 = private constant %_B_vtable {%_A_vtable* @_A_vtable361, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable361 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable360, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable360 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh456:
  ret void
}


define i32 @program (i32 %argc2096, { i32, [ 0 x i8* ] }* %argv2094){
__fresh455:
  %argc_slot2097 = alloca i32
  store i32 %argc2096, i32* %argc_slot2097
  %argv_slot2095 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2094, { i32, [ 0 x i8* ] }** %argv_slot2095
  %mem_ptr2098 = call i32* @oat_malloc ( i32 8 )
  %obj2099 = bitcast i32* %mem_ptr2098 to %Cc* 
  %new_obj2100 = call %Cc* @_Cc_ctor ( %Cc* %obj2099 )
  %cast_op2101 = bitcast %Cc* %new_obj2100 to %Object* 
  %ret2102 = call i32 @docast ( %Object* %cast_op2101 )
  ret i32 %ret2102
}


define i32 @docast (%Object* %o2084){
__fresh450:
  %o_slot2085 = alloca %Object*
  store %Object* %o2084, %Object** %o_slot2085
  %vdecl_slot2086 = alloca i32
  store i32 0, i32* %vdecl_slot2086
  br label %__bound_check445

__fresh451:
  br label %__bound_check445

__bound_check445:
  %cast_op2092 = bitcast %_CCC_vtable* @_CCC_vtable368 to i8** 
  %rvtable2091 = load i8** %rvtable2088
  %compare2090 = icmp eq i8* %rvtable2091, null
  br i1 %compare2090, label %__end_no448, label %__check_curr447

__fresh452:
  br label %__check_curr447

__check_curr447:
  %compare2090 = icmp eq i8** %lvtable2089, %rvtable2091
  br i1 %compare2090, label %__end_yes449, label %__move_up446

__fresh453:
  br label %__move_up446

__move_up446:
  %rvtable2088 = getelementptr i8* %rvtable2091, i32 0
  br label %__bound_check445

__fresh454:
  br label %__end_yes449

__end_yes449:
  store i32 12, i32* %vdecl_slot2086
  br label %__end_no448

__end_no448:
  store i32 21, i32* %vdecl_slot2086
  %lhs_or_call2093 = load i32* %vdecl_slot2086
  ret i32 %lhs_or_call2093
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh444:
  %mem_ptr2079 = call i32* @oat_malloc ( i32 8 )
  %obj2080 = bitcast i32* %mem_ptr2079 to %CC* 
  %new_obj2081 = call %CC* @_CC_ctor ( %CC* %obj2080 )
  %_this1 = bitcast %CC* %new_obj2081 to %CCC 
  %_name2082 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str377, i8** %_name2082
  %this_vtable2083 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable368, %_CCC_vtable** %this_vtable2083
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh443:
  %mem_ptr2074 = call i32* @oat_malloc ( i32 8 )
  %obj2075 = bitcast i32* %mem_ptr2074 to %CC* 
  %new_obj2076 = call %CC* @_CC_ctor ( %CC* %obj2075 )
  %_this1 = bitcast %CC* %new_obj2076 to %CCc 
  %_name2077 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str376, i8** %_name2077
  %this_vtable2078 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable367, %_CCc_vtable** %this_vtable2078
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh442:
  %mem_ptr2069 = call i32* @oat_malloc ( i32 8 )
  %obj2070 = bitcast i32* %mem_ptr2069 to %Cc* 
  %new_obj2071 = call %Cc* @_Cc_ctor ( %Cc* %obj2070 )
  %_this1 = bitcast %Cc* %new_obj2071 to %CcC 
  %_name2072 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str375, i8** %_name2072
  %this_vtable2073 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable366, %_CcC_vtable** %this_vtable2073
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh441:
  %mem_ptr2064 = call i32* @oat_malloc ( i32 8 )
  %obj2065 = bitcast i32* %mem_ptr2064 to %Cc* 
  %new_obj2066 = call %Cc* @_Cc_ctor ( %Cc* %obj2065 )
  %_this1 = bitcast %Cc* %new_obj2066 to %Ccc 
  %_name2067 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str374, i8** %_name2067
  %this_vtable2068 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable365, %_Ccc_vtable** %this_vtable2068
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh440:
  %mem_ptr2059 = call i32* @oat_malloc ( i32 8 )
  %obj2060 = bitcast i32* %mem_ptr2059 to %B* 
  %new_obj2061 = call %B* @_B_ctor ( %B* %obj2060 )
  %_this1 = bitcast %B* %new_obj2061 to %CC 
  %_name2062 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str373, i8** %_name2062
  %this_vtable2063 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable364, %_CC_vtable** %this_vtable2063
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh439:
  %mem_ptr2054 = call i32* @oat_malloc ( i32 8 )
  %obj2055 = bitcast i32* %mem_ptr2054 to %B* 
  %new_obj2056 = call %B* @_B_ctor ( %B* %obj2055 )
  %_this1 = bitcast %B* %new_obj2056 to %Cc 
  %_name2057 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str372, i8** %_name2057
  %this_vtable2058 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable363, %_Cc_vtable** %this_vtable2058
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh438:
  %mem_ptr2049 = call i32* @oat_malloc ( i32 8 )
  %obj2050 = bitcast i32* %mem_ptr2049 to %A* 
  %new_obj2051 = call %A* @_A_ctor ( %A* %obj2050 )
  %_this1 = bitcast %A* %new_obj2051 to %B 
  %_name2052 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str371, i8** %_name2052
  %this_vtable2053 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable362, %_B_vtable** %this_vtable2053
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh437:
  %mem_ptr2044 = call i32* @oat_malloc ( i32 8 )
  %obj2045 = bitcast i32* %mem_ptr2044 to %Object* 
  %new_obj2046 = call %Object* @_Object_ctor ( %Object* %obj2045 )
  %_this1 = bitcast %Object* %new_obj2046 to %A 
  %_name2047 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str370, i8** %_name2047
  %this_vtable2048 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable361, %_A_vtable** %this_vtable2048
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh436:
  %_name2042 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2043 = load i8** %_name2042
  ret i8* %lhs_or_call2043
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh435:
  %_name2040 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str369, i8** %_name2040
  %this_vtable2041 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable360, %_Object_vtable** %this_vtable2041
  ret %Object* %_this1
}


