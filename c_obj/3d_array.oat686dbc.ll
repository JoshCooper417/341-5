%Array = type { %_Array_vtable*, i8*, { i32, [ 0 x %Array* ] }*, i32, i32 }
%_Array_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Array*, i32)*, void (%Array*)*, void (%Array*)*, i32 (%Array*)* }
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
@a328 = global %Array* zeroinitializer, align 4		; initialized by @a328.init329
@_Array_vtable327 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable326, i8* (%Object*)* @_Object_get_name, void (%Array*, i32)* @_Array_set_length, void (%Array*)* @_Array_add_dimension, void (%Array*)* @_Array_fill_random_bits, i32 (%Array*)* @_Array_total}, align 4
@_Object_vtable326 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh664:
  call void @a328.init329(  )
  ret void
}


define i32 @program (i32 %argc3673, { i32, [ 0 x i8* ] }* %argv3671){
__fresh663:
  %argc_slot3674 = alloca i32
  store i32 %argc3673, i32* %argc_slot3674
  %argv_slot3672 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3671, { i32, [ 0 x i8* ] }** %argv_slot3672
  %lhs_or_call3675 = load %Array** @a328
  %set_length3677 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 2
  %set_length3676 = load void (%Array*, i32)** %set_length3677
  %cast_op3678 = bitcast %Array %lhs_or_call3675 to %Array* 
  call void %set_length3676( %Array* %cast_op3678, i32 5 )
  %lhs_or_call3679 = load %Array** @a328
  %add_dimension3681 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 3
  %add_dimension3680 = load void (%Array*)** %add_dimension3681
  %cast_op3682 = bitcast %Array %lhs_or_call3679 to %Array* 
  call void %add_dimension3680( %Array* %cast_op3682 )
  %lhs_or_call3683 = load %Array** @a328
  %add_dimension3685 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 3
  %add_dimension3684 = load void (%Array*)** %add_dimension3685
  %cast_op3686 = bitcast %Array %lhs_or_call3683 to %Array* 
  call void %add_dimension3684( %Array* %cast_op3686 )
  %lhs_or_call3687 = load %Array** @a328
  %add_dimension3689 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 3
  %add_dimension3688 = load void (%Array*)** %add_dimension3689
  %cast_op3690 = bitcast %Array %lhs_or_call3687 to %Array* 
  call void %add_dimension3688( %Array* %cast_op3690 )
  %lhs_or_call3691 = load %Array** @a328
  %fill_random_bits3693 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 4
  %fill_random_bits3692 = load void (%Array*)** %fill_random_bits3693
  %cast_op3694 = bitcast %Array %lhs_or_call3691 to %Array* 
  call void %fill_random_bits3692( %Array* %cast_op3694 )
  %lhs_or_call3695 = load %Array** @a328
  %total3697 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 5
  %total3696 = load i32 (%Array*)** %total3697
  %cast_op3698 = bitcast %Array %lhs_or_call3695 to %Array* 
  %ret3699 = call i32 %total3696 ( %Array* %cast_op3698 )
  ret i32 %ret3699
}


