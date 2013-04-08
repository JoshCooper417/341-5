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


define i32 @program (i32 %argc2107, { i32, [ 0 x i8* ] }* %argv2105){
__fresh455:
  %argc_slot2108 = alloca i32
  store i32 %argc2107, i32* %argc_slot2108
  %argv_slot2106 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2105, { i32, [ 0 x i8* ] }** %argv_slot2106
  %mem_ptr2109 = call i32* @oat_malloc ( i32 8 )
  %obj2110 = bitcast i32* %mem_ptr2109 to %Cc* 
  %new_obj2111 = call %Cc* @_Cc_ctor ( %Cc* %obj2110 )
  %cast_op2112 = bitcast %Cc* %new_obj2111 to %Object* 
  %ret2113 = call i32 @docast ( %Object* %cast_op2112 )
  ret i32 %ret2113
}


define i32 @docast (%Object* %o2095){
__fresh450:
  %o_slot2096 = alloca %Object*
  store %Object* %o2095, %Object** %o_slot2096
  %vdecl_slot2097 = alloca i32
  store i32 0, i32* %vdecl_slot2097
  br label %__bound_check445

__fresh451:
  br label %__bound_check445

__bound_check445:
  %cast_op2103 = bitcast %_CCC_vtable* @_CCC_vtable368 to i8** 
  %rvtable2102 = load i8** %rvtable2099
  %lvtable2100 = load i8** %cast_op2103
  %compare2101 = icmp eq i8* %rvtable2102, null
  br i1 %compare2101, label %__end_no448, label %__check_curr447

__fresh452:
  br label %__check_curr447

__check_curr447:
  %compare2101 = icmp eq i8** %lvtable2100, %rvtable2102
  br i1 %compare2101, label %__end_yes449, label %__move_up446

__fresh453:
  br label %__move_up446

__move_up446:
  %rvtable2099 = getelementptr i8* %rvtable2102, i32 0
  br label %__bound_check445

__fresh454:
  br label %__end_yes449

__end_yes449:
  store i32 12, i32* %vdecl_slot2097
  br label %__end_no448

__end_no448:
  store i32 21, i32* %vdecl_slot2097
  %lhs_or_call2104 = load i32* %vdecl_slot2097
  ret i32 %lhs_or_call2104
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh444:
  %mem_ptr2090 = call i32* @oat_malloc ( i32 8 )
  %obj2091 = bitcast i32* %mem_ptr2090 to %CC* 
  %new_obj2092 = call %CC* @_CC_ctor ( %CC* %obj2091 )
  %_this1 = bitcast %CC* %new_obj2092 to %CCC 
  %_name2093 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str377, i8** %_name2093
  %this_vtable2094 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable368, %_CCC_vtable** %this_vtable2094
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh443:
  %mem_ptr2085 = call i32* @oat_malloc ( i32 8 )
  %obj2086 = bitcast i32* %mem_ptr2085 to %CC* 
  %new_obj2087 = call %CC* @_CC_ctor ( %CC* %obj2086 )
  %_this1 = bitcast %CC* %new_obj2087 to %CCc 
  %_name2088 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str376, i8** %_name2088
  %this_vtable2089 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable367, %_CCc_vtable** %this_vtable2089
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh442:
  %mem_ptr2080 = call i32* @oat_malloc ( i32 8 )
  %obj2081 = bitcast i32* %mem_ptr2080 to %Cc* 
  %new_obj2082 = call %Cc* @_Cc_ctor ( %Cc* %obj2081 )
  %_this1 = bitcast %Cc* %new_obj2082 to %CcC 
  %_name2083 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str375, i8** %_name2083
  %this_vtable2084 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable366, %_CcC_vtable** %this_vtable2084
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh441:
  %mem_ptr2075 = call i32* @oat_malloc ( i32 8 )
  %obj2076 = bitcast i32* %mem_ptr2075 to %Cc* 
  %new_obj2077 = call %Cc* @_Cc_ctor ( %Cc* %obj2076 )
  %_this1 = bitcast %Cc* %new_obj2077 to %Ccc 
  %_name2078 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str374, i8** %_name2078
  %this_vtable2079 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable365, %_Ccc_vtable** %this_vtable2079
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh440:
  %mem_ptr2070 = call i32* @oat_malloc ( i32 8 )
  %obj2071 = bitcast i32* %mem_ptr2070 to %B* 
  %new_obj2072 = call %B* @_B_ctor ( %B* %obj2071 )
  %_this1 = bitcast %B* %new_obj2072 to %CC 
  %_name2073 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str373, i8** %_name2073
  %this_vtable2074 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable364, %_CC_vtable** %this_vtable2074
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh439:
  %mem_ptr2065 = call i32* @oat_malloc ( i32 8 )
  %obj2066 = bitcast i32* %mem_ptr2065 to %B* 
  %new_obj2067 = call %B* @_B_ctor ( %B* %obj2066 )
  %_this1 = bitcast %B* %new_obj2067 to %Cc 
  %_name2068 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str372, i8** %_name2068
  %this_vtable2069 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable363, %_Cc_vtable** %this_vtable2069
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh438:
  %mem_ptr2060 = call i32* @oat_malloc ( i32 8 )
  %obj2061 = bitcast i32* %mem_ptr2060 to %A* 
  %new_obj2062 = call %A* @_A_ctor ( %A* %obj2061 )
  %_this1 = bitcast %A* %new_obj2062 to %B 
  %_name2063 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str371, i8** %_name2063
  %this_vtable2064 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable362, %_B_vtable** %this_vtable2064
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh437:
  %mem_ptr2055 = call i32* @oat_malloc ( i32 8 )
  %obj2056 = bitcast i32* %mem_ptr2055 to %Object* 
  %new_obj2057 = call %Object* @_Object_ctor ( %Object* %obj2056 )
  %_this1 = bitcast %Object* %new_obj2057 to %A 
  %_name2058 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str370, i8** %_name2058
  %this_vtable2059 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable361, %_A_vtable** %this_vtable2059
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh436:
  %_name2053 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2054 = load i8** %_name2053
  ret i8* %lhs_or_call2054
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh435:
  %_name2051 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str369, i8** %_name2051
  %this_vtable2052 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable360, %_Object_vtable** %this_vtable2052
  ret %Object* %_this1
}


