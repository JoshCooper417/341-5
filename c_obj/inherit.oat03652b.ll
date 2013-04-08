%C = type { %_C_vtable*, i8*, i32, i32, i32, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, void (%C*)*, void (%C*, i32, i32)* }
%B = type { %_B_vtable*, i8*, i32, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@x502 = global i32 0, align 4
@a500 = global %A* zeroinitializer, align 4		; initialized by @a500.init501
@_const_str499.str. = private unnamed_addr constant [ 6 x i8 ] c "C: w=\00", align 4
@_const_str499 = alias bitcast([ 6 x i8 ]* @_const_str499.str. to i8*)@_const_str498.str. = private unnamed_addr constant [ 6 x i8 ] c "C: z=\00", align 4
@_const_str498 = alias bitcast([ 6 x i8 ]* @_const_str498.str. to i8*)@_const_str497.str. = private unnamed_addr constant [ 6 x i8 ] c "C: y=\00", align 4
@_const_str497 = alias bitcast([ 6 x i8 ]* @_const_str497.str. to i8*)@_const_str496.str. = private unnamed_addr constant [ 6 x i8 ] c "C: x=\00", align 4
@_const_str496 = alias bitcast([ 6 x i8 ]* @_const_str496.str. to i8*)@_const_str495.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: b=\00", align 4
@_const_str495 = alias bitcast([ 10 x i8 ]* @_const_str495.str. to i8*)@_const_str494.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: a=\00", align 4
@_const_str494 = alias bitcast([ 10 x i8 ]* @_const_str494.str. to i8*)@_const_str493.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str493 = alias bitcast([ 2 x i8 ]* @_const_str493.str. to i8*)@_const_str492.str. = private unnamed_addr constant [ 6 x i8 ] c "B: z=\00", align 4
@_const_str492 = alias bitcast([ 6 x i8 ]* @_const_str492.str. to i8*)@_const_str491.str. = private unnamed_addr constant [ 6 x i8 ] c "B: y=\00", align 4
@_const_str491 = alias bitcast([ 6 x i8 ]* @_const_str491.str. to i8*)@_const_str490.str. = private unnamed_addr constant [ 6 x i8 ] c "B: x=\00", align 4
@_const_str490 = alias bitcast([ 6 x i8 ]* @_const_str490.str. to i8*)@_const_str489.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str489 = alias bitcast([ 2 x i8 ]* @_const_str489.str. to i8*)@_const_str488.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str488 = alias bitcast([ 6 x i8 ]* @_const_str488.str. to i8*)@_const_str487.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str487 = alias bitcast([ 2 x i8 ]* @_const_str487.str. to i8*)@_const_str486.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str486 = alias bitcast([ 7 x i8 ]* @_const_str486.str. to i8*)@_C_vtable485 = private constant %_C_vtable {%_B_vtable* @_B_vtable484, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print, void (%C*, i32, i32)* @_C_foo}, align 4
@_B_vtable484 = private constant %_B_vtable {%_A_vtable* @_A_vtable483, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_print}, align 4
@_A_vtable483 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable482, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable482 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh535:
  call void @a500.init501(  )
  ret void
}


