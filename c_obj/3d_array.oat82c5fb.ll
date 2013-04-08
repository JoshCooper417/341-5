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
@a578 = global %Array* zeroinitializer, align 4		; initialized by @a578.init579
@_const_str577.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str577 = alias bitcast([ 6 x i8 ]* @_const_str577.str. to i8*)@_const_str576.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str576 = alias bitcast([ 7 x i8 ]* @_const_str576.str. to i8*)@_Array_vtable575 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable574, i8* (%Object*)* @_Object_get_name, void (%Array*, i32)* @_Array_set_length, void (%Array*)* @_Array_add_dimension, void (%Array*)* @_Array_fill_random_bits, i32 (%Array*)* @_Array_total}, align 4
@_Object_vtable574 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh664:
  call void @a578.init579(  )
  ret void
}


define i32 @program (i32 %argc3107, { i32, [ 0 x i8* ] }* %argv3105){
__fresh663:
  %argc_slot3108 = alloca i32
  store i32 %argc3107, i32* %argc_slot3108
  %argv_slot3106 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3105, { i32, [ 0 x i8* ] }** %argv_slot3106
  %lhs_or_call3109 = load %Array** @a578
  %set_length3111 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 2
  %set_length3110 = load void (%Array*, i32)** %set_length3111
  %cast_op3112 = bitcast %Array %lhs_or_call3109 to %Array* 
  call void %set_length3110( %Array* %cast_op3112, i32 5 )
  %lhs_or_call3113 = load %Array** @a578
  %add_dimension3115 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 3
  %add_dimension3114 = load void (%Array*)** %add_dimension3115
  %cast_op3116 = bitcast %Array %lhs_or_call3113 to %Array* 
  call void %add_dimension3114( %Array* %cast_op3116 )
  %lhs_or_call3117 = load %Array** @a578
  %add_dimension3119 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 3
  %add_dimension3118 = load void (%Array*)** %add_dimension3119
  %cast_op3120 = bitcast %Array %lhs_or_call3117 to %Array* 
  call void %add_dimension3118( %Array* %cast_op3120 )
  %lhs_or_call3121 = load %Array** @a578
  %add_dimension3123 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 3
  %add_dimension3122 = load void (%Array*)** %add_dimension3123
  %cast_op3124 = bitcast %Array %lhs_or_call3121 to %Array* 
  call void %add_dimension3122( %Array* %cast_op3124 )
  %lhs_or_call3125 = load %Array** @a578
  %fill_random_bits3127 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 4
  %fill_random_bits3126 = load void (%Array*)** %fill_random_bits3127
  %cast_op3128 = bitcast %Array %lhs_or_call3125 to %Array* 
  call void %fill_random_bits3126( %Array* %cast_op3128 )
  %lhs_or_call3129 = load %Array** @a578
  %total3131 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 5
  %total3130 = load i32 (%Array*)** %total3131
  %cast_op3132 = bitcast %Array %lhs_or_call3129 to %Array* 
  %ret3133 = call i32 %total3130 ( %Array* %cast_op3132 )
  ret i32 %ret3133
}


