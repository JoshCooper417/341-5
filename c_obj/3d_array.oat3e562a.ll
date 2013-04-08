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
@a589 = global %Array* zeroinitializer, align 4		; initialized by @a589.init590
@_const_str588.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str588 = alias bitcast([ 6 x i8 ]* @_const_str588.str. to i8*)@_const_str587.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str587 = alias bitcast([ 7 x i8 ]* @_const_str587.str. to i8*)@_Array_vtable586 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable585, i8* (%Object*)* @_Object_get_name, void (%Array*, i32)* @_Array_set_length, void (%Array*)* @_Array_add_dimension, void (%Array*)* @_Array_fill_random_bits, i32 (%Array*)* @_Array_total}, align 4
@_Object_vtable585 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1065:
  call void @a589.init590(  )
  ret void
}


define i32 @program (i32 %argc3631, { i32, [ 0 x i8* ] }* %argv3629){
__fresh1064:
  %argc_slot3632 = alloca i32
  store i32 %argc3631, i32* %argc_slot3632
  %argv_slot3630 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3629, { i32, [ 0 x i8* ] }** %argv_slot3630
  %lhs_or_call3633 = load %Array** @a589
  %vtable_ptr3634 = getelementptr %Array* %lhs_or_call3633, i32 0
  %vtable3635 = load %_Array_vtable** %vtable_ptr3634
  %set_length3637 = getelementptr %_Array_vtable* %vtable3635, i32 0, i32 2
  %set_length3636 = load void (%Array*, i32)** %set_length3637
  %cast_op3638 = bitcast %Array %lhs_or_call3633 to %Array* 
  call void %set_length3636( %Array* %cast_op3638, i32 5 )
  %lhs_or_call3639 = load %Array** @a589
  %vtable_ptr3640 = getelementptr %Array* %lhs_or_call3639, i32 0
  %vtable3641 = load %_Array_vtable** %vtable_ptr3640
  %add_dimension3643 = getelementptr %_Array_vtable* %vtable3641, i32 0, i32 3
  %add_dimension3642 = load void (%Array*)** %add_dimension3643
  %cast_op3644 = bitcast %Array %lhs_or_call3639 to %Array* 
  call void %add_dimension3642( %Array* %cast_op3644 )
  %lhs_or_call3645 = load %Array** @a589
  %vtable_ptr3646 = getelementptr %Array* %lhs_or_call3645, i32 0
  %vtable3647 = load %_Array_vtable** %vtable_ptr3646
  %add_dimension3649 = getelementptr %_Array_vtable* %vtable3647, i32 0, i32 3
  %add_dimension3648 = load void (%Array*)** %add_dimension3649
  %cast_op3650 = bitcast %Array %lhs_or_call3645 to %Array* 
  call void %add_dimension3648( %Array* %cast_op3650 )
  %lhs_or_call3651 = load %Array** @a589
  %vtable_ptr3652 = getelementptr %Array* %lhs_or_call3651, i32 0
  %vtable3653 = load %_Array_vtable** %vtable_ptr3652
  %add_dimension3655 = getelementptr %_Array_vtable* %vtable3653, i32 0, i32 3
  %add_dimension3654 = load void (%Array*)** %add_dimension3655
  %cast_op3656 = bitcast %Array %lhs_or_call3651 to %Array* 
  call void %add_dimension3654( %Array* %cast_op3656 )
  %lhs_or_call3657 = load %Array** @a589
  %vtable_ptr3658 = getelementptr %Array* %lhs_or_call3657, i32 0
  %vtable3659 = load %_Array_vtable** %vtable_ptr3658
  %fill_random_bits3661 = getelementptr %_Array_vtable* %vtable3659, i32 0, i32 4
  %fill_random_bits3660 = load void (%Array*)** %fill_random_bits3661
  %cast_op3662 = bitcast %Array %lhs_or_call3657 to %Array* 
  call void %fill_random_bits3660( %Array* %cast_op3662 )
  %lhs_or_call3663 = load %Array** @a589
  %vtable_ptr3664 = getelementptr %Array* %lhs_or_call3663, i32 0
  %vtable3665 = load %_Array_vtable** %vtable_ptr3664
  %total3667 = getelementptr %_Array_vtable* %vtable3665, i32 0, i32 5
  %total3666 = load i32 (%Array*)** %total3667
  %cast_op3668 = bitcast %Array %lhs_or_call3663 to %Array* 
  %ret3669 = call i32 %total3666 ( %Array* %cast_op3668 )
  ret i32 %ret3669
}


