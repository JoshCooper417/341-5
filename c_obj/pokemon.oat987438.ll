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
@_const_str608.str. = private unnamed_addr constant [ 2 x i8 ] c "6\00", align 4
@_const_str608 = alias bitcast([ 2 x i8 ]* @_const_str608.str. to i8*)@c606 = global %Charmander* zeroinitializer, align 4		; initialized by @c606.init607
@p604 = global %Pikachu* zeroinitializer, align 4		; initialized by @p604.init605
@_const_str603.str. = private unnamed_addr constant [ 2 x i8 ] c "5\00", align 4
@_const_str603 = alias bitcast([ 2 x i8 ]* @_const_str603.str. to i8*)@_const_str602.str. = private unnamed_addr constant [ 2 x i8 ] c "4\00", align 4
@_const_str602 = alias bitcast([ 2 x i8 ]* @_const_str602.str. to i8*)@_const_str601.str. = private unnamed_addr constant [ 11 x i8 ] c "Charmander\00", align 4
@_const_str601 = alias bitcast([ 11 x i8 ]* @_const_str601.str. to i8*)@_const_str600.str. = private unnamed_addr constant [ 2 x i8 ] c "3\00", align 4
@_const_str600 = alias bitcast([ 2 x i8 ]* @_const_str600.str. to i8*)@_const_str598.str. = private unnamed_addr constant [ 2 x i8 ] c "2\00", align 4
@_const_str598 = alias bitcast([ 2 x i8 ]* @_const_str598.str. to i8*)@_const_str599.str. = private unnamed_addr constant [ 8 x i8 ] c "Pikachu\00", align 4
@_const_str599 = alias bitcast([ 8 x i8 ]* @_const_str599.str. to i8*)@_const_str597.str. = private unnamed_addr constant [ 2 x i8 ] c "9\00", align 4
@_const_str597 = alias bitcast([ 2 x i8 ]* @_const_str597.str. to i8*)@_const_str596.str. = private unnamed_addr constant [ 8 x i8 ] c "Pokemon\00", align 4
@_const_str596 = alias bitcast([ 8 x i8 ]* @_const_str596.str. to i8*)@_const_str595.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str595 = alias bitcast([ 7 x i8 ]* @_const_str595.str. to i8*)@_Charmander_vtable594 = private constant %_Charmander_vtable {%_Pokemon_vtable* @_Pokemon_vtable592, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Charmander*, %Pikachu*)* @_Charmander_attack, void (%Charmander*)* @_Charmander_noise}, align 4
@_Pikachu_vtable593 = private constant %_Pikachu_vtable {%_Pokemon_vtable* @_Pokemon_vtable592, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Pikachu*, %Charmander*)* @_Pikachu_attack, void (%Pikachu*)* @_Pikachu_noise}, align 4
@_Pokemon_vtable592 = private constant %_Pokemon_vtable {%_Object_vtable* @_Object_vtable591, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit}, align 4
@_Object_vtable591 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1169:
  call void @p604.init605(  )
  call void @c606.init607(  )
  ret void
}


