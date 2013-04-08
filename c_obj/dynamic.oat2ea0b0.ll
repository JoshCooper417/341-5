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


define i32 @program (i32 %argc2600, { i32, [ 0 x i8* ] }* %argv2598){
__fresh591:
  %argc_slot2601 = alloca i32
  store i32 %argc2600, i32* %argc_slot2601
  %argv_slot2599 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2598, { i32, [ 0 x i8* ] }** %argv_slot2599
  %lhs_or_call2602 = load %Owl** @o474
  %cast_op2603 = bitcast %Owl* %lhs_or_call2602 to %Wl* 
  %ret2604 = call i8* @getNoise ( %Wl* %cast_op2603 )
  call void @print_string( i8* %ret2604 )
  %lhs_or_call2605 = load %Owl** @o474
  %vtable_ptr2606 = getelementptr %Owl* %lhs_or_call2605, i32 0
  %vtable2607 = load %_Owl_vtable** %vtable_ptr2606
  %childmethod2609 = getelementptr %_Owl_vtable* %vtable2607, i32 0, i32 5
  %childmethod2608 = load i32 (%Owl*)** %childmethod2609
  %cast_op2610 = bitcast %Owl %lhs_or_call2605 to %Owl* 
  %ret2611 = call i32 %childmethod2608 ( %Owl* %cast_op2610 )
  %lhs_or_call2612 = load %Owl** @o474
  %vtable_ptr2613 = getelementptr %Owl* %lhs_or_call2612, i32 0
  %vtable2614 = load %_Owl_vtable** %vtable_ptr2613
  %parentmethod2616 = getelementptr %_Owl_vtable* %vtable2614, i32 0, i32 3
  %parentmethod2615 = load i32 (%Wl*)** %parentmethod2616
  %cast_op2617 = bitcast %Owl %lhs_or_call2612 to %Wl* 
  %ret2618 = call i32 %parentmethod2615 ( %Wl* %cast_op2617 )
  %bop2619 = add i32 %ret2611, %ret2618
  %lhs_or_call2620 = load %Owl** @o474
  %vtable_ptr2621 = getelementptr %Owl* %lhs_or_call2620, i32 0
  %vtable2622 = load %_Owl_vtable** %vtable_ptr2621
  %secondoverride2624 = getelementptr %_Owl_vtable* %vtable2622, i32 0, i32 4
  %secondoverride2623 = load i32 (%Owl*)** %secondoverride2624
  %cast_op2625 = bitcast %Owl %lhs_or_call2620 to %Owl* 
  %ret2626 = call i32 %secondoverride2623 ( %Owl* %cast_op2625 )
  %bop2627 = add i32 %bop2619, %ret2626
  ret i32 %bop2627
}


define void @o474.init475 (){
__fresh590:
  %mem_ptr2595 = call i32* @oat_malloc ( i32 8 )
  %obj2596 = bitcast i32* %mem_ptr2595 to %Owl* 
  %new_obj2597 = call %Owl* @_Owl_ctor ( %Owl* %obj2596 )
  store %Owl* %new_obj2597, %Owl** @o474
  ret void
}


define i8* @getNoise (%Wl* %thing2586){
__fresh589:
  %thing_slot2587 = alloca %Wl*
  store %Wl* %thing2586, %Wl** %thing_slot2587
  %lhs_or_call2588 = load %Wl** %thing_slot2587
  %vtable_ptr2589 = getelementptr %Wl* %lhs_or_call2588, i32 0
  %vtable2590 = load %_Wl_vtable** %vtable_ptr2589
  %noise2592 = getelementptr %_Wl_vtable* %vtable2590, i32 0, i32 2
  %noise2591 = load i8* (%Wl*)** %noise2592
  %cast_op2593 = bitcast %Wl %lhs_or_call2588 to %Wl* 
  %ret2594 = call i8* %noise2591 ( %Wl* %cast_op2593 )
  ret i8* %ret2594
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh588:
  %vtable_ptr2579 = getelementptr %Owl* %_this1, i32 0
  %vtable2580 = load %_Owl_vtable** %vtable_ptr2579
  %secondoverride2582 = getelementptr %_Owl_vtable* %vtable2580, i32 0, i32 4
  %secondoverride2581 = load i32 (%Owl*)** %secondoverride2582
  %cast_op2583 = bitcast %Owl %_this1 to %Owl* 
  %ret2584 = call i32 %secondoverride2581 ( %Owl* %cast_op2583 )
  %bop2585 = add i32 %ret2584, 1
  ret i32 %bop2585
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
  %mem_ptr2574 = call i32* @oat_malloc ( i32 8 )
  %obj2575 = bitcast i32* %mem_ptr2574 to %Wl* 
  %new_obj2576 = call %Wl* @_Wl_ctor ( %Wl* %obj2575 )
  %_this1 = bitcast %Wl* %new_obj2576 to %Owl 
  %_name2577 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str472, i8** %_name2577
  %this_vtable2578 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable468, %_Owl_vtable** %this_vtable2578
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh584:
  %unop2573 = sub i32 0, 2
  ret i32 %unop2573
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
  %mem_ptr2568 = call i32* @oat_malloc ( i32 8 )
  %obj2569 = bitcast i32* %mem_ptr2568 to %Object* 
  %new_obj2570 = call %Object* @_Object_ctor ( %Object* %obj2569 )
  %_this1 = bitcast %Object* %new_obj2570 to %Wl 
  %_name2571 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str470, i8** %_name2571
  %this_vtable2572 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable467, %_Wl_vtable** %this_vtable2572
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh580:
  %_name2566 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2567 = load i8** %_name2566
  ret i8* %lhs_or_call2567
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh579:
  %_name2564 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str469, i8** %_name2564
  %this_vtable2565 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable466, %_Object_vtable** %this_vtable2565
  ret %Object* %_this1
}


