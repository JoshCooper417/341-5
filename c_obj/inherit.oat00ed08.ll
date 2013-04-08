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


define i32 @program (i32 %argc2599, { i32, [ 0 x i8* ] }* %argv2597){
__fresh534:
  %argc_slot2600 = alloca i32
  store i32 %argc2599, i32* %argc_slot2600
  %argv_slot2598 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2597, { i32, [ 0 x i8* ] }** %argv_slot2598
  %lhs_or_call2601 = load i32* @x502
  %bop2602 = add i32 %lhs_or_call2601, 3
  %lhs_or_call2603 = load i32* @x502
  %bop2604 = add i32 %lhs_or_call2603, 2
  %lhs_or_call2605 = load i32* @x502
  %bop2606 = add i32 %lhs_or_call2605, 1
  %mem_ptr2607 = call i32* @oat_malloc ( i32 20 )
  %obj2608 = bitcast i32* %mem_ptr2607 to %B* 
  %new_obj2609 = call %B* @_B_ctor ( %B* %obj2608, i32 %bop2606, i32 %bop2604, i32 %bop2602 )
  %vdecl_slot2610 = alloca %B*
  store %B* %new_obj2609, %B** %vdecl_slot2610
  %mem_ptr2611 = call i32* @oat_malloc ( i32 24 )
  %obj2612 = bitcast i32* %mem_ptr2611 to %C* 
  %new_obj2613 = call %C* @_C_ctor ( %C* %obj2612, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2614 = alloca %C*
  store %C* %new_obj2613, %C** %vdecl_slot2614
  %lhs_or_call2615 = load %A** @a500
  %print2617 = getelementptr %_A_vtable* @_A_vtable483, i32 0, i32 2
  %print2616 = load void (%A*)** %print2617
  %cast_op2618 = bitcast %A %lhs_or_call2615 to %A* 
  call void %print2616( %A* %cast_op2618 )
  %lhs_or_call2619 = load %B** %vdecl_slot2610
  %print2621 = getelementptr %_B_vtable* @_B_vtable484, i32 0, i32 2
  %print2620 = load void (%B*)** %print2621
  %cast_op2622 = bitcast %B %lhs_or_call2619 to %B* 
  call void %print2620( %B* %cast_op2622 )
  %lhs_or_call2623 = load %C** %vdecl_slot2614
  %print2625 = getelementptr %_C_vtable* @_C_vtable485, i32 0, i32 2
  %print2624 = load void (%C*)** %print2625
  %cast_op2626 = bitcast %C %lhs_or_call2623 to %C* 
  call void %print2624( %C* %cast_op2626 )
  %lhs_or_call2627 = load i32* @x502
  %bop2628 = add i32 %lhs_or_call2627, 2
  %lhs_or_call2629 = load i32* @x502
  %bop2630 = add i32 %lhs_or_call2629, 1
  %lhs_or_call2631 = load %C** %vdecl_slot2614
  %foo2633 = getelementptr %_C_vtable* @_C_vtable485, i32 0, i32 3
  %foo2632 = load void (%C*, i32, i32)** %foo2633
  %cast_op2634 = bitcast %C %lhs_or_call2631 to %C* 
  call void %foo2632( %C* %cast_op2634, i32 %bop2630, i32 %bop2628 )
  ret i32 0
}


define void @a500.init501 (){
__fresh533:
  %mem_ptr2594 = call i32* @oat_malloc ( i32 12 )
  %obj2595 = bitcast i32* %mem_ptr2594 to %A* 
  %new_obj2596 = call %A* @_A_ctor ( %A* %obj2595, i32 3 )
  store %A* %new_obj2596, %A** @a500
  ret void
}


define void @_C_print (%C* %_this1){
__fresh532:
  %x2578 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2579 = load i32* %x2578
  %ret2580 = call i8* @string_of_int ( i32 %lhs_or_call2579 )
  %ret2581 = call i8* @string_cat ( i8* @_const_str496, i8* %ret2580 )
  call void @print_string( i8* %ret2581 )
  %y2582 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2583 = load i32* %y2582
  %ret2584 = call i8* @string_of_int ( i32 %lhs_or_call2583 )
  %ret2585 = call i8* @string_cat ( i8* @_const_str497, i8* %ret2584 )
  call void @print_string( i8* %ret2585 )
  %z2586 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2587 = load i32* %z2586
  %ret2588 = call i8* @string_of_int ( i32 %lhs_or_call2587 )
  %ret2589 = call i8* @string_cat ( i8* @_const_str498, i8* %ret2588 )
  call void @print_string( i8* %ret2589 )
  %w2590 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2591 = load i32* %w2590
  %ret2592 = call i8* @string_of_int ( i32 %lhs_or_call2591 )
  %ret2593 = call i8* @string_cat ( i8* @_const_str499, i8* %ret2592 )
  call void @print_string( i8* %ret2593 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2570, i32 %b2568){
__fresh531:
  %a_slot2571 = alloca i32
  store i32 %a2570, i32* %a_slot2571
  %b_slot2569 = alloca i32
  store i32 %b2568, i32* %b_slot2569
  %lhs_or_call2572 = load i32* %a_slot2571
  %ret2573 = call i8* @string_of_int ( i32 %lhs_or_call2572 )
  %ret2574 = call i8* @string_cat ( i8* @_const_str494, i8* %ret2573 )
  call void @print_string( i8* %ret2574 )
  %lhs_or_call2575 = load i32* %b_slot2569
  %ret2576 = call i8* @string_of_int ( i32 %lhs_or_call2575 )
  %ret2577 = call i8* @string_cat ( i8* @_const_str495, i8* %ret2576 )
  call void @print_string( i8* %ret2577 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2555, i32 %y2553, i32 %z2551, i32 %w2549){
__fresh530:
  %x_slot2556 = alloca i32
  store i32 %x2555, i32* %x_slot2556
  %y_slot2554 = alloca i32
  store i32 %y2553, i32* %y_slot2554
  %z_slot2552 = alloca i32
  store i32 %z2551, i32* %z_slot2552
  %w_slot2550 = alloca i32
  store i32 %w2549, i32* %w_slot2550
  %lhs_or_call2559 = load i32* %x_slot2556
  %lhs_or_call2560 = load i32* %y_slot2554
  %lhs_or_call2561 = load i32* %z_slot2552
  %cast_op2562 = bitcast %C* %_this1 to %B* 
  %mem_ptr2563 = call i32* @oat_malloc ( i32 24 )
  %obj2564 = bitcast i32* %mem_ptr2563 to %C* 
  %new_obj2565 = call %B* @_B_ctor ( %C* %obj2564, %B* %cast_op2562, i32 %lhs_or_call2561, i32 %lhs_or_call2560, i32 %lhs_or_call2559 )
  %_this1 = bitcast %B* %new_obj2565 to %C 
  %_name2566 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str493, i8** %_name2566
  %this_vtable2567 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable485, %_C_vtable** %this_vtable2567
  %w2557 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2558 = load i32* %w_slot2550
  store i32 %lhs_or_call2558, i32* %w2557
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh529:
  %x2537 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2538 = load i32* %x2537
  %ret2539 = call i8* @string_of_int ( i32 %lhs_or_call2538 )
  %ret2540 = call i8* @string_cat ( i8* @_const_str490, i8* %ret2539 )
  call void @print_string( i8* %ret2540 )
  %y2541 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2542 = load i32* %y2541
  %ret2543 = call i8* @string_of_int ( i32 %lhs_or_call2542 )
  %ret2544 = call i8* @string_cat ( i8* @_const_str491, i8* %ret2543 )
  call void @print_string( i8* %ret2544 )
  %z2545 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2546 = load i32* %z2545
  %ret2547 = call i8* @string_of_int ( i32 %lhs_or_call2546 )
  %ret2548 = call i8* @string_cat ( i8* @_const_str492, i8* %ret2547 )
  call void @print_string( i8* %ret2548 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2524, i32 %y2522, i32 %z2520){
__fresh528:
  %x_slot2525 = alloca i32
  store i32 %x2524, i32* %x_slot2525
  %y_slot2523 = alloca i32
  store i32 %y2522, i32* %y_slot2523
  %z_slot2521 = alloca i32
  store i32 %z2520, i32* %z_slot2521
  %lhs_or_call2530 = load i32* %x_slot2525
  %cast_op2531 = bitcast %B* %_this1 to %A* 
  %mem_ptr2532 = call i32* @oat_malloc ( i32 20 )
  %obj2533 = bitcast i32* %mem_ptr2532 to %B* 
  %new_obj2534 = call %A* @_A_ctor ( %B* %obj2533, %A* %cast_op2531, i32 %lhs_or_call2530 )
  %_this1 = bitcast %A* %new_obj2534 to %B 
  %_name2535 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str489, i8** %_name2535
  %this_vtable2536 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable484, %_B_vtable** %this_vtable2536
  %y2526 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2527 = load i32* %y_slot2523
  store i32 %lhs_or_call2527, i32* %y2526
  %z2528 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2529 = load i32* %z_slot2521
  store i32 %lhs_or_call2529, i32* %z2528
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh527:
  %x2516 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2517 = load i32* %x2516
  %ret2518 = call i8* @string_of_int ( i32 %lhs_or_call2517 )
  %ret2519 = call i8* @string_cat ( i8* @_const_str488, i8* %ret2518 )
  call void @print_string( i8* %ret2519 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2506){
__fresh526:
  %x_slot2507 = alloca i32
  store i32 %x2506, i32* %x_slot2507
  %cast_op2510 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2511 = call i32* @oat_malloc ( i32 12 )
  %obj2512 = bitcast i32* %mem_ptr2511 to %A* 
  %new_obj2513 = call %Object* @_Object_ctor ( %A* %obj2512, %Object* %cast_op2510 )
  %_this1 = bitcast %Object* %new_obj2513 to %A 
  %_name2514 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str487, i8** %_name2514
  %this_vtable2515 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable483, %_A_vtable** %this_vtable2515
  %x2508 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2509 = load i32* %x_slot2507
  store i32 %lhs_or_call2509, i32* %x2508
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh525:
  %_name2504 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2505 = load i8** %_name2504
  ret i8* %lhs_or_call2505
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh524:
  %_name2502 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str486, i8** %_name2502
  %this_vtable2503 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable482, %_Object_vtable** %this_vtable2503
  ret %Object* %_this1
}


