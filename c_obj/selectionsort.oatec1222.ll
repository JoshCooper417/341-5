%Array = type { %_Array_vtable*, i8*, i32, %ArrayItem* }
%_Array_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%Array*, i32)*, void (%Array*, i32, i32)*, void (%Array*, i32)*, i32 (%Array*)* }
%ArrayItem = type { %_ArrayItem_vtable*, i8*, i32, %ArrayItem* }
%_ArrayItem_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%ArrayItem*, i32)* }
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
@_const_str617.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str617 = alias bitcast([ 24 x i8 ]* @_const_str617.str. to i8*)@_const_str616.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str616 = alias bitcast([ 24 x i8 ]* @_const_str616.str. to i8*)@_const_str615.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str615 = alias bitcast([ 6 x i8 ]* @_const_str615.str. to i8*)@_const_str614.str. = private unnamed_addr constant [ 10 x i8 ] c "ArrayItem\00", align 4
@_const_str614 = alias bitcast([ 10 x i8 ]* @_const_str614.str. to i8*)@_const_str613.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str613 = alias bitcast([ 7 x i8 ]* @_const_str613.str. to i8*)@_Array_vtable612 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable610, i8* (%Object*)* @_Object_get_name, i32 (%Array*, i32)* @_Array_getElement, void (%Array*, i32, i32)* @_Array_setElement, void (%Array*, i32)* @_Array_addElement, i32 (%Array*)* @_Array_getLength}, align 4
@_ArrayItem_vtable611 = private constant %_ArrayItem_vtable {%_Object_vtable* @_Object_vtable610, i8* (%Object*)* @_Object_get_name, void (%ArrayItem*, i32)* @_ArrayItem_set}, align 4
@_Object_vtable610 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh935:
  ret void
}


