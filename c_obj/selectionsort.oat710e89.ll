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
@_const_str357.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str357 = alias bitcast([ 24 x i8 ]* @_const_str357.str. to i8*)@_const_str356.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str356 = alias bitcast([ 24 x i8 ]* @_const_str356.str. to i8*)@_Array_vtable355 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable353, i8* (%Object*)* @_Object_get_name, i32 (%Array*, i32)* @_Array_getElement, void (%Array*, i32, i32)* @_Array_setElement, void (%Array*, i32)* @_Array_addElement, i32 (%Array*)* @_Array_getLength}, align 4
@_ArrayItem_vtable354 = private constant %_ArrayItem_vtable {%_Object_vtable* @_Object_vtable353, i8* (%Object*)* @_Object_get_name, void (%ArrayItem*, i32)* @_ArrayItem_set}, align 4
@_Object_vtable353 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh777:
  ret void
}


define i32 @program (i32 %argc4009, { i32, [ 0 x i8* ] }* %argv4007){
__fresh764:
  %argc_slot4010 = alloca i32
  store i32 %argc4009, i32* %argc_slot4010
  %argv_slot4008 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv4007, { i32, [ 0 x i8* ] }** %argv_slot4008
  %mem_ptr4011 = call i32* @oat_malloc ( i32 16 )
  %obj4012 = bitcast i32* %mem_ptr4011 to %Array* 
  %new_obj4013 = call %Array* @_Array_ctor ( %Array* %obj4012 )
  %vdecl_slot4014 = alloca %Array*
  store %Array* %new_obj4013, %Array** %vdecl_slot4014
  %vdecl_slot4015 = alloca i32
  store i32 0, i32* %vdecl_slot4015
  %vdecl_slot4016 = alloca i32
  store i32 0, i32* %vdecl_slot4016
  %lhs_or_call4017 = load %Array** %vdecl_slot4014
  %addElement4019 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 4
  %addElement4018 = load void (%Array*, i32)** %addElement4019
  %cast_op4020 = bitcast %Array %lhs_or_call4017 to %Array* 
  call void %addElement4018( %Array* %cast_op4020, i32 79 )
  %lhs_or_call4021 = load %Array** %vdecl_slot4014
  %getLength4023 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 5
  %getLength4022 = load i32 (%Array*)** %getLength4023
  %cast_op4024 = bitcast %Array %lhs_or_call4021 to %Array* 
  %ret4025 = call i32 %getLength4022 ( %Array* %cast_op4024 )
  store i32 %ret4025, i32* %vdecl_slot4015
  %vdecl_slot4026 = alloca i32
  store i32 1, i32* %vdecl_slot4026
  br label %__cond748

__cond748:
  %lhs_or_call4027 = load i32* %vdecl_slot4026
  %lhs_or_call4028 = load i32* %vdecl_slot4015
  %bop4029 = icmp slt i32 %lhs_or_call4027, %lhs_or_call4028
  br i1 %bop4029, label %__body747, label %__post746

__fresh765:
  br label %__body747

__body747:
  %lhs_or_call4030 = load i32* %vdecl_slot4026
  %vdecl_slot4031 = alloca i32
  store i32 %lhs_or_call4030, i32* %vdecl_slot4031
  %lhs_or_call4032 = load i32* %vdecl_slot4026
  %bop4033 = add i32 %lhs_or_call4032, 1
  %vdecl_slot4034 = alloca i32
  store i32 %bop4033, i32* %vdecl_slot4034
  br label %__cond751

__cond751:
  %lhs_or_call4035 = load i32* %vdecl_slot4034
  %lhs_or_call4036 = load i32* %vdecl_slot4015
  %bop4037 = icmp sle i32 %lhs_or_call4035, %lhs_or_call4036
  br i1 %bop4037, label %__body750, label %__post749

__fresh766:
  br label %__body750

__body750:
  %lhs_or_call4038 = load i32* %vdecl_slot4034
  %lhs_or_call4039 = load %Array** %vdecl_slot4014
  %getElement4041 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 2
  %getElement4040 = load i32 (%Array*, i32)** %getElement4041
  %cast_op4042 = bitcast %Array %lhs_or_call4039 to %Array* 
  %ret4043 = call i32 %getElement4040 ( %Array* %cast_op4042, i32 %lhs_or_call4038 )
  %vdecl_slot4044 = alloca i32
  store i32 %ret4043, i32* %vdecl_slot4044
  %lhs_or_call4045 = load i32* %vdecl_slot4031
  %lhs_or_call4046 = load %Array** %vdecl_slot4014
  %getElement4048 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 2
  %getElement4047 = load i32 (%Array*, i32)** %getElement4048
  %cast_op4049 = bitcast %Array %lhs_or_call4046 to %Array* 
  %ret4050 = call i32 %getElement4047 ( %Array* %cast_op4049, i32 %lhs_or_call4045 )
  %vdecl_slot4051 = alloca i32
  store i32 %ret4050, i32* %vdecl_slot4051
  %lhs_or_call4052 = load i32* %vdecl_slot4044
  %lhs_or_call4053 = load i32* %vdecl_slot4051
  %bop4054 = icmp slt i32 %lhs_or_call4052, %lhs_or_call4053
  br i1 %bop4054, label %__then754, label %__else753

__fresh767:
  br label %__then754

__then754:
  %lhs_or_call4055 = load i32* %vdecl_slot4034
  store i32 %lhs_or_call4055, i32* %vdecl_slot4031
  br label %__merge752

__fresh768:
  br label %__else753

__else753:
  br label %__merge752

__merge752:
  %lhs_or_call4056 = load i32* %vdecl_slot4034
  %bop4057 = add i32 %lhs_or_call4056, 1
  store i32 %bop4057, i32* %vdecl_slot4034
  br label %__cond751

__fresh769:
  br label %__post749

__post749:
  %lhs_or_call4058 = load i32* %vdecl_slot4031
  %lhs_or_call4059 = load i32* %vdecl_slot4026
  %bop4060 = icmp ne i32 %lhs_or_call4058, %lhs_or_call4059
  br i1 %bop4060, label %__then757, label %__else756

__fresh770:
  br label %__then757

__then757:
  %lhs_or_call4061 = load i32* %vdecl_slot4031
  %lhs_or_call4062 = load %Array** %vdecl_slot4014
  %getElement4064 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 2
  %getElement4063 = load i32 (%Array*, i32)** %getElement4064
  %cast_op4065 = bitcast %Array %lhs_or_call4062 to %Array* 
  %ret4066 = call i32 %getElement4063 ( %Array* %cast_op4065, i32 %lhs_or_call4061 )
  %vdecl_slot4067 = alloca i32
  store i32 %ret4066, i32* %vdecl_slot4067
  %lhs_or_call4068 = load i32* %vdecl_slot4026
  %lhs_or_call4069 = load %Array** %vdecl_slot4014
  %getElement4071 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 2
  %getElement4070 = load i32 (%Array*, i32)** %getElement4071
  %cast_op4072 = bitcast %Array %lhs_or_call4069 to %Array* 
  %ret4073 = call i32 %getElement4070 ( %Array* %cast_op4072, i32 %lhs_or_call4068 )
  %vdecl_slot4074 = alloca i32
  store i32 %ret4073, i32* %vdecl_slot4074
  %lhs_or_call4075 = load i32* %vdecl_slot4067
  %lhs_or_call4076 = load i32* %vdecl_slot4026
  %lhs_or_call4077 = load %Array** %vdecl_slot4014
  %setElement4079 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 3
  %setElement4078 = load void (%Array*, i32, i32)** %setElement4079
  %cast_op4080 = bitcast %Array %lhs_or_call4077 to %Array* 
  call void %setElement4078( %Array* %cast_op4080, i32 %lhs_or_call4076, i32 %lhs_or_call4075 )
  %lhs_or_call4081 = load i32* %vdecl_slot4074
  %lhs_or_call4082 = load i32* %vdecl_slot4031
  %lhs_or_call4083 = load %Array** %vdecl_slot4014
  %setElement4085 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 3
  %setElement4084 = load void (%Array*, i32, i32)** %setElement4085
  %cast_op4086 = bitcast %Array %lhs_or_call4083 to %Array* 
  call void %setElement4084( %Array* %cast_op4086, i32 %lhs_or_call4082, i32 %lhs_or_call4081 )
  br label %__merge755

__fresh771:
  br label %__else756

__else756:
  br label %__merge755

__merge755:
  %lhs_or_call4087 = load i32* %vdecl_slot4026
  %bop4088 = add i32 %lhs_or_call4087, 1
  store i32 %bop4088, i32* %vdecl_slot4026
  br label %__cond748

__fresh772:
  br label %__post746

__post746:
  %vdecl_slot4089 = alloca i32
  store i32 1, i32* %vdecl_slot4089
  br label %__cond760

__cond760:
  %lhs_or_call4090 = load i32* %vdecl_slot4089
  %lhs_or_call4091 = load i32* %vdecl_slot4015
  %bop4092 = icmp slt i32 %lhs_or_call4090, %lhs_or_call4091
  br i1 %bop4092, label %__body759, label %__post758

__fresh773:
  br label %__body759

__body759:
  %lhs_or_call4093 = load i32* %vdecl_slot4089
  %lhs_or_call4094 = load %Array** %vdecl_slot4014
  %getElement4096 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 2
  %getElement4095 = load i32 (%Array*, i32)** %getElement4096
  %cast_op4097 = bitcast %Array %lhs_or_call4094 to %Array* 
  %ret4098 = call i32 %getElement4095 ( %Array* %cast_op4097, i32 %lhs_or_call4093 )
  %vdecl_slot4099 = alloca i32
  store i32 %ret4098, i32* %vdecl_slot4099
  %lhs_or_call4100 = load i32* %vdecl_slot4089
  %bop4101 = add i32 %lhs_or_call4100, 1
  %lhs_or_call4102 = load %Array** %vdecl_slot4014
  %getElement4104 = getelementptr %_Array_vtable* @_Array_vtable355, i32 0, i32 2
  %getElement4103 = load i32 (%Array*, i32)** %getElement4104
  %cast_op4105 = bitcast %Array %lhs_or_call4102 to %Array* 
  %ret4106 = call i32 %getElement4103 ( %Array* %cast_op4105, i32 %bop4101 )
  %vdecl_slot4107 = alloca i32
  store i32 %ret4106, i32* %vdecl_slot4107
  %lhs_or_call4108 = load i32* %vdecl_slot4099
  %lhs_or_call4109 = load i32* %vdecl_slot4107
  %bop4110 = icmp sgt i32 %lhs_or_call4108, %lhs_or_call4109
  br i1 %bop4110, label %__then763, label %__else762

__fresh774:
  br label %__then763

__then763:
  %lhs_or_call4111 = load i32* %vdecl_slot4016
  %bop4112 = add i32 %lhs_or_call4111, 1
  store i32 %bop4112, i32* %vdecl_slot4016
  br label %__merge761

__fresh775:
  br label %__else762

__else762:
  br label %__merge761

__merge761:
  %lhs_or_call4113 = load i32* %vdecl_slot4089
  %bop4114 = add i32 %lhs_or_call4113, 1
  store i32 %bop4114, i32* %vdecl_slot4089
  br label %__cond760

__fresh776:
  br label %__post758

__post758:
  %lhs_or_call4115 = load i32* %vdecl_slot4016
  ret i32 %lhs_or_call4115
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh745:
  %arrayLength4005 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call4006 = load i32* %arrayLength4005
  ret i32 %lhs_or_call4006
}


