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
@_const_str633.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str633 = alias bitcast([ 24 x i8 ]* @_const_str633.str. to i8*)@_const_str632.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str632 = alias bitcast([ 24 x i8 ]* @_const_str632.str. to i8*)@_const_str631.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str631 = alias bitcast([ 6 x i8 ]* @_const_str631.str. to i8*)@_const_str630.str. = private unnamed_addr constant [ 10 x i8 ] c "ArrayItem\00", align 4
@_const_str630 = alias bitcast([ 10 x i8 ]* @_const_str630.str. to i8*)@_const_str629.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str629 = alias bitcast([ 7 x i8 ]* @_const_str629.str. to i8*)@_Array_vtable628 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable626, i8* (%Object*)* @_Object_get_name, i32 (%Array*, i32)* @_Array_getElement, void (%Array*, i32, i32)* @_Array_setElement, void (%Array*, i32)* @_Array_addElement, i32 (%Array*)* @_Array_getLength}, align 4
@_ArrayItem_vtable627 = private constant %_ArrayItem_vtable {%_Object_vtable* @_Object_vtable626, i8* (%Object*)* @_Object_get_name, void (%ArrayItem*, i32)* @_ArrayItem_set}, align 4
@_Object_vtable626 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1196:
  ret void
}


define i32 @program (i32 %argc3990, { i32, [ 0 x i8* ] }* %argv3988){
__fresh1183:
  %argc_slot3991 = alloca i32
  store i32 %argc3990, i32* %argc_slot3991
  %argv_slot3989 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3988, { i32, [ 0 x i8* ] }** %argv_slot3989
  %mem_ptr3992 = call i32* @oat_malloc ( i32 16 )
  %obj3993 = bitcast i32* %mem_ptr3992 to %Array* 
  %new_obj3994 = call %Array* @_Array_ctor ( %Array* %obj3993 )
  %vdecl_slot3995 = alloca %Array*
  store %Array* %new_obj3994, %Array** %vdecl_slot3995
  %vdecl_slot3996 = alloca i32
  store i32 0, i32* %vdecl_slot3996
  %vdecl_slot3997 = alloca i32
  store i32 0, i32* %vdecl_slot3997
  %lhs_or_call3998 = load %Array** %vdecl_slot3995
  %vtable_ptr3999 = getelementptr %Array* %lhs_or_call3998, i32 0
  %vtable4000 = load %_Array_vtable** %vtable_ptr3999
  %addElement4002 = getelementptr %_Array_vtable* %vtable4000, i32 0, i32 4
  %addElement4001 = load void (%Array*, i32)** %addElement4002
  %cast_op4003 = bitcast %Array %lhs_or_call3998 to %Array* 
  call void %addElement4001( %Array* %cast_op4003, i32 79 )
  %lhs_or_call4004 = load %Array** %vdecl_slot3995
  %vtable_ptr4005 = getelementptr %Array* %lhs_or_call4004, i32 0
  %vtable4006 = load %_Array_vtable** %vtable_ptr4005
  %getLength4008 = getelementptr %_Array_vtable* %vtable4006, i32 0, i32 5
  %getLength4007 = load i32 (%Array*)** %getLength4008
  %cast_op4009 = bitcast %Array %lhs_or_call4004 to %Array* 
  %ret4010 = call i32 %getLength4007 ( %Array* %cast_op4009 )
  store i32 %ret4010, i32* %vdecl_slot3996
  %vdecl_slot4011 = alloca i32
  store i32 1, i32* %vdecl_slot4011
  br label %__cond1167

__cond1167:
  %lhs_or_call4012 = load i32* %vdecl_slot4011
  %lhs_or_call4013 = load i32* %vdecl_slot3996
  %bop4014 = icmp slt i32 %lhs_or_call4012, %lhs_or_call4013
  br i1 %bop4014, label %__body1166, label %__post1165

__fresh1184:
  br label %__body1166

__body1166:
  %lhs_or_call4015 = load i32* %vdecl_slot4011
  %vdecl_slot4016 = alloca i32
  store i32 %lhs_or_call4015, i32* %vdecl_slot4016
  %lhs_or_call4017 = load i32* %vdecl_slot4011
  %bop4018 = add i32 %lhs_or_call4017, 1
  %vdecl_slot4019 = alloca i32
  store i32 %bop4018, i32* %vdecl_slot4019
  br label %__cond1170

__cond1170:
  %lhs_or_call4020 = load i32* %vdecl_slot4019
  %lhs_or_call4021 = load i32* %vdecl_slot3996
  %bop4022 = icmp sle i32 %lhs_or_call4020, %lhs_or_call4021
  br i1 %bop4022, label %__body1169, label %__post1168

__fresh1185:
  br label %__body1169

__body1169:
  %lhs_or_call4023 = load i32* %vdecl_slot4019
  %lhs_or_call4024 = load %Array** %vdecl_slot3995
  %vtable_ptr4025 = getelementptr %Array* %lhs_or_call4024, i32 0
  %vtable4026 = load %_Array_vtable** %vtable_ptr4025
  %getElement4028 = getelementptr %_Array_vtable* %vtable4026, i32 0, i32 2
  %getElement4027 = load i32 (%Array*, i32)** %getElement4028
  %cast_op4029 = bitcast %Array %lhs_or_call4024 to %Array* 
  %ret4030 = call i32 %getElement4027 ( %Array* %cast_op4029, i32 %lhs_or_call4023 )
  %vdecl_slot4031 = alloca i32
  store i32 %ret4030, i32* %vdecl_slot4031
  %lhs_or_call4032 = load i32* %vdecl_slot4016
  %lhs_or_call4033 = load %Array** %vdecl_slot3995
  %vtable_ptr4034 = getelementptr %Array* %lhs_or_call4033, i32 0
  %vtable4035 = load %_Array_vtable** %vtable_ptr4034
  %getElement4037 = getelementptr %_Array_vtable* %vtable4035, i32 0, i32 2
  %getElement4036 = load i32 (%Array*, i32)** %getElement4037
  %cast_op4038 = bitcast %Array %lhs_or_call4033 to %Array* 
  %ret4039 = call i32 %getElement4036 ( %Array* %cast_op4038, i32 %lhs_or_call4032 )
  %vdecl_slot4040 = alloca i32
  store i32 %ret4039, i32* %vdecl_slot4040
  %lhs_or_call4041 = load i32* %vdecl_slot4031
  %lhs_or_call4042 = load i32* %vdecl_slot4040
  %bop4043 = icmp slt i32 %lhs_or_call4041, %lhs_or_call4042
  br i1 %bop4043, label %__then1173, label %__else1172

__fresh1186:
  br label %__then1173

__then1173:
  %lhs_or_call4044 = load i32* %vdecl_slot4019
  store i32 %lhs_or_call4044, i32* %vdecl_slot4016
  br label %__merge1171

__fresh1187:
  br label %__else1172

__else1172:
  br label %__merge1171

__merge1171:
  %lhs_or_call4045 = load i32* %vdecl_slot4019
  %bop4046 = add i32 %lhs_or_call4045, 1
  store i32 %bop4046, i32* %vdecl_slot4019
  br label %__cond1170

__fresh1188:
  br label %__post1168

__post1168:
  %lhs_or_call4047 = load i32* %vdecl_slot4016
  %lhs_or_call4048 = load i32* %vdecl_slot4011
  %bop4049 = icmp ne i32 %lhs_or_call4047, %lhs_or_call4048
  br i1 %bop4049, label %__then1176, label %__else1175

__fresh1189:
  br label %__then1176

__then1176:
  %lhs_or_call4050 = load i32* %vdecl_slot4016
  %lhs_or_call4051 = load %Array** %vdecl_slot3995
  %vtable_ptr4052 = getelementptr %Array* %lhs_or_call4051, i32 0
  %vtable4053 = load %_Array_vtable** %vtable_ptr4052
  %getElement4055 = getelementptr %_Array_vtable* %vtable4053, i32 0, i32 2
  %getElement4054 = load i32 (%Array*, i32)** %getElement4055
  %cast_op4056 = bitcast %Array %lhs_or_call4051 to %Array* 
  %ret4057 = call i32 %getElement4054 ( %Array* %cast_op4056, i32 %lhs_or_call4050 )
  %vdecl_slot4058 = alloca i32
  store i32 %ret4057, i32* %vdecl_slot4058
  %lhs_or_call4059 = load i32* %vdecl_slot4011
  %lhs_or_call4060 = load %Array** %vdecl_slot3995
  %vtable_ptr4061 = getelementptr %Array* %lhs_or_call4060, i32 0
  %vtable4062 = load %_Array_vtable** %vtable_ptr4061
  %getElement4064 = getelementptr %_Array_vtable* %vtable4062, i32 0, i32 2
  %getElement4063 = load i32 (%Array*, i32)** %getElement4064
  %cast_op4065 = bitcast %Array %lhs_or_call4060 to %Array* 
  %ret4066 = call i32 %getElement4063 ( %Array* %cast_op4065, i32 %lhs_or_call4059 )
  %vdecl_slot4067 = alloca i32
  store i32 %ret4066, i32* %vdecl_slot4067
  %lhs_or_call4068 = load i32* %vdecl_slot4058
  %lhs_or_call4069 = load i32* %vdecl_slot4011
  %lhs_or_call4070 = load %Array** %vdecl_slot3995
  %vtable_ptr4071 = getelementptr %Array* %lhs_or_call4070, i32 0
  %vtable4072 = load %_Array_vtable** %vtable_ptr4071
  %setElement4074 = getelementptr %_Array_vtable* %vtable4072, i32 0, i32 3
  %setElement4073 = load void (%Array*, i32, i32)** %setElement4074
  %cast_op4075 = bitcast %Array %lhs_or_call4070 to %Array* 
  call void %setElement4073( %Array* %cast_op4075, i32 %lhs_or_call4069, i32 %lhs_or_call4068 )
  %lhs_or_call4076 = load i32* %vdecl_slot4067
  %lhs_or_call4077 = load i32* %vdecl_slot4016
  %lhs_or_call4078 = load %Array** %vdecl_slot3995
  %vtable_ptr4079 = getelementptr %Array* %lhs_or_call4078, i32 0
  %vtable4080 = load %_Array_vtable** %vtable_ptr4079
  %setElement4082 = getelementptr %_Array_vtable* %vtable4080, i32 0, i32 3
  %setElement4081 = load void (%Array*, i32, i32)** %setElement4082
  %cast_op4083 = bitcast %Array %lhs_or_call4078 to %Array* 
  call void %setElement4081( %Array* %cast_op4083, i32 %lhs_or_call4077, i32 %lhs_or_call4076 )
  br label %__merge1174

__fresh1190:
  br label %__else1175

__else1175:
  br label %__merge1174

__merge1174:
  %lhs_or_call4084 = load i32* %vdecl_slot4011
  %bop4085 = add i32 %lhs_or_call4084, 1
  store i32 %bop4085, i32* %vdecl_slot4011
  br label %__cond1167

__fresh1191:
  br label %__post1165

__post1165:
  %vdecl_slot4086 = alloca i32
  store i32 1, i32* %vdecl_slot4086
  br label %__cond1179

__cond1179:
  %lhs_or_call4087 = load i32* %vdecl_slot4086
  %lhs_or_call4088 = load i32* %vdecl_slot3996
  %bop4089 = icmp slt i32 %lhs_or_call4087, %lhs_or_call4088
  br i1 %bop4089, label %__body1178, label %__post1177

__fresh1192:
  br label %__body1178

__body1178:
  %lhs_or_call4090 = load i32* %vdecl_slot4086
  %lhs_or_call4091 = load %Array** %vdecl_slot3995
  %vtable_ptr4092 = getelementptr %Array* %lhs_or_call4091, i32 0
  %vtable4093 = load %_Array_vtable** %vtable_ptr4092
  %getElement4095 = getelementptr %_Array_vtable* %vtable4093, i32 0, i32 2
  %getElement4094 = load i32 (%Array*, i32)** %getElement4095
  %cast_op4096 = bitcast %Array %lhs_or_call4091 to %Array* 
  %ret4097 = call i32 %getElement4094 ( %Array* %cast_op4096, i32 %lhs_or_call4090 )
  %vdecl_slot4098 = alloca i32
  store i32 %ret4097, i32* %vdecl_slot4098
  %lhs_or_call4099 = load i32* %vdecl_slot4086
  %bop4100 = add i32 %lhs_or_call4099, 1
  %lhs_or_call4101 = load %Array** %vdecl_slot3995
  %vtable_ptr4102 = getelementptr %Array* %lhs_or_call4101, i32 0
  %vtable4103 = load %_Array_vtable** %vtable_ptr4102
  %getElement4105 = getelementptr %_Array_vtable* %vtable4103, i32 0, i32 2
  %getElement4104 = load i32 (%Array*, i32)** %getElement4105
  %cast_op4106 = bitcast %Array %lhs_or_call4101 to %Array* 
  %ret4107 = call i32 %getElement4104 ( %Array* %cast_op4106, i32 %bop4100 )
  %vdecl_slot4108 = alloca i32
  store i32 %ret4107, i32* %vdecl_slot4108
  %lhs_or_call4109 = load i32* %vdecl_slot4098
  %lhs_or_call4110 = load i32* %vdecl_slot4108
  %bop4111 = icmp sgt i32 %lhs_or_call4109, %lhs_or_call4110
  br i1 %bop4111, label %__then1182, label %__else1181

__fresh1193:
  br label %__then1182

__then1182:
  %lhs_or_call4112 = load i32* %vdecl_slot3997
  %bop4113 = add i32 %lhs_or_call4112, 1
  store i32 %bop4113, i32* %vdecl_slot3997
  br label %__merge1180

__fresh1194:
  br label %__else1181

__else1181:
  br label %__merge1180

__merge1180:
  %lhs_or_call4114 = load i32* %vdecl_slot4086
  %bop4115 = add i32 %lhs_or_call4114, 1
  store i32 %bop4115, i32* %vdecl_slot4086
  br label %__cond1179

__fresh1195:
  br label %__post1177

__post1177:
  %lhs_or_call4116 = load i32* %vdecl_slot3997
  ret i32 %lhs_or_call4116
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh1164:
  %arrayLength3986 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3987 = load i32* %arrayLength3986
  ret i32 %lhs_or_call3987
}


