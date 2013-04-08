%Charmander = type { %_Charmander_vtable*, i8*, i32, i8*, i32 }
%_Charmander_vtable = type { %_Pokemon_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)*, void (%Charmander*, %Pikachu*)*, void (%Charmander*)* }
%Pikachu = type { %_Pikachu_vtable*, i8*, i32, i8*, i32 }
%_Pikachu_vtable = type { %_Pokemon_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)*, void (%Pikachu*, %Charmander*)*, void (%Pikachu*)* }
%Pokemon = type { %_Pokemon_vtable*, i8*, i32, i8* }
%_Pokemon_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)* }
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
@_const_str342.str. = private unnamed_addr constant [ 2 x i8 ] c "6\00", align 4
@_const_str342 = alias bitcast([ 2 x i8 ]* @_const_str342.str. to i8*)@c340 = global %Charmander* zeroinitializer, align 4		; initialized by @c340.init341
@p338 = global %Pikachu* zeroinitializer, align 4		; initialized by @p338.init339
@_const_str337.str. = private unnamed_addr constant [ 2 x i8 ] c "5\00", align 4
@_const_str337 = alias bitcast([ 2 x i8 ]* @_const_str337.str. to i8*)@_const_str336.str. = private unnamed_addr constant [ 2 x i8 ] c "4\00", align 4
@_const_str336 = alias bitcast([ 2 x i8 ]* @_const_str336.str. to i8*)@_const_str335.str. = private unnamed_addr constant [ 2 x i8 ] c "3\00", align 4
@_const_str335 = alias bitcast([ 2 x i8 ]* @_const_str335.str. to i8*)@_const_str334.str. = private unnamed_addr constant [ 2 x i8 ] c "9\00", align 4
@_const_str334 = alias bitcast([ 2 x i8 ]* @_const_str334.str. to i8*)@_Charmander_vtable333 = private constant %_Charmander_vtable {%_Pokemon_vtable* @_Pokemon_vtable331, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Charmander*, %Pikachu*)* @_Charmander_attack, void (%Charmander*)* @_Charmander_noise}, align 4
@_Pikachu_vtable332 = private constant %_Pikachu_vtable {%_Pokemon_vtable* @_Pokemon_vtable331, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Pikachu*, %Charmander*)* @_Pikachu_attack, void (%Pikachu*)* @_Pikachu_noise}, align 4
@_Pokemon_vtable331 = private constant %_Pokemon_vtable {%_Object_vtable* @_Object_vtable330, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit}, align 4
@_Object_vtable330 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh678:
  call void @p338.init339(  )
  call void @c340.init341(  )
  ret void
}