define void @_Array_addElement (%Array* %_this1, i32 %key3968){
__fresh736:
  %key_slot3969 = alloca i32
  store i32 %key3968, i32* %key_slot3969
  %arrayLength3970 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3971 = load i32* %arrayLength3970
  %bop3972 = icmp eq i32 %lhs_or_call3971, 0
  br i1 %bop3972, label %__then735, label %__else734

__fresh737:
  br label %__then735

__then735:
  %headItem3973 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3974 = load i32* %key_slot3969
  %mem_ptr3975 = call i32* @oat_malloc ( i32 16 )
  %obj3976 = bitcast i32* %mem_ptr3975 to %ArrayItem* 
  %new_obj3977 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3976, i32 %lhs_or_call3974 )
  store %ArrayItem* %new_obj3977, %ArrayItem** %headItem3973
  br label %__merge733

__fresh738:
  br label %__else734

__else734:
  %headItem3978 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3979 = load %ArrayItem** %headItem3978
  %ifnull_slot3980 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3979, %ArrayItem** %ifnull_slot3980
  %ifnull_guard3981 = icmp ne %ArrayItem* %lhs_or_call3979, null
  br i1 %ifnull_guard3981, label %__then732, label %__else731

__fresh739:
  br label %__then732

__then732:
  %vdecl_slot3982 = alloca i32
  store i32 1, i32* %vdecl_slot3982
  br label %__cond726