define void @_Array_addElement (%Array* %_this1, i32 %key3949){
__fresh1155:
  %key_slot3950 = alloca i32
  store i32 %key3949, i32* %key_slot3950
  %arrayLength3951 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3952 = load i32* %arrayLength3951
  %bop3953 = icmp eq i32 %lhs_or_call3952, 0
  br i1 %bop3953, label %__then1154, label %__else1153

__fresh1156:
  br label %__then1154

__then1154:
  %headItem3954 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3955 = load i32* %key_slot3950
  %mem_ptr3956 = call i32* @oat_malloc ( i32 16 )
  %obj3957 = bitcast i32* %mem_ptr3956 to %ArrayItem* 
  %new_obj3958 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3957, i32 %lhs_or_call3955 )
  store %ArrayItem* %new_obj3958, %ArrayItem** %headItem3954
  br label %__merge1152

__fresh1157:
  br label %__else1153

__else1153:
  %headItem3959 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3960 = load %ArrayItem** %headItem3959
  %ifnull_slot3961 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3960, %ArrayItem** %ifnull_slot3961
  %ifnull_guard3962 = icmp ne %ArrayItem* %lhs_or_call3960, null
  br i1 %ifnull_guard3962, label %__then1151, label %__else1150

__fresh1158:
  br label %__then1151

