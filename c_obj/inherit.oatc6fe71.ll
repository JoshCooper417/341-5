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
@x511 = global i32 0, align 4
@a509 = global %A* zeroinitializer, align 4		; initialized by @a509.init510
@_const_str508.str. = private unnamed_addr constant [ 6 x i8 ] c "C: w=\00", align 4
@_const_str508 = alias bitcast([ 6 x i8 ]* @_const_str508.str. to i8*)@_const_str507.str. = private unnamed_addr constant [ 6 x i8 ] c "C: z=\00", align 4
@_const_str507 = alias bitcast([ 6 x i8 ]* @_const_str507.str. to i8*)@_const_str506.str. = private unnamed_addr constant [ 6 x i8 ] c "C: y=\00", align 4
@_const_str506 = alias bitcast([ 6 x i8 ]* @_const_str506.str. to i8*)@_const_str505.str. = private unnamed_addr constant [ 6 x i8 ] c "C: x=\00", align 4
@_const_str505 = alias bitcast([ 6 x i8 ]* @_const_str505.str. to i8*)@_const_str504.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: b=\00", align 4
@_const_str504 = alias bitcast([ 10 x i8 ]* @_const_str504.str. to i8*)@_const_str503.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: a=\00", align 4
@_const_str503 = alias bitcast([ 10 x i8 ]* @_const_str503.str. to i8*)@_const_str502.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str502 = alias bitcast([ 2 x i8 ]* @_const_str502.str. to i8*)@_const_str501.str. = private unnamed_addr constant [ 6 x i8 ] c "B: z=\00", align 4
@_const_str501 = alias bitcast([ 6 x i8 ]* @_const_str501.str. to i8*)@_const_str500.str. = private unnamed_addr constant [ 6 x i8 ] c "B: y=\00", align 4
@_const_str500 = alias bitcast([ 6 x i8 ]* @_const_str500.str. to i8*)@_const_str499.str. = private unnamed_addr constant [ 6 x i8 ] c "B: x=\00", align 4
@_const_str499 = alias bitcast([ 6 x i8 ]* @_const_str499.str. to i8*)@_const_str498.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str498 = alias bitcast([ 2 x i8 ]* @_const_str498.str. to i8*)@_const_str497.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str497 = alias bitcast([ 6 x i8 ]* @_const_str497.str. to i8*)@_const_str496.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str496 = alias bitcast([ 2 x i8 ]* @_const_str496.str. to i8*)@_const_str495.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str495 = alias bitcast([ 7 x i8 ]* @_const_str495.str. to i8*)@_C_vtable494 = private constant %_C_vtable {%_B_vtable* @_B_vtable493, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print, void (%C*, i32, i32)* @_C_foo}, align 4
@_B_vtable493 = private constant %_B_vtable {%_A_vtable* @_A_vtable492, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_print}, align 4
@_A_vtable492 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable491, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable491 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh555:
  call void @a509.init510(  )
  ret void
}