define void @a328.init329 (){
__fresh662:
  %mem_ptr3668 = call i32* @oat_malloc ( i32 20 )
  %obj3669 = bitcast i32* %mem_ptr3668 to %Array* 
  %new_obj3670 = call %Array* @_Array_ctor ( %Array* %obj3669 )
  store %Array* %new_obj3670, %Array** @a328
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh659:
  %value3644 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call3645 = load i32* %value3644
  %vdecl_slot3646 = alloca i32
  store i32 %lhs_or_call3645, i32* %vdecl_slot3646
  %vdecl_slot3647 = alloca i32
  store i32 0, i32* %vdecl_slot3647
  br label %__cond658

__cond658:
  %lhs_or_call3648 = load i32* %vdecl_slot3647
  %length3649 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3650 = load i32* %length3649
  %bop3651 = icmp slt i32 %lhs_or_call3648, %lhs_or_call3650
  br i1 %bop3651, label %__body657, label %__post656

__fresh660:
  br label %__body657

__body657:
  %lhs_or_call3652 = load i32* %vdecl_slot3646
  %a3653 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3654 = load { i32, [ 0 x %Array* ] }** %a3653
  %lhs_or_call3655 = load i32* %vdecl_slot3647
  %bound_ptr3657 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3654, i32 0, i32 0
  %bound3658 = load i32* %bound_ptr3657
  call void @oat_array_bounds_check( i32 %bound3658, i32 %lhs_or_call3655 )
  %elt3656 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3654, i32 0, i32 1, i32 %lhs_or_call3655
  %lhs_or_call3659 = load %Array** %elt3656
  %total3661 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 5
  %total3660 = load i32 (%Array*)** %total3661
  %cast_op3662 = bitcast %Array %lhs_or_call3659 to %Array* 
  %ret3663 = call i32 %total3660 ( %Array* %cast_op3662 )
  %bop3664 = add i32 %lhs_or_call3652, %ret3663
  store i32 %bop3664, i32* %vdecl_slot3646
  %lhs_or_call3665 = load i32* %vdecl_slot3647
  %bop3666 = add i32 %lhs_or_call3665, 1
  store i32 %bop3666, i32* %vdecl_slot3647
  br label %__cond658

__fresh661:
  br label %__post656

__post656:
  %lhs_or_call3667 = load i32* %vdecl_slot3646
  ret i32 %lhs_or_call3667
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh653:
  %vdecl_slot3626 = alloca i32
  store i32 0, i32* %vdecl_slot3626
  br label %__cond652

__cond652:
  %lhs_or_call3627 = load i32* %vdecl_slot3626
  %length3628 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3629 = load i32* %length3628
  %bop3630 = icmp slt i32 %lhs_or_call3627, %lhs_or_call3629
  br i1 %bop3630, label %__body651, label %__post650

__fresh654:
  br label %__body651

__body651:
  %a3631 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3632 = load { i32, [ 0 x %Array* ] }** %a3631
  %lhs_or_call3633 = load i32* %vdecl_slot3626
  %bound_ptr3635 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3632, i32 0, i32 0
  %bound3636 = load i32* %bound_ptr3635
  call void @oat_array_bounds_check( i32 %bound3636, i32 %lhs_or_call3633 )
  %elt3634 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3632, i32 0, i32 1, i32 %lhs_or_call3633
  %lhs_or_call3637 = load %Array** %elt3634
  %fill_random_bits3639 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 4
  %fill_random_bits3638 = load void (%Array*)** %fill_random_bits3639
  %cast_op3640 = bitcast %Array %lhs_or_call3637 to %Array* 
  call void %fill_random_bits3638( %Array* %cast_op3640 )
  %lhs_or_call3641 = load i32* %vdecl_slot3626
  %bop3642 = add i32 %lhs_or_call3641, 1
  store i32 %bop3642, i32* %vdecl_slot3626
  br label %__cond652

__fresh655:
  br label %__post650

__post650:
  %value3643 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %value3643
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh645:
  %a3586 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3587 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3588 = load i32* %length3587
  %array_ptr3589 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3588 )
  %array3590 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3589 to { i32, [ 0 x %Array* ] }* 
  %_tmp2993591 = alloca i32
  store i32 %lhs_or_call3588, i32* %_tmp2993591
  %_tmp3003592 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3590, { i32, [ 0 x %Array* ] }** %_tmp3003592
  %vdecl_slot3593 = alloca i32
  store i32 0, i32* %vdecl_slot3593
  br label %__cond641

__cond641:
  %lhs_or_call3594 = load i32* %vdecl_slot3593
  %lhs_or_call3595 = load i32* %_tmp2993591
  %bop3596 = icmp slt i32 %lhs_or_call3594, %lhs_or_call3595
  br i1 %bop3596, label %__body640, label %__post639

__fresh646:
  br label %__body640

