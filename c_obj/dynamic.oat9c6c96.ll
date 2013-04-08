%Owl = type { %_Owl_vtable*, i8* }
%_Owl_vtable = type { %_Wl_vtable*, i8* (%Object*)*, i8* (%Owl*)*, i32 (%Wl*)*, i32 (%Owl*)*, i32 (%Owl*)* }
%Wl = type { %_Wl_vtable*, i8* }
%_Wl_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Wl*)*, i32 (%Wl*)*, i32 (%Wl*)* }
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
@o474 = global %Owl* zeroinitializer, align 4		; initialized by @o474.init475
@_const_str473.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str473 = alias bitcast([ 6 x i8 ]* @_const_str473.str. to i8*)@_const_str472.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str472 = alias bitcast([ 4 x i8 ]* @_const_str472.str. to i8*)@_const_str471.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str471 = alias bitcast([ 5 x i8 ]* @_const_str471.str. to i8*)@_const_str470.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str470 = alias bitcast([ 3 x i8 ]* @_const_str470.str. to i8*)@_const_str469.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str469 = alias bitcast([ 7 x i8 ]* @_const_str469.str. to i8*)@_Owl_vtable468 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable467, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable467 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable466, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable466 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh592:
  call void @o474.init475(  )
  ret void
}


define i32 @program (i32 %argc2611, { i32, [ 0 x i8* ] }* %argv2609){
__fresh591:
  %argc_slot2612 = alloca i32
  store i32 %argc2611, i32* %argc_slot2612
  %argv_slot2610 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2609, { i32, [ 0 x i8* ] }** %argv_slot2610
  %lhs_or_call2613 = load %Owl** @o474
  %cast_op2614 = bitcast %Owl* %lhs_or_call2613 to %Wl* 
  %ret2615 = call i8* @getNoise ( %Wl* %cast_op2614 )
  call void @print_string( i8* %ret2615 )
  %lhs_or_call2616 = load %Owl** @o474
  %vtable_ptr2617 = getelementptr %Owl* %lhs_or_call2616, i32 0
  %vtable2618 = load %_Owl_vtable** %vtable_ptr2617
  %childmethod2620 = getelementptr %_Owl_vtable* %vtable2618, i32 0, i32 5
  %childmethod2619 = load i32 (%Owl*)** %childmethod2620
  %cast_op2621 = bitcast %Owl %lhs_or_call2616 to %Owl* 
  %ret2622 = call i32 %childmethod2619 ( %Owl* %cast_op2621 )
  %lhs_or_call2623 = load %Owl** @o474
  %vtable_ptr2624 = getelementptr %Owl* %lhs_or_call2623, i32 0
  %vtable2625 = load %_Owl_vtable** %vtable_ptr2624
  %parentmethod2627 = getelementptr %_Owl_vtable* %vtable2625, i32 0, i32 3
  %parentmethod2626 = load i32 (%Wl*)** %parentmethod2627
  %cast_op2628 = bitcast %Owl %lhs_or_call2623 to %Wl* 
  %ret2629 = call i32 %parentmethod2626 ( %Wl* %cast_op2628 )
  %bop2630 = add i32 %ret2622, %ret2629
  %lhs_or_call2631 = load %Owl** @o474
  %vtable_ptr2632 = getelementptr %Owl* %lhs_or_call2631, i32 0
  %vtable2633 = load %_Owl_vtable** %vtable_ptr2632
  %secondoverride2635 = getelementptr %_Owl_vtable* %vtable2633, i32 0, i32 4
  %secondoverride2634 = load i32 (%Owl*)** %secondoverride2635
  %cast_op2636 = bitcast %Owl %lhs_or_call2631 to %Owl* 
  %ret2637 = call i32 %secondoverride2634 ( %Owl* %cast_op2636 )
  %bop2638 = add i32 %bop2630, %ret2637
  ret i32 %bop2638
}


define void @o474.init475 (){
__fresh590:
  %mem_ptr2606 = call i32* @oat_malloc ( i32 8 )
  %obj2607 = bitcast i32* %mem_ptr2606 to %Owl* 
  %new_obj2608 = call %Owl* @_Owl_ctor ( %Owl* %obj2607 )
  store %Owl* %new_obj2608, %Owl** @o474
  ret void
}


define i8* @getNoise (%Wl* %thing2597){
__fresh589:
  %thing_slot2598 = alloca %Wl*
  store %Wl* %thing2597, %Wl** %thing_slot2598
  %lhs_or_call2599 = load %Wl** %thing_slot2598
  %vtable_ptr2600 = getelementptr %Wl* %lhs_or_call2599, i32 0
  %vtable2601 = load %_Wl_vtable** %vtable_ptr2600
  %noise2603 = getelementptr %_Wl_vtable* %vtable2601, i32 0, i32 2
  %noise2602 = load i8* (%Wl*)** %noise2603
  %cast_op2604 = bitcast %Wl %lhs_or_call2599 to %Wl* 
  %ret2605 = call i8* %noise2602 ( %Wl* %cast_op2604 )
  ret i8* %ret2605
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh588:
  %vtable_ptr2590 = getelementptr %Owl* %_this1, i32 0
  %vtable2591 = load %_Owl_vtable** %vtable_ptr2590
  %secondoverride2593 = getelementptr %_Owl_vtable* %vtable2591, i32 0, i32 4
  %secondoverride2592 = load i32 (%Owl*)** %secondoverride2593
  %cast_op2594 = bitcast %Owl %_this1 to %Owl* 
  %ret2595 = call i32 %secondoverride2592 ( %Owl* %cast_op2594 )
  %bop2596 = add i32 %ret2595, 1
  ret i32 %bop2596
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh587:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh586:
  ret i8* @_const_str473
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh585:
  %mem_ptr2585 = call i32* @oat_malloc ( i32 8 )
  %obj2586 = bitcast i32* %mem_ptr2585 to %Wl* 
  %new_obj2587 = call %Wl* @_Wl_ctor ( %Wl* %obj2586 )
  %_this1 = bitcast %Wl* %new_obj2587 to %Owl 
  %_name2588 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str472, i8** %_name2588
  %this_vtable2589 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable468, %_Owl_vtable** %this_vtable2589
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh584:
  %unop2584 = sub i32 0, 2
  ret i32 %unop2584
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh583:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh582:
  ret i8* @_const_str471
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh581:
  %mem_ptr2579 = call i32* @oat_malloc ( i32 8 )
  %obj2580 = bitcast i32* %mem_ptr2579 to %Object* 
  %new_obj2581 = call %Object* @_Object_ctor ( %Object* %obj2580 )
  %_this1 = bitcast %Object* %new_obj2581 to %Wl 
  %_name2582 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str470, i8** %_name2582
  %this_vtable2583 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable467, %_Wl_vtable** %this_vtable2583
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh580:
  %_name2577 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2578 = load i8** %_name2577
  ret i8* %lhs_or_call2578
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh579:
  %_name2575 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str469, i8** %_name2575
  %this_vtable2576 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable466, %_Object_vtable** %this_vtable2576
  ret %Object* %_this1
}