__then1151:
  %vdecl_slot3963 = alloca i32
  store i32 1, i32* %vdecl_slot3963
  br label %__cond1145

__cond1145:
  %lhs_or_call3964 = load i32* %vdecl_slot3963
  %arrayLength3965 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3966 = load i32* %arrayLength3965
  %bop3967 = icmp ne i32 %lhs_or_call3964, %lhs_or_call3966
  br i1 %bop3967, label %__body1144, label %__post1143

__fresh1159:
  br label %__body1144

__body1144:
  %lhs_or_call3968 = load %ArrayItem** %ifnull_slot3961
  %nextItem3969 = getelementptr %ArrayItem* %lhs_or_call3968, i32 0, i32 3
  %lhs_or_call3970 = load %ArrayItem** %nextItem3969
  %ifnull_slot3971 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3970, %ArrayItem** %ifnull_slot3971
  %ifnull_guard3972 = icmp ne %ArrayItem* %lhs_or_call3970, null
  br i1 %ifnull_guard3972, label %__then1148, label %__else1147

__fresh1160:
  br label %__then1148

__then1148:
  %lhs_or_call3973 = load %ArrayItem** %ifnull_slot3971
  store %ArrayItem* %lhs_or_call3973, %ArrayItem** %ifnull_slot3961
  br label %__merge1146