__cond726:
  %lhs_or_call3983 = load i32* %vdecl_slot3982
  %arrayLength3984 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3985 = load i32* %arrayLength3984
  %bop3986 = icmp ne i32 %lhs_or_call3983, %lhs_or_call3985
  br i1 %bop3986, label %__body725, label %__post724

__fresh740:
  br label %__body725

__body725:
  %lhs_or_call3987 = load %ArrayItem** %ifnull_slot3980
  %nextItem3988 = getelementptr %ArrayItem* %lhs_or_call3987, i32 0, i32 3
  %lhs_or_call3989 = load %ArrayItem** %nextItem3988
  %ifnull_slot3990 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3989, %ArrayItem** %ifnull_slot3990
  %ifnull_guard3991 = icmp ne %ArrayItem* %lhs_or_call3989, null
  br i1 %ifnull_guard3991, label %__then729, label %__else728

__fresh741:
  br label %__then729

__then729:
  %lhs_or_call3992 = load %ArrayItem** %ifnull_slot3990
  store %ArrayItem* %lhs_or_call3992, %ArrayItem** %ifnull_slot3980
  br label %__merge727

__fresh742:
  br label %__else728

__else728:
  br label %__merge727

__merge727:
  %lhs_or_call3993 = load i32* %vdecl_slot3982
  %bop3994 = add i32 %lhs_or_call3993, 1
  store i32 %bop3994, i32* %vdecl_slot3982
  br label %__cond726

