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
@x491 = global i32 0, align 4
@a489 = global %A* zeroinitializer, align 4		; initialized by @a489.init490
@_const_str488.str. = private unnamed_addr constant [ 6 x i8 ] c "C: w=\00", align 4
@_const_str488 = alias bitcast([ 6 x i8 ]* @_const_str488.str. to i8*)@_const_str487.str. = private unnamed_addr constant [ 6 x i8 ] c "C: z=\00", align 4
@_const_str487 = alias bitcast([ 6 x i8 ]* @_const_str487.str. to i8*)@_const_str486.str. = private unnamed_addr constant [ 6 x i8 ] c "C: y=\00", align 4
@_const_str486 = alias bitcast([ 6 x i8 ]* @_const_str486.str. to i8*)@_const_str485.str. = private unnamed_addr constant [ 6 x i8 ] c "C: x=\00", align 4
@_const_str485 = alias bitcast([ 6 x i8 ]* @_const_str485.str. to i8*)@_const_str484.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: b=\00", align 4
@_const_str484 = alias bitcast([ 10 x i8 ]* @_const_str484.str. to i8*)@_const_str483.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: a=\00", align 4
@_const_str483 = alias bitcast([ 10 x i8 ]* @_const_str483.str. to i8*)@_const_str482.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str482 = alias bitcast([ 2 x i8 ]* @_const_str482.str. to i8*)@_const_str481.str. = private unnamed_addr constant [ 6 x i8 ] c "B: z=\00", align 4
@_const_str481 = alias bitcast([ 6 x i8 ]* @_const_str481.str. to i8*)@_const_str480.str. = private unnamed_addr constant [ 6 x i8 ] c "B: y=\00", align 4
@_const_str480 = alias bitcast([ 6 x i8 ]* @_const_str480.str. to i8*)@_const_str479.str. = private unnamed_addr constant [ 6 x i8 ] c "B: x=\00", align 4
@_const_str479 = alias bitcast([ 6 x i8 ]* @_const_str479.str. to i8*)@_const_str478.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str478 = alias bitcast([ 2 x i8 ]* @_const_str478.str. to i8*)@_const_str477.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str477 = alias bitcast([ 6 x i8 ]* @_const_str477.str. to i8*)@_const_str476.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str476 = alias bitcast([ 2 x i8 ]* @_const_str476.str. to i8*)@_const_str475.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str475 = alias bitcast([ 7 x i8 ]* @_const_str475.str. to i8*)@_C_vtable474 = private constant %_C_vtable {%_B_vtable* @_B_vtable473, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print, void (%C*, i32, i32)* @_C_foo}, align 4
@_B_vtable473 = private constant %_B_vtable {%_A_vtable* @_A_vtable472, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_print}, align 4
@_A_vtable472 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable471, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable471 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh535:
  call void @a489.init490(  )
  ret void
}


