%Cow = type { %_Cow_vtable*, i8*, i8* }
%_Cow_vtable = type { %_Animal_vtable*, i8* (%Object*)*, i8* (%Cow*)* }
%Dog = type { %_Dog_vtable*, i8*, i8*, i8* }
%_Dog_vtable = type { %_Animal_vtable*, i8* (%Object*)*, i8* (%Dog*)* }
%Animal = type { %_Animal_vtable*, i8*, i8* }
%_Animal_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Animal*)* }
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
@_const_str625.str. = private unnamed_addr constant [ 19 x i8 ] c "This dog is stray!\00", align 4
@_const_str625 = alias bitcast([ 19 x i8 ]* @_const_str625.str. to i8*)@_const_str624.str. = private unnamed_addr constant [ 6 x i8 ] c "Timmy\00", align 4
@_const_str624 = alias bitcast([ 6 x i8 ]* @_const_str624.str. to i8*)@_const_str623.str. = private unnamed_addr constant [ 22 x i8 ] c "This dog is owned by \00", align 4
@_const_str623 = alias bitcast([ 22 x i8 ]* @_const_str623.str. to i8*)@_const_str622.str. = private unnamed_addr constant [ 12 x i8 ] c "Example Cow\00", align 4
@_const_str622 = alias bitcast([ 12 x i8 ]* @_const_str622.str. to i8*)@_const_str621.str. = private unnamed_addr constant [ 5 x i8 ] c "Spot\00", align 4
@_const_str621 = alias bitcast([ 5 x i8 ]* @_const_str621.str. to i8*)@_const_str620.str. = private unnamed_addr constant [ 4 x i8 ] c "moo\00", align 4
@_const_str620 = alias bitcast([ 4 x i8 ]* @_const_str620.str. to i8*)@_const_str619.str. = private unnamed_addr constant [ 4 x i8 ] c "Cow\00", align 4
@_const_str619 = alias bitcast([ 4 x i8 ]* @_const_str619.str. to i8*)@_const_str618.str. = private unnamed_addr constant [ 4 x i8 ] c "arf\00", align 4
@_const_str618 = alias bitcast([ 4 x i8 ]* @_const_str618.str. to i8*)@_const_str617.str. = private unnamed_addr constant [ 4 x i8 ] c "Dog\00", align 4
@_const_str617 = alias bitcast([ 4 x i8 ]* @_const_str617.str. to i8*)@_const_str616.str. = private unnamed_addr constant [ 4 x i8 ] c "???\00", align 4
@_const_str616 = alias bitcast([ 4 x i8 ]* @_const_str616.str. to i8*)@_const_str615.str. = private unnamed_addr constant [ 4 x i8 ] c "???\00", align 4
@_const_str615 = alias bitcast([ 4 x i8 ]* @_const_str615.str. to i8*)@_const_str614.str. = private unnamed_addr constant [ 7 x i8 ] c "Animal\00", align 4
@_const_str614 = alias bitcast([ 7 x i8 ]* @_const_str614.str. to i8*)@_const_str613.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str613 = alias bitcast([ 7 x i8 ]* @_const_str613.str. to i8*)@_Cow_vtable612 = private constant %_Cow_vtable {%_Animal_vtable* @_Animal_vtable610, i8* (%Object*)* @_Object_get_name, i8* (%Cow*)* @_Cow_noise}, align 4
@_Dog_vtable611 = private constant %_Dog_vtable {%_Animal_vtable* @_Animal_vtable610, i8* (%Object*)* @_Object_get_name, i8* (%Dog*)* @_Dog_noise}, align 4
@_Animal_vtable610 = private constant %_Animal_vtable {%_Object_vtable* @_Object_vtable609, i8* (%Object*)* @_Object_get_name, i8* (%Animal*)* @_Animal_noise}, align 4
@_Object_vtable609 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1198:
  ret void
}


