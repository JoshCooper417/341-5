%Bb = type { %_Bb_vtable*, i8* }
%_Bb_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@bb520 = global %Object* zeroinitializer, align 4		; initialized by @bb520.init521
@b518 = global %Object* zeroinitializer, align 4		; initialized by @b518.init519
@a516 = global %Object* zeroinitializer, align 4		; initialized by @a516.init517
@_const_str515.str. = private unnamed_addr constant [ 3 x i8 ] c "Bb\00", align 4
@_const_str515 = alias bitcast([ 3 x i8 ]* @_const_str515.str. to i8*)@_const_str514.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str514 = alias bitcast([ 2 x i8 ]* @_const_str514.str. to i8*)@_const_str513.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str513 = alias bitcast([ 2 x i8 ]* @_const_str513.str. to i8*)@_const_str512.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str512 = alias bitcast([ 7 x i8 ]* @_const_str512.str. to i8*)@_Bb_vtable511 = private constant %_Bb_vtable {%_A_vtable* @_A_vtable509, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable510 = private constant %_B_vtable {%_A_vtable* @_A_vtable509, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable509 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable508, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable508 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh634:
  call void @a516.init517(  )
  call void @b518.init519(  )
  call void @bb520.init521(  )
  ret void
}


define i32 @program (i32 %argc2327, { i32, [ 0 x i8* ] }* %argv2325){
__fresh597:
  %argc_slot2328 = alloca i32
  store i32 %argc2327, i32* %argc_slot2328
  %argv_slot2326 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2325, { i32, [ 0 x i8* ] }** %argv_slot2326
  %vdecl_slot2329 = alloca i32
  store i32 0, i32* %vdecl_slot2329
  br label %__bound_check552

__fresh598:
  br label %__bound_check552

__bound_check552:
  %cast_op2337 = bitcast %_A_vtable* @_A_vtable509 to i8** 
  %rvtable2336 = load i8** %rvtable2333
  %lvtable2334 = load i8** %cast_op2337
  %compare2335 = icmp eq i8* %rvtable2336, null
  br i1 %compare2335, label %__end_no555, label %__check_curr554

__fresh599:
  br label %__check_curr554

__check_curr554:
  %compare2335 = icmp eq i8** %lvtable2334, %rvtable2336
  br i1 %compare2335, label %__end_yes556, label %__move_up553

__fresh600:
  br label %__move_up553

__move_up553:
  %rvtable2333 = getelementptr i8* %rvtable2336, i32 0
  br label %__bound_check552

__fresh601:
  br label %__end_yes556

__end_yes556:
  %lhs_or_call2331 = load i32* %vdecl_slot2329
  %bop2332 = add i32 %lhs_or_call2331, 1
  store i32 %bop2332, i32* %vdecl_slot2329
  br label %__end_no555

__end_no555:
  br label %__bound_check557

__fresh602:
  br label %__bound_check557

__bound_check557:
  %cast_op2345 = bitcast %_A_vtable* @_A_vtable509 to i8** 
  %rvtable2344 = load i8** %rvtable2341
  %lvtable2342 = load i8** %cast_op2345
  %compare2343 = icmp eq i8* %rvtable2344, null
  br i1 %compare2343, label %__end_no560, label %__check_curr559

__fresh603:
  br label %__check_curr559

__check_curr559:
  %compare2343 = icmp eq i8** %lvtable2342, %rvtable2344
  br i1 %compare2343, label %__end_yes561, label %__move_up558

__fresh604:
  br label %__move_up558

__move_up558:
  %rvtable2341 = getelementptr i8* %rvtable2344, i32 0
  br label %__bound_check557

__fresh605:
  br label %__end_yes561

__end_yes561:
  %lhs_or_call2339 = load i32* %vdecl_slot2329
  %bop2340 = add i32 %lhs_or_call2339, 1
  store i32 %bop2340, i32* %vdecl_slot2329
  br label %__end_no560

__end_no560:
  br label %__bound_check562

__fresh606:
  br label %__bound_check562

__bound_check562:
  %cast_op2353 = bitcast %_A_vtable* @_A_vtable509 to i8** 
  %rvtable2352 = load i8** %rvtable2349
  %lvtable2350 = load i8** %cast_op2353
  %compare2351 = icmp eq i8* %rvtable2352, null
  br i1 %compare2351, label %__end_no565, label %__check_curr564

__fresh607:
  br label %__check_curr564

__check_curr564:
  %compare2351 = icmp eq i8** %lvtable2350, %rvtable2352
  br i1 %compare2351, label %__end_yes566, label %__move_up563

__fresh608:
  br label %__move_up563

__move_up563:
  %rvtable2349 = getelementptr i8* %rvtable2352, i32 0
  br label %__bound_check562

__fresh609:
  br label %__end_yes566

__end_yes566:
  %lhs_or_call2347 = load i32* %vdecl_slot2329
  %bop2348 = add i32 %lhs_or_call2347, 1
  store i32 %bop2348, i32* %vdecl_slot2329
  br label %__end_no565

__end_no565:
  br label %__bound_check567

__fresh610:
  br label %__bound_check567

__bound_check567:
  %cast_op2361 = bitcast %_B_vtable* @_B_vtable510 to i8** 
  %rvtable2360 = load i8** %rvtable2357
  %lvtable2358 = load i8** %cast_op2361
  %compare2359 = icmp eq i8* %rvtable2360, null
  br i1 %compare2359, label %__end_no570, label %__check_curr569

__fresh611:
  br label %__check_curr569

__check_curr569:
  %compare2359 = icmp eq i8** %lvtable2358, %rvtable2360
  br i1 %compare2359, label %__end_yes571, label %__move_up568

__fresh612:
  br label %__move_up568

__move_up568:
  %rvtable2357 = getelementptr i8* %rvtable2360, i32 0
  br label %__bound_check567

__fresh613:
  br label %__end_yes571

__end_yes571:
  %lhs_or_call2355 = load i32* %vdecl_slot2329
  %bop2356 = add i32 %lhs_or_call2355, 1
  store i32 %bop2356, i32* %vdecl_slot2329
  br label %__end_no570

__end_no570:
  br label %__bound_check572

__fresh614:
  br label %__bound_check572

__bound_check572:
  %cast_op2369 = bitcast %_Bb_vtable* @_Bb_vtable511 to i8** 
  %rvtable2368 = load i8** %rvtable2365
  %lvtable2366 = load i8** %cast_op2369
  %compare2367 = icmp eq i8* %rvtable2368, null
  br i1 %compare2367, label %__end_no575, label %__check_curr574

__fresh615:
  br label %__check_curr574

__check_curr574:
  %compare2367 = icmp eq i8** %lvtable2366, %rvtable2368
  br i1 %compare2367, label %__end_yes576, label %__move_up573

__fresh616:
  br label %__move_up573

__move_up573:
  %rvtable2365 = getelementptr i8* %rvtable2368, i32 0
  br label %__bound_check572

__fresh617:
  br label %__end_yes576

__end_yes576:
  %lhs_or_call2363 = load i32* %vdecl_slot2329
  %bop2364 = add i32 %lhs_or_call2363, 1
  store i32 %bop2364, i32* %vdecl_slot2329
  br label %__end_no575

__end_no575:
  br label %__bound_check577

__fresh618:
  br label %__bound_check577

__bound_check577:
  %cast_op2377 = bitcast %_B_vtable* @_B_vtable510 to i8** 
  %rvtable2376 = load i8** %rvtable2373
  %lvtable2374 = load i8** %cast_op2377
  %compare2375 = icmp eq i8* %rvtable2376, null
  br i1 %compare2375, label %__end_no580, label %__check_curr579

__fresh619:
  br label %__check_curr579

__check_curr579:
  %compare2375 = icmp eq i8** %lvtable2374, %rvtable2376
  br i1 %compare2375, label %__end_yes581, label %__move_up578

__fresh620:
  br label %__move_up578

__move_up578:
  %rvtable2373 = getelementptr i8* %rvtable2376, i32 0
  br label %__bound_check577

__fresh621:
  br label %__end_yes581

__end_yes581:
  br label %__end_no580

__end_no580:
  %lhs_or_call2371 = load i32* %vdecl_slot2329
  %bop2372 = add i32 %lhs_or_call2371, 1
  store i32 %bop2372, i32* %vdecl_slot2329
  br label %__bound_check582

__fresh622:
  br label %__bound_check582

__bound_check582:
  %cast_op2385 = bitcast %_Bb_vtable* @_Bb_vtable511 to i8** 
  %rvtable2384 = load i8** %rvtable2381
  %lvtable2382 = load i8** %cast_op2385
  %compare2383 = icmp eq i8* %rvtable2384, null
  br i1 %compare2383, label %__end_no585, label %__check_curr584

__fresh623:
  br label %__check_curr584

__check_curr584:
  %compare2383 = icmp eq i8** %lvtable2382, %rvtable2384
  br i1 %compare2383, label %__end_yes586, label %__move_up583

__fresh624:
  br label %__move_up583

__move_up583:
  %rvtable2381 = getelementptr i8* %rvtable2384, i32 0
  br label %__bound_check582

__fresh625:
  br label %__end_yes586

__end_yes586:
  br label %__end_no585

__end_no585:
  %lhs_or_call2379 = load i32* %vdecl_slot2329
  %bop2380 = add i32 %lhs_or_call2379, 1
  store i32 %bop2380, i32* %vdecl_slot2329
  br label %__bound_check587

__fresh626:
  br label %__bound_check587

__bound_check587:
  %cast_op2393 = bitcast %_Bb_vtable* @_Bb_vtable511 to i8** 
  %rvtable2392 = load i8** %rvtable2389
  %lvtable2390 = load i8** %cast_op2393
  %compare2391 = icmp eq i8* %rvtable2392, null
  br i1 %compare2391, label %__end_no590, label %__check_curr589

__fresh627:
  br label %__check_curr589

__check_curr589:
  %compare2391 = icmp eq i8** %lvtable2390, %rvtable2392
  br i1 %compare2391, label %__end_yes591, label %__move_up588

__fresh628:
  br label %__move_up588

__move_up588:
  %rvtable2389 = getelementptr i8* %rvtable2392, i32 0
  br label %__bound_check587

__fresh629:
  br label %__end_yes591

__end_yes591:
  br label %__end_no590

__end_no590:
  %lhs_or_call2387 = load i32* %vdecl_slot2329
  %bop2388 = add i32 %lhs_or_call2387, 1
  store i32 %bop2388, i32* %vdecl_slot2329
  br label %__bound_check592

__fresh630:
  br label %__bound_check592

__bound_check592:
  %cast_op2401 = bitcast %_B_vtable* @_B_vtable510 to i8** 
  %rvtable2400 = load i8** %rvtable2397
  %lvtable2398 = load i8** %cast_op2401
  %compare2399 = icmp eq i8* %rvtable2400, null
  br i1 %compare2399, label %__end_no595, label %__check_curr594

__fresh631:
  br label %__check_curr594

__check_curr594:
  %compare2399 = icmp eq i8** %lvtable2398, %rvtable2400
  br i1 %compare2399, label %__end_yes596, label %__move_up593

__fresh632:
  br label %__move_up593

__move_up593:
  %rvtable2397 = getelementptr i8* %rvtable2400, i32 0
  br label %__bound_check592

__fresh633:
  br label %__end_yes596

__end_yes596:
  br label %__end_no595

__end_no595:
  %lhs_or_call2395 = load i32* %vdecl_slot2329
  %bop2396 = add i32 %lhs_or_call2395, 1
  store i32 %bop2396, i32* %vdecl_slot2329
  %lhs_or_call2402 = load i32* %vdecl_slot2329
  ret i32 %lhs_or_call2402
}


define void @bb520.init521 (){
__fresh551:
  %mem_ptr2321 = call i32* @oat_malloc ( i32 8 )
  %obj2322 = bitcast i32* %mem_ptr2321 to %Bb* 
  %new_obj2323 = call %Bb* @_Bb_ctor ( %Bb* %obj2322 )
  %cast_op2324 = bitcast %Bb* %new_obj2323 to %Object* 
  store %Object* %cast_op2324, %Object** @bb520
  ret void
}


define void @b518.init519 (){
__fresh550:
  %mem_ptr2317 = call i32* @oat_malloc ( i32 8 )
  %obj2318 = bitcast i32* %mem_ptr2317 to %B* 
  %new_obj2319 = call %B* @_B_ctor ( %B* %obj2318 )
  %cast_op2320 = bitcast %B* %new_obj2319 to %Object* 
  store %Object* %cast_op2320, %Object** @b518
  ret void
}


define void @a516.init517 (){
__fresh549:
  %mem_ptr2313 = call i32* @oat_malloc ( i32 8 )
  %obj2314 = bitcast i32* %mem_ptr2313 to %A* 
  %new_obj2315 = call %A* @_A_ctor ( %A* %obj2314 )
  %cast_op2316 = bitcast %A* %new_obj2315 to %Object* 
  store %Object* %cast_op2316, %Object** @a516
  ret void
}


define %Bb* @_Bb_ctor (%Bb* %_this1){
__fresh548:
  %mem_ptr2308 = call i32* @oat_malloc ( i32 8 )
  %obj2309 = bitcast i32* %mem_ptr2308 to %A* 
  %new_obj2310 = call %A* @_A_ctor ( %A* %obj2309 )
  %_this1 = bitcast %A* %new_obj2310 to %Bb 
  %_name2311 = getelementptr %Bb* %_this1, i32 0, i32 1
  store i8* @_const_str515, i8** %_name2311
  %this_vtable2312 = getelementptr %Bb* %_this1, i32 0, i32 0
  store %_Bb_vtable* @_Bb_vtable511, %_Bb_vtable** %this_vtable2312
  ret %Bb* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh547:
  %mem_ptr2303 = call i32* @oat_malloc ( i32 8 )
  %obj2304 = bitcast i32* %mem_ptr2303 to %A* 
  %new_obj2305 = call %A* @_A_ctor ( %A* %obj2304 )
  %_this1 = bitcast %A* %new_obj2305 to %B 
  %_name2306 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str514, i8** %_name2306
  %this_vtable2307 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable510, %_B_vtable** %this_vtable2307
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh546:
  %mem_ptr2298 = call i32* @oat_malloc ( i32 8 )
  %obj2299 = bitcast i32* %mem_ptr2298 to %Object* 
  %new_obj2300 = call %Object* @_Object_ctor ( %Object* %obj2299 )
  %_this1 = bitcast %Object* %new_obj2300 to %A 
  %_name2301 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str513, i8** %_name2301
  %this_vtable2302 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable509, %_A_vtable** %this_vtable2302
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh545:
  %_name2296 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2297 = load i8** %_name2296
  ret i8* %lhs_or_call2297
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh544:
  %_name2294 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str512, i8** %_name2294
  %this_vtable2295 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable508, %_Object_vtable** %this_vtable2295
  ret %Object* %_this1
}