define i32 @program (i32 %argc3707, { i32, [ 0 x i8* ] }* %argv3705){
__fresh922:
  %argc_slot3708 = alloca i32
  store i32 %argc3707, i32* %argc_slot3708
  %argv_slot3706 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3705, { i32, [ 0 x i8* ] }** %argv_slot3706
  %mem_ptr3709 = call i32* @oat_malloc ( i32 16 )
  %obj3710 = bitcast i32* %mem_ptr3709 to %Array* 
  %new_obj3711 = call %Array* @_Array_ctor ( %Array* %obj3710 )
  %vdecl_slot3712 = alloca %Array*
  store %Array* %new_obj3711, %Array** %vdecl_slot3712
  %vdecl_slot3713 = alloca i32
  store i32 0, i32* %vdecl_slot3713
  %vdecl_slot3714 = alloca i32
  store i32 0, i32* %vdecl_slot3714
  %lhs_or_call3715 = load %Array** %vdecl_slot3712
  %vtable_ptr3716 = getelementptr %Array* %lhs_or_call3715, i32 0
  %vtable3717 = load %_Array_vtable** %vtable_ptr3716
  %addElement3719 = getelementptr %_Array_vtable* %vtable3717, i32 0, i32 4
  %addElement3718 = load void (%Array*, i32)** %addElement3719
  %cast_op3720 = bitcast %Array %lhs_or_call3715 to %Array* 
  call void %addElement3718( %Array* %cast_op3720, i32 79 )
  %lhs_or_call3721 = load %Array** %vdecl_slot3712
  %vtable_ptr3722 = getelementptr %Array* %lhs_or_call3721, i32 0
  %vtable3723 = load %_Array_vtable** %vtable_ptr3722
  %getLength3725 = getelementptr %_Array_vtable* %vtable3723, i32 0, i32 5
  %getLength3724 = load i32 (%Array*)** %getLength3725
  %cast_op3726 = bitcast %Array %lhs_or_call3721 to %Array* 
  %ret3727 = call i32 %getLength3724 ( %Array* %cast_op3726 )
  store i32 %ret3727, i32* %vdecl_slot3713
  %vdecl_slot3728 = alloca i32
  store i32 1, i32* %vdecl_slot3728
  br label %__cond906

__cond906:
  %lhs_or_call3729 = load i32* %vdecl_slot3728
  %lhs_or_call3730 = load i32* %vdecl_slot3713
  %bop3731 = icmp slt i32 %lhs_or_call3729, %lhs_or_call3730
  br i1 %bop3731, label %__body905, label %__post904

__fresh923:
  br label %__body905

__body905:
  %lhs_or_call3732 = load i32* %vdecl_slot3728
  %vdecl_slot3733 = alloca i32
  store i32 %lhs_or_call3732, i32* %vdecl_slot3733
  %lhs_or_call3734 = load i32* %vdecl_slot3728
  %bop3735 = add i32 %lhs_or_call3734, 1
  %vdecl_slot3736 = alloca i32
  store i32 %bop3735, i32* %vdecl_slot3736
  br label %__cond909

__cond909:
  %lhs_or_call3737 = load i32* %vdecl_slot3736
  %lhs_or_call3738 = load i32* %vdecl_slot3713
  %bop3739 = icmp sle i32 %lhs_or_call3737, %lhs_or_call3738
  br i1 %bop3739, label %__body908, label %__post907

__fresh924:
  br label %__body908

__body908:
  %lhs_or_call3740 = load i32* %vdecl_slot3736
  %lhs_or_call3741 = load %Array** %vdecl_slot3712
  %vtable_ptr3742 = getelementptr %Array* %lhs_or_call3741, i32 0
  %vtable3743 = load %_Array_vtable** %vtable_ptr3742
  %getElement3745 = getelementptr %_Array_vtable* %vtable3743, i32 0, i32 2
  %getElement3744 = load i32 (%Array*, i32)** %getElement3745
  %cast_op3746 = bitcast %Array %lhs_or_call3741 to %Array* 
  %ret3747 = call i32 %getElement3744 ( %Array* %cast_op3746, i32 %lhs_or_call3740 )
  %vdecl_slot3748 = alloca i32
  store i32 %ret3747, i32* %vdecl_slot3748
  %lhs_or_call3749 = load i32* %vdecl_slot3733
  %lhs_or_call3750 = load %Array** %vdecl_slot3712
  %vtable_ptr3751 = getelementptr %Array* %lhs_or_call3750, i32 0
  %vtable3752 = load %_Array_vtable** %vtable_ptr3751
  %getElement3754 = getelementptr %_Array_vtable* %vtable3752, i32 0, i32 2
  %getElement3753 = load i32 (%Array*, i32)** %getElement3754
  %cast_op3755 = bitcast %Array %lhs_or_call3750 to %Array* 
  %ret3756 = call i32 %getElement3753 ( %Array* %cast_op3755, i32 %lhs_or_call3749 )
  %vdecl_slot3757 = alloca i32
  store i32 %ret3756, i32* %vdecl_slot3757
  %lhs_or_call3758 = load i32* %vdecl_slot3748
  %lhs_or_call3759 = load i32* %vdecl_slot3757
  %bop3760 = icmp slt i32 %lhs_or_call3758, %lhs_or_call3759
  br i1 %bop3760, label %__then912, label %__else911

__fresh925:
  br label %__then912

__then912:
  %lhs_or_call3761 = load i32* %vdecl_slot3736
  store i32 %lhs_or_call3761, i32* %vdecl_slot3733
  br label %__merge910

__fresh926:
  br label %__else911

__else911:
  br label %__merge910

__merge910:
  %lhs_or_call3762 = load i32* %vdecl_slot3736
  %bop3763 = add i32 %lhs_or_call3762, 1
  store i32 %bop3763, i32* %vdecl_slot3736
  br label %__cond909

__fresh927:
  br label %__post907

__post907:
  %lhs_or_call3764 = load i32* %vdecl_slot3733
  %lhs_or_call3765 = load i32* %vdecl_slot3728
  %bop3766 = icmp ne i32 %lhs_or_call3764, %lhs_or_call3765
  br i1 %bop3766, label %__then915, label %__else914

__fresh928:
  br label %__then915

__then915:
  %lhs_or_call3767 = load i32* %vdecl_slot3733
  %lhs_or_call3768 = load %Array** %vdecl_slot3712
  %vtable_ptr3769 = getelementptr %Array* %lhs_or_call3768, i32 0
  %vtable3770 = load %_Array_vtable** %vtable_ptr3769
  %getElement3772 = getelementptr %_Array_vtable* %vtable3770, i32 0, i32 2
  %getElement3771 = load i32 (%Array*, i32)** %getElement3772
  %cast_op3773 = bitcast %Array %lhs_or_call3768 to %Array* 
  %ret3774 = call i32 %getElement3771 ( %Array* %cast_op3773, i32 %lhs_or_call3767 )
  %vdecl_slot3775 = alloca i32
  store i32 %ret3774, i32* %vdecl_slot3775
  %lhs_or_call3776 = load i32* %vdecl_slot3728
  %lhs_or_call3777 = load %Array** %vdecl_slot3712
  %vtable_ptr3778 = getelementptr %Array* %lhs_or_call3777, i32 0
  %vtable3779 = load %_Array_vtable** %vtable_ptr3778
  %getElement3781 = getelementptr %_Array_vtable* %vtable3779, i32 0, i32 2
  %getElement3780 = load i32 (%Array*, i32)** %getElement3781
  %cast_op3782 = bitcast %Array %lhs_or_call3777 to %Array* 
  %ret3783 = call i32 %getElement3780 ( %Array* %cast_op3782, i32 %lhs_or_call3776 )
  %vdecl_slot3784 = alloca i32
  store i32 %ret3783, i32* %vdecl_slot3784
  %lhs_or_call3785 = load i32* %vdecl_slot3775
  %lhs_or_call3786 = load i32* %vdecl_slot3728
  %lhs_or_call3787 = load %Array** %vdecl_slot3712
  %vtable_ptr3788 = getelementptr %Array* %lhs_or_call3787, i32 0
  %vtable3789 = load %_Array_vtable** %vtable_ptr3788
  %setElement3791 = getelementptr %_Array_vtable* %vtable3789, i32 0, i32 3
  %setElement3790 = load void (%Array*, i32, i32)** %setElement3791
  %cast_op3792 = bitcast %Array %lhs_or_call3787 to %Array* 
  call void %setElement3790( %Array* %cast_op3792, i32 %lhs_or_call3786, i32 %lhs_or_call3785 )
  %lhs_or_call3793 = load i32* %vdecl_slot3784
  %lhs_or_call3794 = load i32* %vdecl_slot3733
  %lhs_or_call3795 = load %Array** %vdecl_slot3712
  %vtable_ptr3796 = getelementptr %Array* %lhs_or_call3795, i32 0
  %vtable3797 = load %_Array_vtable** %vtable_ptr3796
  %setElement3799 = getelementptr %_Array_vtable* %vtable3797, i32 0, i32 3
  %setElement3798 = load void (%Array*, i32, i32)** %setElement3799
  %cast_op3800 = bitcast %Array %lhs_or_call3795 to %Array* 
  call void %setElement3798( %Array* %cast_op3800, i32 %lhs_or_call3794, i32 %lhs_or_call3793 )
  br label %__merge913

__fresh929:
  br label %__else914

__else914:
  br label %__merge913

__merge913:
  %lhs_or_call3801 = load i32* %vdecl_slot3728
  %bop3802 = add i32 %lhs_or_call3801, 1
  store i32 %bop3802, i32* %vdecl_slot3728
  br label %__cond906

__fresh930:
  br label %__post904

__post904:
  %vdecl_slot3803 = alloca i32
  store i32 1, i32* %vdecl_slot3803
  br label %__cond918

__cond918:
  %lhs_or_call3804 = load i32* %vdecl_slot3803
  %lhs_or_call3805 = load i32* %vdecl_slot3713
  %bop3806 = icmp slt i32 %lhs_or_call3804, %lhs_or_call3805
  br i1 %bop3806, label %__body917, label %__post916

__fresh931:
  br label %__body917

__body917:
  %lhs_or_call3807 = load i32* %vdecl_slot3803
  %lhs_or_call3808 = load %Array** %vdecl_slot3712
  %vtable_ptr3809 = getelementptr %Array* %lhs_or_call3808, i32 0
  %vtable3810 = load %_Array_vtable** %vtable_ptr3809
  %getElement3812 = getelementptr %_Array_vtable* %vtable3810, i32 0, i32 2
  %getElement3811 = load i32 (%Array*, i32)** %getElement3812
  %cast_op3813 = bitcast %Array %lhs_or_call3808 to %Array* 
  %ret3814 = call i32 %getElement3811 ( %Array* %cast_op3813, i32 %lhs_or_call3807 )
  %vdecl_slot3815 = alloca i32
  store i32 %ret3814, i32* %vdecl_slot3815
  %lhs_or_call3816 = load i32* %vdecl_slot3803
  %bop3817 = add i32 %lhs_or_call3816, 1
  %lhs_or_call3818 = load %Array** %vdecl_slot3712
  %vtable_ptr3819 = getelementptr %Array* %lhs_or_call3818, i32 0
  %vtable3820 = load %_Array_vtable** %vtable_ptr3819
  %getElement3822 = getelementptr %_Array_vtable* %vtable3820, i32 0, i32 2
  %getElement3821 = load i32 (%Array*, i32)** %getElement3822
  %cast_op3823 = bitcast %Array %lhs_or_call3818 to %Array* 
  %ret3824 = call i32 %getElement3821 ( %Array* %cast_op3823, i32 %bop3817 )
  %vdecl_slot3825 = alloca i32
  store i32 %ret3824, i32* %vdecl_slot3825
  %lhs_or_call3826 = load i32* %vdecl_slot3815
  %lhs_or_call3827 = load i32* %vdecl_slot3825
  %bop3828 = icmp sgt i32 %lhs_or_call3826, %lhs_or_call3827
  br i1 %bop3828, label %__then921, label %__else920

__fresh932:
  br label %__then921

__then921:
  %lhs_or_call3829 = load i32* %vdecl_slot3714
  %bop3830 = add i32 %lhs_or_call3829, 1
  store i32 %bop3830, i32* %vdecl_slot3714
  br label %__merge919

__fresh933:
  br label %__else920

__else920:
  br label %__merge919

__merge919:
  %lhs_or_call3831 = load i32* %vdecl_slot3803
  %bop3832 = add i32 %lhs_or_call3831, 1
  store i32 %bop3832, i32* %vdecl_slot3803
  br label %__cond918

__fresh934:
  br label %__post916

__post916:
  %lhs_or_call3833 = load i32* %vdecl_slot3714
  ret i32 %lhs_or_call3833
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh903:
  %arrayLength3703 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3704 = load i32* %arrayLength3703
  ret i32 %lhs_or_call3704
}