define void @a589.init590 (){
__fresh1063:
  %mem_ptr3626 = call i32* @oat_malloc ( i32 20 )
  %obj3627 = bitcast i32* %mem_ptr3626 to %Array* 
  %new_obj3628 = call %Array* @_Array_ctor ( %Array* %obj3627 )
  store %Array* %new_obj3628, %Array** @a589
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh1060:
  %value3600 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call3601 = load i32* %value3600
  %vdecl_slot3602 = alloca i32
  store i32 %lhs_or_call3601, i32* %vdecl_slot3602
  %vdecl_slot3603 = alloca i32
  store i32 0, i32* %vdecl_slot3603
  br label %__cond1059

__cond1059:
  %lhs_or_call3604 = load i32* %vdecl_slot3603
  %length3605 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3606 = load i32* %length3605
  %bop3607 = icmp slt i32 %lhs_or_call3604, %lhs_or_call3606
  br i1 %bop3607, label %__body1058, label %__post1057

__fresh1061:
  br label %__body1058

__body1058:
  %lhs_or_call3608 = load i32* %vdecl_slot3602
  %a3609 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3610 = load { i32, [ 0 x %Array* ] }** %a3609
  %lhs_or_call3611 = load i32* %vdecl_slot3603
  %bound_ptr3613 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3610, i32 0, i32 0
  %bound3614 = load i32* %bound_ptr3613
  call void @oat_array_bounds_check( i32 %bound3614, i32 %lhs_or_call3611 )
  %elt3612 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3610, i32 0, i32 1, i32 %lhs_or_call3611
  %lhs_or_call3615 = load %Array** %elt3612
  %vtable_ptr3616 = getelementptr %Array* %lhs_or_call3615, i32 0
  %vtable3617 = load %_Array_vtable** %vtable_ptr3616
  %total3619 = getelementptr %_Array_vtable* %vtable3617, i32 0, i32 5
  %total3618 = load i32 (%Array*)** %total3619
  %cast_op3620 = bitcast %Array %lhs_or_call3615 to %Array* 
  %ret3621 = call i32 %total3618 ( %Array* %cast_op3620 )
  %bop3622 = add i32 %lhs_or_call3608, %ret3621
  store i32 %bop3622, i32* %vdecl_slot3602
  %lhs_or_call3623 = load i32* %vdecl_slot3603
  %bop3624 = add i32 %lhs_or_call3623, 1
  store i32 %bop3624, i32* %vdecl_slot3603
  br label %__cond1059

__fresh1062:
  br label %__post1057

__post1057:
  %lhs_or_call3625 = load i32* %vdecl_slot3602
  ret i32 %lhs_or_call3625
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh1054:
  %vdecl_slot3580 = alloca i32
  store i32 0, i32* %vdecl_slot3580
  br label %__cond1053

__cond1053:
  %lhs_or_call3581 = load i32* %vdecl_slot3580
  %length3582 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3583 = load i32* %length3582
  %bop3584 = icmp slt i32 %lhs_or_call3581, %lhs_or_call3583
  br i1 %bop3584, label %__body1052, label %__post1051

__fresh1055:
  br label %__body1052

__body1052:
  %a3585 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3586 = load { i32, [ 0 x %Array* ] }** %a3585
  %lhs_or_call3587 = load i32* %vdecl_slot3580
  %bound_ptr3589 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3586, i32 0, i32 0
  %bound3590 = load i32* %bound_ptr3589
  call void @oat_array_bounds_check( i32 %bound3590, i32 %lhs_or_call3587 )
  %elt3588 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3586, i32 0, i32 1, i32 %lhs_or_call3587
  %lhs_or_call3591 = load %Array** %elt3588
  %vtable_ptr3592 = getelementptr %Array* %lhs_or_call3591, i32 0
  %vtable3593 = load %_Array_vtable** %vtable_ptr3592
  %fill_random_bits3595 = getelementptr %_Array_vtable* %vtable3593, i32 0, i32 4
  %fill_random_bits3594 = load void (%Array*)** %fill_random_bits3595
  %cast_op3596 = bitcast %Array %lhs_or_call3591 to %Array* 
  call void %fill_random_bits3594( %Array* %cast_op3596 )
  %lhs_or_call3597 = load i32* %vdecl_slot3580
  %bop3598 = add i32 %lhs_or_call3597, 1
  store i32 %bop3598, i32* %vdecl_slot3580
  br label %__cond1053

__fresh1056:
  br label %__post1051

__post1051:
  %value3599 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %value3599
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh1046:
  %a3538 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3539 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3540 = load i32* %length3539
  %array_ptr3541 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3540 )
  %array3542 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3541 to { i32, [ 0 x %Array* ] }* 
  %_tmp5623543 = alloca i32
  store i32 %lhs_or_call3540, i32* %_tmp5623543
  %_tmp5633544 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3542, { i32, [ 0 x %Array* ] }** %_tmp5633544
  %vdecl_slot3545 = alloca i32
  store i32 0, i32* %vdecl_slot3545
  br label %__cond1042

