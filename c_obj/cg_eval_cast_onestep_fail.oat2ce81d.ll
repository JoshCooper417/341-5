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
@_const_str368.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str368 = alias bitcast([ 4 x i8 ]* @_const_str368.str. to i8*)@_const_str367.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str367 = alias bitcast([ 4 x i8 ]* @_const_str367.str. to i8*)@_const_str366.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str366 = alias bitcast([ 4 x i8 ]* @_const_str366.str. to i8*)@_const_str365.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str365 = alias bitcast([ 4 x i8 ]* @_const_str365.str. to i8*)@_const_str364.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str364 = alias bitcast([ 3 x i8 ]* @_const_str364.str. to i8*)@_const_str363.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str363 = alias bitcast([ 3 x i8 ]* @_const_str363.str. to i8*)@_const_str362.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str362 = alias bitcast([ 2 x i8 ]* @_const_str362.str. to i8*)@_const_str361.str. = private unnamed_addr constant [ 3 x i8 ] c "Aa\00", align 4
@_const_str361 = alias bitcast([ 3 x i8 ]* @_const_str361.str. to i8*)@_const_str360.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str360 = alias bitcast([ 2 x i8 ]* @_const_str360.str. to i8*)@_const_str359.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str359 = alias bitcast([ 7 x i8 ]* @_const_str359.str. to i8*)@_CCC_vtable358 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable354, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable357 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable354, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable356 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable353, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable355 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable353, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable354 = private constant %_CC_vtable {%_B_vtable* @_B_vtable352, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable353 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable352, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable352 = private constant %_B_vtable {%_A_vtable* @_A_vtable350, i8* (%Object*)* @_Object_get_name}, align 4
@_Aa_vtable351 = private constant %_Aa_vtable {%_Object_vtable* @_Object_vtable349, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable350 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable349, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable349 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh609:
  ret void
}


define i32 @program (i32 %argc2239, { i32, [ 0 x i8* ] }* %argv2237){
__fresh608:
  %argc_slot2240 = alloca i32
  store i32 %argc2239, i32* %argc_slot2240
  %argv_slot2238 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2237, { i32, [ 0 x i8* ] }** %argv_slot2238
  %mem_ptr2241 = call i32* @oat_malloc ( i32 8 )
  %obj2242 = bitcast i32* %mem_ptr2241 to %Aa* 
  %new_obj2243 = call %Aa* @_Aa_ctor ( %Aa* %obj2242 )
  %cast_op2244 = bitcast %Aa* %new_obj2243 to %Object* 
  %ret2245 = call i32 @docast ( %Object* %cast_op2244 )
  ret i32 %ret2245
}


define i32 @docast (%Object* %o2225){
__fresh602:
  %o_slot2226 = alloca %Object*
  store %Object* %o2225, %Object** %o_slot2226
  %vdecl_slot2227 = alloca i32
  store i32 0, i32* %vdecl_slot2227
  br label %__init596

__fresh603:
  br label %__init596

__init596:
  %lhs_or_call2229 = load %Object** %o_slot2226
  %rvtable2230 = getelementptr %Object* %lhs_or_call2229, i32 0
  br label %__bound_check597

__fresh604:
  br label %__bound_check597

__bound_check597:
  %cast_op2234 = bitcast %_A_vtable* @_A_vtable350 to i8** 
  %lvtable2231 = load i8** %cast_op2234
  %cast_vtable2235 = bitcast i8** %rvtable2230 to i8** 
  %rvtable2233 = load i8** %cast_vtable2235
  %compare2232 = icmp eq i8* %rvtable2233, null
  br i1 %compare2232, label %__end_no600, label %__check_curr599

__fresh605:
  br label %__check_curr599

__check_curr599:
  %compare2232 = icmp eq i8** %lvtable2231, %rvtable2233
  br i1 %compare2232, label %__end_yes601, label %__move_up598

__fresh606:
  br label %__move_up598

__move_up598:
  %rvtable2230 = getelementptr i8* %rvtable2233, i32 0
  br label %__bound_check597

__fresh607:
  br label %__end_yes601

__end_yes601:
  %lhs_or_call2229 = load %Object** %o_slot2226
  %cast_ptr2228 = bitcast %Object* %lhs_or_call2229 to %A* 
  store i32 12, i32* %vdecl_slot2227
  br label %__end_no600

__end_no600:
  store i32 21, i32* %vdecl_slot2227
  %lhs_or_call2236 = load i32* %vdecl_slot2227
  ret i32 %lhs_or_call2236
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh595:
  %mem_ptr2220 = call i32* @oat_malloc ( i32 8 )
  %obj2221 = bitcast i32* %mem_ptr2220 to %CC* 
  %new_obj2222 = call %CC* @_CC_ctor ( %CC* %obj2221 )
  %_this1 = bitcast %CC* %new_obj2222 to %CCC 
  %_name2223 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str368, i8** %_name2223
  %this_vtable2224 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable358, %_CCC_vtable** %this_vtable2224
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh594:
  %mem_ptr2215 = call i32* @oat_malloc ( i32 8 )
  %obj2216 = bitcast i32* %mem_ptr2215 to %CC* 
  %new_obj2217 = call %CC* @_CC_ctor ( %CC* %obj2216 )
  %_this1 = bitcast %CC* %new_obj2217 to %CCc 
  %_name2218 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str367, i8** %_name2218
  %this_vtable2219 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable357, %_CCc_vtable** %this_vtable2219
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh593:
  %mem_ptr2210 = call i32* @oat_malloc ( i32 8 )
  %obj2211 = bitcast i32* %mem_ptr2210 to %Cc* 
  %new_obj2212 = call %Cc* @_Cc_ctor ( %Cc* %obj2211 )
  %_this1 = bitcast %Cc* %new_obj2212 to %CcC 
  %_name2213 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str366, i8** %_name2213
  %this_vtable2214 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable356, %_CcC_vtable** %this_vtable2214
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh592:
  %mem_ptr2205 = call i32* @oat_malloc ( i32 8 )
  %obj2206 = bitcast i32* %mem_ptr2205 to %Cc* 
  %new_obj2207 = call %Cc* @_Cc_ctor ( %Cc* %obj2206 )
  %_this1 = bitcast %Cc* %new_obj2207 to %Ccc 
  %_name2208 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str365, i8** %_name2208
  %this_vtable2209 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable355, %_Ccc_vtable** %this_vtable2209
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh591:
  %mem_ptr2200 = call i32* @oat_malloc ( i32 8 )
  %obj2201 = bitcast i32* %mem_ptr2200 to %B* 
  %new_obj2202 = call %B* @_B_ctor ( %B* %obj2201 )
  %_this1 = bitcast %B* %new_obj2202 to %CC 
  %_name2203 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str364, i8** %_name2203
  %this_vtable2204 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable354, %_CC_vtable** %this_vtable2204
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh590:
  %mem_ptr2195 = call i32* @oat_malloc ( i32 8 )
  %obj2196 = bitcast i32* %mem_ptr2195 to %B* 
  %new_obj2197 = call %B* @_B_ctor ( %B* %obj2196 )
  %_this1 = bitcast %B* %new_obj2197 to %Cc 
  %_name2198 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str363, i8** %_name2198
  %this_vtable2199 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable353, %_Cc_vtable** %this_vtable2199
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh589:
  %mem_ptr2190 = call i32* @oat_malloc ( i32 8 )
  %obj2191 = bitcast i32* %mem_ptr2190 to %A* 
  %new_obj2192 = call %A* @_A_ctor ( %A* %obj2191 )
  %_this1 = bitcast %A* %new_obj2192 to %B 
  %_name2193 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str362, i8** %_name2193
  %this_vtable2194 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable352, %_B_vtable** %this_vtable2194
  ret %B* %_this1
}


define %Aa* @_Aa_ctor (%Aa* %_this1){
__fresh588:
  %mem_ptr2185 = call i32* @oat_malloc ( i32 8 )
  %obj2186 = bitcast i32* %mem_ptr2185 to %Object* 
  %new_obj2187 = call %Object* @_Object_ctor ( %Object* %obj2186 )
  %_this1 = bitcast %Object* %new_obj2187 to %Aa 
  %_name2188 = getelementptr %Aa* %_this1, i32 0, i32 1
  store i8* @_const_str361, i8** %_name2188
  %this_vtable2189 = getelementptr %Aa* %_this1, i32 0, i32 0
  store %_Aa_vtable* @_Aa_vtable351, %_Aa_vtable** %this_vtable2189
  ret %Aa* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh587:
  %mem_ptr2180 = call i32* @oat_malloc ( i32 8 )
  %obj2181 = bitcast i32* %mem_ptr2180 to %Object* 
  %new_obj2182 = call %Object* @_Object_ctor ( %Object* %obj2181 )
  %_this1 = bitcast %Object* %new_obj2182 to %A 
  %_name2183 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str360, i8** %_name2183
  %this_vtable2184 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable350, %_A_vtable** %this_vtable2184
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh586:
  %_name2178 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2179 = load i8** %_name2178
  ret i8* %lhs_or_call2179
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh585:
  %_name2176 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str359, i8** %_name2176
  %this_vtable2177 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable349, %_Object_vtable** %this_vtable2177
  ret %Object* %_this1
}