define i32 @program (i32 %argc3740, { i32, [ 0 x i8* ] }* %argv3738){
__fresh1168:
  %argc_slot3741 = alloca i32
  store i32 %argc3740, i32* %argc_slot3741
  %argv_slot3739 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3738, { i32, [ 0 x i8* ] }** %argv_slot3739
  %lhs_or_call3742 = load %Pikachu** @p604
  %lhs_or_call3743 = load %Charmander** @c606
  %vtable_ptr3744 = getelementptr %Charmander* %lhs_or_call3743, i32 0
  %vtable3745 = load %_Charmander_vtable** %vtable_ptr3744
  %attack3747 = getelementptr %_Charmander_vtable* %vtable3745, i32 0, i32 3
  %attack3746 = load void (%Charmander*, %Pikachu*)** %attack3747
  %cast_op3748 = bitcast %Charmander %lhs_or_call3743 to %Charmander* 
  call void %attack3746( %Charmander* %cast_op3748, %Pikachu* %lhs_or_call3742 )
  %lhs_or_call3749 = load %Charmander** @c606
  %lhs_or_call3750 = load %Pikachu** @p604
  %vtable_ptr3751 = getelementptr %Pikachu* %lhs_or_call3750, i32 0
  %vtable3752 = load %_Pikachu_vtable** %vtable_ptr3751
  %attack3754 = getelementptr %_Pikachu_vtable* %vtable3752, i32 0, i32 3
  %attack3753 = load void (%Pikachu*, %Charmander*)** %attack3754
  %cast_op3755 = bitcast %Pikachu %lhs_or_call3750 to %Pikachu* 
  call void %attack3753( %Pikachu* %cast_op3755, %Charmander* %lhs_or_call3749 )
  %lhs_or_call3756 = load %Pikachu** @p604
  %lhs_or_call3757 = load %Charmander** @c606
  %vtable_ptr3758 = getelementptr %Charmander* %lhs_or_call3757, i32 0
  %vtable3759 = load %_Charmander_vtable** %vtable_ptr3758
  %attack3761 = getelementptr %_Charmander_vtable* %vtable3759, i32 0, i32 3
  %attack3760 = load void (%Charmander*, %Pikachu*)** %attack3761
  %cast_op3762 = bitcast %Charmander %lhs_or_call3757 to %Charmander* 
  call void %attack3760( %Charmander* %cast_op3762, %Pikachu* %lhs_or_call3756 )
  %lhs_or_call3763 = load %Charmander** @c606
  %lhs_or_call3764 = load %Pikachu** @p604
  %vtable_ptr3765 = getelementptr %Pikachu* %lhs_or_call3764, i32 0
  %vtable3766 = load %_Pikachu_vtable** %vtable_ptr3765
  %attack3768 = getelementptr %_Pikachu_vtable* %vtable3766, i32 0, i32 3
  %attack3767 = load void (%Pikachu*, %Charmander*)** %attack3768
  %cast_op3769 = bitcast %Pikachu %lhs_or_call3764 to %Pikachu* 
  call void %attack3767( %Pikachu* %cast_op3769, %Charmander* %lhs_or_call3763 )
  %lhs_or_call3770 = load %Pikachu** @p604
  %lhs_or_call3771 = load %Charmander** @c606
  %vtable_ptr3772 = getelementptr %Charmander* %lhs_or_call3771, i32 0
  %vtable3773 = load %_Charmander_vtable** %vtable_ptr3772
  %attack3775 = getelementptr %_Charmander_vtable* %vtable3773, i32 0, i32 3
  %attack3774 = load void (%Charmander*, %Pikachu*)** %attack3775
  %cast_op3776 = bitcast %Charmander %lhs_or_call3771 to %Charmander* 
  call void %attack3774( %Charmander* %cast_op3776, %Pikachu* %lhs_or_call3770 )
  %lhs_or_call3777 = load %Charmander** @c606
  %lhs_or_call3778 = load %Pikachu** @p604
  %vtable_ptr3779 = getelementptr %Pikachu* %lhs_or_call3778, i32 0
  %vtable3780 = load %_Pikachu_vtable** %vtable_ptr3779
  %attack3782 = getelementptr %_Pikachu_vtable* %vtable3780, i32 0, i32 3
  %attack3781 = load void (%Pikachu*, %Charmander*)** %attack3782
  %cast_op3783 = bitcast %Pikachu %lhs_or_call3778 to %Pikachu* 
  call void %attack3781( %Pikachu* %cast_op3783, %Charmander* %lhs_or_call3777 )
  %lhs_or_call3784 = load %Pikachu** @p604
  %lhs_or_call3785 = load %Charmander** @c606
  %vtable_ptr3786 = getelementptr %Charmander* %lhs_or_call3785, i32 0
  %vtable3787 = load %_Charmander_vtable** %vtable_ptr3786
  %attack3789 = getelementptr %_Charmander_vtable* %vtable3787, i32 0, i32 3
  %attack3788 = load void (%Charmander*, %Pikachu*)** %attack3789
  %cast_op3790 = bitcast %Charmander %lhs_or_call3785 to %Charmander* 
  call void %attack3788( %Charmander* %cast_op3790, %Pikachu* %lhs_or_call3784 )
  %lhs_or_call3791 = load %Charmander** @c606
  %lhs_or_call3792 = load %Pikachu** @p604
  %vtable_ptr3793 = getelementptr %Pikachu* %lhs_or_call3792, i32 0
  %vtable3794 = load %_Pikachu_vtable** %vtable_ptr3793
  %attack3796 = getelementptr %_Pikachu_vtable* %vtable3794, i32 0, i32 3
  %attack3795 = load void (%Pikachu*, %Charmander*)** %attack3796
  %cast_op3797 = bitcast %Pikachu %lhs_or_call3792 to %Pikachu* 
  call void %attack3795( %Pikachu* %cast_op3797, %Charmander* %lhs_or_call3791 )
  %lhs_or_call3798 = load %Pikachu** @p604
  %lhs_or_call3799 = load %Charmander** @c606
  %vtable_ptr3800 = getelementptr %Charmander* %lhs_or_call3799, i32 0
  %vtable3801 = load %_Charmander_vtable** %vtable_ptr3800
  %attack3803 = getelementptr %_Charmander_vtable* %vtable3801, i32 0, i32 3
  %attack3802 = load void (%Charmander*, %Pikachu*)** %attack3803
  %cast_op3804 = bitcast %Charmander %lhs_or_call3799 to %Charmander* 
  call void %attack3802( %Charmander* %cast_op3804, %Pikachu* %lhs_or_call3798 )
  call void @print_string( i8* @_const_str608 )
  ret i32 0
}


define void @c606.init607 (){
__fresh1167:
  %mem_ptr3735 = call i32* @oat_malloc ( i32 20 )
  %obj3736 = bitcast i32* %mem_ptr3735 to %Charmander* 
  %new_obj3737 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3736 )
  store %Charmander* %new_obj3737, %Charmander** @c606
  ret void
}