__cond1042:
  %lhs_or_call3546 = load i32* %vdecl_slot3545
  %lhs_or_call3547 = load i32* %_tmp5623543
  %bop3548 = icmp slt i32 %lhs_or_call3546, %lhs_or_call3547
  br i1 %bop3548, label %__body1041, label %__post1040

__fresh1047:
  br label %__body1041

__body1041:
  %lhs_or_call3549 = load { i32, [ 0 x %Array* ] }** %_tmp5633544
  %lhs_or_call3550 = load i32* %vdecl_slot3545
  %bound_ptr3552 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3549, i32 0, i32 0
  %bound3553 = load i32* %bound_ptr3552
  call void @oat_array_bounds_check( i32 %bound3553, i32 %lhs_or_call3550 )
  %elt3551 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3549, i32 0, i32 1, i32 %lhs_or_call3550
  %mem_ptr3554 = call i32* @oat_malloc ( i32 20 )
  %obj3555 = bitcast i32* %mem_ptr3554 to %Array* 
  %new_obj3556 = call %Array* @_Array_ctor ( %Array* %obj3555 )
  store %Array* %new_obj3556, %Array** %elt3551
  %lhs_or_call3557 = load i32* %vdecl_slot3545
  %bop3558 = add i32 %lhs_or_call3557, 1
  store i32 %bop3558, i32* %vdecl_slot3545
  br label %__cond1042

__fresh1048:
  br label %__post1040

__post1040:
  store { i32, [ 0 x %Array* ] }* %array3542, { i32, [ 0 x %Array* ] }** %a3538
  %vdecl_slot3559 = alloca i32
  store i32 0, i32* %vdecl_slot3559
  br label %__cond1045

__cond1045:
  %lhs_or_call3560 = load i32* %vdecl_slot3559
  %length3561 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3562 = load i32* %length3561
  %bop3563 = icmp slt i32 %lhs_or_call3560, %lhs_or_call3562
  br i1 %bop3563, label %__body1044, label %__post1043

__fresh1049:
  br label %__body1044

__body1044:
  %length3564 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3565 = load i32* %length3564
  %a3566 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3567 = load { i32, [ 0 x %Array* ] }** %a3566
  %lhs_or_call3568 = load i32* %vdecl_slot3559
  %bound_ptr3570 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3567, i32 0, i32 0
  %bound3571 = load i32* %bound_ptr3570
  call void @oat_array_bounds_check( i32 %bound3571, i32 %lhs_or_call3568 )
  %elt3569 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3567, i32 0, i32 1, i32 %lhs_or_call3568
  %lhs_or_call3572 = load %Array** %elt3569
  %vtable_ptr3573 = getelementptr %Array* %lhs_or_call3572, i32 0
  %vtable3574 = load %_Array_vtable** %vtable_ptr3573
  %set_length3576 = getelementptr %_Array_vtable* %vtable3574, i32 0, i32 2
  %set_length3575 = load void (%Array*, i32)** %set_length3576
  %cast_op3577 = bitcast %Array %lhs_or_call3572 to %Array* 
  call void %set_length3575( %Array* %cast_op3577, i32 %lhs_or_call3565 )
  %lhs_or_call3578 = load i32* %vdecl_slot3559
  %bop3579 = add i32 %lhs_or_call3578, 1
  store i32 %bop3579, i32* %vdecl_slot3559
  br label %__cond1045

__fresh1050:
  br label %__post1043

__post1043:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l3513){
__fresh1037:
  %l_slot3514 = alloca i32
  store i32 %l3513, i32* %l_slot3514
  %length3515 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3516 = load i32* %l_slot3514
  store i32 %lhs_or_call3516, i32* %length3515
  %a3517 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3518 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3519 = load i32* %length3518
  %array_ptr3520 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3519 )
  %array3521 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3520 to { i32, [ 0 x %Array* ] }* 
  %_tmp5603522 = alloca i32
  store i32 %lhs_or_call3519, i32* %_tmp5603522
  %_tmp5613523 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3521, { i32, [ 0 x %Array* ] }** %_tmp5613523
  %vdecl_slot3524 = alloca i32
  store i32 0, i32* %vdecl_slot3524
  br label %__cond1036