define i32 @program (i32 %argc3776, { i32, [ 0 x i8* ] }* %argv3774){
__fresh677:
  %argc_slot3777 = alloca i32
  store i32 %argc3776, i32* %argc_slot3777
  %argv_slot3775 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3774, { i32, [ 0 x i8* ] }** %argv_slot3775
  %lhs_or_call3778 = load %Pikachu** @p338
  %lhs_or_call3779 = load %Charmander** @c340
  %attack3781 = getelementptr %_Charmander_vtable* @_Charmander_vtable333, i32 0, i32 3
  %attack3780 = load void (%Charmander*, %Pikachu*)** %attack3781
  %cast_op3782 = bitcast %Charmander %lhs_or_call3779 to %Charmander* 
  call void %attack3780( %Charmander* %cast_op3782, %Pikachu* %lhs_or_call3778 )
  %lhs_or_call3783 = load %Charmander** @c340
  %lhs_or_call3784 = load %Pikachu** @p338
  %attack3786 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable332, i32 0, i32 3
  %attack3785 = load void (%Pikachu*, %Charmander*)** %attack3786
  %cast_op3787 = bitcast %Pikachu %lhs_or_call3784 to %Pikachu* 
  call void %attack3785( %Pikachu* %cast_op3787, %Charmander* %lhs_or_call3783 )
  %lhs_or_call3788 = load %Pikachu** @p338
  %lhs_or_call3789 = load %Charmander** @c340
  %attack3791 = getelementptr %_Charmander_vtable* @_Charmander_vtable333, i32 0, i32 3
  %attack3790 = load void (%Charmander*, %Pikachu*)** %attack3791
  %cast_op3792 = bitcast %Charmander %lhs_or_call3789 to %Charmander* 
  call void %attack3790( %Charmander* %cast_op3792, %Pikachu* %lhs_or_call3788 )
  %lhs_or_call3793 = load %Charmander** @c340
  %lhs_or_call3794 = load %Pikachu** @p338
  %attack3796 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable332, i32 0, i32 3
  %attack3795 = load void (%Pikachu*, %Charmander*)** %attack3796
  %cast_op3797 = bitcast %Pikachu %lhs_or_call3794 to %Pikachu* 
  call void %attack3795( %Pikachu* %cast_op3797, %Charmander* %lhs_or_call3793 )
  %lhs_or_call3798 = load %Pikachu** @p338
  %lhs_or_call3799 = load %Charmander** @c340
  %attack3801 = getelementptr %_Charmander_vtable* @_Charmander_vtable333, i32 0, i32 3
  %attack3800 = load void (%Charmander*, %Pikachu*)** %attack3801
  %cast_op3802 = bitcast %Charmander %lhs_or_call3799 to %Charmander* 
  call void %attack3800( %Charmander* %cast_op3802, %Pikachu* %lhs_or_call3798 )
  %lhs_or_call3803 = load %Charmander** @c340
  %lhs_or_call3804 = load %Pikachu** @p338
  %attack3806 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable332, i32 0, i32 3
  %attack3805 = load void (%Pikachu*, %Charmander*)** %attack3806
  %cast_op3807 = bitcast %Pikachu %lhs_or_call3804 to %Pikachu* 
  call void %attack3805( %Pikachu* %cast_op3807, %Charmander* %lhs_or_call3803 )
  %lhs_or_call3808 = load %Pikachu** @p338
  %lhs_or_call3809 = load %Charmander** @c340
  %attack3811 = getelementptr %_Charmander_vtable* @_Charmander_vtable333, i32 0, i32 3
  %attack3810 = load void (%Charmander*, %Pikachu*)** %attack3811
  %cast_op3812 = bitcast %Charmander %lhs_or_call3809 to %Charmander* 
  call void %attack3810( %Charmander* %cast_op3812, %Pikachu* %lhs_or_call3808 )
  %lhs_or_call3813 = load %Charmander** @c340
  %lhs_or_call3814 = load %Pikachu** @p338
  %attack3816 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable332, i32 0, i32 3
  %attack3815 = load void (%Pikachu*, %Charmander*)** %attack3816
  %cast_op3817 = bitcast %Pikachu %lhs_or_call3814 to %Pikachu* 
  call void %attack3815( %Pikachu* %cast_op3817, %Charmander* %lhs_or_call3813 )
  %lhs_or_call3818 = load %Pikachu** @p338
  %lhs_or_call3819 = load %Charmander** @c340
  %attack3821 = getelementptr %_Charmander_vtable* @_Charmander_vtable333, i32 0, i32 3
  %attack3820 = load void (%Charmander*, %Pikachu*)** %attack3821
  %cast_op3822 = bitcast %Charmander %lhs_or_call3819 to %Charmander* 
  call void %attack3820( %Charmander* %cast_op3822, %Pikachu* %lhs_or_call3818 )
  call void @print_string( i8* @_const_str342 )
  ret i32 0
}


define void @c340.init341 (){
__fresh676:
  %mem_ptr3771 = call i32* @oat_malloc ( i32 20 )
  %obj3772 = bitcast i32* %mem_ptr3771 to %Charmander* 
  %new_obj3773 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3772 )
  store %Charmander* %new_obj3773, %Charmander** @c340
  ret void
}


