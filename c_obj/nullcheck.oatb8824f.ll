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
@s3500 = global i8* zeroinitializer, align 4		; initialized by @s3500.init501
@_const_str499.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str499 = alias bitcast([ 8 x i8 ]* @_const_str499.str. to i8*)@s2497 = global i8* zeroinitializer, align 4		; initialized by @s2497.init498
@s1495 = global i8* zeroinitializer, align 4		; initialized by @s1495.init496
@_const_str494.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str494 = alias bitcast([ 6 x i8 ]* @_const_str494.str. to i8*)@_const_str493.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str493 = alias bitcast([ 7 x i8 ]* @_const_str493.str. to i8*)@_Object_vtable492 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh557:
  call void @s1495.init496(  )
  call void @s2497.init498(  )
  call void @s3500.init501(  )
  ret void
}


define i32 @program (i32 %argc2632, { i32, [ 0 x i8* ] }* %argv2630){
__fresh550:
  %argc_slot2633 = alloca i32
  store i32 %argc2632, i32* %argc_slot2633
  %argv_slot2631 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2630, { i32, [ 0 x i8* ] }** %argv_slot2631
  %vdecl_slot2634 = alloca i32
  store i32 0, i32* %vdecl_slot2634
  %lhs_or_call2635 = load i8** @s1495
  %ifnull_slot2636 = alloca i8*
  store i8* %lhs_or_call2635, i8** %ifnull_slot2636
  %ifnull_guard2637 = icmp ne i8* %lhs_or_call2635, null
  br i1 %ifnull_guard2637, label %__then543, label %__else542

__fresh551:
  br label %__then543

__then543:
  %lhs_or_call2638 = load i8** %ifnull_slot2636
  %ret2639 = call i32 @length_of_string ( i8* %lhs_or_call2638 )
  store i32 %ret2639, i32* %vdecl_slot2634
  br label %__merge541

__fresh552:
  br label %__else542

__else542:
  store i32 0, i32* %vdecl_slot2634
  br label %__merge541

__merge541:
  %lhs_or_call2640 = load i8** @s2497
  %ifnull_slot2641 = alloca i8*
  store i8* %lhs_or_call2640, i8** %ifnull_slot2641
  %ifnull_guard2642 = icmp ne i8* %lhs_or_call2640, null
  br i1 %ifnull_guard2642, label %__then546, label %__else545

__fresh553:
  br label %__then546

__then546:
  %lhs_or_call2643 = load i32* %vdecl_slot2634
  %lhs_or_call2644 = load i8** %ifnull_slot2641
  %ret2645 = call i32 @length_of_string ( i8* %lhs_or_call2644 )
  %bop2646 = add i32 %lhs_or_call2643, %ret2645
  store i32 %bop2646, i32* %vdecl_slot2634
  br label %__merge544

__fresh554:
  br label %__else545

__else545:
  %lhs_or_call2647 = load i32* %vdecl_slot2634
  %bop2648 = add i32 %lhs_or_call2647, 30
  store i32 %bop2648, i32* %vdecl_slot2634
  br label %__merge544

__merge544:
  %lhs_or_call2649 = load i8** @s3500
  %ifnull_slot2650 = alloca i8*
  store i8* %lhs_or_call2649, i8** %ifnull_slot2650
  %ifnull_guard2651 = icmp ne i8* %lhs_or_call2649, null
  br i1 %ifnull_guard2651, label %__then549, label %__else548

__fresh555:
  br label %__then549

__then549:
  %lhs_or_call2652 = load i32* %vdecl_slot2634
  %lhs_or_call2653 = load i8** %ifnull_slot2650
  %ret2654 = call i32 @length_of_string ( i8* %lhs_or_call2653 )
  %bop2655 = add i32 %lhs_or_call2652, %ret2654
  store i32 %bop2655, i32* %vdecl_slot2634
  br label %__merge547

__fresh556:
  br label %__else548

__else548:
  %lhs_or_call2656 = load i32* %vdecl_slot2634
  %bop2657 = add i32 %lhs_or_call2656, 41
  store i32 %bop2657, i32* %vdecl_slot2634
  br label %__merge547

__merge547:
  %lhs_or_call2658 = load i32* %vdecl_slot2634
  ret i32 %lhs_or_call2658
}


define void @s3500.init501 (){
__fresh540:
  store i8* @_const_str499, i8** @s3500
  ret void
}


define void @s2497.init498 (){
__fresh539:
  store i8* null, i8** @s2497
  ret void
}


define void @s1495.init496 (){
__fresh538:
  store i8* @_const_str494, i8** @s1495
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh537:
  %_name2628 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2629 = load i8** %_name2628
  ret i8* %lhs_or_call2629
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh536:
  %_name2626 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str493, i8** %_name2626
  %this_vtable2627 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable492, %_Object_vtable** %this_vtable2627
  ret %Object* %_this1
}