__fresh1161:
  br label %__else1147

__else1147:
  br label %__merge1146

__merge1146:
  %lhs_or_call3974 = load i32* %vdecl_slot3963
  %bop3975 = add i32 %lhs_or_call3974, 1
  store i32 %bop3975, i32* %vdecl_slot3963
  br label %__cond1145

__fresh1162:
  br label %__post1143

__post1143:
  %lhs_or_call3976 = load %ArrayItem** %ifnull_slot3961
  %nextItem3977 = getelementptr %ArrayItem* %lhs_or_call3976, i32 0, i32 3
  %lhs_or_call3978 = load i32* %key_slot3950
  %mem_ptr3979 = call i32* @oat_malloc ( i32 16 )
  %obj3980 = bitcast i32* %mem_ptr3979 to %ArrayItem* 
  %new_obj3981 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3980, i32 %lhs_or_call3978 )
  store %ArrayItem* %new_obj3981, %ArrayItem** %nextItem3977
  br label %__merge1149

__fresh1163:
  br label %__else1150

__else1150:
  br label %__merge1149

__merge1149:
  br label %__merge1152

__merge1152:
  %arrayLength3982 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3983 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3984 = load i32* %arrayLength3983
  %bop3985 = add i32 %lhs_or_call3984, 1
  store i32 %bop3985, i32* %arrayLength3982
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3928, i32 %key3926){
__fresh1136:
  %index_slot3929 = alloca i32
  store i32 %index3928, i32* %index_slot3929
  %key_slot3927 = alloca i32
  store i32 %key3926, i32* %key_slot3927
  %headItem3930 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3931 = load %ArrayItem** %headItem3930
  %ifnull_slot3932 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3931, %ArrayItem** %ifnull_slot3932
  %ifnull_guard3933 = icmp ne %ArrayItem* %lhs_or_call3931, null
  br i1 %ifnull_guard3933, label %__then1135, label %__else1134

__fresh1137:
  br label %__then1135

__then1135:
  %vdecl_slot3934 = alloca i32
  store i32 1, i32* %vdecl_slot3934
  br label %__cond1129

__cond1129:
  %lhs_or_call3935 = load i32* %vdecl_slot3934
  %lhs_or_call3936 = load i32* %index_slot3929
  %bop3937 = icmp ne i32 %lhs_or_call3935, %lhs_or_call3936
  br i1 %bop3937, label %__body1128, label %__post1127

__fresh1138:
  br label %__body1128

__body1128:
  %lhs_or_call3938 = load %ArrayItem** %ifnull_slot3932
  %nextItem3939 = getelementptr %ArrayItem* %lhs_or_call3938, i32 0, i32 3
  %lhs_or_call3940 = load %ArrayItem** %nextItem3939
  %ifnull_slot3941 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3940, %ArrayItem** %ifnull_slot3941
  %ifnull_guard3942 = icmp ne %ArrayItem* %lhs_or_call3940, null
  br i1 %ifnull_guard3942, label %__then1132, label %__else1131

__fresh1139:
  br label %__then1132

__then1132:
  %lhs_or_call3943 = load %ArrayItem** %ifnull_slot3941
  store %ArrayItem* %lhs_or_call3943, %ArrayItem** %ifnull_slot3932
  br label %__merge1130

__fresh1140:
  br label %__else1131

__else1131:
  br label %__merge1130

__merge1130:
  %lhs_or_call3944 = load i32* %vdecl_slot3934
  %bop3945 = add i32 %lhs_or_call3944, 1
  store i32 %bop3945, i32* %vdecl_slot3934
  br label %__cond1129

__fresh1141:
  br label %__post1127

__post1127:
  %lhs_or_call3946 = load %ArrayItem** %ifnull_slot3932
  %keyValue3947 = getelementptr %ArrayItem* %lhs_or_call3946, i32 0, i32 2
  %lhs_or_call3948 = load i32* %key_slot3927
  store i32 %lhs_or_call3948, i32* %keyValue3947
  br label %__merge1133

__fresh1142:
  br label %__else1134

__else1134:
  call void @print_string( i8* @_const_str633 )
  call void @oat_abort( i32 -1 )
  br label %__merge1133

__merge1133:
  ret void
}