__fresh743:
  br label %__post724

__post724:
  %lhs_or_call3995 = load %ArrayItem** %ifnull_slot3980
  %nextItem3996 = getelementptr %ArrayItem* %lhs_or_call3995, i32 0, i32 3
  %lhs_or_call3997 = load i32* %key_slot3969
  %mem_ptr3998 = call i32* @oat_malloc ( i32 16 )
  %obj3999 = bitcast i32* %mem_ptr3998 to %ArrayItem* 
  %new_obj4000 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3999, i32 %lhs_or_call3997 )
  store %ArrayItem* %new_obj4000, %ArrayItem** %nextItem3996
  br label %__merge730

__fresh744:
  br label %__else731

__else731:
  br label %__merge730

__merge730:
  br label %__merge733

__merge733:
  %arrayLength4001 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength4002 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call4003 = load i32* %arrayLength4002
  %bop4004 = add i32 %lhs_or_call4003, 1
  store i32 %bop4004, i32* %arrayLength4001
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3947, i32 %key3945){
__fresh717:
  %index_slot3948 = alloca i32
  store i32 %index3947, i32* %index_slot3948
  %key_slot3946 = alloca i32
  store i32 %key3945, i32* %key_slot3946
  %headItem3949 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3950 = load %ArrayItem** %headItem3949
  %ifnull_slot3951 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3950, %ArrayItem** %ifnull_slot3951
  %ifnull_guard3952 = icmp ne %ArrayItem* %lhs_or_call3950, null
  br i1 %ifnull_guard3952, label %__then716, label %__else715

__fresh718:
  br label %__then716

__then716:
  %vdecl_slot3953 = alloca i32
  store i32 1, i32* %vdecl_slot3953
  br label %__cond710

__cond710:
  %lhs_or_call3954 = load i32* %vdecl_slot3953
  %lhs_or_call3955 = load i32* %index_slot3948
  %bop3956 = icmp ne i32 %lhs_or_call3954, %lhs_or_call3955
  br i1 %bop3956, label %__body709, label %__post708

__fresh719:
  br label %__body709

__body709:
  %lhs_or_call3957 = load %ArrayItem** %ifnull_slot3951
  %nextItem3958 = getelementptr %ArrayItem* %lhs_or_call3957, i32 0, i32 3
  %lhs_or_call3959 = load %ArrayItem** %nextItem3958
  %ifnull_slot3960 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3959, %ArrayItem** %ifnull_slot3960
  %ifnull_guard3961 = icmp ne %ArrayItem* %lhs_or_call3959, null
  br i1 %ifnull_guard3961, label %__then713, label %__else712

__fresh720:
  br label %__then713

__then713:
  %lhs_or_call3962 = load %ArrayItem** %ifnull_slot3960
  store %ArrayItem* %lhs_or_call3962, %ArrayItem** %ifnull_slot3951
  br label %__merge711

__fresh721:
  br label %__else712

__else712:
  br label %__merge711

__merge711:
  %lhs_or_call3963 = load i32* %vdecl_slot3953
  %bop3964 = add i32 %lhs_or_call3963, 1
  store i32 %bop3964, i32* %vdecl_slot3953
  br label %__cond710

__fresh722:
  br label %__post708

__post708:
  %lhs_or_call3965 = load %ArrayItem** %ifnull_slot3951
  %keyValue3966 = getelementptr %ArrayItem* %lhs_or_call3965, i32 0, i32 2
  %lhs_or_call3967 = load i32* %key_slot3946
  store i32 %lhs_or_call3967, i32* %keyValue3966
  br label %__merge714

__fresh723:
  br label %__else715

__else715:
  call void @print_string( i8* @_const_str357 )
  call void @oat_abort( i32 -1 )
  br label %__merge714

__merge714:
  ret void
}