__cond1036:
  %lhs_or_call3525 = load i32* %vdecl_slot3524
  %lhs_or_call3526 = load i32* %_tmp5603522
  %bop3527 = icmp slt i32 %lhs_or_call3525, %lhs_or_call3526
  br i1 %bop3527, label %__body1035, label %__post1034

__fresh1038:
  br label %__body1035

__body1035:
  %lhs_or_call3528 = load { i32, [ 0 x %Array* ] }** %_tmp5613523
  %lhs_or_call3529 = load i32* %vdecl_slot3524
  %bound_ptr3531 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3528, i32 0, i32 0
  %bound3532 = load i32* %bound_ptr3531
  call void @oat_array_bounds_check( i32 %bound3532, i32 %lhs_or_call3529 )
  %elt3530 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3528, i32 0, i32 1, i32 %lhs_or_call3529
  %mem_ptr3533 = call i32* @oat_malloc ( i32 20 )
  %obj3534 = bitcast i32* %mem_ptr3533 to %Array* 
  %new_obj3535 = call %Array* @_Array_ctor ( %Array* %obj3534 )
  store %Array* %new_obj3535, %Array** %elt3530
  %lhs_or_call3536 = load i32* %vdecl_slot3524
  %bop3537 = add i32 %lhs_or_call3536, 1
  store i32 %bop3537, i32* %vdecl_slot3524
  br label %__cond1036

__fresh1039:
  br label %__post1034

__post1034:
  store { i32, [ 0 x %Array* ] }* %array3521, { i32, [ 0 x %Array* ] }** %a3517
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh1031:
  %mem_ptr3489 = call i32* @oat_malloc ( i32 8 )
  %obj3490 = bitcast i32* %mem_ptr3489 to %Object* 
  %new_obj3491 = call %Object* @_Object_ctor ( %Object* %obj3490 )
  %_this1 = bitcast %Object* %new_obj3491 to %Array 
  %_name3492 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str588, i8** %_name3492
  %a3493 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr3494 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array3495 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3494 to { i32, [ 0 x %Array* ] }* 
  %_tmp5573496 = alloca i32
  store i32 0, i32* %_tmp5573496
  %_tmp5583497 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3495, { i32, [ 0 x %Array* ] }** %_tmp5583497
  %vdecl_slot3498 = alloca i32
  store i32 0, i32* %vdecl_slot3498
  br label %__cond1030

__cond1030:
  %lhs_or_call3499 = load i32* %vdecl_slot3498
  %lhs_or_call3500 = load i32* %_tmp5573496
  %bop3501 = icmp slt i32 %lhs_or_call3499, %lhs_or_call3500
  br i1 %bop3501, label %__body1029, label %__post1028

__fresh1032:
  br label %__body1029

__body1029:
  %lhs_or_call3502 = load { i32, [ 0 x %Array* ] }** %_tmp5583497
  %lhs_or_call3503 = load i32* %vdecl_slot3498
  %bound_ptr3505 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3502, i32 0, i32 0
  %bound3506 = load i32* %bound_ptr3505
  call void @oat_array_bounds_check( i32 %bound3506, i32 %lhs_or_call3503 )
  %elt3504 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3502, i32 0, i32 1, i32 %lhs_or_call3503
  %mem_ptr3507 = call i32* @oat_malloc ( i32 20 )
  %obj3508 = bitcast i32* %mem_ptr3507 to %Array* 
  %new_obj3509 = call %Array* @_Array_ctor ( %Array* %obj3508 )
  store %Array* %new_obj3509, %Array** %elt3504
  %lhs_or_call3510 = load i32* %vdecl_slot3498
  %bop3511 = add i32 %lhs_or_call3510, 1
  store i32 %bop3511, i32* %vdecl_slot3498
  br label %__cond1030

__fresh1033:
  br label %__post1028

__post1028:
  store { i32, [ 0 x %Array* ] }* %array3495, { i32, [ 0 x %Array* ] }** %a3493
  %this_vtable3512 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable586, %_Array_vtable** %this_vtable3512
  %value3487 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %value3487
  %length3488 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %length3488
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1027:
  %_name3485 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3486 = load i8** %_name3485
  ret i8* %lhs_or_call3486
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1026:
  %_name3483 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str587, i8** %_name3483
  %this_vtable3484 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable585, %_Object_vtable** %this_vtable3484
  ret %Object* %_this1
}


