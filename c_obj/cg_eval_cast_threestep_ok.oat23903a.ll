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
@_const_str404.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str404 = alias bitcast([ 4 x i8 ]* @_const_str404.str. to i8*)@_const_str403.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str403 = alias bitcast([ 4 x i8 ]* @_const_str403.str. to i8*)@_const_str402.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str402 = alias bitcast([ 4 x i8 ]* @_const_str402.str. to i8*)@_const_str401.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str401 = alias bitcast([ 4 x i8 ]* @_const_str401.str. to i8*)@_const_str400.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str400 = alias bitcast([ 3 x i8 ]* @_const_str400.str. to i8*)@_const_str399.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str399 = alias bitcast([ 3 x i8 ]* @_const_str399.str. to i8*)@_const_str398.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str398 = alias bitcast([ 2 x i8 ]* @_const_str398.str. to i8*)@_const_str397.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str397 = alias bitcast([ 2 x i8 ]* @_const_str397.str. to i8*)@_const_str396.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str396 = alias bitcast([ 7 x i8 ]* @_const_str396.str. to i8*)@_CCC_vtable395 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable391, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable394 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable391, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable393 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable390, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable392 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable390, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable391 = private constant %_CC_vtable {%_B_vtable* @_B_vtable389, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable390 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable389, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable389 = private constant %_B_vtable {%_A_vtable* @_A_vtable388, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable388 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable387, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable387 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh657:
  ret void
}


define i32 @program (i32 %argc2369, { i32, [ 0 x i8* ] }* %argv2367){
__fresh656:
  %argc_slot2370 = alloca i32
  store i32 %argc2369, i32* %argc_slot2370
  %argv_slot2368 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2367, { i32, [ 0 x i8* ] }** %argv_slot2368
  %mem_ptr2371 = call i32* @oat_malloc ( i32 8 )
  %obj2372 = bitcast i32* %mem_ptr2371 to %Ccc* 
  %new_obj2373 = call %Ccc* @_Ccc_ctor ( %Ccc* %obj2372 )
  %cast_op2374 = bitcast %Ccc* %new_obj2373 to %Object* 
  %ret2375 = call i32 @docast ( %Object* %cast_op2374 )
  ret i32 %ret2375
}


define i32 @docast (%Object* %o2355){
__fresh650:
  %o_slot2356 = alloca %Object*
  store %Object* %o2355, %Object** %o_slot2356
  %vdecl_slot2357 = alloca i32
  store i32 0, i32* %vdecl_slot2357
  br label %__init644

__fresh651:
  br label %__init644

__init644:
  %lhs_or_call2359 = load %Object** %o_slot2356
  %rvtable2360 = getelementptr %Object* %lhs_or_call2359, i32 0
  br label %__bound_check645

__fresh652:
  br label %__bound_check645

__bound_check645:
  %cast_op2364 = bitcast %_A_vtable* @_A_vtable388 to i8** 
  %lvtable2361 = load i8** %cast_op2364
  %cast_vtable2365 = bitcast i8** %rvtable2360 to i8** 
  %rvtable2363 = load i8** %cast_vtable2365
  %compare2362 = icmp eq i8* %rvtable2363, null
  br i1 %compare2362, label %__end_no648, label %__check_curr647

__fresh653:
  br label %__check_curr647

__check_curr647:
  %compare2362 = icmp eq i8** %lvtable2361, %rvtable2363
  br i1 %compare2362, label %__end_yes649, label %__move_up646

__fresh654:
  br label %__move_up646

__move_up646:
  %rvtable2360 = getelementptr i8* %rvtable2363, i32 0
  br label %__bound_check645

__fresh655:
  br label %__end_yes649

__end_yes649:
  %lhs_or_call2359 = load %Object** %o_slot2356
  %cast_ptr2358 = bitcast %Object* %lhs_or_call2359 to %A* 
  store i32 12, i32* %vdecl_slot2357
  br label %__end_no648

__end_no648:
  store i32 21, i32* %vdecl_slot2357
  %lhs_or_call2366 = load i32* %vdecl_slot2357
  ret i32 %lhs_or_call2366
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh643:
  %mem_ptr2350 = call i32* @oat_malloc ( i32 8 )
  %obj2351 = bitcast i32* %mem_ptr2350 to %CC* 
  %new_obj2352 = call %CC* @_CC_ctor ( %CC* %obj2351 )
  %_this1 = bitcast %CC* %new_obj2352 to %CCC 
  %_name2353 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str404, i8** %_name2353
  %this_vtable2354 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable395, %_CCC_vtable** %this_vtable2354
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh642:
  %mem_ptr2345 = call i32* @oat_malloc ( i32 8 )
  %obj2346 = bitcast i32* %mem_ptr2345 to %CC* 
  %new_obj2347 = call %CC* @_CC_ctor ( %CC* %obj2346 )
  %_this1 = bitcast %CC* %new_obj2347 to %CCc 
  %_name2348 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str403, i8** %_name2348
  %this_vtable2349 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable394, %_CCc_vtable** %this_vtable2349
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh641:
  %mem_ptr2340 = call i32* @oat_malloc ( i32 8 )
  %obj2341 = bitcast i32* %mem_ptr2340 to %Cc* 
  %new_obj2342 = call %Cc* @_Cc_ctor ( %Cc* %obj2341 )
  %_this1 = bitcast %Cc* %new_obj2342 to %CcC 
  %_name2343 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str402, i8** %_name2343
  %this_vtable2344 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable393, %_CcC_vtable** %this_vtable2344
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh640:
  %mem_ptr2335 = call i32* @oat_malloc ( i32 8 )
  %obj2336 = bitcast i32* %mem_ptr2335 to %Cc* 
  %new_obj2337 = call %Cc* @_Cc_ctor ( %Cc* %obj2336 )
  %_this1 = bitcast %Cc* %new_obj2337 to %Ccc 
  %_name2338 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str401, i8** %_name2338
  %this_vtable2339 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable392, %_Ccc_vtable** %this_vtable2339
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh639:
  %mem_ptr2330 = call i32* @oat_malloc ( i32 8 )
  %obj2331 = bitcast i32* %mem_ptr2330 to %B* 
  %new_obj2332 = call %B* @_B_ctor ( %B* %obj2331 )
  %_this1 = bitcast %B* %new_obj2332 to %CC 
  %_name2333 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str400, i8** %_name2333
  %this_vtable2334 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable391, %_CC_vtable** %this_vtable2334
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh638:
  %mem_ptr2325 = call i32* @oat_malloc ( i32 8 )
  %obj2326 = bitcast i32* %mem_ptr2325 to %B* 
  %new_obj2327 = call %B* @_B_ctor ( %B* %obj2326 )
  %_this1 = bitcast %B* %new_obj2327 to %Cc 
  %_name2328 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str399, i8** %_name2328
  %this_vtable2329 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable390, %_Cc_vtable** %this_vtable2329
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh637:
  %mem_ptr2320 = call i32* @oat_malloc ( i32 8 )
  %obj2321 = bitcast i32* %mem_ptr2320 to %A* 
  %new_obj2322 = call %A* @_A_ctor ( %A* %obj2321 )
  %_this1 = bitcast %A* %new_obj2322 to %B 
  %_name2323 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str398, i8** %_name2323
  %this_vtable2324 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable389, %_B_vtable** %this_vtable2324
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh636:
  %mem_ptr2315 = call i32* @oat_malloc ( i32 8 )
  %obj2316 = bitcast i32* %mem_ptr2315 to %Object* 
  %new_obj2317 = call %Object* @_Object_ctor ( %Object* %obj2316 )
  %_this1 = bitcast %Object* %new_obj2317 to %A 
  %_name2318 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str397, i8** %_name2318
  %this_vtable2319 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable388, %_A_vtable** %this_vtable2319
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh635:
  %_name2313 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2314 = load i8** %_name2313
  ret i8* %lhs_or_call2314
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh634:
  %_name2311 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str396, i8** %_name2311
  %this_vtable2312 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable387, %_Object_vtable** %this_vtable2312
  ret %Object* %_this1
}