define i32 @_Array_getElement (%Array* %_this1, i32 %index3922){
__fresh701:
  %index_slot3923 = alloca i32
  store i32 %index3922, i32* %index_slot3923
  %vdecl_slot3924 = alloca i32
  store i32 0, i32* %vdecl_slot3924
  %headItem3925 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3926 = load %ArrayItem** %headItem3925
  %ifnull_slot3927 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3926, %ArrayItem** %ifnull_slot3927
  %ifnull_guard3928 = icmp ne %ArrayItem* %lhs_or_call3926, null
  br i1 %ifnull_guard3928, label %__then700, label %__else699

__fresh702:
  br label %__then700

__then700:
  %vdecl_slot3929 = alloca i32
  store i32 1, i32* %vdecl_slot3929
  br label %__cond694

__cond694:
  %lhs_or_call3930 = load i32* %vdecl_slot3929
  %lhs_or_call3931 = load i32* %index_slot3923
  %bop3932 = icmp ne i32 %lhs_or_call3930, %lhs_or_call3931
  br i1 %bop3932, label %__body693, label %__post692

__fresh703:
  br label %__body693

__body693:
  %lhs_or_call3933 = load %ArrayItem** %ifnull_slot3927
  %nextItem3934 = getelementptr %ArrayItem* %lhs_or_call3933, i32 0, i32 3
  %lhs_or_call3935 = load %ArrayItem** %nextItem3934
  %ifnull_slot3936 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3935, %ArrayItem** %ifnull_slot3936
  %ifnull_guard3937 = icmp ne %ArrayItem* %lhs_or_call3935, null
  br i1 %ifnull_guard3937, label %__then697, label %__else696

__fresh704:
  br label %__then697

__then697:
  %lhs_or_call3938 = load %ArrayItem** %ifnull_slot3936
  store %ArrayItem* %lhs_or_call3938, %ArrayItem** %ifnull_slot3927
  br label %__merge695

__fresh705:
  br label %__else696

__else696:
  br label %__merge695

__merge695:
  %lhs_or_call3939 = load i32* %vdecl_slot3929
  %bop3940 = add i32 %lhs_or_call3939, 1
  store i32 %bop3940, i32* %vdecl_slot3929
  br label %__cond694

__fresh706:
  br label %__post692

__post692:
  %lhs_or_call3941 = load %ArrayItem** %ifnull_slot3927
  %keyValue3942 = getelementptr %ArrayItem* %lhs_or_call3941, i32 0, i32 2
  %lhs_or_call3943 = load i32* %keyValue3942
  store i32 %lhs_or_call3943, i32* %vdecl_slot3924
  br label %__merge698

__fresh707:
  br label %__else699

__else699:
  call void @print_string( i8* @_const_str356 )
  call void @oat_abort( i32 -1 )
  br label %__merge698

__merge698:
  %lhs_or_call3944 = load i32* %vdecl_slot3924
  ret i32 %lhs_or_call3944
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh691:
  %lhs_or_call3913 = load %Array* %_this1
  %cast_op3914 = bitcast %Array %lhs_or_call3913 to %Object* 
  %mem_ptr3915 = call i32* @oat_malloc ( i32 8 )
  %obj3916 = bitcast i32* %mem_ptr3915 to %Object* 
  %new_obj3917 = call %Object* @_Object_ctor ( %Object* %obj3916, %Object* %cast_op3914 )
  %_name3918 = getelementptr %Array* %_this1, i32 0, i32 1
  %lhs_or_call3919 = load %Array* %_this1
  %cast_op3920 = bitcast %Array %lhs_or_call3919 to i8* 
  store i8* %cast_op3920, i8** %_name3918
  %this_vtable3921 = getelementptr %Array* %_this1, i32 0, i32 0
  store %Array* %_this1, %_Array_vtable* %this_vtable3921
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3909){
__fresh690:
  %x_slot3910 = alloca i32
  store i32 %x3909, i32* %x_slot3910
  %keyValue3911 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3912 = load i32* %x_slot3910
  store i32 %lhs_or_call3912, i32* %keyValue3911
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3898){
__fresh689:
  %x_slot3899 = alloca i32
  store i32 %x3898, i32* %x_slot3899
  %lhs_or_call3900 = load %ArrayItem* %_this1
  %cast_op3901 = bitcast %ArrayItem %lhs_or_call3900 to %Object* 
  %mem_ptr3902 = call i32* @oat_malloc ( i32 8 )
  %obj3903 = bitcast i32* %mem_ptr3902 to %Object* 
  %new_obj3904 = call %Object* @_Object_ctor ( %Object* %obj3903, %Object* %cast_op3901 )
  %_name3905 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  %lhs_or_call3906 = load %ArrayItem* %_this1
  %cast_op3907 = bitcast %ArrayItem %lhs_or_call3906 to i8* 
  store i8* %cast_op3907, i8** %_name3905
  %this_vtable3908 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %ArrayItem* %_this1, %_ArrayItem_vtable* %this_vtable3908
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh688:
  %_name3896 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3897 = load i8** %_name3896
  ret i8* %lhs_or_call3897
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh687:
  %_name3892 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3893 = load %Object* %_this1
  %cast_op3894 = bitcast %Object %lhs_or_call3893 to i8* 
  store i8* %cast_op3894, i8** %_name3892
  %this_vtable3895 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3895
  ret %Object* %_this1
}