define void @a578.init579 (){
__fresh662:
  %mem_ptr3102 = call i32* @oat_malloc ( i32 20 )
  %obj3103 = bitcast i32* %mem_ptr3102 to %Array* 
  %new_obj3104 = call %Array* @_Array_ctor ( %Array* %obj3103 )
  store %Array* %new_obj3104, %Array** @a578
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh659:
  %value3078 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call3079 = load i32* %value3078
  %vdecl_slot3080 = alloca i32
  store i32 %lhs_or_call3079, i32* %vdecl_slot3080
  %vdecl_slot3081 = alloca i32
  store i32 0, i32* %vdecl_slot3081
  br label %__cond658

__cond658:
  %lhs_or_call3082 = load i32* %vdecl_slot3081
  %length3083 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3084 = load i32* %length3083
  %bop3085 = icmp slt i32 %lhs_or_call3082, %lhs_or_call3084
  br i1 %bop3085, label %__body657, label %__post656

__fresh660:
  br label %__body657

__body657:
  %lhs_or_call3086 = load i32* %vdecl_slot3080
  %a3087 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3088 = load { i32, [ 0 x %Array* ] }** %a3087
  %lhs_or_call3089 = load i32* %vdecl_slot3081
  %bound_ptr3091 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3088, i32 0, i32 0
  %bound3092 = load i32* %bound_ptr3091
  call void @oat_array_bounds_check( i32 %bound3092, i32 %lhs_or_call3089 )
  %elt3090 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3088, i32 0, i32 1, i32 %lhs_or_call3089
  %lhs_or_call3093 = load %Array** %elt3090
  %total3095 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 5
  %total3094 = load i32 (%Array*)** %total3095
  %cast_op3096 = bitcast %Array %lhs_or_call3093 to %Array* 
  %ret3097 = call i32 %total3094 ( %Array* %cast_op3096 )
  %bop3098 = add i32 %lhs_or_call3086, %ret3097
  store i32 %bop3098, i32* %vdecl_slot3080
  %lhs_or_call3099 = load i32* %vdecl_slot3081
  %bop3100 = add i32 %lhs_or_call3099, 1
  store i32 %bop3100, i32* %vdecl_slot3081
  br label %__cond658

__fresh661:
  br label %__post656

__post656:
  %lhs_or_call3101 = load i32* %vdecl_slot3080
  ret i32 %lhs_or_call3101
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh653:
  %vdecl_slot3060 = alloca i32
  store i32 0, i32* %vdecl_slot3060
  br label %__cond652

__cond652:
  %lhs_or_call3061 = load i32* %vdecl_slot3060
  %length3062 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3063 = load i32* %length3062
  %bop3064 = icmp slt i32 %lhs_or_call3061, %lhs_or_call3063
  br i1 %bop3064, label %__body651, label %__post650

__fresh654:
  br label %__body651

__body651:
  %a3065 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3066 = load { i32, [ 0 x %Array* ] }** %a3065
  %lhs_or_call3067 = load i32* %vdecl_slot3060
  %bound_ptr3069 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3066, i32 0, i32 0
  %bound3070 = load i32* %bound_ptr3069
  call void @oat_array_bounds_check( i32 %bound3070, i32 %lhs_or_call3067 )
  %elt3068 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3066, i32 0, i32 1, i32 %lhs_or_call3067
  %lhs_or_call3071 = load %Array** %elt3068
  %fill_random_bits3073 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 4
  %fill_random_bits3072 = load void (%Array*)** %fill_random_bits3073
  %cast_op3074 = bitcast %Array %lhs_or_call3071 to %Array* 
  call void %fill_random_bits3072( %Array* %cast_op3074 )
  %lhs_or_call3075 = load i32* %vdecl_slot3060
  %bop3076 = add i32 %lhs_or_call3075, 1
  store i32 %bop3076, i32* %vdecl_slot3060
  br label %__cond652

__fresh655:
  br label %__post650

__post650:
  %value3077 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %value3077
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh645:
  %a3020 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3021 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3022 = load i32* %length3021
  %array_ptr3023 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3022 )
  %array3024 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3023 to { i32, [ 0 x %Array* ] }* 
  %_tmp5493025 = alloca i32
  store i32 %lhs_or_call3022, i32* %_tmp5493025
  %_tmp5503026 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3024, { i32, [ 0 x %Array* ] }** %_tmp5503026
  %vdecl_slot3027 = alloca i32
  store i32 0, i32* %vdecl_slot3027
  br label %__cond641

__cond641:
  %lhs_or_call3028 = load i32* %vdecl_slot3027
  %lhs_or_call3029 = load i32* %_tmp5493025
  %bop3030 = icmp slt i32 %lhs_or_call3028, %lhs_or_call3029
  br i1 %bop3030, label %__body640, label %__post639

__fresh646:
  br label %__body640