define i32 @program (i32 %argc3836, { i32, [ 0 x i8* ] }* %argv3834){
__fresh1188:
  %argc_slot3837 = alloca i32
  store i32 %argc3836, i32* %argc_slot3837
  %argv_slot3835 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3834, { i32, [ 0 x i8* ] }** %argv_slot3835
  %mem_ptr3838 = call i32* @oat_malloc ( i32 16 )
  %obj3839 = bitcast i32* %mem_ptr3838 to %Dog* 
  %new_obj3840 = call %Dog* @_Dog_ctor ( %Dog* %obj3839, i8* @_const_str621 )
  %cast_op3841 = bitcast %Dog* %new_obj3840 to %Animal* 
  %vdecl_slot3842 = alloca %Animal*
  store %Animal* %cast_op3841, %Animal** %vdecl_slot3842
  %mem_ptr3843 = call i32* @oat_malloc ( i32 12 )
  %obj3844 = bitcast i32* %mem_ptr3843 to %Cow* 
  %new_obj3845 = call %Cow* @_Cow_ctor ( %Cow* %obj3844, i8* @_const_str622 )
  %cast_op3846 = bitcast %Cow* %new_obj3845 to %Animal* 
  %vdecl_slot3847 = alloca %Animal*
  store %Animal* %cast_op3846, %Animal** %vdecl_slot3847
  %lhs_or_call3848 = load %Animal** %vdecl_slot3842
  %vtable_ptr3849 = getelementptr %Animal* %lhs_or_call3848, i32 0
  %vtable3850 = load %_Animal_vtable** %vtable_ptr3849
  %noise3852 = getelementptr %_Animal_vtable* %vtable3850, i32 0, i32 2
  %noise3851 = load i8* (%Animal*)** %noise3852
  %cast_op3853 = bitcast %Animal %lhs_or_call3848 to %Animal* 
  %ret3854 = call i8* %noise3851 ( %Animal* %cast_op3853 )
  call void @print_string( i8* %ret3854 )
  %lhs_or_call3855 = load %Animal** %vdecl_slot3847
  %vtable_ptr3856 = getelementptr %Animal* %lhs_or_call3855, i32 0
  %vtable3857 = load %_Animal_vtable** %vtable_ptr3856
  %noise3859 = getelementptr %_Animal_vtable* %vtable3857, i32 0, i32 2
  %noise3858 = load i8* (%Animal*)** %noise3859
  %cast_op3860 = bitcast %Animal %lhs_or_call3855 to %Animal* 
  %ret3861 = call i8* %noise3858 ( %Animal* %cast_op3860 )
  call void @print_string( i8* %ret3861 )
  br label %__init1181

__fresh1189:
  br label %__init1181

__init1181:
  %lhs_or_call3863 = load %Animal** %vdecl_slot3842
  %rvtable3872 = getelementptr %Animal* %lhs_or_call3863, i32 0
  br label %__bound_check1182

__fresh1190:
  br label %__bound_check1182

__bound_check1182:
  %cast_op3876 = bitcast %_Dog_vtable* @_Dog_vtable611 to i8** 
  %lvtable3873 = load i8** %cast_op3876
  %cast_vtable3877 = bitcast i8** %rvtable3872 to i8** 
  %rvtable3875 = load i8** %cast_vtable3877
  %compare3874 = icmp eq i8* %rvtable3875, null
  br i1 %compare3874, label %__end_no1185, label %__check_curr1184

__fresh1191:
  br label %__check_curr1184

__check_curr1184:
  %compare3874 = icmp eq i8** %lvtable3873, %rvtable3875
  br i1 %compare3874, label %__end_yes1186, label %__move_up1183

__fresh1192:
  br label %__move_up1183

__move_up1183:
  %rvtable3872 = getelementptr i8* %rvtable3875, i32 0
  br label %__bound_check1182

__fresh1193:
  br label %__end_yes1186

__end_yes1186:
  %lhs_or_call3863 = load %Animal** %vdecl_slot3842
  %cast_ptr3862 = bitcast %Animal* %lhs_or_call3863 to %Dog* 
  %lhs_or_call3864 = load %Dog** %cast_ptr3862
  %owner3865 = getelementptr %Dog* %lhs_or_call3864, i32 0, i32 3
  %lhs_or_call3866 = load i8** %owner3865
  %ifnull_slot3867 = alloca i8*
  store i8* %lhs_or_call3866, i8** %ifnull_slot3867
  %ifnull_guard3868 = icmp ne i8* %lhs_or_call3866, null
  br i1 %ifnull_guard3868, label %__then1180, label %__else1179

__fresh1194:
  br label %__then1180

__then1180:
  call void @print_string( i8* @_const_str623 )
  %lhs_or_call3869 = load i8** %ifnull_slot3867
  call void @print_string( i8* %lhs_or_call3869 )
  br label %__merge1178

__fresh1195:
  br label %__else1179

__else1179:
  %lhs_or_call3870 = load %Dog** %cast_ptr3862
  %owner3871 = getelementptr %Dog* %lhs_or_call3870, i32 0, i32 3
  store i8* @_const_str624, i8** %owner3871
  call void @print_string( i8* @_const_str625 )
  br label %__merge1178

__merge1178:
  br label %__end1187

__fresh1196:
  br label %__end_no1185

__end_no1185:
  br label %__end1187

__fresh1197:
  br label %__end1187

__end1187:
  ret i32 0
}