define i32 @program (i32 %argc2634, { i32, [ 0 x i8* ] }* %argv2632){
__fresh554:
  %argc_slot2635 = alloca i32
  store i32 %argc2634, i32* %argc_slot2635
  %argv_slot2633 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2632, { i32, [ 0 x i8* ] }** %argv_slot2633
  %lhs_or_call2636 = load i32* @x511
  %bop2637 = add i32 %lhs_or_call2636, 3
  %lhs_or_call2638 = load i32* @x511
  %bop2639 = add i32 %lhs_or_call2638, 2
  %lhs_or_call2640 = load i32* @x511
  %bop2641 = add i32 %lhs_or_call2640, 1
  %mem_ptr2642 = call i32* @oat_malloc ( i32 20 )
  %obj2643 = bitcast i32* %mem_ptr2642 to %B* 
  %new_obj2644 = call %B* @_B_ctor ( %B* %obj2643, i32 %bop2641, i32 %bop2639, i32 %bop2637 )
  %vdecl_slot2645 = alloca %B*
  store %B* %new_obj2644, %B** %vdecl_slot2645
  %mem_ptr2646 = call i32* @oat_malloc ( i32 24 )
  %obj2647 = bitcast i32* %mem_ptr2646 to %C* 
  %new_obj2648 = call %C* @_C_ctor ( %C* %obj2647, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2649 = alloca %C*
  store %C* %new_obj2648, %C** %vdecl_slot2649
  %lhs_or_call2650 = load %A** @a509
  %print2652 = getelementptr %_A_vtable* @_A_vtable492, i32 0, i32 2
  %print2651 = load void (%A*)** %print2652
  %cast_op2653 = bitcast %A %lhs_or_call2650 to %A* 
  call void %print2651( %A* %cast_op2653 )
  %lhs_or_call2654 = load %B** %vdecl_slot2645
  %print2656 = getelementptr %_B_vtable* @_B_vtable493, i32 0, i32 2
  %print2655 = load void (%B*)** %print2656
  %cast_op2657 = bitcast %B %lhs_or_call2654 to %B* 
  call void %print2655( %B* %cast_op2657 )
  %lhs_or_call2658 = load %C** %vdecl_slot2649
  %print2660 = getelementptr %_C_vtable* @_C_vtable494, i32 0, i32 2
  %print2659 = load void (%C*)** %print2660
  %cast_op2661 = bitcast %C %lhs_or_call2658 to %C* 
  call void %print2659( %C* %cast_op2661 )
  %lhs_or_call2662 = load i32* @x511
  %bop2663 = add i32 %lhs_or_call2662, 2
  %lhs_or_call2664 = load i32* @x511
  %bop2665 = add i32 %lhs_or_call2664, 1
  %lhs_or_call2666 = load %C** %vdecl_slot2649
  %foo2668 = getelementptr %_C_vtable* @_C_vtable494, i32 0, i32 3
  %foo2667 = load void (%C*, i32, i32)** %foo2668
  %cast_op2669 = bitcast %C %lhs_or_call2666 to %C* 
  call void %foo2667( %C* %cast_op2669, i32 %bop2665, i32 %bop2663 )
  ret i32 0
}


define void @a509.init510 (){
__fresh553:
  %mem_ptr2629 = call i32* @oat_malloc ( i32 12 )
  %obj2630 = bitcast i32* %mem_ptr2629 to %A* 
  %new_obj2631 = call %A* @_A_ctor ( %A* %obj2630, i32 3 )
  store %A* %new_obj2631, %A** @a509
  ret void
}


define void @_C_print (%C* %_this1){
__fresh552:
  %x2613 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2614 = load i32* %x2613
  %ret2615 = call i8* @string_of_int ( i32 %lhs_or_call2614 )
  %ret2616 = call i8* @string_cat ( i8* @_const_str505, i8* %ret2615 )
  call void @print_string( i8* %ret2616 )
  %y2617 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2618 = load i32* %y2617
  %ret2619 = call i8* @string_of_int ( i32 %lhs_or_call2618 )
  %ret2620 = call i8* @string_cat ( i8* @_const_str506, i8* %ret2619 )
  call void @print_string( i8* %ret2620 )
  %z2621 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2622 = load i32* %z2621
  %ret2623 = call i8* @string_of_int ( i32 %lhs_or_call2622 )
  %ret2624 = call i8* @string_cat ( i8* @_const_str507, i8* %ret2623 )
  call void @print_string( i8* %ret2624 )
  %w2625 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2626 = load i32* %w2625
  %ret2627 = call i8* @string_of_int ( i32 %lhs_or_call2626 )
  %ret2628 = call i8* @string_cat ( i8* @_const_str508, i8* %ret2627 )
  call void @print_string( i8* %ret2628 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2605, i32 %b2603){
__fresh551:
  %a_slot2606 = alloca i32
  store i32 %a2605, i32* %a_slot2606
  %b_slot2604 = alloca i32
  store i32 %b2603, i32* %b_slot2604
  %lhs_or_call2607 = load i32* %a_slot2606
  %ret2608 = call i8* @string_of_int ( i32 %lhs_or_call2607 )
  %ret2609 = call i8* @string_cat ( i8* @_const_str503, i8* %ret2608 )
  call void @print_string( i8* %ret2609 )
  %lhs_or_call2610 = load i32* %b_slot2604
  %ret2611 = call i8* @string_of_int ( i32 %lhs_or_call2610 )
  %ret2612 = call i8* @string_cat ( i8* @_const_str504, i8* %ret2611 )
  call void @print_string( i8* %ret2612 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2590, i32 %y2588, i32 %z2586, i32 %w2584){
__fresh550:
  %x_slot2591 = alloca i32
  store i32 %x2590, i32* %x_slot2591
  %y_slot2589 = alloca i32
  store i32 %y2588, i32* %y_slot2589
  %z_slot2587 = alloca i32
  store i32 %z2586, i32* %z_slot2587
  %w_slot2585 = alloca i32
  store i32 %w2584, i32* %w_slot2585
  %lhs_or_call2594 = load i32* %x_slot2591
  %lhs_or_call2595 = load i32* %y_slot2589
  %lhs_or_call2596 = load i32* %z_slot2587
  %cast_op2597 = bitcast %C* %_this1 to %B* 
  %mem_ptr2598 = call i32* @oat_malloc ( i32 24 )
  %obj2599 = bitcast i32* %mem_ptr2598 to %C* 
  %new_obj2600 = call %B* @_B_ctor ( %C* %obj2599, %B* %cast_op2597, i32 %lhs_or_call2596, i32 %lhs_or_call2595, i32 %lhs_or_call2594 )
  %_this1 = bitcast %B* %new_obj2600 to %C 
  %_name2601 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str502, i8** %_name2601
  %this_vtable2602 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable494, %_C_vtable** %this_vtable2602
  %w2592 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2593 = load i32* %w_slot2585
  store i32 %lhs_or_call2593, i32* %w2592
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh549:
  %x2572 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2573 = load i32* %x2572
  %ret2574 = call i8* @string_of_int ( i32 %lhs_or_call2573 )
  %ret2575 = call i8* @string_cat ( i8* @_const_str499, i8* %ret2574 )
  call void @print_string( i8* %ret2575 )
  %y2576 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2577 = load i32* %y2576
  %ret2578 = call i8* @string_of_int ( i32 %lhs_or_call2577 )
  %ret2579 = call i8* @string_cat ( i8* @_const_str500, i8* %ret2578 )
  call void @print_string( i8* %ret2579 )
  %z2580 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2581 = load i32* %z2580
  %ret2582 = call i8* @string_of_int ( i32 %lhs_or_call2581 )
  %ret2583 = call i8* @string_cat ( i8* @_const_str501, i8* %ret2582 )
  call void @print_string( i8* %ret2583 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2559, i32 %y2557, i32 %z2555){
__fresh548:
  %x_slot2560 = alloca i32
  store i32 %x2559, i32* %x_slot2560
  %y_slot2558 = alloca i32
  store i32 %y2557, i32* %y_slot2558
  %z_slot2556 = alloca i32
  store i32 %z2555, i32* %z_slot2556
  %lhs_or_call2565 = load i32* %x_slot2560
  %cast_op2566 = bitcast %B* %_this1 to %A* 
  %mem_ptr2567 = call i32* @oat_malloc ( i32 20 )
  %obj2568 = bitcast i32* %mem_ptr2567 to %B* 
  %new_obj2569 = call %A* @_A_ctor ( %B* %obj2568, %A* %cast_op2566, i32 %lhs_or_call2565 )
  %_this1 = bitcast %A* %new_obj2569 to %B 
  %_name2570 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str498, i8** %_name2570
  %this_vtable2571 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable493, %_B_vtable** %this_vtable2571
  %y2561 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2562 = load i32* %y_slot2558
  store i32 %lhs_or_call2562, i32* %y2561
  %z2563 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2564 = load i32* %z_slot2556
  store i32 %lhs_or_call2564, i32* %z2563
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh547:
  %x2551 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2552 = load i32* %x2551
  %ret2553 = call i8* @string_of_int ( i32 %lhs_or_call2552 )
  %ret2554 = call i8* @string_cat ( i8* @_const_str497, i8* %ret2553 )
  call void @print_string( i8* %ret2554 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2541){
__fresh546:
  %x_slot2542 = alloca i32
  store i32 %x2541, i32* %x_slot2542
  %cast_op2545 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2546 = call i32* @oat_malloc ( i32 12 )
  %obj2547 = bitcast i32* %mem_ptr2546 to %A* 
  %new_obj2548 = call %Object* @_Object_ctor ( %A* %obj2547, %Object* %cast_op2545 )
  %_this1 = bitcast %Object* %new_obj2548 to %A 
  %_name2549 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str496, i8** %_name2549
  %this_vtable2550 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable492, %_A_vtable** %this_vtable2550
  %x2543 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2544 = load i32* %x_slot2542
  store i32 %lhs_or_call2544, i32* %x2543
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh545:
  %_name2539 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2540 = load i8** %_name2539
  ret i8* %lhs_or_call2540
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh544:
  %_name2537 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str495, i8** %_name2537
  %this_vtable2538 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable491, %_Object_vtable** %this_vtable2538
  ret %Object* %_this1
}