define void @_Array_addElement (%Array* %_this1, i32 %key3666){
__fresh894:
  %key_slot3667 = alloca i32
  store i32 %key3666, i32* %key_slot3667
  %arrayLength3668 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3669 = load i32* %arrayLength3668
  %bop3670 = icmp eq i32 %lhs_or_call3669, 0
  br i1 %bop3670, label %__then893, label %__else892

__fresh895:
  br label %__then893

__then893:
  %headItem3671 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3672 = load i32* %key_slot3667
  %mem_ptr3673 = call i32* @oat_malloc ( i32 16 )
  %obj3674 = bitcast i32* %mem_ptr3673 to %ArrayItem* 
  %new_obj3675 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3674, i32 %lhs_or_call3672 )
  store %ArrayItem* %new_obj3675, %ArrayItem** %headItem3671
  br label %__merge891

__fresh896:
  br label %__else892

__else892:
  %headItem3676 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3677 = load %ArrayItem** %headItem3676
  %ifnull_slot3678 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3677, %ArrayItem** %ifnull_slot3678
  %ifnull_guard3679 = icmp ne %ArrayItem* %lhs_or_call3677, null
  br i1 %ifnull_guard3679, label %__then890, label %__else889

__fresh897:
  br label %__then890

__then890:
  %vdecl_slot3680 = alloca i32
  store i32 1, i32* %vdecl_slot3680
  br label %__cond884

