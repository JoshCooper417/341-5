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
@_const_str386.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str386 = alias bitcast([ 4 x i8 ]* @_const_str386.str. to i8*)@_const_str385.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str385 = alias bitcast([ 4 x i8 ]* @_const_str385.str. to i8*)@_const_str384.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str384 = alias bitcast([ 4 x i8 ]* @_const_str384.str. to i8*)@_const_str383.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str383 = alias bitcast([ 4 x i8 ]* @_const_str383.str. to i8*)@_const_str382.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str382 = alias bitcast([ 3 x i8 ]* @_const_str382.str. to i8*)@_const_str381.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str381 = alias bitcast([ 3 x i8 ]* @_const_str381.str. to i8*)@_const_str380.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str380 = alias bitcast([ 2 x i8 ]* @_const_str380.str. to i8*)@_const_str379.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str379 = alias bitcast([ 2 x i8 ]* @_const_str379.str. to i8*)@_const_str378.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str378 = alias bitcast([ 7 x i8 ]* @_const_str378.str. to i8*)@_CCC_vtable377 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable373, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable376 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable373, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable375 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable372, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable374 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable372, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable373 = private constant %_CC_vtable {%_B_vtable* @_B_vtable371, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable372 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable371, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable371 = private constant %_B_vtable {%_A_vtable* @_A_vtable370, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable370 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable369, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable369 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh681:
  ret void
}


define i32 @program (i32 %argc2304, { i32, [ 0 x i8* ] }* %argv2302){
__fresh680:
  %argc_slot2305 = alloca i32
  store i32 %argc2304, i32* %argc_slot2305
  %argv_slot2303 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2302, { i32, [ 0 x i8* ] }** %argv_slot2303
  %mem_ptr2306 = call i32* @oat_malloc ( i32 8 )
  %obj2307 = bitcast i32* %mem_ptr2306 to %Cc* 
  %new_obj2308 = call %Cc* @_Cc_ctor ( %Cc* %obj2307 )
  %cast_op2309 = bitcast %Cc* %new_obj2308 to %Object* 
  %ret2310 = call i32 @docast ( %Object* %cast_op2309 )
  ret i32 %ret2310
}


define i32 @docast (%Object* %o2290){
__fresh672:
  %o_slot2291 = alloca %Object*
  store %Object* %o2290, %Object** %o_slot2291
  %vdecl_slot2292 = alloca i32
  store i32 0, i32* %vdecl_slot2292
  br label %__init665

__fresh673:
  br label %__init665

__init665:
  %lhs_or_call2294 = load %Object** %o_slot2291
  %rvtable2295 = getelementptr %Object* %lhs_or_call2294, i32 0
  br label %__bound_check666

__fresh674:
  br label %__bound_check666

__bound_check666:
  %cast_op2299 = bitcast %_CCC_vtable* @_CCC_vtable377 to i8** 
  %lvtable2296 = load i8** %cast_op2299
  %cast_vtable2300 = bitcast i8** %rvtable2295 to i8** 
  %rvtable2298 = load i8** %cast_vtable2300
  %compare2297 = icmp eq i8* %rvtable2298, null
  br i1 %compare2297, label %__end_no669, label %__check_curr668

__fresh675:
  br label %__check_curr668

__check_curr668:
  %compare2297 = icmp eq i8** %lvtable2296, %rvtable2298
  br i1 %compare2297, label %__end_yes670, label %__move_up667

__fresh676:
  br label %__move_up667

__move_up667:
  %rvtable2295 = getelementptr i8* %rvtable2298, i32 0
  br label %__bound_check666

__fresh677:
  br label %__end_yes670

__end_yes670:
  %lhs_or_call2294 = load %Object** %o_slot2291
  %cast_ptr2293 = bitcast %Object* %lhs_or_call2294 to %CCC* 
  store i32 12, i32* %vdecl_slot2292
  br label %__end671

__fresh678:
  br label %__end_no669

__end_no669:
  store i32 21, i32* %vdecl_slot2292
  br label %__end671

__fresh679:
  br label %__end671

__end671:
  %lhs_or_call2301 = load i32* %vdecl_slot2292
  ret i32 %lhs_or_call2301
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh664:
  %mem_ptr2285 = call i32* @oat_malloc ( i32 8 )
  %obj2286 = bitcast i32* %mem_ptr2285 to %CC* 
  %new_obj2287 = call %CC* @_CC_ctor ( %CC* %obj2286 )
  %_this1 = bitcast %CC* %new_obj2287 to %CCC 
  %_name2288 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str386, i8** %_name2288
  %this_vtable2289 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable377, %_CCC_vtable** %this_vtable2289
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh663:
  %mem_ptr2280 = call i32* @oat_malloc ( i32 8 )
  %obj2281 = bitcast i32* %mem_ptr2280 to %CC* 
  %new_obj2282 = call %CC* @_CC_ctor ( %CC* %obj2281 )
  %_this1 = bitcast %CC* %new_obj2282 to %CCc 
  %_name2283 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str385, i8** %_name2283
  %this_vtable2284 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable376, %_CCc_vtable** %this_vtable2284
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh662:
  %mem_ptr2275 = call i32* @oat_malloc ( i32 8 )
  %obj2276 = bitcast i32* %mem_ptr2275 to %Cc* 
  %new_obj2277 = call %Cc* @_Cc_ctor ( %Cc* %obj2276 )
  %_this1 = bitcast %Cc* %new_obj2277 to %CcC 
  %_name2278 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str384, i8** %_name2278
  %this_vtable2279 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable375, %_CcC_vtable** %this_vtable2279
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh661:
  %mem_ptr2270 = call i32* @oat_malloc ( i32 8 )
  %obj2271 = bitcast i32* %mem_ptr2270 to %Cc* 
  %new_obj2272 = call %Cc* @_Cc_ctor ( %Cc* %obj2271 )
  %_this1 = bitcast %Cc* %new_obj2272 to %Ccc 
  %_name2273 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str383, i8** %_name2273
  %this_vtable2274 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable374, %_Ccc_vtable** %this_vtable2274
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh660:
  %mem_ptr2265 = call i32* @oat_malloc ( i32 8 )
  %obj2266 = bitcast i32* %mem_ptr2265 to %B* 
  %new_obj2267 = call %B* @_B_ctor ( %B* %obj2266 )
  %_this1 = bitcast %B* %new_obj2267 to %CC 
  %_name2268 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str382, i8** %_name2268
  %this_vtable2269 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable373, %_CC_vtable** %this_vtable2269
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh659:
  %mem_ptr2260 = call i32* @oat_malloc ( i32 8 )
  %obj2261 = bitcast i32* %mem_ptr2260 to %B* 
  %new_obj2262 = call %B* @_B_ctor ( %B* %obj2261 )
  %_this1 = bitcast %B* %new_obj2262 to %Cc 
  %_name2263 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str381, i8** %_name2263
  %this_vtable2264 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable372, %_Cc_vtable** %this_vtable2264
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh658:
  %mem_ptr2255 = call i32* @oat_malloc ( i32 8 )
  %obj2256 = bitcast i32* %mem_ptr2255 to %A* 
  %new_obj2257 = call %A* @_A_ctor ( %A* %obj2256 )
  %_this1 = bitcast %A* %new_obj2257 to %B 
  %_name2258 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str380, i8** %_name2258
  %this_vtable2259 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable371, %_B_vtable** %this_vtable2259
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh657:
  %mem_ptr2250 = call i32* @oat_malloc ( i32 8 )
  %obj2251 = bitcast i32* %mem_ptr2250 to %Object* 
  %new_obj2252 = call %Object* @_Object_ctor ( %Object* %obj2251 )
  %_this1 = bitcast %Object* %new_obj2252 to %A 
  %_name2253 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str379, i8** %_name2253
  %this_vtable2254 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable370, %_A_vtable** %this_vtable2254
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh656:
  %_name2248 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2249 = load i8** %_name2248
  ret i8* %lhs_or_call2249
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh655:
  %_name2246 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str378, i8** %_name2246
  %this_vtable2247 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable369, %_Object_vtable** %this_vtable2247
  ret %Object* %_this1
}


