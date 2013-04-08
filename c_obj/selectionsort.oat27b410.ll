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


define i32 @program (i32 %argc3694, { i32, [ 0 x i8* ] }* %argv3692){
__fresh922:
  %argc_slot3695 = alloca i32
  store i32 %argc3694, i32* %argc_slot3695
  %argv_slot3693 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3692, { i32, [ 0 x i8* ] }** %argv_slot3693
  %mem_ptr3696 = call i32* @oat_malloc ( i32 16 )
  %obj3697 = bitcast i32* %mem_ptr3696 to %Array* 
  %new_obj3698 = call %Array* @_Array_ctor ( %Array* %obj3697 )
  %vdecl_slot3699 = alloca %Array*
  store %Array* %new_obj3698, %Array** %vdecl_slot3699
  %vdecl_slot3700 = alloca i32
  store i32 0, i32* %vdecl_slot3700
  %vdecl_slot3701 = alloca i32
  store i32 0, i32* %vdecl_slot3701
  %lhs_or_call3702 = load %Array** %vdecl_slot3699
  %vtable_ptr3703 = getelementptr %Array* %lhs_or_call3702, i32 0
  %vtable3704 = load %_Array_vtable** %vtable_ptr3703
  %addElement3706 = getelementptr %_Array_vtable* %vtable3704, i32 0, i32 4
  %addElement3705 = load void (%Array*, i32)** %addElement3706
  %cast_op3707 = bitcast %Array %lhs_or_call3702 to %Array* 
  call void %addElement3705( %Array* %cast_op3707, i32 79 )
  %lhs_or_call3708 = load %Array** %vdecl_slot3699
  %vtable_ptr3709 = getelementptr %Array* %lhs_or_call3708, i32 0
  %vtable3710 = load %_Array_vtable** %vtable_ptr3709
  %getLength3712 = getelementptr %_Array_vtable* %vtable3710, i32 0, i32 5
  %getLength3711 = load i32 (%Array*)** %getLength3712
  %cast_op3713 = bitcast %Array %lhs_or_call3708 to %Array* 
  %ret3714 = call i32 %getLength3711 ( %Array* %cast_op3713 )
  store i32 %ret3714, i32* %vdecl_slot3700
  %vdecl_slot3715 = alloca i32
  store i32 1, i32* %vdecl_slot3715
  br label %__cond906

__cond906:
  %lhs_or_call3716 = load i32* %vdecl_slot3715
  %lhs_or_call3717 = load i32* %vdecl_slot3700
  %bop3718 = icmp slt i32 %lhs_or_call3716, %lhs_or_call3717
  br i1 %bop3718, label %__body905, label %__post904

__fresh923:
  br label %__body905

__body905:
  %lhs_or_call3719 = load i32* %vdecl_slot3715
  %vdecl_slot3720 = alloca i32
  store i32 %lhs_or_call3719, i32* %vdecl_slot3720
  %lhs_or_call3721 = load i32* %vdecl_slot3715
  %bop3722 = add i32 %lhs_or_call3721, 1
  %vdecl_slot3723 = alloca i32
  store i32 %bop3722, i32* %vdecl_slot3723
  br label %__cond909

__cond909:
  %lhs_or_call3724 = load i32* %vdecl_slot3723
  %lhs_or_call3725 = load i32* %vdecl_slot3700
  %bop3726 = icmp sle i32 %lhs_or_call3724, %lhs_or_call3725
  br i1 %bop3726, label %__body908, label %__post907

__fresh924:
  br label %__body908

__body908:
  %lhs_or_call3727 = load i32* %vdecl_slot3723
  %lhs_or_call3728 = load %Array** %vdecl_slot3699
  %vtable_ptr3729 = getelementptr %Array* %lhs_or_call3728, i32 0
  %vtable3730 = load %_Array_vtable** %vtable_ptr3729
  %getElement3732 = getelementptr %_Array_vtable* %vtable3730, i32 0, i32 2
  %getElement3731 = load i32 (%Array*, i32)** %getElement3732
  %cast_op3733 = bitcast %Array %lhs_or_call3728 to %Array* 
  %ret3734 = call i32 %getElement3731 ( %Array* %cast_op3733, i32 %lhs_or_call3727 )
  %vdecl_slot3735 = alloca i32
  store i32 %ret3734, i32* %vdecl_slot3735
  %lhs_or_call3736 = load i32* %vdecl_slot3720
  %lhs_or_call3737 = load %Array** %vdecl_slot3699
  %vtable_ptr3738 = getelementptr %Array* %lhs_or_call3737, i32 0
  %vtable3739 = load %_Array_vtable** %vtable_ptr3738
  %getElement3741 = getelementptr %_Array_vtable* %vtable3739, i32 0, i32 2
  %getElement3740 = load i32 (%Array*, i32)** %getElement3741
  %cast_op3742 = bitcast %Array %lhs_or_call3737 to %Array* 
  %ret3743 = call i32 %getElement3740 ( %Array* %cast_op3742, i32 %lhs_or_call3736 )
  %vdecl_slot3744 = alloca i32
  store i32 %ret3743, i32* %vdecl_slot3744
  %lhs_or_call3745 = load i32* %vdecl_slot3735
  %lhs_or_call3746 = load i32* %vdecl_slot3744
  %bop3747 = icmp slt i32 %lhs_or_call3745, %lhs_or_call3746
  br i1 %bop3747, label %__then912, label %__else911

__fresh925:
  br label %__then912

__then912:
  %lhs_or_call3748 = load i32* %vdecl_slot3723
  store i32 %lhs_or_call3748, i32* %vdecl_slot3720
  br label %__merge910

__fresh926:
  br label %__else911

__else911:
  br label %__merge910

__merge910:
  %lhs_or_call3749 = load i32* %vdecl_slot3723
  %bop3750 = add i32 %lhs_or_call3749, 1
  store i32 %bop3750, i32* %vdecl_slot3723
  br label %__cond909

__fresh927:
  br label %__post907

__post907:
  %lhs_or_call3751 = load i32* %vdecl_slot3720
  %lhs_or_call3752 = load i32* %vdecl_slot3715
  %bop3753 = icmp ne i32 %lhs_or_call3751, %lhs_or_call3752
  br i1 %bop3753, label %__then915, label %__else914

__fresh928:
  br label %__then915

__then915:
  %lhs_or_call3754 = load i32* %vdecl_slot3720
  %lhs_or_call3755 = load %Array** %vdecl_slot3699
  %vtable_ptr3756 = getelementptr %Array* %lhs_or_call3755, i32 0
  %vtable3757 = load %_Array_vtable** %vtable_ptr3756
  %getElement3759 = getelementptr %_Array_vtable* %vtable3757, i32 0, i32 2
  %getElement3758 = load i32 (%Array*, i32)** %getElement3759
  %cast_op3760 = bitcast %Array %lhs_or_call3755 to %Array* 
  %ret3761 = call i32 %getElement3758 ( %Array* %cast_op3760, i32 %lhs_or_call3754 )
  %vdecl_slot3762 = alloca i32
  store i32 %ret3761, i32* %vdecl_slot3762
  %lhs_or_call3763 = load i32* %vdecl_slot3715
  %lhs_or_call3764 = load %Array** %vdecl_slot3699
  %vtable_ptr3765 = getelementptr %Array* %lhs_or_call3764, i32 0
  %vtable3766 = load %_Array_vtable** %vtable_ptr3765
  %getElement3768 = getelementptr %_Array_vtable* %vtable3766, i32 0, i32 2
  %getElement3767 = load i32 (%Array*, i32)** %getElement3768
  %cast_op3769 = bitcast %Array %lhs_or_call3764 to %Array* 
  %ret3770 = call i32 %getElement3767 ( %Array* %cast_op3769, i32 %lhs_or_call3763 )
  %vdecl_slot3771 = alloca i32
  store i32 %ret3770, i32* %vdecl_slot3771
  %lhs_or_call3772 = load i32* %vdecl_slot3762
  %lhs_or_call3773 = load i32* %vdecl_slot3715
  %lhs_or_call3774 = load %Array** %vdecl_slot3699
  %vtable_ptr3775 = getelementptr %Array* %lhs_or_call3774, i32 0
  %vtable3776 = load %_Array_vtable** %vtable_ptr3775
  %setElement3778 = getelementptr %_Array_vtable* %vtable3776, i32 0, i32 3
  %setElement3777 = load void (%Array*, i32, i32)** %setElement3778
  %cast_op3779 = bitcast %Array %lhs_or_call3774 to %Array* 
  call void %setElement3777( %Array* %cast_op3779, i32 %lhs_or_call3773, i32 %lhs_or_call3772 )
  %lhs_or_call3780 = load i32* %vdecl_slot3771
  %lhs_or_call3781 = load i32* %vdecl_slot3720
  %lhs_or_call3782 = load %Array** %vdecl_slot3699
  %vtable_ptr3783 = getelementptr %Array* %lhs_or_call3782, i32 0
  %vtable3784 = load %_Array_vtable** %vtable_ptr3783
  %setElement3786 = getelementptr %_Array_vtable* %vtable3784, i32 0, i32 3
  %setElement3785 = load void (%Array*, i32, i32)** %setElement3786
  %cast_op3787 = bitcast %Array %lhs_or_call3782 to %Array* 
  call void %setElement3785( %Array* %cast_op3787, i32 %lhs_or_call3781, i32 %lhs_or_call3780 )
  br label %__merge913

__fresh929:
  br label %__else914

__else914:
  br label %__merge913

__merge913:
  %lhs_or_call3788 = load i32* %vdecl_slot3715
  %bop3789 = add i32 %lhs_or_call3788, 1
  store i32 %bop3789, i32* %vdecl_slot3715
  br label %__cond906

__fresh930:
  br label %__post904

__post904:
  %vdecl_slot3790 = alloca i32
  store i32 1, i32* %vdecl_slot3790
  br label %__cond918

__cond918:
  %lhs_or_call3791 = load i32* %vdecl_slot3790
  %lhs_or_call3792 = load i32* %vdecl_slot3700
  %bop3793 = icmp slt i32 %lhs_or_call3791, %lhs_or_call3792
  br i1 %bop3793, label %__body917, label %__post916

__fresh931:
  br label %__body917

__body917:
  %lhs_or_call3794 = load i32* %vdecl_slot3790
  %lhs_or_call3795 = load %Array** %vdecl_slot3699
  %vtable_ptr3796 = getelementptr %Array* %lhs_or_call3795, i32 0
  %vtable3797 = load %_Array_vtable** %vtable_ptr3796
  %getElement3799 = getelementptr %_Array_vtable* %vtable3797, i32 0, i32 2
  %getElement3798 = load i32 (%Array*, i32)** %getElement3799
  %cast_op3800 = bitcast %Array %lhs_or_call3795 to %Array* 
  %ret3801 = call i32 %getElement3798 ( %Array* %cast_op3800, i32 %lhs_or_call3794 )
  %vdecl_slot3802 = alloca i32
  store i32 %ret3801, i32* %vdecl_slot3802
  %lhs_or_call3803 = load i32* %vdecl_slot3790
  %bop3804 = add i32 %lhs_or_call3803, 1
  %lhs_or_call3805 = load %Array** %vdecl_slot3699
  %vtable_ptr3806 = getelementptr %Array* %lhs_or_call3805, i32 0
  %vtable3807 = load %_Array_vtable** %vtable_ptr3806
  %getElement3809 = getelementptr %_Array_vtable* %vtable3807, i32 0, i32 2
  %getElement3808 = load i32 (%Array*, i32)** %getElement3809
  %cast_op3810 = bitcast %Array %lhs_or_call3805 to %Array* 
  %ret3811 = call i32 %getElement3808 ( %Array* %cast_op3810, i32 %bop3804 )
  %vdecl_slot3812 = alloca i32
  store i32 %ret3811, i32* %vdecl_slot3812
  %lhs_or_call3813 = load i32* %vdecl_slot3802
  %lhs_or_call3814 = load i32* %vdecl_slot3812
  %bop3815 = icmp sgt i32 %lhs_or_call3813, %lhs_or_call3814
  br i1 %bop3815, label %__then921, label %__else920

__fresh932:
  br label %__then921

__then921:
  %lhs_or_call3816 = load i32* %vdecl_slot3701
  %bop3817 = add i32 %lhs_or_call3816, 1
  store i32 %bop3817, i32* %vdecl_slot3701
  br label %__merge919

__fresh933:
  br label %__else920

__else920:
  br label %__merge919

__merge919:
  %lhs_or_call3818 = load i32* %vdecl_slot3790
  %bop3819 = add i32 %lhs_or_call3818, 1
  store i32 %bop3819, i32* %vdecl_slot3790
  br label %__cond918

__fresh934:
  br label %__post916

__post916:
  %lhs_or_call3820 = load i32* %vdecl_slot3701
  ret i32 %lhs_or_call3820
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh903:
  %arrayLength3690 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3691 = load i32* %arrayLength3690
  ret i32 %lhs_or_call3691
}