define i32 @program (i32 %argc2582, { i32, [ 0 x i8* ] }* %argv2580){
__fresh534:
  %argc_slot2583 = alloca i32
  store i32 %argc2582, i32* %argc_slot2583
  %argv_slot2581 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2580, { i32, [ 0 x i8* ] }** %argv_slot2581
  %lhs_or_call2584 = load i32* @x491
  %bop2585 = add i32 %lhs_or_call2584, 3
  %lhs_or_call2586 = load i32* @x491
  %bop2587 = add i32 %lhs_or_call2586, 2
  %lhs_or_call2588 = load i32* @x491
  %bop2589 = add i32 %lhs_or_call2588, 1
  %mem_ptr2590 = call i32* @oat_malloc ( i32 20 )
  %obj2591 = bitcast i32* %mem_ptr2590 to %B* 
  %new_obj2592 = call %B* @_B_ctor ( %B* %obj2591, i32 %bop2589, i32 %bop2587, i32 %bop2585 )
  %vdecl_slot2593 = alloca %B*
  store %B* %new_obj2592, %B** %vdecl_slot2593
  %mem_ptr2594 = call i32* @oat_malloc ( i32 24 )
  %obj2595 = bitcast i32* %mem_ptr2594 to %C* 
  %new_obj2596 = call %C* @_C_ctor ( %C* %obj2595, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2597 = alloca %C*
  store %C* %new_obj2596, %C** %vdecl_slot2597
  %lhs_or_call2598 = load %A** @a489
  %vtable_ptr2599 = getelementptr %A* %lhs_or_call2598, i32 0
  %vtable2600 = load %_A_vtable** %vtable_ptr2599
  %print2602 = getelementptr %_A_vtable* %vtable2600, i32 0, i32 2
  %print2601 = load void (%A*)** %print2602
  %cast_op2603 = bitcast %A %lhs_or_call2598 to %A* 
  call void %print2601( %A* %cast_op2603 )
  %lhs_or_call2604 = load %B** %vdecl_slot2593
  %vtable_ptr2605 = getelementptr %B* %lhs_or_call2604, i32 0
  %vtable2606 = load %_B_vtable** %vtable_ptr2605
  %print2608 = getelementptr %_B_vtable* %vtable2606, i32 0, i32 2
  %print2607 = load void (%B*)** %print2608
  %cast_op2609 = bitcast %B %lhs_or_call2604 to %B* 
  call void %print2607( %B* %cast_op2609 )
  %lhs_or_call2610 = load %C** %vdecl_slot2597
  %vtable_ptr2611 = getelementptr %C* %lhs_or_call2610, i32 0
  %vtable2612 = load %_C_vtable** %vtable_ptr2611
  %print2614 = getelementptr %_C_vtable* %vtable2612, i32 0, i32 2
  %print2613 = load void (%C*)** %print2614
  %cast_op2615 = bitcast %C %lhs_or_call2610 to %C* 
  call void %print2613( %C* %cast_op2615 )
  %lhs_or_call2616 = load i32* @x491
  %bop2617 = add i32 %lhs_or_call2616, 2
  %lhs_or_call2618 = load i32* @x491
  %bop2619 = add i32 %lhs_or_call2618, 1
  %lhs_or_call2620 = load %C** %vdecl_slot2597
  %vtable_ptr2621 = getelementptr %C* %lhs_or_call2620, i32 0
  %vtable2622 = load %_C_vtable** %vtable_ptr2621
  %foo2624 = getelementptr %_C_vtable* %vtable2622, i32 0, i32 3
  %foo2623 = load void (%C*, i32, i32)** %foo2624
  %cast_op2625 = bitcast %C %lhs_or_call2620 to %C* 
  call void %foo2623( %C* %cast_op2625, i32 %bop2619, i32 %bop2617 )
  ret i32 0
}


define void @a489.init490 (){
__fresh533:
  %mem_ptr2577 = call i32* @oat_malloc ( i32 12 )
  %obj2578 = bitcast i32* %mem_ptr2577 to %A* 
  %new_obj2579 = call %A* @_A_ctor ( %A* %obj2578, i32 3 )
  store %A* %new_obj2579, %A** @a489
  ret void
}


define void @_C_print (%C* %_this1){
__fresh532:
  %x2561 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2562 = load i32* %x2561
  %ret2563 = call i8* @string_of_int ( i32 %lhs_or_call2562 )
  %ret2564 = call i8* @string_cat ( i8* @_const_str485, i8* %ret2563 )
  call void @print_string( i8* %ret2564 )
  %y2565 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2566 = load i32* %y2565
  %ret2567 = call i8* @string_of_int ( i32 %lhs_or_call2566 )
  %ret2568 = call i8* @string_cat ( i8* @_const_str486, i8* %ret2567 )
  call void @print_string( i8* %ret2568 )
  %z2569 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2570 = load i32* %z2569
  %ret2571 = call i8* @string_of_int ( i32 %lhs_or_call2570 )
  %ret2572 = call i8* @string_cat ( i8* @_const_str487, i8* %ret2571 )
  call void @print_string( i8* %ret2572 )
  %w2573 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2574 = load i32* %w2573
  %ret2575 = call i8* @string_of_int ( i32 %lhs_or_call2574 )
  %ret2576 = call i8* @string_cat ( i8* @_const_str488, i8* %ret2575 )
  call void @print_string( i8* %ret2576 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2553, i32 %b2551){
__fresh531:
  %a_slot2554 = alloca i32
  store i32 %a2553, i32* %a_slot2554
  %b_slot2552 = alloca i32
  store i32 %b2551, i32* %b_slot2552
  %lhs_or_call2555 = load i32* %a_slot2554
  %ret2556 = call i8* @string_of_int ( i32 %lhs_or_call2555 )
  %ret2557 = call i8* @string_cat ( i8* @_const_str483, i8* %ret2556 )
  call void @print_string( i8* %ret2557 )
  %lhs_or_call2558 = load i32* %b_slot2552
  %ret2559 = call i8* @string_of_int ( i32 %lhs_or_call2558 )
  %ret2560 = call i8* @string_cat ( i8* @_const_str484, i8* %ret2559 )
  call void @print_string( i8* %ret2560 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2539, i32 %y2537, i32 %z2535, i32 %w2533){
__fresh530:
  %x_slot2540 = alloca i32
  store i32 %x2539, i32* %x_slot2540
  %y_slot2538 = alloca i32
  store i32 %y2537, i32* %y_slot2538
  %z_slot2536 = alloca i32
  store i32 %z2535, i32* %z_slot2536
  %w_slot2534 = alloca i32
  store i32 %w2533, i32* %w_slot2534
  %lhs_or_call2543 = load i32* %x_slot2540
  %lhs_or_call2544 = load i32* %y_slot2538
  %lhs_or_call2545 = load i32* %z_slot2536
  %mem_ptr2546 = call i32* @oat_malloc ( i32 20 )
  %obj2547 = bitcast i32* %mem_ptr2546 to %B* 
  %new_obj2548 = call %B* @_B_ctor ( %B* %obj2547, i32 %lhs_or_call2545, i32 %lhs_or_call2544, i32 %lhs_or_call2543 )
  %_this1 = bitcast %B* %new_obj2548 to %C 
  %_name2549 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str482, i8** %_name2549
  %this_vtable2550 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable474, %_C_vtable** %this_vtable2550
  %w2541 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2542 = load i32* %w_slot2534
  store i32 %lhs_or_call2542, i32* %w2541
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh529:
  %x2521 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2522 = load i32* %x2521
  %ret2523 = call i8* @string_of_int ( i32 %lhs_or_call2522 )
  %ret2524 = call i8* @string_cat ( i8* @_const_str479, i8* %ret2523 )
  call void @print_string( i8* %ret2524 )
  %y2525 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2526 = load i32* %y2525
  %ret2527 = call i8* @string_of_int ( i32 %lhs_or_call2526 )
  %ret2528 = call i8* @string_cat ( i8* @_const_str480, i8* %ret2527 )
  call void @print_string( i8* %ret2528 )
  %z2529 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2530 = load i32* %z2529
  %ret2531 = call i8* @string_of_int ( i32 %lhs_or_call2530 )
  %ret2532 = call i8* @string_cat ( i8* @_const_str481, i8* %ret2531 )
  call void @print_string( i8* %ret2532 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2509, i32 %y2507, i32 %z2505){
__fresh528:
  %x_slot2510 = alloca i32
  store i32 %x2509, i32* %x_slot2510
  %y_slot2508 = alloca i32
  store i32 %y2507, i32* %y_slot2508
  %z_slot2506 = alloca i32
  store i32 %z2505, i32* %z_slot2506
  %lhs_or_call2515 = load i32* %x_slot2510
  %mem_ptr2516 = call i32* @oat_malloc ( i32 12 )
  %obj2517 = bitcast i32* %mem_ptr2516 to %A* 
  %new_obj2518 = call %A* @_A_ctor ( %A* %obj2517, i32 %lhs_or_call2515 )
  %_this1 = bitcast %A* %new_obj2518 to %B 
  %_name2519 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str478, i8** %_name2519
  %this_vtable2520 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable473, %_B_vtable** %this_vtable2520
  %y2511 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2512 = load i32* %y_slot2508
  store i32 %lhs_or_call2512, i32* %y2511
  %z2513 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2514 = load i32* %z_slot2506
  store i32 %lhs_or_call2514, i32* %z2513
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh527:
  %x2501 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2502 = load i32* %x2501
  %ret2503 = call i8* @string_of_int ( i32 %lhs_or_call2502 )
  %ret2504 = call i8* @string_cat ( i8* @_const_str477, i8* %ret2503 )
  call void @print_string( i8* %ret2504 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2492){
__fresh526:
  %x_slot2493 = alloca i32
  store i32 %x2492, i32* %x_slot2493
  %mem_ptr2496 = call i32* @oat_malloc ( i32 8 )
  %obj2497 = bitcast i32* %mem_ptr2496 to %Object* 
  %new_obj2498 = call %Object* @_Object_ctor ( %Object* %obj2497 )
  %_this1 = bitcast %Object* %new_obj2498 to %A 
  %_name2499 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str476, i8** %_name2499
  %this_vtable2500 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable472, %_A_vtable** %this_vtable2500
  %x2494 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2495 = load i32* %x_slot2493
  store i32 %lhs_or_call2495, i32* %x2494
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh525:
  %_name2490 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2491 = load i8** %_name2490
  ret i8* %lhs_or_call2491
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh524:
  %_name2488 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str475, i8** %_name2488
  %this_vtable2489 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable471, %_Object_vtable** %this_vtable2489
  ret %Object* %_this1
}


