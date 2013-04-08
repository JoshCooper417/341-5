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


define i32 @program (i32 %argc2639, { i32, [ 0 x i8* ] }* %argv2637){
__fresh550:
  %argc_slot2640 = alloca i32
  store i32 %argc2639, i32* %argc_slot2640
  %argv_slot2638 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2637, { i32, [ 0 x i8* ] }** %argv_slot2638
  %vdecl_slot2641 = alloca i32
  store i32 0, i32* %vdecl_slot2641
  %lhs_or_call2642 = load i8** @s1495
  %ifnull_slot2643 = alloca i8*
  store i8* %lhs_or_call2642, i8** %ifnull_slot2643
  %ifnull_guard2644 = icmp ne i8* %lhs_or_call2642, null
  br i1 %ifnull_guard2644, label %__then543, label %__else542

__fresh551:
  br label %__then543

__then543:
  %lhs_or_call2645 = load i8** %ifnull_slot2643
  %ret2646 = call i32 @length_of_string ( i8* %lhs_or_call2645 )
  store i32 %ret2646, i32* %vdecl_slot2641
  br label %__merge541

__fresh552:
  br label %__else542

__else542:
  store i32 0, i32* %vdecl_slot2641
  br label %__merge541

__merge541:
  %lhs_or_call2647 = load i8** @s2497
  %ifnull_slot2648 = alloca i8*
  store i8* %lhs_or_call2647, i8** %ifnull_slot2648
  %ifnull_guard2649 = icmp ne i8* %lhs_or_call2647, null
  br i1 %ifnull_guard2649, label %__then546, label %__else545

__fresh553:
  br label %__then546

__then546:
  %lhs_or_call2650 = load i32* %vdecl_slot2641
  %lhs_or_call2651 = load i8** %ifnull_slot2648
  %ret2652 = call i32 @length_of_string ( i8* %lhs_or_call2651 )
  %bop2653 = add i32 %lhs_or_call2650, %ret2652
  store i32 %bop2653, i32* %vdecl_slot2641
  br label %__merge544

__fresh554:
  br label %__else545

__else545:
  %lhs_or_call2654 = load i32* %vdecl_slot2641
  %bop2655 = add i32 %lhs_or_call2654, 30
  store i32 %bop2655, i32* %vdecl_slot2641
  br label %__merge544

__merge544:
  %lhs_or_call2656 = load i8** @s3500
  %ifnull_slot2657 = alloca i8*
  store i8* %lhs_or_call2656, i8** %ifnull_slot2657
  %ifnull_guard2658 = icmp ne i8* %lhs_or_call2656, null
  br i1 %ifnull_guard2658, label %__then549, label %__else548

__fresh555:
  br label %__then549

__then549:
  %lhs_or_call2659 = load i32* %vdecl_slot2641
  %lhs_or_call2660 = load i8** %ifnull_slot2657
  %ret2661 = call i32 @length_of_string ( i8* %lhs_or_call2660 )
  %bop2662 = add i32 %lhs_or_call2659, %ret2661
  store i32 %bop2662, i32* %vdecl_slot2641
  br label %__merge547

__fresh556:
  br label %__else548

__else548:
  %lhs_or_call2663 = load i32* %vdecl_slot2641
  %bop2664 = add i32 %lhs_or_call2663, 41
  store i32 %bop2664, i32* %vdecl_slot2641
  br label %__merge547

__merge547:
  %lhs_or_call2665 = load i32* %vdecl_slot2641
  ret i32 %lhs_or_call2665
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
  %_name2635 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2636 = load i8** %_name2635
  ret i8* %lhs_or_call2636
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh536:
  %_name2633 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str493, i8** %_name2633
  %this_vtable2634 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable492, %_Object_vtable** %this_vtable2634
  ret %Object* %_this1
}