__cond884:
  %lhs_or_call3681 = load i32* %vdecl_slot3680
  %arrayLength3682 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3683 = load i32* %arrayLength3682
  %bop3684 = icmp ne i32 %lhs_or_call3681, %lhs_or_call3683
  br i1 %bop3684, label %__body883, label %__post882

__fresh898:
  br label %__body883

__body883:
  %lhs_or_call3685 = load %ArrayItem** %ifnull_slot3678
  %nextItem3686 = getelementptr %ArrayItem* %lhs_or_call3685, i32 0, i32 3
  %lhs_or_call3687 = load %ArrayItem** %nextItem3686
  %ifnull_slot3688 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3687, %ArrayItem** %ifnull_slot3688
  %ifnull_guard3689 = icmp ne %ArrayItem* %lhs_or_call3687, null
  br i1 %ifnull_guard3689, label %__then887, label %__else886

__fresh899:
  br label %__then887

__then887:
  %lhs_or_call3690 = load %ArrayItem** %ifnull_slot3688
  store %ArrayItem* %lhs_or_call3690, %ArrayItem** %ifnull_slot3678
  br label %__merge885

__fresh900:
  br label %__else886

__else886:
  br label %__merge885

__merge885:
  %lhs_or_call3691 = load i32* %vdecl_slot3680
  %bop3692 = add i32 %lhs_or_call3691, 1
  store i32 %bop3692, i32* %vdecl_slot3680
  br label %__cond884

