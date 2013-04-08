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
@_const_str395.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str395 = alias bitcast([ 4 x i8 ]* @_const_str395.str. to i8*)@_const_str394.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str394 = alias bitcast([ 4 x i8 ]* @_const_str394.str. to i8*)@_const_str393.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str393 = alias bitcast([ 4 x i8 ]* @_const_str393.str. to i8*)@_const_str392.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str392 = alias bitcast([ 4 x i8 ]* @_const_str392.str. to i8*)@_const_str391.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str391 = alias bitcast([ 3 x i8 ]* @_const_str391.str. to i8*)@_const_str390.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str390 = alias bitcast([ 3 x i8 ]* @_const_str390.str. to i8*)@_const_str389.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str389 = alias bitcast([ 2 x i8 ]* @_const_str389.str. to i8*)@_const_str388.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str388 = alias bitcast([ 2 x i8 ]* @_const_str388.str. to i8*)@_const_str387.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str387 = alias bitcast([ 7 x i8 ]* @_const_str387.str. to i8*)@_CCC_vtable386 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable382, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable385 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable382, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable384 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable381, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable383 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable381, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable382 = private constant %_CC_vtable {%_B_vtable* @_B_vtable380, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable381 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable380, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable380 = private constant %_B_vtable {%_A_vtable* @_A_vtable379, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable379 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable378, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable378 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh478:
  ret void
}


define i32 @program (i32 %argc2170, { i32, [ 0 x i8* ] }* %argv2168){
__fresh477:
  %argc_slot2171 = alloca i32
  store i32 %argc2170, i32* %argc_slot2171
  %argv_slot2169 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2168, { i32, [ 0 x i8* ] }** %argv_slot2169
  %mem_ptr2172 = call i32* @oat_malloc ( i32 8 )
  %obj2173 = bitcast i32* %mem_ptr2172 to %Ccc* 
  %new_obj2174 = call %Ccc* @_Ccc_ctor ( %Ccc* %obj2173 )
  %cast_op2175 = bitcast %Ccc* %new_obj2174 to %Object* 
  %ret2176 = call i32 @docast ( %Object* %cast_op2175 )
  ret i32 %ret2176
}


define i32 @docast (%Object* %o2158){
__fresh472:
  %o_slot2159 = alloca %Object*
  store %Object* %o2158, %Object** %o_slot2159
  %vdecl_slot2160 = alloca i32
  store i32 0, i32* %vdecl_slot2160
  br label %__bound_check467

__fresh473:
  br label %__bound_check467

__bound_check467:
  %cast_op2166 = bitcast %_A_vtable* @_A_vtable379 to i8** 
  %rvtable2165 = load i8** %rvtable2162
  %lvtable2163 = load i8** %cast_op2166
  %compare2164 = icmp eq i8* %rvtable2165, null
  br i1 %compare2164, label %__end_no470, label %__check_curr469

__fresh474:
  br label %__check_curr469

__check_curr469:
  %compare2164 = icmp eq i8** %lvtable2163, %rvtable2165
  br i1 %compare2164, label %__end_yes471, label %__move_up468

__fresh475:
  br label %__move_up468

__move_up468:
  %rvtable2162 = getelementptr i8* %rvtable2165, i32 0
  br label %__bound_check467

__fresh476:
  br label %__end_yes471

__end_yes471:
  store i32 12, i32* %vdecl_slot2160
  br label %__end_no470

__end_no470:
  store i32 21, i32* %vdecl_slot2160
  %lhs_or_call2167 = load i32* %vdecl_slot2160
  ret i32 %lhs_or_call2167
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh466:
  %mem_ptr2153 = call i32* @oat_malloc ( i32 8 )
  %obj2154 = bitcast i32* %mem_ptr2153 to %CC* 
  %new_obj2155 = call %CC* @_CC_ctor ( %CC* %obj2154 )
  %_this1 = bitcast %CC* %new_obj2155 to %CCC 
  %_name2156 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str395, i8** %_name2156
  %this_vtable2157 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable386, %_CCC_vtable** %this_vtable2157
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh465:
  %mem_ptr2148 = call i32* @oat_malloc ( i32 8 )
  %obj2149 = bitcast i32* %mem_ptr2148 to %CC* 
  %new_obj2150 = call %CC* @_CC_ctor ( %CC* %obj2149 )
  %_this1 = bitcast %CC* %new_obj2150 to %CCc 
  %_name2151 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str394, i8** %_name2151
  %this_vtable2152 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable385, %_CCc_vtable** %this_vtable2152
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh464:
  %mem_ptr2143 = call i32* @oat_malloc ( i32 8 )
  %obj2144 = bitcast i32* %mem_ptr2143 to %Cc* 
  %new_obj2145 = call %Cc* @_Cc_ctor ( %Cc* %obj2144 )
  %_this1 = bitcast %Cc* %new_obj2145 to %CcC 
  %_name2146 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str393, i8** %_name2146
  %this_vtable2147 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable384, %_CcC_vtable** %this_vtable2147
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh463:
  %mem_ptr2138 = call i32* @oat_malloc ( i32 8 )
  %obj2139 = bitcast i32* %mem_ptr2138 to %Cc* 
  %new_obj2140 = call %Cc* @_Cc_ctor ( %Cc* %obj2139 )
  %_this1 = bitcast %Cc* %new_obj2140 to %Ccc 
  %_name2141 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str392, i8** %_name2141
  %this_vtable2142 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable383, %_Ccc_vtable** %this_vtable2142
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh462:
  %mem_ptr2133 = call i32* @oat_malloc ( i32 8 )
  %obj2134 = bitcast i32* %mem_ptr2133 to %B* 
  %new_obj2135 = call %B* @_B_ctor ( %B* %obj2134 )
  %_this1 = bitcast %B* %new_obj2135 to %CC 
  %_name2136 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str391, i8** %_name2136
  %this_vtable2137 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable382, %_CC_vtable** %this_vtable2137
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh461:
  %mem_ptr2128 = call i32* @oat_malloc ( i32 8 )
  %obj2129 = bitcast i32* %mem_ptr2128 to %B* 
  %new_obj2130 = call %B* @_B_ctor ( %B* %obj2129 )
  %_this1 = bitcast %B* %new_obj2130 to %Cc 
  %_name2131 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str390, i8** %_name2131
  %this_vtable2132 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable381, %_Cc_vtable** %this_vtable2132
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh460:
  %mem_ptr2123 = call i32* @oat_malloc ( i32 8 )
  %obj2124 = bitcast i32* %mem_ptr2123 to %A* 
  %new_obj2125 = call %A* @_A_ctor ( %A* %obj2124 )
  %_this1 = bitcast %A* %new_obj2125 to %B 
  %_name2126 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str389, i8** %_name2126
  %this_vtable2127 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable380, %_B_vtable** %this_vtable2127
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh459:
  %mem_ptr2118 = call i32* @oat_malloc ( i32 8 )
  %obj2119 = bitcast i32* %mem_ptr2118 to %Object* 
  %new_obj2120 = call %Object* @_Object_ctor ( %Object* %obj2119 )
  %_this1 = bitcast %Object* %new_obj2120 to %A 
  %_name2121 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str388, i8** %_name2121
  %this_vtable2122 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable379, %_A_vtable** %this_vtable2122
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh458:
  %_name2116 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2117 = load i8** %_name2116
  ret i8* %lhs_or_call2117
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh457:
  %_name2114 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str387, i8** %_name2114
  %this_vtable2115 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable378, %_Object_vtable** %this_vtable2115
  ret %Object* %_this1
}