define i8* @_Cow_noise (%Cow* %_this1){
__fresh1177:
  ret i8* @_const_str620
}


define %Cow* @_Cow_ctor (%Cow* %_this1, i8* %name3826){
__fresh1176:
  %name_slot3827 = alloca i8*
  store i8* %name3826, i8** %name_slot3827
  %lhs_or_call3828 = load i8** %name_slot3827
  %mem_ptr3829 = call i32* @oat_malloc ( i32 12 )
  %obj3830 = bitcast i32* %mem_ptr3829 to %Animal* 
  %new_obj3831 = call %Animal* @_Animal_ctor ( %Animal* %obj3830, i8* %lhs_or_call3828 )
  %_this1 = bitcast %Animal* %new_obj3831 to %Cow 
  %_name3832 = getelementptr %Cow* %_this1, i32 0, i32 1
  store i8* @_const_str619, i8** %_name3832
  %this_vtable3833 = getelementptr %Cow* %_this1, i32 0, i32 0
  store %_Cow_vtable* @_Cow_vtable612, %_Cow_vtable** %this_vtable3833
  ret %Cow* %_this1
}


define i8* @_Dog_noise (%Dog* %_this1){
__fresh1175:
  ret i8* @_const_str618
}


define %Dog* @_Dog_ctor (%Dog* %_this1, i8* %name3818){
__fresh1174:
  %name_slot3819 = alloca i8*
  store i8* %name3818, i8** %name_slot3819
  %lhs_or_call3820 = load i8** %name_slot3819
  %mem_ptr3821 = call i32* @oat_malloc ( i32 12 )
  %obj3822 = bitcast i32* %mem_ptr3821 to %Animal* 
  %new_obj3823 = call %Animal* @_Animal_ctor ( %Animal* %obj3822, i8* %lhs_or_call3820 )
  %_this1 = bitcast %Animal* %new_obj3823 to %Dog 
  %_name3824 = getelementptr %Dog* %_this1, i32 0, i32 1
  store i8* @_const_str617, i8** %_name3824
  %this_vtable3825 = getelementptr %Dog* %_this1, i32 0, i32 0
  store %_Dog_vtable* @_Dog_vtable611, %_Dog_vtable** %this_vtable3825
  ret %Dog* %_this1
}


define i8* @_Animal_noise (%Animal* %_this1){
__fresh1173:
  call void @print_string( i8* @_const_str615 )
  call void @oat_abort( i32 -1 )
  ret i8* @_const_str616
}


define %Animal* @_Animal_ctor (%Animal* %_this1, i8* %name3809){
__fresh1172:
  %name_slot3810 = alloca i8*
  store i8* %name3809, i8** %name_slot3810
  %mem_ptr3811 = call i32* @oat_malloc ( i32 8 )
  %obj3812 = bitcast i32* %mem_ptr3811 to %Object* 
  %new_obj3813 = call %Object* @_Object_ctor ( %Object* %obj3812 )
  %_this1 = bitcast %Object* %new_obj3813 to %Animal 
  %_name3814 = getelementptr %Animal* %_this1, i32 0, i32 1
  store i8* @_const_str614, i8** %_name3814
  %name3815 = getelementptr %Animal* %_this1, i32 0, i32 2
  %lhs_or_call3816 = load i8** %name_slot3810
  store i8* %lhs_or_call3816, i8** %name3815
  %this_vtable3817 = getelementptr %Animal* %_this1, i32 0, i32 0
  store %_Animal_vtable* @_Animal_vtable610, %_Animal_vtable** %this_vtable3817
  ret %Animal* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1171:
  %_name3807 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3808 = load i8** %_name3807
  ret i8* %lhs_or_call3808
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1170:
  %_name3805 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str613, i8** %_name3805
  %this_vtable3806 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable609, %_Object_vtable** %this_vtable3806
  ret %Object* %_this1
}