define i32 @program (i32 %argc2453, { i32, [ 0 x i8* ] }* %argv2451){
__fresh534:
  %argc_slot2454 = alloca i32
  store i32 %argc2453, i32* %argc_slot2454
  %argv_slot2452 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2451, { i32, [ 0 x i8* ] }** %argv_slot2452
  %lhs_or_call2455 = load i32* @x502
  %bop2456 = add i32 %lhs_or_call2455, 3
  %lhs_or_call2457 = load i32* @x502
  %bop2458 = add i32 %lhs_or_call2457, 2
  %lhs_or_call2459 = load i32* @x502
  %bop2460 = add i32 %lhs_or_call2459, 1
  %mem_ptr2461 = call i32* @oat_malloc ( i32 20 )
  %obj2462 = bitcast i32* %mem_ptr2461 to %B* 
  %new_obj2463 = call %B* @_B_ctor ( %B* %obj2462, i32 %bop2460, i32 %bop2458, i32 %bop2456 )
  %vdecl_slot2464 = alloca %B*
  store %B* %new_obj2463, %B** %vdecl_slot2464
  %mem_ptr2465 = call i32* @oat_malloc ( i32 24 )
  %obj2466 = bitcast i32* %mem_ptr2465 to %C* 
  %new_obj2467 = call %C* @_C_ctor ( %C* %obj2466, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2468 = alloca %C*
  store %C* %new_obj2467, %C** %vdecl_slot2468
  %lhs_or_call2469 = load %A** @a500
  %print2471 = getelementptr %_A_vtable* @_A_vtable483, i32 0, i32 2
  %print2470 = load void (%A*)** %print2471
  %cast_op2472 = bitcast %A %lhs_or_call2469 to %A* 
  call void %print2470( %A* %cast_op2472 )
  %lhs_or_call2473 = load %B** %vdecl_slot2464
  %print2475 = getelementptr %_B_vtable* @_B_vtable484, i32 0, i32 2
  %print2474 = load void (%B*)** %print2475
  %cast_op2476 = bitcast %B %lhs_or_call2473 to %B* 
  call void %print2474( %B* %cast_op2476 )
  %lhs_or_call2477 = load %C** %vdecl_slot2468
  %print2479 = getelementptr %_C_vtable* @_C_vtable485, i32 0, i32 2
  %print2478 = load void (%C*)** %print2479
  %cast_op2480 = bitcast %C %lhs_or_call2477 to %C* 
  call void %print2478( %C* %cast_op2480 )
  %lhs_or_call2481 = load i32* @x502
  %bop2482 = add i32 %lhs_or_call2481, 2
  %lhs_or_call2483 = load i32* @x502
  %bop2484 = add i32 %lhs_or_call2483, 1
  %lhs_or_call2485 = load %C** %vdecl_slot2468
  %foo2487 = getelementptr %_C_vtable* @_C_vtable485, i32 0, i32 3
  %foo2486 = load void (%C*, i32, i32)** %foo2487
  %cast_op2488 = bitcast %C %lhs_or_call2485 to %C* 
  call void %foo2486( %C* %cast_op2488, i32 %bop2484, i32 %bop2482 )
  ret i32 0
}


define void @a500.init501 (){
__fresh533:
  %mem_ptr2448 = call i32* @oat_malloc ( i32 12 )
  %obj2449 = bitcast i32* %mem_ptr2448 to %A* 
  %new_obj2450 = call %A* @_A_ctor ( %A* %obj2449, i32 3 )
  store %A* %new_obj2450, %A** @a500
  ret void
}


define void @_C_print (%C* %_this1){
__fresh532:
  %x2432 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2433 = load i32* %x2432
  %ret2434 = call i8* @string_of_int ( i32 %lhs_or_call2433 )
  %ret2435 = call i8* @string_cat ( i8* @_const_str496, i8* %ret2434 )
  call void @print_string( i8* %ret2435 )
  %y2436 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2437 = load i32* %y2436
  %ret2438 = call i8* @string_of_int ( i32 %lhs_or_call2437 )
  %ret2439 = call i8* @string_cat ( i8* @_const_str497, i8* %ret2438 )
  call void @print_string( i8* %ret2439 )
  %z2440 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2441 = load i32* %z2440
  %ret2442 = call i8* @string_of_int ( i32 %lhs_or_call2441 )
  %ret2443 = call i8* @string_cat ( i8* @_const_str498, i8* %ret2442 )
  call void @print_string( i8* %ret2443 )
  %w2444 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2445 = load i32* %w2444
  %ret2446 = call i8* @string_of_int ( i32 %lhs_or_call2445 )
  %ret2447 = call i8* @string_cat ( i8* @_const_str499, i8* %ret2446 )
  call void @print_string( i8* %ret2447 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2424, i32 %b2422){
__fresh531:
  %a_slot2425 = alloca i32
  store i32 %a2424, i32* %a_slot2425
  %b_slot2423 = alloca i32
  store i32 %b2422, i32* %b_slot2423
  %lhs_or_call2426 = load i32* %a_slot2425
  %ret2427 = call i8* @string_of_int ( i32 %lhs_or_call2426 )
  %ret2428 = call i8* @string_cat ( i8* @_const_str494, i8* %ret2427 )
  call void @print_string( i8* %ret2428 )
  %lhs_or_call2429 = load i32* %b_slot2423
  %ret2430 = call i8* @string_of_int ( i32 %lhs_or_call2429 )
  %ret2431 = call i8* @string_cat ( i8* @_const_str495, i8* %ret2430 )
  call void @print_string( i8* %ret2431 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2410, i32 %y2408, i32 %z2406, i32 %w2404){
__fresh530:
  %x_slot2411 = alloca i32
  store i32 %x2410, i32* %x_slot2411
  %y_slot2409 = alloca i32
  store i32 %y2408, i32* %y_slot2409
  %z_slot2407 = alloca i32
  store i32 %z2406, i32* %z_slot2407
  %w_slot2405 = alloca i32
  store i32 %w2404, i32* %w_slot2405
  %lhs_or_call2414 = load i32* %x_slot2411
  %lhs_or_call2415 = load i32* %y_slot2409
  %lhs_or_call2416 = load i32* %z_slot2407
  %mem_ptr2417 = call i32* @oat_malloc ( i32 20 )
  %obj2418 = bitcast i32* %mem_ptr2417 to %B* 
  %new_obj2419 = call %B* @_B_ctor ( %B* %obj2418, i32 %lhs_or_call2416, i32 %lhs_or_call2415, i32 %lhs_or_call2414 )
  %_this1 = bitcast %B* %new_obj2419 to %C 
  %_name2420 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str493, i8** %_name2420
  %this_vtable2421 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable485, %_C_vtable** %this_vtable2421
  %w2412 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2413 = load i32* %w_slot2405
  store i32 %lhs_or_call2413, i32* %w2412
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh529:
  %x2392 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2393 = load i32* %x2392
  %ret2394 = call i8* @string_of_int ( i32 %lhs_or_call2393 )
  %ret2395 = call i8* @string_cat ( i8* @_const_str490, i8* %ret2394 )
  call void @print_string( i8* %ret2395 )
  %y2396 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2397 = load i32* %y2396
  %ret2398 = call i8* @string_of_int ( i32 %lhs_or_call2397 )
  %ret2399 = call i8* @string_cat ( i8* @_const_str491, i8* %ret2398 )
  call void @print_string( i8* %ret2399 )
  %z2400 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2401 = load i32* %z2400
  %ret2402 = call i8* @string_of_int ( i32 %lhs_or_call2401 )
  %ret2403 = call i8* @string_cat ( i8* @_const_str492, i8* %ret2402 )
  call void @print_string( i8* %ret2403 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2380, i32 %y2378, i32 %z2376){
__fresh528:
  %x_slot2381 = alloca i32
  store i32 %x2380, i32* %x_slot2381
  %y_slot2379 = alloca i32
  store i32 %y2378, i32* %y_slot2379
  %z_slot2377 = alloca i32
  store i32 %z2376, i32* %z_slot2377
  %lhs_or_call2386 = load i32* %x_slot2381
  %mem_ptr2387 = call i32* @oat_malloc ( i32 12 )
  %obj2388 = bitcast i32* %mem_ptr2387 to %A* 
  %new_obj2389 = call %A* @_A_ctor ( %A* %obj2388, i32 %lhs_or_call2386 )
  %_this1 = bitcast %A* %new_obj2389 to %B 
  %_name2390 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str489, i8** %_name2390
  %this_vtable2391 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable484, %_B_vtable** %this_vtable2391
  %y2382 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2383 = load i32* %y_slot2379
  store i32 %lhs_or_call2383, i32* %y2382
  %z2384 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2385 = load i32* %z_slot2377
  store i32 %lhs_or_call2385, i32* %z2384
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh527:
  %x2372 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2373 = load i32* %x2372
  %ret2374 = call i8* @string_of_int ( i32 %lhs_or_call2373 )
  %ret2375 = call i8* @string_cat ( i8* @_const_str488, i8* %ret2374 )
  call void @print_string( i8* %ret2375 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2363){
__fresh526:
  %x_slot2364 = alloca i32
  store i32 %x2363, i32* %x_slot2364
  %mem_ptr2367 = call i32* @oat_malloc ( i32 8 )
  %obj2368 = bitcast i32* %mem_ptr2367 to %Object* 
  %new_obj2369 = call %Object* @_Object_ctor ( %Object* %obj2368 )
  %_this1 = bitcast %Object* %new_obj2369 to %A 
  %_name2370 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str487, i8** %_name2370
  %this_vtable2371 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable483, %_A_vtable** %this_vtable2371
  %x2365 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2366 = load i32* %x_slot2364
  store i32 %lhs_or_call2366, i32* %x2365
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh525:
  %_name2361 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2362 = load i8** %_name2361
  ret i8* %lhs_or_call2362
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh524:
  %_name2359 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str486, i8** %_name2359
  %this_vtable2360 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable482, %_Object_vtable** %this_vtable2360
  ret %Object* %_this1
}