define void @p338.init339 (){
__fresh675:
  %mem_ptr3768 = call i32* @oat_malloc ( i32 20 )
  %obj3769 = bitcast i32* %mem_ptr3768 to %Pikachu* 
  %new_obj3770 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3769 )
  store %Pikachu* %new_obj3770, %Pikachu** @p338
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh674:
  %voice3766 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3767 = load i8** %voice3766
  call void @print_string( i8* %lhs_or_call3767 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3756){
__fresh673:
  %pi_slot3757 = alloca %Pikachu*
  store %Pikachu* %pi3756, %Pikachu** %pi_slot3757
  call void @print_string( i8* @_const_str337 )
  %voice3758 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3759 = load i8** %voice3758
  call void @print_string( i8* %lhs_or_call3759 )
  %speed3760 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3761 = load i32* %speed3760
  %lhs_or_call3762 = load %Pikachu** %pi_slot3757
  %gethit3764 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable332, i32 0, i32 2
  %gethit3763 = load void (%Pokemon*, i32)** %gethit3764
  %cast_op3765 = bitcast %Pikachu %lhs_or_call3762 to %Pokemon* 
  call void %gethit3763( %Pokemon* %cast_op3765, i32 %lhs_or_call3761 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh672:
  %lhs_or_call3746 = load %Charmander* %_this1
  %cast_op3747 = bitcast %Charmander %lhs_or_call3746 to %Pokemon* 
  %mem_ptr3748 = call i32* @oat_malloc ( i32 16 )
  %obj3749 = bitcast i32* %mem_ptr3748 to %Pokemon* 
  %new_obj3750 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3749, %Pokemon* %cast_op3747 )
  %_name3751 = getelementptr %Charmander* %_this1, i32 0, i32 1
  %lhs_or_call3752 = load %Charmander* %_this1
  %cast_op3753 = bitcast %Charmander %lhs_or_call3752 to i8* 
  store i8* %cast_op3753, i8** %_name3751
  %voice3754 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str336, i8** %voice3754
  %this_vtable3755 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %Charmander* %_this1, %_Charmander_vtable* %this_vtable3755
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh671:
  %voice3744 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3745 = load i8** %voice3744
  call void @print_string( i8* %lhs_or_call3745 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3734){
__fresh670:
  %ch_slot3735 = alloca %Charmander*
  store %Charmander* %ch3734, %Charmander** %ch_slot3735
  call void @print_string( i8* @_const_str335 )
  %voice3736 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3737 = load i8** %voice3736
  call void @print_string( i8* %lhs_or_call3737 )
  %speed3738 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3739 = load i32* %speed3738
  %lhs_or_call3740 = load %Charmander** %ch_slot3735
  %gethit3742 = getelementptr %_Charmander_vtable* @_Charmander_vtable333, i32 0, i32 2
  %gethit3741 = load void (%Pokemon*, i32)** %gethit3742
  %cast_op3743 = bitcast %Charmander %lhs_or_call3740 to %Pokemon* 
  call void %gethit3741( %Pokemon* %cast_op3743, i32 %lhs_or_call3739 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh669:
  %lhs_or_call3725 = load %Pikachu* %_this1
  %cast_op3726 = bitcast %Pikachu %lhs_or_call3725 to %Pokemon* 
  %mem_ptr3727 = call i32* @oat_malloc ( i32 16 )
  %obj3728 = bitcast i32* %mem_ptr3727 to %Pokemon* 
  %new_obj3729 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3728, %Pokemon* %cast_op3726 )
  %_name3730 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  %lhs_or_call3731 = load %Pikachu* %_this1
  %cast_op3732 = bitcast %Pikachu %lhs_or_call3731 to i8* 
  store i8* %cast_op3732, i8** %_name3730
  %this_vtable3733 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %Pikachu* %_this1, %_Pikachu_vtable* %this_vtable3733
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3716){
__fresh668:
  %s_slot3717 = alloca i32
  store i32 %s3716, i32* %s_slot3717
  %life3718 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3719 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3720 = load i32* %life3719
  %lhs_or_call3721 = load i32* %s_slot3717
  %bop3722 = sub i32 %lhs_or_call3720, %lhs_or_call3721
  store i32 %bop3722, i32* %life3718
  %voice3723 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3724 = load i8** %voice3723
  call void @print_string( i8* %lhs_or_call3724 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh667:
  %lhs_or_call3706 = load %Pokemon* %_this1
  %cast_op3707 = bitcast %Pokemon %lhs_or_call3706 to %Object* 
  %mem_ptr3708 = call i32* @oat_malloc ( i32 8 )
  %obj3709 = bitcast i32* %mem_ptr3708 to %Object* 
  %new_obj3710 = call %Object* @_Object_ctor ( %Object* %obj3709, %Object* %cast_op3707 )
  %_name3711 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  %lhs_or_call3712 = load %Pokemon* %_this1
  %cast_op3713 = bitcast %Pokemon %lhs_or_call3712 to i8* 
  store i8* %cast_op3713, i8** %_name3711
  %voice3714 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str334, i8** %voice3714
  %this_vtable3715 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %Pokemon* %_this1, %_Pokemon_vtable* %this_vtable3715
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh666:
  %_name3704 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3705 = load i8** %_name3704
  ret i8* %lhs_or_call3705
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh665:
  %_name3700 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3701 = load %Object* %_this1
  %cast_op3702 = bitcast %Object %lhs_or_call3701 to i8* 
  store i8* %cast_op3702, i8** %_name3700
  %this_vtable3703 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3703
  ret %Object* %_this1
}