__fresh901:
  br label %__post882

__post882:
  %lhs_or_call3693 = load %ArrayItem** %ifnull_slot3678
  %nextItem3694 = getelementptr %ArrayItem* %lhs_or_call3693, i32 0, i32 3
  %lhs_or_call3695 = load i32* %key_slot3667
  %mem_ptr3696 = call i32* @oat_malloc ( i32 16 )
  %obj3697 = bitcast i32* %mem_ptr3696 to %ArrayItem* 
  %new_obj3698 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3697, i32 %lhs_or_call3695 )
  store %ArrayItem* %new_obj3698, %ArrayItem** %nextItem3694
  br label %__merge888

__fresh902:
  br label %__else889

__else889:
  br label %__merge888

__merge888:
  br label %__merge891

__merge891:
  %arrayLength3699 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3700 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3701 = load i32* %arrayLength3700
  %bop3702 = add i32 %lhs_or_call3701, 1
  store i32 %bop3702, i32* %arrayLength3699
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3645, i32 %key3643){
__fresh875:
  %index_slot3646 = alloca i32
  store i32 %index3645, i32* %index_slot3646
  %key_slot3644 = alloca i32
  store i32 %key3643, i32* %key_slot3644
  %headItem3647 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3648 = load %ArrayItem** %headItem3647
  %ifnull_slot3649 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3648, %ArrayItem** %ifnull_slot3649
  %ifnull_guard3650 = icmp ne %ArrayItem* %lhs_or_call3648, null
  br i1 %ifnull_guard3650, label %__then874, label %__else873

__fresh876:
  br label %__then874

__then874:
  %vdecl_slot3651 = alloca i32
  store i32 1, i32* %vdecl_slot3651
  br label %__cond868

__cond868:
  %lhs_or_call3652 = load i32* %vdecl_slot3651
  %lhs_or_call3653 = load i32* %index_slot3646
  %bop3654 = icmp ne i32 %lhs_or_call3652, %lhs_or_call3653
  br i1 %bop3654, label %__body867, label %__post866

__fresh877:
  br label %__body867

__body867:
  %lhs_or_call3655 = load %ArrayItem** %ifnull_slot3649
  %nextItem3656 = getelementptr %ArrayItem* %lhs_or_call3655, i32 0, i32 3
  %lhs_or_call3657 = load %ArrayItem** %nextItem3656
  %ifnull_slot3658 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3657, %ArrayItem** %ifnull_slot3658
  %ifnull_guard3659 = icmp ne %ArrayItem* %lhs_or_call3657, null
  br i1 %ifnull_guard3659, label %__then871, label %__else870

__fresh878:
  br label %__then871

__then871:
  %lhs_or_call3660 = load %ArrayItem** %ifnull_slot3658
  store %ArrayItem* %lhs_or_call3660, %ArrayItem** %ifnull_slot3649
  br label %__merge869

__fresh879:
  br label %__else870

__else870:
  br label %__merge869

__merge869:
  %lhs_or_call3661 = load i32* %vdecl_slot3651
  %bop3662 = add i32 %lhs_or_call3661, 1
  store i32 %bop3662, i32* %vdecl_slot3651
  br label %__cond868

__fresh880:
  br label %__post866

__post866:
  %lhs_or_call3663 = load %ArrayItem** %ifnull_slot3649
  %keyValue3664 = getelementptr %ArrayItem* %lhs_or_call3663, i32 0, i32 2
  %lhs_or_call3665 = load i32* %key_slot3644
  store i32 %lhs_or_call3665, i32* %keyValue3664
  br label %__merge872

__fresh881:
  br label %__else873

__else873:
  call void @print_string( i8* @_const_str617 )
  call void @oat_abort( i32 -1 )
  br label %__merge872

__merge872:
  ret void
}