__body640:
  %lhs_or_call3031 = load { i32, [ 0 x %Array* ] }** %_tmp5503026
  %lhs_or_call3032 = load i32* %vdecl_slot3027
  %bound_ptr3034 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3031, i32 0, i32 0
  %bound3035 = load i32* %bound_ptr3034
  call void @oat_array_bounds_check( i32 %bound3035, i32 %lhs_or_call3032 )
  %elt3033 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3031, i32 0, i32 1, i32 %lhs_or_call3032
  %mem_ptr3036 = call i32* @oat_malloc ( i32 20 )
  %obj3037 = bitcast i32* %mem_ptr3036 to %Array* 
  %new_obj3038 = call %Array* @_Array_ctor ( %Array* %obj3037 )
  store %Array* %new_obj3038, %Array** %elt3033
  %lhs_or_call3039 = load i32* %vdecl_slot3027
  %bop3040 = add i32 %lhs_or_call3039, 1
  store i32 %bop3040, i32* %vdecl_slot3027
  br label %__cond641

__fresh647:
  br label %__post639

__post639:
  store { i32, [ 0 x %Array* ] }* %array3024, { i32, [ 0 x %Array* ] }** %a3020
  %vdecl_slot3041 = alloca i32
  store i32 0, i32* %vdecl_slot3041
  br label %__cond644

__cond644:
  %lhs_or_call3042 = load i32* %vdecl_slot3041
  %length3043 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3044 = load i32* %length3043
  %bop3045 = icmp slt i32 %lhs_or_call3042, %lhs_or_call3044
  br i1 %bop3045, label %__body643, label %__post642

__fresh648:
  br label %__body643

__body643:
  %length3046 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3047 = load i32* %length3046
  %a3048 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3049 = load { i32, [ 0 x %Array* ] }** %a3048
  %lhs_or_call3050 = load i32* %vdecl_slot3041
  %bound_ptr3052 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3049, i32 0, i32 0
  %bound3053 = load i32* %bound_ptr3052
  call void @oat_array_bounds_check( i32 %bound3053, i32 %lhs_or_call3050 )
  %elt3051 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3049, i32 0, i32 1, i32 %lhs_or_call3050
  %lhs_or_call3054 = load %Array** %elt3051
  %set_length3056 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 2
  %set_length3055 = load void (%Array*, i32)** %set_length3056
  %cast_op3057 = bitcast %Array %lhs_or_call3054 to %Array* 
  call void %set_length3055( %Array* %cast_op3057, i32 %lhs_or_call3047 )
  %lhs_or_call3058 = load i32* %vdecl_slot3041
  %bop3059 = add i32 %lhs_or_call3058, 1
  store i32 %bop3059, i32* %vdecl_slot3041
  br label %__cond644

__fresh649:
  br label %__post642

__post642:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l2995){
__fresh636:
  %l_slot2996 = alloca i32
  store i32 %l2995, i32* %l_slot2996
  %length2997 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2998 = load i32* %l_slot2996
  store i32 %lhs_or_call2998, i32* %length2997
  %a2999 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3000 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3001 = load i32* %length3000
  %array_ptr3002 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3001 )
  %array3003 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3002 to { i32, [ 0 x %Array* ] }* 
  %_tmp5473004 = alloca i32
  store i32 %lhs_or_call3001, i32* %_tmp5473004
  %_tmp5483005 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3003, { i32, [ 0 x %Array* ] }** %_tmp5483005
  %vdecl_slot3006 = alloca i32
  store i32 0, i32* %vdecl_slot3006
  br label %__cond635

__cond635:
  %lhs_or_call3007 = load i32* %vdecl_slot3006
  %lhs_or_call3008 = load i32* %_tmp5473004
  %bop3009 = icmp slt i32 %lhs_or_call3007, %lhs_or_call3008
  br i1 %bop3009, label %__body634, label %__post633

__fresh637:
  br label %__body634

