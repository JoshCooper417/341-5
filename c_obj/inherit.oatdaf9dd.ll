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


define i32 @program (i32 %argc2601, { i32, [ 0 x i8* ] }* %argv2599){
__fresh534:
  %argc_slot2602 = alloca i32
  store i32 %argc2601, i32* %argc_slot2602
  %argv_slot2600 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2599, { i32, [ 0 x i8* ] }** %argv_slot2600
  %lhs_or_call2603 = load i32* @x502
  %bop2604 = add i32 %lhs_or_call2603, 3
  %lhs_or_call2605 = load i32* @x502
  %bop2606 = add i32 %lhs_or_call2605, 2
  %lhs_or_call2607 = load i32* @x502
  %bop2608 = add i32 %lhs_or_call2607, 1
  %mem_ptr2609 = call i32* @oat_malloc ( i32 20 )
  %obj2610 = bitcast i32* %mem_ptr2609 to %B* 
  %new_obj2611 = call %B* @_B_ctor ( %B* %obj2610, i32 %bop2608, i32 %bop2606, i32 %bop2604 )
  %vdecl_slot2612 = alloca %B*
  store %B* %new_obj2611, %B** %vdecl_slot2612
  %mem_ptr2613 = call i32* @oat_malloc ( i32 24 )
  %obj2614 = bitcast i32* %mem_ptr2613 to %C* 
  %new_obj2615 = call %C* @_C_ctor ( %C* %obj2614, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2616 = alloca %C*
  store %C* %new_obj2615, %C** %vdecl_slot2616
  %lhs_or_call2617 = load %A** @a500
  %vtable_ptr2618 = getelementptr %A* %lhs_or_call2617, i32 0
  %vtable2619 = load %_A_vtable** %vtable_ptr2618
  %print2621 = getelementptr %_A_vtable* %vtable2619, i32 0, i32 2
  %print2620 = load void (%A*)** %print2621
  %cast_op2622 = bitcast %A %lhs_or_call2617 to %A* 
  call void %print2620( %A* %cast_op2622 )
  %lhs_or_call2623 = load %B** %vdecl_slot2612
  %vtable_ptr2624 = getelementptr %B* %lhs_or_call2623, i32 0
  %vtable2625 = load %_B_vtable** %vtable_ptr2624
  %print2627 = getelementptr %_B_vtable* %vtable2625, i32 0, i32 2
  %print2626 = load void (%B*)** %print2627
  %cast_op2628 = bitcast %B %lhs_or_call2623 to %B* 
  call void %print2626( %B* %cast_op2628 )
  %lhs_or_call2629 = load %C** %vdecl_slot2616
  %vtable_ptr2630 = getelementptr %C* %lhs_or_call2629, i32 0
  %vtable2631 = load %_C_vtable** %vtable_ptr2630
  %print2633 = getelementptr %_C_vtable* %vtable2631, i32 0, i32 2
  %print2632 = load void (%C*)** %print2633
  %cast_op2634 = bitcast %C %lhs_or_call2629 to %C* 
  call void %print2632( %C* %cast_op2634 )
  %lhs_or_call2635 = load i32* @x502
  %bop2636 = add i32 %lhs_or_call2635, 2
  %lhs_or_call2637 = load i32* @x502
  %bop2638 = add i32 %lhs_or_call2637, 1
  %lhs_or_call2639 = load %C** %vdecl_slot2616
  %vtable_ptr2640 = getelementptr %C* %lhs_or_call2639, i32 0
  %vtable2641 = load %_C_vtable** %vtable_ptr2640
  %foo2643 = getelementptr %_C_vtable* %vtable2641, i32 0, i32 3
  %foo2642 = load void (%C*, i32, i32)** %foo2643
  %cast_op2644 = bitcast %C %lhs_or_call2639 to %C* 
  call void %foo2642( %C* %cast_op2644, i32 %bop2638, i32 %bop2636 )
  ret i32 0
}


define void @a500.init501 (){
__fresh533:
  %mem_ptr2596 = call i32* @oat_malloc ( i32 12 )
  %obj2597 = bitcast i32* %mem_ptr2596 to %A* 
  %new_obj2598 = call %A* @_A_ctor ( %A* %obj2597, i32 3 )
  store %A* %new_obj2598, %A** @a500
  ret void
}


define void @_C_print (%C* %_this1){
__fresh532:
  %x2580 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2581 = load i32* %x2580
  %ret2582 = call i8* @string_of_int ( i32 %lhs_or_call2581 )
  %ret2583 = call i8* @string_cat ( i8* @_const_str496, i8* %ret2582 )
  call void @print_string( i8* %ret2583 )
  %y2584 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2585 = load i32* %y2584
  %ret2586 = call i8* @string_of_int ( i32 %lhs_or_call2585 )
  %ret2587 = call i8* @string_cat ( i8* @_const_str497, i8* %ret2586 )
  call void @print_string( i8* %ret2587 )
  %z2588 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2589 = load i32* %z2588
  %ret2590 = call i8* @string_of_int ( i32 %lhs_or_call2589 )
  %ret2591 = call i8* @string_cat ( i8* @_const_str498, i8* %ret2590 )
  call void @print_string( i8* %ret2591 )
  %w2592 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2593 = load i32* %w2592
  %ret2594 = call i8* @string_of_int ( i32 %lhs_or_call2593 )
  %ret2595 = call i8* @string_cat ( i8* @_const_str499, i8* %ret2594 )
  call void @print_string( i8* %ret2595 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2572, i32 %b2570){
__fresh531:
  %a_slot2573 = alloca i32
  store i32 %a2572, i32* %a_slot2573
  %b_slot2571 = alloca i32
  store i32 %b2570, i32* %b_slot2571
  %lhs_or_call2574 = load i32* %a_slot2573
  %ret2575 = call i8* @string_of_int ( i32 %lhs_or_call2574 )
  %ret2576 = call i8* @string_cat ( i8* @_const_str494, i8* %ret2575 )
  call void @print_string( i8* %ret2576 )
  %lhs_or_call2577 = load i32* %b_slot2571
  %ret2578 = call i8* @string_of_int ( i32 %lhs_or_call2577 )
  %ret2579 = call i8* @string_cat ( i8* @_const_str495, i8* %ret2578 )
  call void @print_string( i8* %ret2579 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2558, i32 %y2556, i32 %z2554, i32 %w2552){
__fresh530:
  %x_slot2559 = alloca i32
  store i32 %x2558, i32* %x_slot2559
  %y_slot2557 = alloca i32
  store i32 %y2556, i32* %y_slot2557
  %z_slot2555 = alloca i32
  store i32 %z2554, i32* %z_slot2555
  %w_slot2553 = alloca i32
  store i32 %w2552, i32* %w_slot2553
  %lhs_or_call2562 = load i32* %x_slot2559
  %lhs_or_call2563 = load i32* %y_slot2557
  %lhs_or_call2564 = load i32* %z_slot2555
  %mem_ptr2565 = call i32* @oat_malloc ( i32 20 )
  %obj2566 = bitcast i32* %mem_ptr2565 to %B* 
  %new_obj2567 = call %B* @_B_ctor ( %B* %obj2566, i32 %lhs_or_call2564, i32 %lhs_or_call2563, i32 %lhs_or_call2562 )
  %_this1 = bitcast %B* %new_obj2567 to %C 
  %_name2568 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str493, i8** %_name2568
  %this_vtable2569 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable485, %_C_vtable** %this_vtable2569
  %w2560 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2561 = load i32* %w_slot2553
  store i32 %lhs_or_call2561, i32* %w2560
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh529:
  %x2540 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2541 = load i32* %x2540
  %ret2542 = call i8* @string_of_int ( i32 %lhs_or_call2541 )
  %ret2543 = call i8* @string_cat ( i8* @_const_str490, i8* %ret2542 )
  call void @print_string( i8* %ret2543 )
  %y2544 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2545 = load i32* %y2544
  %ret2546 = call i8* @string_of_int ( i32 %lhs_or_call2545 )
  %ret2547 = call i8* @string_cat ( i8* @_const_str491, i8* %ret2546 )
  call void @print_string( i8* %ret2547 )
  %z2548 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2549 = load i32* %z2548
  %ret2550 = call i8* @string_of_int ( i32 %lhs_or_call2549 )
  %ret2551 = call i8* @string_cat ( i8* @_const_str492, i8* %ret2550 )
  call void @print_string( i8* %ret2551 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2528, i32 %y2526, i32 %z2524){
__fresh528:
  %x_slot2529 = alloca i32
  store i32 %x2528, i32* %x_slot2529
  %y_slot2527 = alloca i32
  store i32 %y2526, i32* %y_slot2527
  %z_slot2525 = alloca i32
  store i32 %z2524, i32* %z_slot2525
  %lhs_or_call2534 = load i32* %x_slot2529
  %mem_ptr2535 = call i32* @oat_malloc ( i32 12 )
  %obj2536 = bitcast i32* %mem_ptr2535 to %A* 
  %new_obj2537 = call %A* @_A_ctor ( %A* %obj2536, i32 %lhs_or_call2534 )
  %_this1 = bitcast %A* %new_obj2537 to %B 
  %_name2538 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str489, i8** %_name2538
  %this_vtable2539 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable484, %_B_vtable** %this_vtable2539
  %y2530 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2531 = load i32* %y_slot2527
  store i32 %lhs_or_call2531, i32* %y2530
  %z2532 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2533 = load i32* %z_slot2525
  store i32 %lhs_or_call2533, i32* %z2532
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh527:
  %x2520 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2521 = load i32* %x2520
  %ret2522 = call i8* @string_of_int ( i32 %lhs_or_call2521 )
  %ret2523 = call i8* @string_cat ( i8* @_const_str488, i8* %ret2522 )
  call void @print_string( i8* %ret2523 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2511){
__fresh526:
  %x_slot2512 = alloca i32
  store i32 %x2511, i32* %x_slot2512
  %mem_ptr2515 = call i32* @oat_malloc ( i32 8 )
  %obj2516 = bitcast i32* %mem_ptr2515 to %Object* 
  %new_obj2517 = call %Object* @_Object_ctor ( %Object* %obj2516 )
  %_this1 = bitcast %Object* %new_obj2517 to %A 
  %_name2518 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str487, i8** %_name2518
  %this_vtable2519 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable483, %_A_vtable** %this_vtable2519
  %x2513 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2514 = load i32* %x_slot2512
  store i32 %lhs_or_call2514, i32* %x2513
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh525:
  %_name2509 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2510 = load i8** %_name2509
  ret i8* %lhs_or_call2510
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh524:
  %_name2507 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str486, i8** %_name2507
  %this_vtable2508 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable482, %_Object_vtable** %this_vtable2508
  ret %Object* %_this1
}