__body640:
  %lhs_or_call3597 = load { i32, [ 0 x %Array* ] }** %_tmp3003592
  %lhs_or_call3598 = load i32* %vdecl_slot3593
  %bound_ptr3600 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3597, i32 0, i32 0
  %bound3601 = load i32* %bound_ptr3600
  call void @oat_array_bounds_check( i32 %bound3601, i32 %lhs_or_call3598 )
  %elt3599 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3597, i32 0, i32 1, i32 %lhs_or_call3598
  %mem_ptr3602 = call i32* @oat_malloc ( i32 20 )
  %obj3603 = bitcast i32* %mem_ptr3602 to %Array* 
  %new_obj3604 = call %Array* @_Array_ctor ( %Array* %obj3603 )
  store %Array* %new_obj3604, %Array** %elt3599
  %lhs_or_call3605 = load i32* %vdecl_slot3593
  %bop3606 = add i32 %lhs_or_call3605, 1
  store i32 %bop3606, i32* %vdecl_slot3593
  br label %__cond641

__fresh647:
  br label %__post639

__post639:
  store { i32, [ 0 x %Array* ] }* %array3590, { i32, [ 0 x %Array* ] }** %a3586
  %vdecl_slot3607 = alloca i32
  store i32 0, i32* %vdecl_slot3607
  br label %__cond644

__cond644:
  %lhs_or_call3608 = load i32* %vdecl_slot3607
  %length3609 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3610 = load i32* %length3609
  %bop3611 = icmp slt i32 %lhs_or_call3608, %lhs_or_call3610
  br i1 %bop3611, label %__body643, label %__post642

__fresh648:
  br label %__body643

__body643:
  %length3612 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3613 = load i32* %length3612
  %a3614 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3615 = load { i32, [ 0 x %Array* ] }** %a3614
  %lhs_or_call3616 = load i32* %vdecl_slot3607
  %bound_ptr3618 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3615, i32 0, i32 0
  %bound3619 = load i32* %bound_ptr3618
  call void @oat_array_bounds_check( i32 %bound3619, i32 %lhs_or_call3616 )
  %elt3617 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3615, i32 0, i32 1, i32 %lhs_or_call3616
  %lhs_or_call3620 = load %Array** %elt3617
  %set_length3622 = getelementptr %_Array_vtable* @_Array_vtable327, i32 0, i32 2
  %set_length3621 = load void (%Array*, i32)** %set_length3622
  %cast_op3623 = bitcast %Array %lhs_or_call3620 to %Array* 
  call void %set_length3621( %Array* %cast_op3623, i32 %lhs_or_call3613 )
  %lhs_or_call3624 = load i32* %vdecl_slot3607
  %bop3625 = add i32 %lhs_or_call3624, 1
  store i32 %bop3625, i32* %vdecl_slot3607
  br label %__cond644

__fresh649:
  br label %__post642

__post642:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l3561){
__fresh636:
  %l_slot3562 = alloca i32
  store i32 %l3561, i32* %l_slot3562
  %length3563 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3564 = load i32* %l_slot3562
  store i32 %lhs_or_call3564, i32* %length3563
  %a3565 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3566 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3567 = load i32* %length3566
  %array_ptr3568 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3567 )
  %array3569 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3568 to { i32, [ 0 x %Array* ] }* 
  %_tmp2973570 = alloca i32
  store i32 %lhs_or_call3567, i32* %_tmp2973570
  %_tmp2983571 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3569, { i32, [ 0 x %Array* ] }** %_tmp2983571
  %vdecl_slot3572 = alloca i32
  store i32 0, i32* %vdecl_slot3572
  br label %__cond635

__cond635:
  %lhs_or_call3573 = load i32* %vdecl_slot3572
  %lhs_or_call3574 = load i32* %_tmp2973570
  %bop3575 = icmp slt i32 %lhs_or_call3573, %lhs_or_call3574
  br i1 %bop3575, label %__body634, label %__post633

__fresh637:
  br label %__body634