define void @_Array_addElement (%Array* %_this1, i32 %key3653){
__fresh894:
  %key_slot3654 = alloca i32
  store i32 %key3653, i32* %key_slot3654
  %arrayLength3655 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3656 = load i32* %arrayLength3655
  %bop3657 = icmp eq i32 %lhs_or_call3656, 0
  br i1 %bop3657, label %__then893, label %__else892

__fresh895:
  br label %__then893

__then893:
  %headItem3658 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3659 = load i32* %key_slot3654
  %mem_ptr3660 = call i32* @oat_malloc ( i32 16 )
  %obj3661 = bitcast i32* %mem_ptr3660 to %ArrayItem* 
  %new_obj3662 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3661, i32 %lhs_or_call3659 )
  store %ArrayItem* %new_obj3662, %ArrayItem** %headItem3658
  br label %__merge891

__fresh896:
  br label %__else892

__else892:
  %headItem3663 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3664 = load %ArrayItem** %headItem3663
  %ifnull_slot3665 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3664, %ArrayItem** %ifnull_slot3665
  %ifnull_guard3666 = icmp ne %ArrayItem* %lhs_or_call3664, null
  br i1 %ifnull_guard3666, label %__then890, label %__else889

__fresh897:
  br label %__then890

__then890:
  %vdecl_slot3667 = alloca i32
  store i32 1, i32* %vdecl_slot3667
  br label %__cond884

