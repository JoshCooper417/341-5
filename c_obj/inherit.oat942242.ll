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


define i32 @program (i32 %argc2589, { i32, [ 0 x i8* ] }* %argv2587){
__fresh534:
  %argc_slot2590 = alloca i32
  store i32 %argc2589, i32* %argc_slot2590
  %argv_slot2588 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2587, { i32, [ 0 x i8* ] }** %argv_slot2588
  %lhs_or_call2591 = load i32* @x491
  %bop2592 = add i32 %lhs_or_call2591, 3
  %lhs_or_call2593 = load i32* @x491
  %bop2594 = add i32 %lhs_or_call2593, 2
  %lhs_or_call2595 = load i32* @x491
  %bop2596 = add i32 %lhs_or_call2595, 1
  %mem_ptr2597 = call i32* @oat_malloc ( i32 20 )
  %obj2598 = bitcast i32* %mem_ptr2597 to %B* 
  %new_obj2599 = call %B* @_B_ctor ( %B* %obj2598, i32 %bop2596, i32 %bop2594, i32 %bop2592 )
  %vdecl_slot2600 = alloca %B*
  store %B* %new_obj2599, %B** %vdecl_slot2600
  %mem_ptr2601 = call i32* @oat_malloc ( i32 24 )
  %obj2602 = bitcast i32* %mem_ptr2601 to %C* 
  %new_obj2603 = call %C* @_C_ctor ( %C* %obj2602, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2604 = alloca %C*
  store %C* %new_obj2603, %C** %vdecl_slot2604
  %lhs_or_call2605 = load %A** @a489
  %vtable_ptr2606 = getelementptr %A* %lhs_or_call2605, i32 0
  %vtable2607 = load %_A_vtable** %vtable_ptr2606
  %print2609 = getelementptr %_A_vtable* %vtable2607, i32 0, i32 2
  %print2608 = load void (%A*)** %print2609
  %cast_op2610 = bitcast %A %lhs_or_call2605 to %A* 
  call void %print2608( %A* %cast_op2610 )
  %lhs_or_call2611 = load %B** %vdecl_slot2600
  %vtable_ptr2612 = getelementptr %B* %lhs_or_call2611, i32 0
  %vtable2613 = load %_B_vtable** %vtable_ptr2612
  %print2615 = getelementptr %_B_vtable* %vtable2613, i32 0, i32 2
  %print2614 = load void (%B*)** %print2615
  %cast_op2616 = bitcast %B %lhs_or_call2611 to %B* 
  call void %print2614( %B* %cast_op2616 )
  %lhs_or_call2617 = load %C** %vdecl_slot2604
  %vtable_ptr2618 = getelementptr %C* %lhs_or_call2617, i32 0
  %vtable2619 = load %_C_vtable** %vtable_ptr2618
  %print2621 = getelementptr %_C_vtable* %vtable2619, i32 0, i32 2
  %print2620 = load void (%C*)** %print2621
  %cast_op2622 = bitcast %C %lhs_or_call2617 to %C* 
  call void %print2620( %C* %cast_op2622 )
  %lhs_or_call2623 = load i32* @x491
  %bop2624 = add i32 %lhs_or_call2623, 2
  %lhs_or_call2625 = load i32* @x491
  %bop2626 = add i32 %lhs_or_call2625, 1
  %lhs_or_call2627 = load %C** %vdecl_slot2604
  %vtable_ptr2628 = getelementptr %C* %lhs_or_call2627, i32 0
  %vtable2629 = load %_C_vtable** %vtable_ptr2628
  %foo2631 = getelementptr %_C_vtable* %vtable2629, i32 0, i32 3
  %foo2630 = load void (%C*, i32, i32)** %foo2631
  %cast_op2632 = bitcast %C %lhs_or_call2627 to %C* 
  call void %foo2630( %C* %cast_op2632, i32 %bop2626, i32 %bop2624 )
  ret i32 0
}


define void @a489.init490 (){
__fresh533:
  %mem_ptr2584 = call i32* @oat_malloc ( i32 12 )
  %obj2585 = bitcast i32* %mem_ptr2584 to %A* 
  %new_obj2586 = call %A* @_A_ctor ( %A* %obj2585, i32 3 )
  store %A* %new_obj2586, %A** @a489
  ret void
}


define void @_C_print (%C* %_this1){
__fresh532:
  %x2568 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2569 = load i32* %x2568
  %ret2570 = call i8* @string_of_int ( i32 %lhs_or_call2569 )
  %ret2571 = call i8* @string_cat ( i8* @_const_str485, i8* %ret2570 )
  call void @print_string( i8* %ret2571 )
  %y2572 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2573 = load i32* %y2572
  %ret2574 = call i8* @string_of_int ( i32 %lhs_or_call2573 )
  %ret2575 = call i8* @string_cat ( i8* @_const_str486, i8* %ret2574 )
  call void @print_string( i8* %ret2575 )
  %z2576 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2577 = load i32* %z2576
  %ret2578 = call i8* @string_of_int ( i32 %lhs_or_call2577 )
  %ret2579 = call i8* @string_cat ( i8* @_const_str487, i8* %ret2578 )
  call void @print_string( i8* %ret2579 )
  %w2580 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2581 = load i32* %w2580
  %ret2582 = call i8* @string_of_int ( i32 %lhs_or_call2581 )
  %ret2583 = call i8* @string_cat ( i8* @_const_str488, i8* %ret2582 )
  call void @print_string( i8* %ret2583 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2560, i32 %b2558){
__fresh531:
  %a_slot2561 = alloca i32
  store i32 %a2560, i32* %a_slot2561
  %b_slot2559 = alloca i32
  store i32 %b2558, i32* %b_slot2559
  %lhs_or_call2562 = load i32* %a_slot2561
  %ret2563 = call i8* @string_of_int ( i32 %lhs_or_call2562 )
  %ret2564 = call i8* @string_cat ( i8* @_const_str483, i8* %ret2563 )
  call void @print_string( i8* %ret2564 )
  %lhs_or_call2565 = load i32* %b_slot2559
  %ret2566 = call i8* @string_of_int ( i32 %lhs_or_call2565 )
  %ret2567 = call i8* @string_cat ( i8* @_const_str484, i8* %ret2566 )
  call void @print_string( i8* %ret2567 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2546, i32 %y2544, i32 %z2542, i32 %w2540){
__fresh530:
  %x_slot2547 = alloca i32
  store i32 %x2546, i32* %x_slot2547
  %y_slot2545 = alloca i32
  store i32 %y2544, i32* %y_slot2545
  %z_slot2543 = alloca i32
  store i32 %z2542, i32* %z_slot2543
  %w_slot2541 = alloca i32
  store i32 %w2540, i32* %w_slot2541
  %lhs_or_call2550 = load i32* %x_slot2547
  %lhs_or_call2551 = load i32* %y_slot2545
  %lhs_or_call2552 = load i32* %z_slot2543
  %mem_ptr2553 = call i32* @oat_malloc ( i32 20 )
  %obj2554 = bitcast i32* %mem_ptr2553 to %B* 
  %new_obj2555 = call %B* @_B_ctor ( %B* %obj2554, i32 %lhs_or_call2552, i32 %lhs_or_call2551, i32 %lhs_or_call2550 )
  %_this1 = bitcast %B* %new_obj2555 to %C 
  %_name2556 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str482, i8** %_name2556
  %this_vtable2557 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable474, %_C_vtable** %this_vtable2557
  %w2548 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2549 = load i32* %w_slot2541
  store i32 %lhs_or_call2549, i32* %w2548
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh529:
  %x2528 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2529 = load i32* %x2528
  %ret2530 = call i8* @string_of_int ( i32 %lhs_or_call2529 )
  %ret2531 = call i8* @string_cat ( i8* @_const_str479, i8* %ret2530 )
  call void @print_string( i8* %ret2531 )
  %y2532 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2533 = load i32* %y2532
  %ret2534 = call i8* @string_of_int ( i32 %lhs_or_call2533 )
  %ret2535 = call i8* @string_cat ( i8* @_const_str480, i8* %ret2534 )
  call void @print_string( i8* %ret2535 )
  %z2536 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2537 = load i32* %z2536
  %ret2538 = call i8* @string_of_int ( i32 %lhs_or_call2537 )
  %ret2539 = call i8* @string_cat ( i8* @_const_str481, i8* %ret2538 )
  call void @print_string( i8* %ret2539 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2516, i32 %y2514, i32 %z2512){
__fresh528:
  %x_slot2517 = alloca i32
  store i32 %x2516, i32* %x_slot2517
  %y_slot2515 = alloca i32
  store i32 %y2514, i32* %y_slot2515
  %z_slot2513 = alloca i32
  store i32 %z2512, i32* %z_slot2513
  %lhs_or_call2522 = load i32* %x_slot2517
  %mem_ptr2523 = call i32* @oat_malloc ( i32 12 )
  %obj2524 = bitcast i32* %mem_ptr2523 to %A* 
  %new_obj2525 = call %A* @_A_ctor ( %A* %obj2524, i32 %lhs_or_call2522 )
  %_this1 = bitcast %A* %new_obj2525 to %B 
  %_name2526 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str478, i8** %_name2526
  %this_vtable2527 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable473, %_B_vtable** %this_vtable2527
  %y2518 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2519 = load i32* %y_slot2515
  store i32 %lhs_or_call2519, i32* %y2518
  %z2520 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2521 = load i32* %z_slot2513
  store i32 %lhs_or_call2521, i32* %z2520
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh527:
  %x2508 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2509 = load i32* %x2508
  %ret2510 = call i8* @string_of_int ( i32 %lhs_or_call2509 )
  %ret2511 = call i8* @string_cat ( i8* @_const_str477, i8* %ret2510 )
  call void @print_string( i8* %ret2511 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2499){
__fresh526:
  %x_slot2500 = alloca i32
  store i32 %x2499, i32* %x_slot2500
  %mem_ptr2503 = call i32* @oat_malloc ( i32 8 )
  %obj2504 = bitcast i32* %mem_ptr2503 to %Object* 
  %new_obj2505 = call %Object* @_Object_ctor ( %Object* %obj2504 )
  %_this1 = bitcast %Object* %new_obj2505 to %A 
  %_name2506 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str476, i8** %_name2506
  %this_vtable2507 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable472, %_A_vtable** %this_vtable2507
  %x2501 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2502 = load i32* %x_slot2500
  store i32 %lhs_or_call2502, i32* %x2501
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh525:
  %_name2497 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2498 = load i8** %_name2497
  ret i8* %lhs_or_call2498
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh524:
  %_name2495 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str475, i8** %_name2495
  %this_vtable2496 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable471, %_Object_vtable** %this_vtable2496
  ret %Object* %_this1
}