define i32 @_Array_getElement (%Array* %_this1, i32 %index3620){
__fresh859:
  %index_slot3621 = alloca i32
  store i32 %index3620, i32* %index_slot3621
  %vdecl_slot3622 = alloca i32
  store i32 0, i32* %vdecl_slot3622
  %headItem3623 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3624 = load %ArrayItem** %headItem3623
  %ifnull_slot3625 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3624, %ArrayItem** %ifnull_slot3625
  %ifnull_guard3626 = icmp ne %ArrayItem* %lhs_or_call3624, null
  br i1 %ifnull_guard3626, label %__then858, label %__else857

__fresh860:
  br label %__then858

__then858:
  %vdecl_slot3627 = alloca i32
  store i32 1, i32* %vdecl_slot3627
  br label %__cond852

__cond852:
  %lhs_or_call3628 = load i32* %vdecl_slot3627
  %lhs_or_call3629 = load i32* %index_slot3621
  %bop3630 = icmp ne i32 %lhs_or_call3628, %lhs_or_call3629
  br i1 %bop3630, label %__body851, label %__post850

__fresh861:
  br label %__body851

__body851:
  %lhs_or_call3631 = load %ArrayItem** %ifnull_slot3625
  %nextItem3632 = getelementptr %ArrayItem* %lhs_or_call3631, i32 0, i32 3
  %lhs_or_call3633 = load %ArrayItem** %nextItem3632
  %ifnull_slot3634 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3633, %ArrayItem** %ifnull_slot3634
  %ifnull_guard3635 = icmp ne %ArrayItem* %lhs_or_call3633, null
  br i1 %ifnull_guard3635, label %__then855, label %__else854

__fresh862:
  br label %__then855

__then855:
  %lhs_or_call3636 = load %ArrayItem** %ifnull_slot3634
  store %ArrayItem* %lhs_or_call3636, %ArrayItem** %ifnull_slot3625
  br label %__merge853

__fresh863:
  br label %__else854

__else854:
  br label %__merge853

__merge853:
  %lhs_or_call3637 = load i32* %vdecl_slot3627
  %bop3638 = add i32 %lhs_or_call3637, 1
  store i32 %bop3638, i32* %vdecl_slot3627
  br label %__cond852

__fresh864:
  br label %__post850

__post850:
  %lhs_or_call3639 = load %ArrayItem** %ifnull_slot3625
  %keyValue3640 = getelementptr %ArrayItem* %lhs_or_call3639, i32 0, i32 2
  %lhs_or_call3641 = load i32* %keyValue3640
  store i32 %lhs_or_call3641, i32* %vdecl_slot3622
  br label %__merge856

__fresh865:
  br label %__else857

__else857:
  call void @print_string( i8* @_const_str616 )
  call void @oat_abort( i32 -1 )
  br label %__merge856

__merge856:
  %lhs_or_call3642 = load i32* %vdecl_slot3622
  ret i32 %lhs_or_call3642
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh849:
  %mem_ptr3615 = call i32* @oat_malloc ( i32 8 )
  %obj3616 = bitcast i32* %mem_ptr3615 to %Object* 
  %new_obj3617 = call %Object* @_Object_ctor ( %Object* %obj3616 )
  %_this1 = bitcast %Object* %new_obj3617 to %Array 
  %_name3618 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str615, i8** %_name3618
  %this_vtable3619 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable612, %_Array_vtable** %this_vtable3619
  %arrayLength3614 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3614
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3610){
__fresh848:
  %x_slot3611 = alloca i32
  store i32 %x3610, i32* %x_slot3611
  %keyValue3612 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3613 = load i32* %x_slot3611
  store i32 %lhs_or_call3613, i32* %keyValue3612
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3599){
__fresh847:
  %x_slot3600 = alloca i32
  store i32 %x3599, i32* %x_slot3600
  %mem_ptr3605 = call i32* @oat_malloc ( i32 8 )
  %obj3606 = bitcast i32* %mem_ptr3605 to %Object* 
  %new_obj3607 = call %Object* @_Object_ctor ( %Object* %obj3606 )
  %_this1 = bitcast %Object* %new_obj3607 to %ArrayItem 
  %_name3608 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str614, i8** %_name3608
  %this_vtable3609 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable611, %_ArrayItem_vtable** %this_vtable3609
  %keyValue3601 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3602 = load i32* %x_slot3600
  store i32 %lhs_or_call3602, i32* %keyValue3601
  %nextItem3603 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3604 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3604, %ArrayItem** %nextItem3603
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh846:
  %_name3597 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3598 = load i8** %_name3597
  ret i8* %lhs_or_call3598
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh845:
  %_name3595 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str613, i8** %_name3595
  %this_vtable3596 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable610, %_Object_vtable** %this_vtable3596
  ret %Object* %_this1
}