__body634:
  %lhs_or_call3010 = load { i32, [ 0 x %Array* ] }** %_tmp5483005
  %lhs_or_call3011 = load i32* %vdecl_slot3006
  %bound_ptr3013 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3010, i32 0, i32 0
  %bound3014 = load i32* %bound_ptr3013
  call void @oat_array_bounds_check( i32 %bound3014, i32 %lhs_or_call3011 )
  %elt3012 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3010, i32 0, i32 1, i32 %lhs_or_call3011
  %mem_ptr3015 = call i32* @oat_malloc ( i32 20 )
  %obj3016 = bitcast i32* %mem_ptr3015 to %Array* 
  %new_obj3017 = call %Array* @_Array_ctor ( %Array* %obj3016 )
  store %Array* %new_obj3017, %Array** %elt3012
  %lhs_or_call3018 = load i32* %vdecl_slot3006
  %bop3019 = add i32 %lhs_or_call3018, 1
  store i32 %bop3019, i32* %vdecl_slot3006
  br label %__cond635

__fresh638:
  br label %__post633

__post633:
  store { i32, [ 0 x %Array* ] }* %array3003, { i32, [ 0 x %Array* ] }** %a2999
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh630:
  %cast_op2970 = bitcast %Array* %_this1 to %Object* 
  %mem_ptr2971 = call i32* @oat_malloc ( i32 20 )
  %obj2972 = bitcast i32* %mem_ptr2971 to %Array* 
  %new_obj2973 = call %Object* @_Object_ctor ( %Array* %obj2972, %Object* %cast_op2970 )
  %_this1 = bitcast %Object* %new_obj2973 to %Array 
  %_name2974 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str577, i8** %_name2974
  %a2975 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr2976 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array2977 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2976 to { i32, [ 0 x %Array* ] }* 
  %_tmp5442978 = alloca i32
  store i32 0, i32* %_tmp5442978
  %_tmp5452979 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2977, { i32, [ 0 x %Array* ] }** %_tmp5452979
  %vdecl_slot2980 = alloca i32
  store i32 0, i32* %vdecl_slot2980
  br label %__cond629

__cond629:
  %lhs_or_call2981 = load i32* %vdecl_slot2980
  %lhs_or_call2982 = load i32* %_tmp5442978
  %bop2983 = icmp slt i32 %lhs_or_call2981, %lhs_or_call2982
  br i1 %bop2983, label %__body628, label %__post627

__fresh631:
  br label %__body628

__body628:
  %lhs_or_call2984 = load { i32, [ 0 x %Array* ] }** %_tmp5452979
  %lhs_or_call2985 = load i32* %vdecl_slot2980
  %bound_ptr2987 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2984, i32 0, i32 0
  %bound2988 = load i32* %bound_ptr2987
  call void @oat_array_bounds_check( i32 %bound2988, i32 %lhs_or_call2985 )
  %elt2986 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2984, i32 0, i32 1, i32 %lhs_or_call2985
  %mem_ptr2989 = call i32* @oat_malloc ( i32 20 )
  %obj2990 = bitcast i32* %mem_ptr2989 to %Array* 
  %new_obj2991 = call %Array* @_Array_ctor ( %Array* %obj2990 )
  store %Array* %new_obj2991, %Array** %elt2986
  %lhs_or_call2992 = load i32* %vdecl_slot2980
  %bop2993 = add i32 %lhs_or_call2992, 1
  store i32 %bop2993, i32* %vdecl_slot2980
  br label %__cond629

__fresh632:
  br label %__post627

__post627:
  store { i32, [ 0 x %Array* ] }* %array2977, { i32, [ 0 x %Array* ] }** %a2975
  %this_vtable2994 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable575, %_Array_vtable** %this_vtable2994
  %value2968 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %value2968
  %length2969 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %length2969
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh626:
  %_name2966 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2967 = load i8** %_name2966
  ret i8* %lhs_or_call2967
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh625:
  %_name2964 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str576, i8** %_name2964
  %this_vtable2965 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable574, %_Object_vtable** %this_vtable2965
  ret %Object* %_this1
}