define void @p604.init605 (){
__fresh1166:
  %mem_ptr3732 = call i32* @oat_malloc ( i32 20 )
  %obj3733 = bitcast i32* %mem_ptr3732 to %Pikachu* 
  %new_obj3734 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3733 )
  store %Pikachu* %new_obj3734, %Pikachu** @p604
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh1165:
  %voice3730 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3731 = load i8** %voice3730
  call void @print_string( i8* %lhs_or_call3731 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3718){
__fresh1164:
  %pi_slot3719 = alloca %Pikachu*
  store %Pikachu* %pi3718, %Pikachu** %pi_slot3719
  call void @print_string( i8* @_const_str603 )
  %voice3720 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3721 = load i8** %voice3720
  call void @print_string( i8* %lhs_or_call3721 )
  %speed3722 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3723 = load i32* %speed3722
  %lhs_or_call3724 = load %Pikachu** %pi_slot3719
  %vtable_ptr3725 = getelementptr %Pikachu* %lhs_or_call3724, i32 0
  %vtable3726 = load %_Pikachu_vtable** %vtable_ptr3725
  %gethit3728 = getelementptr %_Pikachu_vtable* %vtable3726, i32 0, i32 2
  %gethit3727 = load void (%Pokemon*, i32)** %gethit3728
  %cast_op3729 = bitcast %Pikachu %lhs_or_call3724 to %Pokemon* 
  call void %gethit3727( %Pokemon* %cast_op3729, i32 %lhs_or_call3723 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh1163:
  %mem_ptr3712 = call i32* @oat_malloc ( i32 16 )
  %obj3713 = bitcast i32* %mem_ptr3712 to %Pokemon* 
  %new_obj3714 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3713 )
  %_this1 = bitcast %Pokemon* %new_obj3714 to %Charmander 
  %_name3715 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str601, i8** %_name3715
  %voice3716 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str602, i8** %voice3716
  %this_vtable3717 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable594, %_Charmander_vtable** %this_vtable3717
  %speed3711 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3711
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh1162:
  %voice3709 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3710 = load i8** %voice3709
  call void @print_string( i8* %lhs_or_call3710 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3697){
__fresh1161:
  %ch_slot3698 = alloca %Charmander*
  store %Charmander* %ch3697, %Charmander** %ch_slot3698
  call void @print_string( i8* @_const_str600 )
  %voice3699 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3700 = load i8** %voice3699
  call void @print_string( i8* %lhs_or_call3700 )
  %speed3701 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3702 = load i32* %speed3701
  %lhs_or_call3703 = load %Charmander** %ch_slot3698
  %vtable_ptr3704 = getelementptr %Charmander* %lhs_or_call3703, i32 0
  %vtable3705 = load %_Charmander_vtable** %vtable_ptr3704
  %gethit3707 = getelementptr %_Charmander_vtable* %vtable3705, i32 0, i32 2
  %gethit3706 = load void (%Pokemon*, i32)** %gethit3707
  %cast_op3708 = bitcast %Charmander %lhs_or_call3703 to %Pokemon* 
  call void %gethit3706( %Pokemon* %cast_op3708, i32 %lhs_or_call3702 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh1160:
  %mem_ptr3692 = call i32* @oat_malloc ( i32 16 )
  %obj3693 = bitcast i32* %mem_ptr3692 to %Pokemon* 
  %new_obj3694 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3693 )
  %_this1 = bitcast %Pokemon* %new_obj3694 to %Pikachu 
  %_name3695 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str599, i8** %_name3695
  %this_vtable3696 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable593, %_Pikachu_vtable** %this_vtable3696
  %speed3690 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed3690
  %voice3691 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str598, i8** %voice3691
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3681){
__fresh1159:
  %s_slot3682 = alloca i32
  store i32 %s3681, i32* %s_slot3682
  %life3683 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3684 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3685 = load i32* %life3684
  %lhs_or_call3686 = load i32* %s_slot3682
  %bop3687 = sub i32 %lhs_or_call3685, %lhs_or_call3686
  store i32 %bop3687, i32* %life3683
  %voice3688 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3689 = load i8** %voice3688
  call void @print_string( i8* %lhs_or_call3689 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh1158:
  %mem_ptr3675 = call i32* @oat_malloc ( i32 8 )
  %obj3676 = bitcast i32* %mem_ptr3675 to %Object* 
  %new_obj3677 = call %Object* @_Object_ctor ( %Object* %obj3676 )
  %_this1 = bitcast %Object* %new_obj3677 to %Pokemon 
  %_name3678 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str596, i8** %_name3678
  %voice3679 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str597, i8** %voice3679
  %this_vtable3680 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable592, %_Pokemon_vtable** %this_vtable3680
  %life3674 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life3674
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1157:
  %_name3672 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3673 = load i8** %_name3672
  ret i8* %lhs_or_call3673
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1156:
  %_name3670 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str595, i8** %_name3670
  %this_vtable3671 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable591, %_Object_vtable** %this_vtable3671
  ret %Object* %_this1
}