__cond884:
  %lhs_or_call3668 = load i32* %vdecl_slot3667
  %arrayLength3669 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3670 = load i32* %arrayLength3669
  %bop3671 = icmp ne i32 %lhs_or_call3668, %lhs_or_call3670
  br i1 %bop3671, label %__body883, label %__post882

__fresh898:
  br label %__body883

__body883:
  %lhs_or_call3672 = load %ArrayItem** %ifnull_slot3665
  %nextItem3673 = getelementptr %ArrayItem* %lhs_or_call3672, i32 0, i32 3
  %lhs_or_call3674 = load %ArrayItem** %nextItem3673
  %ifnull_slot3675 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3674, %ArrayItem** %ifnull_slot3675
  %ifnull_guard3676 = icmp ne %ArrayItem* %lhs_or_call3674, null
  br i1 %ifnull_guard3676, label %__then887, label %__else886

__fresh899:
  br label %__then887

__then887:
  %lhs_or_call3677 = load %ArrayItem** %ifnull_slot3675
  store %ArrayItem* %lhs_or_call3677, %ArrayItem** %ifnull_slot3665
  br label %__merge885

__fresh900:
  br label %__else886

__else886:
  br label %__merge885

__merge885:
  %lhs_or_call3678 = load i32* %vdecl_slot3667
  %bop3679 = add i32 %lhs_or_call3678, 1
  store i32 %bop3679, i32* %vdecl_slot3667
  br label %__cond884