define i32 @_Array_getElement (%Array* %_this1, i32 %index3903){
__fresh1120:
  %index_slot3904 = alloca i32
  store i32 %index3903, i32* %index_slot3904
  %vdecl_slot3905 = alloca i32
  store i32 0, i32* %vdecl_slot3905
  %headItem3906 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3907 = load %ArrayItem** %headItem3906
  %ifnull_slot3908 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3907, %ArrayItem** %ifnull_slot3908
  %ifnull_guard3909 = icmp ne %ArrayItem* %lhs_or_call3907, null
  br i1 %ifnull_guard3909, label %__then1119, label %__else1118

__fresh1121:
  br label %__then1119

__then1119:
  %vdecl_slot3910 = alloca i32
  store i32 1, i32* %vdecl_slot3910
  br label %__cond1113

__cond1113:
  %lhs_or_call3911 = load i32* %vdecl_slot3910
  %lhs_or_call3912 = load i32* %index_slot3904
  %bop3913 = icmp ne i32 %lhs_or_call3911, %lhs_or_call3912
  br i1 %bop3913, label %__body1112, label %__post1111

__fresh1122:
  br label %__body1112

__body1112:
  %lhs_or_call3914 = load %ArrayItem** %ifnull_slot3908
  %nextItem3915 = getelementptr %ArrayItem* %lhs_or_call3914, i32 0, i32 3
  %lhs_or_call3916 = load %ArrayItem** %nextItem3915
  %ifnull_slot3917 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3916, %ArrayItem** %ifnull_slot3917
  %ifnull_guard3918 = icmp ne %ArrayItem* %lhs_or_call3916, null
  br i1 %ifnull_guard3918, label %__then1116, label %__else1115

__fresh1123:
  br label %__then1116

__then1116:
  %lhs_or_call3919 = load %ArrayItem** %ifnull_slot3917
  store %ArrayItem* %lhs_or_call3919, %ArrayItem** %ifnull_slot3908
  br label %__merge1114

__fresh1124:
  br label %__else1115

__else1115:
  br label %__merge1114

__merge1114:
  %lhs_or_call3920 = load i32* %vdecl_slot3910
  %bop3921 = add i32 %lhs_or_call3920, 1
  store i32 %bop3921, i32* %vdecl_slot3910
  br label %__cond1113

__fresh1125:
  br label %__post1111

__post1111:
  %lhs_or_call3922 = load %ArrayItem** %ifnull_slot3908
  %keyValue3923 = getelementptr %ArrayItem* %lhs_or_call3922, i32 0, i32 2
  %lhs_or_call3924 = load i32* %keyValue3923
  store i32 %lhs_or_call3924, i32* %vdecl_slot3905
  br label %__merge1117

__fresh1126:
  br label %__else1118

__else1118:
  call void @print_string( i8* @_const_str632 )
  call void @oat_abort( i32 -1 )
  br label %__merge1117

__merge1117:
  %lhs_or_call3925 = load i32* %vdecl_slot3905
  ret i32 %lhs_or_call3925
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh1110:
  %mem_ptr3898 = call i32* @oat_malloc ( i32 8 )
  %obj3899 = bitcast i32* %mem_ptr3898 to %Object* 
  %new_obj3900 = call %Object* @_Object_ctor ( %Object* %obj3899 )
  %_this1 = bitcast %Object* %new_obj3900 to %Array 
  %_name3901 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str631, i8** %_name3901
  %this_vtable3902 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable628, %_Array_vtable** %this_vtable3902
  %arrayLength3897 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3897
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3893){
__fresh1109:
  %x_slot3894 = alloca i32
  store i32 %x3893, i32* %x_slot3894
  %keyValue3895 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3896 = load i32* %x_slot3894
  store i32 %lhs_or_call3896, i32* %keyValue3895
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3882){
__fresh1108:
  %x_slot3883 = alloca i32
  store i32 %x3882, i32* %x_slot3883
  %mem_ptr3888 = call i32* @oat_malloc ( i32 8 )
  %obj3889 = bitcast i32* %mem_ptr3888 to %Object* 
  %new_obj3890 = call %Object* @_Object_ctor ( %Object* %obj3889 )
  %_this1 = bitcast %Object* %new_obj3890 to %ArrayItem 
  %_name3891 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str630, i8** %_name3891
  %this_vtable3892 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable627, %_ArrayItem_vtable** %this_vtable3892
  %keyValue3884 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3885 = load i32* %x_slot3883
  store i32 %lhs_or_call3885, i32* %keyValue3884
  %nextItem3886 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3887 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3887, %ArrayItem** %nextItem3886
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1107:
  %_name3880 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3881 = load i8** %_name3880
  ret i8* %lhs_or_call3881
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1106:
  %_name3878 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str629, i8** %_name3878
  %this_vtable3879 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable626, %_Object_vtable** %this_vtable3879
  ret %Object* %_this1
}