__body634:
  %lhs_or_call3576 = load { i32, [ 0 x %Array* ] }** %_tmp2983571
  %lhs_or_call3577 = load i32* %vdecl_slot3572
  %bound_ptr3579 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3576, i32 0, i32 0
  %bound3580 = load i32* %bound_ptr3579
  call void @oat_array_bounds_check( i32 %bound3580, i32 %lhs_or_call3577 )
  %elt3578 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3576, i32 0, i32 1, i32 %lhs_or_call3577
  %mem_ptr3581 = call i32* @oat_malloc ( i32 20 )
  %obj3582 = bitcast i32* %mem_ptr3581 to %Array* 
  %new_obj3583 = call %Array* @_Array_ctor ( %Array* %obj3582 )
  store %Array* %new_obj3583, %Array** %elt3578
  %lhs_or_call3584 = load i32* %vdecl_slot3572
  %bop3585 = add i32 %lhs_or_call3584, 1
  store i32 %bop3585, i32* %vdecl_slot3572
  br label %__cond635

__fresh638:
  br label %__post633

__post633:
  store { i32, [ 0 x %Array* ] }* %array3569, { i32, [ 0 x %Array* ] }** %a3565
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh630:
  %lhs_or_call3533 = load %Array* %_this1
  %cast_op3534 = bitcast %Array %lhs_or_call3533 to %Object* 
  %mem_ptr3535 = call i32* @oat_malloc ( i32 8 )
  %obj3536 = bitcast i32* %mem_ptr3535 to %Object* 
  %new_obj3537 = call %Object* @_Object_ctor ( %Object* %obj3536, %Object* %cast_op3534 )
  %_name3538 = getelementptr %Array* %_this1, i32 0, i32 1
  %lhs_or_call3539 = load %Array* %_this1
  %cast_op3540 = bitcast %Array %lhs_or_call3539 to i8* 
  store i8* %cast_op3540, i8** %_name3538
  %a3541 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr3542 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array3543 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3542 to { i32, [ 0 x %Array* ] }* 
  %_tmp2953544 = alloca i32
  store i32 0, i32* %_tmp2953544
  %_tmp2963545 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3543, { i32, [ 0 x %Array* ] }** %_tmp2963545
  %vdecl_slot3546 = alloca i32
  store i32 0, i32* %vdecl_slot3546
  br label %__cond629

__cond629:
  %lhs_or_call3547 = load i32* %vdecl_slot3546
  %lhs_or_call3548 = load i32* %_tmp2953544
  %bop3549 = icmp slt i32 %lhs_or_call3547, %lhs_or_call3548
  br i1 %bop3549, label %__body628, label %__post627

__fresh631:
  br label %__body628

__body628:
  %lhs_or_call3550 = load { i32, [ 0 x %Array* ] }** %_tmp2963545
  %lhs_or_call3551 = load i32* %vdecl_slot3546
  %bound_ptr3553 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3550, i32 0, i32 0
  %bound3554 = load i32* %bound_ptr3553
  call void @oat_array_bounds_check( i32 %bound3554, i32 %lhs_or_call3551 )
  %elt3552 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3550, i32 0, i32 1, i32 %lhs_or_call3551
  %mem_ptr3555 = call i32* @oat_malloc ( i32 20 )
  %obj3556 = bitcast i32* %mem_ptr3555 to %Array* 
  %new_obj3557 = call %Array* @_Array_ctor ( %Array* %obj3556 )
  store %Array* %new_obj3557, %Array** %elt3552
  %lhs_or_call3558 = load i32* %vdecl_slot3546
  %bop3559 = add i32 %lhs_or_call3558, 1
  store i32 %bop3559, i32* %vdecl_slot3546
  br label %__cond629

__fresh632:
  br label %__post627

__post627:
  store { i32, [ 0 x %Array* ] }* %array3543, { i32, [ 0 x %Array* ] }** %a3541
  %this_vtable3560 = getelementptr %Array* %_this1, i32 0, i32 0
  store %Array* %_this1, %_Array_vtable* %this_vtable3560
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh626:
  %_name3531 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3532 = load i8** %_name3531
  ret i8* %lhs_or_call3532
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh625:
  %_name3527 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3528 = load %Object* %_this1
  %cast_op3529 = bitcast %Object %lhs_or_call3528 to i8* 
  store i8* %cast_op3529, i8** %_name3527
  %this_vtable3530 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3530
  ret %Object* %_this1
}