__fresh901:
  br label %__post882

__post882:
  %lhs_or_call3680 = load %ArrayItem** %ifnull_slot3665
  %nextItem3681 = getelementptr %ArrayItem* %lhs_or_call3680, i32 0, i32 3
  %lhs_or_call3682 = load i32* %key_slot3654
  %mem_ptr3683 = call i32* @oat_malloc ( i32 16 )
  %obj3684 = bitcast i32* %mem_ptr3683 to %ArrayItem* 
  %new_obj3685 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3684, i32 %lhs_or_call3682 )
  store %ArrayItem* %new_obj3685, %ArrayItem** %nextItem3681
  br label %__merge888

__fresh902:
  br label %__else889

__else889:
  br label %__merge888

__merge888:
  br label %__merge891

__merge891:
  %arrayLength3686 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3687 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3688 = load i32* %arrayLength3687
  %bop3689 = add i32 %lhs_or_call3688, 1
  store i32 %bop3689, i32* %arrayLength3686
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3632, i32 %key3630){
__fresh875:
  %index_slot3633 = alloca i32
  store i32 %index3632, i32* %index_slot3633
  %key_slot3631 = alloca i32
  store i32 %key3630, i32* %key_slot3631
  %headItem3634 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3635 = load %ArrayItem** %headItem3634
  %ifnull_slot3636 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3635, %ArrayItem** %ifnull_slot3636
  %ifnull_guard3637 = icmp ne %ArrayItem* %lhs_or_call3635, null
  br i1 %ifnull_guard3637, label %__then874, label %__else873

__fresh876:
  br label %__then874

__then874:
  %vdecl_slot3638 = alloca i32
  store i32 1, i32* %vdecl_slot3638
  br label %__cond868

__cond868:
  %lhs_or_call3639 = load i32* %vdecl_slot3638
  %lhs_or_call3640 = load i32* %index_slot3633
  %bop3641 = icmp ne i32 %lhs_or_call3639, %lhs_or_call3640
  br i1 %bop3641, label %__body867, label %__post866

__fresh877:
  br label %__body867

__body867:
  %lhs_or_call3642 = load %ArrayItem** %ifnull_slot3636
  %nextItem3643 = getelementptr %ArrayItem* %lhs_or_call3642, i32 0, i32 3
  %lhs_or_call3644 = load %ArrayItem** %nextItem3643
  %ifnull_slot3645 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3644, %ArrayItem** %ifnull_slot3645
  %ifnull_guard3646 = icmp ne %ArrayItem* %lhs_or_call3644, null
  br i1 %ifnull_guard3646, label %__then871, label %__else870

__fresh878:
  br label %__then871

__then871:
  %lhs_or_call3647 = load %ArrayItem** %ifnull_slot3645
  store %ArrayItem* %lhs_or_call3647, %ArrayItem** %ifnull_slot3636
  br label %__merge869

__fresh879:
  br label %__else870

__else870:
  br label %__merge869

__merge869:
  %lhs_or_call3648 = load i32* %vdecl_slot3638
  %bop3649 = add i32 %lhs_or_call3648, 1
  store i32 %bop3649, i32* %vdecl_slot3638
  br label %__cond868

__fresh880:
  br label %__post866

__post866:
  %lhs_or_call3650 = load %ArrayItem** %ifnull_slot3636
  %keyValue3651 = getelementptr %ArrayItem* %lhs_or_call3650, i32 0, i32 2
  %lhs_or_call3652 = load i32* %key_slot3631
  store i32 %lhs_or_call3652, i32* %keyValue3651
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


define i32 @_Array_getElement (%Array* %_this1, i32 %index3607){
__fresh859:
  %index_slot3608 = alloca i32
  store i32 %index3607, i32* %index_slot3608
  %vdecl_slot3609 = alloca i32
  store i32 0, i32* %vdecl_slot3609
  %headItem3610 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3611 = load %ArrayItem** %headItem3610
  %ifnull_slot3612 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3611, %ArrayItem** %ifnull_slot3612
  %ifnull_guard3613 = icmp ne %ArrayItem* %lhs_or_call3611, null
  br i1 %ifnull_guard3613, label %__then858, label %__else857

__fresh860:
  br label %__then858

__then858:
  %vdecl_slot3614 = alloca i32
  store i32 1, i32* %vdecl_slot3614
  br label %__cond852

__cond852:
  %lhs_or_call3615 = load i32* %vdecl_slot3614
  %lhs_or_call3616 = load i32* %index_slot3608
  %bop3617 = icmp ne i32 %lhs_or_call3615, %lhs_or_call3616
  br i1 %bop3617, label %__body851, label %__post850

__fresh861:
  br label %__body851

__body851:
  %lhs_or_call3618 = load %ArrayItem** %ifnull_slot3612
  %nextItem3619 = getelementptr %ArrayItem* %lhs_or_call3618, i32 0, i32 3
  %lhs_or_call3620 = load %ArrayItem** %nextItem3619
  %ifnull_slot3621 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3620, %ArrayItem** %ifnull_slot3621
  %ifnull_guard3622 = icmp ne %ArrayItem* %lhs_or_call3620, null
  br i1 %ifnull_guard3622, label %__then855, label %__else854

__fresh862:
  br label %__then855

__then855:
  %lhs_or_call3623 = load %ArrayItem** %ifnull_slot3621
  store %ArrayItem* %lhs_or_call3623, %ArrayItem** %ifnull_slot3612
  br label %__merge853

__fresh863:
  br label %__else854

__else854:
  br label %__merge853

__merge853:
  %lhs_or_call3624 = load i32* %vdecl_slot3614
  %bop3625 = add i32 %lhs_or_call3624, 1
  store i32 %bop3625, i32* %vdecl_slot3614
  br label %__cond852

__fresh864:
  br label %__post850

__post850:
  %lhs_or_call3626 = load %ArrayItem** %ifnull_slot3612
  %keyValue3627 = getelementptr %ArrayItem* %lhs_or_call3626, i32 0, i32 2
  %lhs_or_call3628 = load i32* %keyValue3627
  store i32 %lhs_or_call3628, i32* %vdecl_slot3609
  br label %__merge856

__fresh865:
  br label %__else857

__else857:
  call void @print_string( i8* @_const_str616 )
  call void @oat_abort( i32 -1 )
  br label %__merge856

__merge856:
  %lhs_or_call3629 = load i32* %vdecl_slot3609
  ret i32 %lhs_or_call3629
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh849:
  %mem_ptr3602 = call i32* @oat_malloc ( i32 8 )
  %obj3603 = bitcast i32* %mem_ptr3602 to %Object* 
  %new_obj3604 = call %Object* @_Object_ctor ( %Object* %obj3603 )
  %_this1 = bitcast %Object* %new_obj3604 to %Array 
  %_name3605 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str615, i8** %_name3605
  %this_vtable3606 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable612, %_Array_vtable** %this_vtable3606
  %arrayLength3601 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3601
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3597){
__fresh848:
  %x_slot3598 = alloca i32
  store i32 %x3597, i32* %x_slot3598
  %keyValue3599 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3600 = load i32* %x_slot3598
  store i32 %lhs_or_call3600, i32* %keyValue3599
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3586){
__fresh847:
  %x_slot3587 = alloca i32
  store i32 %x3586, i32* %x_slot3587
  %mem_ptr3592 = call i32* @oat_malloc ( i32 8 )
  %obj3593 = bitcast i32* %mem_ptr3592 to %Object* 
  %new_obj3594 = call %Object* @_Object_ctor ( %Object* %obj3593 )
  %_this1 = bitcast %Object* %new_obj3594 to %ArrayItem 
  %_name3595 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str614, i8** %_name3595
  %this_vtable3596 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable611, %_ArrayItem_vtable** %this_vtable3596
  %keyValue3588 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3589 = load i32* %x_slot3587
  store i32 %lhs_or_call3589, i32* %keyValue3588
  %nextItem3590 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3591 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3591, %ArrayItem** %nextItem3590
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh846:
  %_name3584 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3585 = load i8** %_name3584
  ret i8* %lhs_or_call3585
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh845:
  %_name3582 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str613, i8** %_name3582
  %this_vtable3583 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable610, %_Object_vtable** %this_vtable3583
  ret %Object* %_this1
}


