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


define i32 @program (i32 %argc3121, { i32, [ 0 x i8* ] }* %argv3119){
__fresh663:
  %argc_slot3122 = alloca i32
  store i32 %argc3121, i32* %argc_slot3122
  %argv_slot3120 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3119, { i32, [ 0 x i8* ] }** %argv_slot3120
  %lhs_or_call3123 = load %Array** @a578
  %vtable_ptr3124 = getelementptr %Array* %lhs_or_call3123, i32 0
  %vtable3125 = load %_Array_vtable** %vtable_ptr3124
  %set_length3127 = getelementptr %_Array_vtable* %vtable3125, i32 0, i32 2
  %set_length3126 = load void (%Array*, i32)** %set_length3127
  %cast_op3128 = bitcast %Array %lhs_or_call3123 to %Array* 
  call void %set_length3126( %Array* %cast_op3128, i32 5 )
  %lhs_or_call3129 = load %Array** @a578
  %vtable_ptr3130 = getelementptr %Array* %lhs_or_call3129, i32 0
  %vtable3131 = load %_Array_vtable** %vtable_ptr3130
  %add_dimension3133 = getelementptr %_Array_vtable* %vtable3131, i32 0, i32 3
  %add_dimension3132 = load void (%Array*)** %add_dimension3133
  %cast_op3134 = bitcast %Array %lhs_or_call3129 to %Array* 
  call void %add_dimension3132( %Array* %cast_op3134 )
  %lhs_or_call3135 = load %Array** @a578
  %vtable_ptr3136 = getelementptr %Array* %lhs_or_call3135, i32 0
  %vtable3137 = load %_Array_vtable** %vtable_ptr3136
  %add_dimension3139 = getelementptr %_Array_vtable* %vtable3137, i32 0, i32 3
  %add_dimension3138 = load void (%Array*)** %add_dimension3139
  %cast_op3140 = bitcast %Array %lhs_or_call3135 to %Array* 
  call void %add_dimension3138( %Array* %cast_op3140 )
  %lhs_or_call3141 = load %Array** @a578
  %vtable_ptr3142 = getelementptr %Array* %lhs_or_call3141, i32 0
  %vtable3143 = load %_Array_vtable** %vtable_ptr3142
  %add_dimension3145 = getelementptr %_Array_vtable* %vtable3143, i32 0, i32 3
  %add_dimension3144 = load void (%Array*)** %add_dimension3145
  %cast_op3146 = bitcast %Array %lhs_or_call3141 to %Array* 
  call void %add_dimension3144( %Array* %cast_op3146 )
  %lhs_or_call3147 = load %Array** @a578
  %vtable_ptr3148 = getelementptr %Array* %lhs_or_call3147, i32 0
  %vtable3149 = load %_Array_vtable** %vtable_ptr3148
  %fill_random_bits3151 = getelementptr %_Array_vtable* %vtable3149, i32 0, i32 4
  %fill_random_bits3150 = load void (%Array*)** %fill_random_bits3151
  %cast_op3152 = bitcast %Array %lhs_or_call3147 to %Array* 
  call void %fill_random_bits3150( %Array* %cast_op3152 )
  %lhs_or_call3153 = load %Array** @a578
  %vtable_ptr3154 = getelementptr %Array* %lhs_or_call3153, i32 0
  %vtable3155 = load %_Array_vtable** %vtable_ptr3154
  %total3157 = getelementptr %_Array_vtable* %vtable3155, i32 0, i32 5
  %total3156 = load i32 (%Array*)** %total3157
  %cast_op3158 = bitcast %Array %lhs_or_call3153 to %Array* 
  %ret3159 = call i32 %total3156 ( %Array* %cast_op3158 )
  ret i32 %ret3159
}


define void @a578.init579 (){
__fresh662:
  %mem_ptr3116 = call i32* @oat_malloc ( i32 20 )
  %obj3117 = bitcast i32* %mem_ptr3116 to %Array* 
  %new_obj3118 = call %Array* @_Array_ctor ( %Array* %obj3117 )
  store %Array* %new_obj3118, %Array** @a578
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh659:
  %value3090 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call3091 = load i32* %value3090
  %vdecl_slot3092 = alloca i32
  store i32 %lhs_or_call3091, i32* %vdecl_slot3092
  %vdecl_slot3093 = alloca i32
  store i32 0, i32* %vdecl_slot3093
  br label %__cond658

__cond658:
  %lhs_or_call3094 = load i32* %vdecl_slot3093
  %length3095 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3096 = load i32* %length3095
  %bop3097 = icmp slt i32 %lhs_or_call3094, %lhs_or_call3096
  br i1 %bop3097, label %__body657, label %__post656

__fresh660:
  br label %__body657

__body657:
  %lhs_or_call3098 = load i32* %vdecl_slot3092
  %a3099 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3100 = load { i32, [ 0 x %Array* ] }** %a3099
  %lhs_or_call3101 = load i32* %vdecl_slot3093
  %bound_ptr3103 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3100, i32 0, i32 0
  %bound3104 = load i32* %bound_ptr3103
  call void @oat_array_bounds_check( i32 %bound3104, i32 %lhs_or_call3101 )
  %elt3102 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3100, i32 0, i32 1, i32 %lhs_or_call3101
  %lhs_or_call3105 = load %Array** %elt3102
  %vtable_ptr3106 = getelementptr %Array* %lhs_or_call3105, i32 0
  %vtable3107 = load %_Array_vtable** %vtable_ptr3106
  %total3109 = getelementptr %_Array_vtable* %vtable3107, i32 0, i32 5
  %total3108 = load i32 (%Array*)** %total3109
  %cast_op3110 = bitcast %Array %lhs_or_call3105 to %Array* 
  %ret3111 = call i32 %total3108 ( %Array* %cast_op3110 )
  %bop3112 = add i32 %lhs_or_call3098, %ret3111
  store i32 %bop3112, i32* %vdecl_slot3092
  %lhs_or_call3113 = load i32* %vdecl_slot3093
  %bop3114 = add i32 %lhs_or_call3113, 1
  store i32 %bop3114, i32* %vdecl_slot3093
  br label %__cond658

__fresh661:
  br label %__post656

__post656:
  %lhs_or_call3115 = load i32* %vdecl_slot3092
  ret i32 %lhs_or_call3115
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh653:
  %vdecl_slot3070 = alloca i32
  store i32 0, i32* %vdecl_slot3070
  br label %__cond652

__cond652:
  %lhs_or_call3071 = load i32* %vdecl_slot3070
  %length3072 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3073 = load i32* %length3072
  %bop3074 = icmp slt i32 %lhs_or_call3071, %lhs_or_call3073
  br i1 %bop3074, label %__body651, label %__post650

__fresh654:
  br label %__body651

__body651:
  %a3075 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3076 = load { i32, [ 0 x %Array* ] }** %a3075
  %lhs_or_call3077 = load i32* %vdecl_slot3070
  %bound_ptr3079 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3076, i32 0, i32 0
  %bound3080 = load i32* %bound_ptr3079
  call void @oat_array_bounds_check( i32 %bound3080, i32 %lhs_or_call3077 )
  %elt3078 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3076, i32 0, i32 1, i32 %lhs_or_call3077
  %lhs_or_call3081 = load %Array** %elt3078
  %vtable_ptr3082 = getelementptr %Array* %lhs_or_call3081, i32 0
  %vtable3083 = load %_Array_vtable** %vtable_ptr3082
  %fill_random_bits3085 = getelementptr %_Array_vtable* %vtable3083, i32 0, i32 4
  %fill_random_bits3084 = load void (%Array*)** %fill_random_bits3085
  %cast_op3086 = bitcast %Array %lhs_or_call3081 to %Array* 
  call void %fill_random_bits3084( %Array* %cast_op3086 )
  %lhs_or_call3087 = load i32* %vdecl_slot3070
  %bop3088 = add i32 %lhs_or_call3087, 1
  store i32 %bop3088, i32* %vdecl_slot3070
  br label %__cond652

__fresh655:
  br label %__post650

__post650:
  %value3089 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %value3089
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh645:
  %a3028 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3029 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3030 = load i32* %length3029
  %array_ptr3031 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3030 )
  %array3032 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3031 to { i32, [ 0 x %Array* ] }* 
  %_tmp5493033 = alloca i32
  store i32 %lhs_or_call3030, i32* %_tmp5493033
  %_tmp5503034 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3032, { i32, [ 0 x %Array* ] }** %_tmp5503034
  %vdecl_slot3035 = alloca i32
  store i32 0, i32* %vdecl_slot3035
  br label %__cond641

__cond641:
  %lhs_or_call3036 = load i32* %vdecl_slot3035
  %lhs_or_call3037 = load i32* %_tmp5493033
  %bop3038 = icmp slt i32 %lhs_or_call3036, %lhs_or_call3037
  br i1 %bop3038, label %__body640, label %__post639

__fresh646:
  br label %__body640

__body640:
  %lhs_or_call3039 = load { i32, [ 0 x %Array* ] }** %_tmp5503034
  %lhs_or_call3040 = load i32* %vdecl_slot3035
  %bound_ptr3042 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3039, i32 0, i32 0
  %bound3043 = load i32* %bound_ptr3042
  call void @oat_array_bounds_check( i32 %bound3043, i32 %lhs_or_call3040 )
  %elt3041 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3039, i32 0, i32 1, i32 %lhs_or_call3040
  %mem_ptr3044 = call i32* @oat_malloc ( i32 20 )
  %obj3045 = bitcast i32* %mem_ptr3044 to %Array* 
  %new_obj3046 = call %Array* @_Array_ctor ( %Array* %obj3045 )
  store %Array* %new_obj3046, %Array** %elt3041
  %lhs_or_call3047 = load i32* %vdecl_slot3035
  %bop3048 = add i32 %lhs_or_call3047, 1
  store i32 %bop3048, i32* %vdecl_slot3035
  br label %__cond641

__fresh647:
  br label %__post639

__post639:
  store { i32, [ 0 x %Array* ] }* %array3032, { i32, [ 0 x %Array* ] }** %a3028
  %vdecl_slot3049 = alloca i32
  store i32 0, i32* %vdecl_slot3049
  br label %__cond644

__cond644:
  %lhs_or_call3050 = load i32* %vdecl_slot3049
  %length3051 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3052 = load i32* %length3051
  %bop3053 = icmp slt i32 %lhs_or_call3050, %lhs_or_call3052
  br i1 %bop3053, label %__body643, label %__post642

__fresh648:
  br label %__body643

__body643:
  %length3054 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3055 = load i32* %length3054
  %a3056 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3057 = load { i32, [ 0 x %Array* ] }** %a3056
  %lhs_or_call3058 = load i32* %vdecl_slot3049
  %bound_ptr3060 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3057, i32 0, i32 0
  %bound3061 = load i32* %bound_ptr3060
  call void @oat_array_bounds_check( i32 %bound3061, i32 %lhs_or_call3058 )
  %elt3059 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3057, i32 0, i32 1, i32 %lhs_or_call3058
  %lhs_or_call3062 = load %Array** %elt3059
  %vtable_ptr3063 = getelementptr %Array* %lhs_or_call3062, i32 0
  %vtable3064 = load %_Array_vtable** %vtable_ptr3063
  %set_length3066 = getelementptr %_Array_vtable* %vtable3064, i32 0, i32 2
  %set_length3065 = load void (%Array*, i32)** %set_length3066
  %cast_op3067 = bitcast %Array %lhs_or_call3062 to %Array* 
  call void %set_length3065( %Array* %cast_op3067, i32 %lhs_or_call3055 )
  %lhs_or_call3068 = load i32* %vdecl_slot3049
  %bop3069 = add i32 %lhs_or_call3068, 1
  store i32 %bop3069, i32* %vdecl_slot3049
  br label %__cond644

__fresh649:
  br label %__post642

__post642:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l3003){
__fresh636:
  %l_slot3004 = alloca i32
  store i32 %l3003, i32* %l_slot3004
  %length3005 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3006 = load i32* %l_slot3004
  store i32 %lhs_or_call3006, i32* %length3005
  %a3007 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3008 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3009 = load i32* %length3008
  %array_ptr3010 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3009 )
  %array3011 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3010 to { i32, [ 0 x %Array* ] }* 
  %_tmp5473012 = alloca i32
  store i32 %lhs_or_call3009, i32* %_tmp5473012
  %_tmp5483013 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3011, { i32, [ 0 x %Array* ] }** %_tmp5483013
  %vdecl_slot3014 = alloca i32
  store i32 0, i32* %vdecl_slot3014
  br label %__cond635

__cond635:
  %lhs_or_call3015 = load i32* %vdecl_slot3014
  %lhs_or_call3016 = load i32* %_tmp5473012
  %bop3017 = icmp slt i32 %lhs_or_call3015, %lhs_or_call3016
  br i1 %bop3017, label %__body634, label %__post633

__fresh637:
  br label %__body634

__body634:
  %lhs_or_call3018 = load { i32, [ 0 x %Array* ] }** %_tmp5483013
  %lhs_or_call3019 = load i32* %vdecl_slot3014
  %bound_ptr3021 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3018, i32 0, i32 0
  %bound3022 = load i32* %bound_ptr3021
  call void @oat_array_bounds_check( i32 %bound3022, i32 %lhs_or_call3019 )
  %elt3020 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3018, i32 0, i32 1, i32 %lhs_or_call3019
  %mem_ptr3023 = call i32* @oat_malloc ( i32 20 )
  %obj3024 = bitcast i32* %mem_ptr3023 to %Array* 
  %new_obj3025 = call %Array* @_Array_ctor ( %Array* %obj3024 )
  store %Array* %new_obj3025, %Array** %elt3020
  %lhs_or_call3026 = load i32* %vdecl_slot3014
  %bop3027 = add i32 %lhs_or_call3026, 1
  store i32 %bop3027, i32* %vdecl_slot3014
  br label %__cond635

__fresh638:
  br label %__post633

__post633:
  store { i32, [ 0 x %Array* ] }* %array3011, { i32, [ 0 x %Array* ] }** %a3007
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh630:
  %mem_ptr2979 = call i32* @oat_malloc ( i32 8 )
  %obj2980 = bitcast i32* %mem_ptr2979 to %Object* 
  %new_obj2981 = call %Object* @_Object_ctor ( %Object* %obj2980 )
  %_this1 = bitcast %Object* %new_obj2981 to %Array 
  %_name2982 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str577, i8** %_name2982
  %a2983 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr2984 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array2985 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2984 to { i32, [ 0 x %Array* ] }* 
  %_tmp5442986 = alloca i32
  store i32 0, i32* %_tmp5442986
  %_tmp5452987 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2985, { i32, [ 0 x %Array* ] }** %_tmp5452987
  %vdecl_slot2988 = alloca i32
  store i32 0, i32* %vdecl_slot2988
  br label %__cond629

__cond629:
  %lhs_or_call2989 = load i32* %vdecl_slot2988
  %lhs_or_call2990 = load i32* %_tmp5442986
  %bop2991 = icmp slt i32 %lhs_or_call2989, %lhs_or_call2990
  br i1 %bop2991, label %__body628, label %__post627

__fresh631:
  br label %__body628

__body628:
  %lhs_or_call2992 = load { i32, [ 0 x %Array* ] }** %_tmp5452987
  %lhs_or_call2993 = load i32* %vdecl_slot2988
  %bound_ptr2995 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2992, i32 0, i32 0
  %bound2996 = load i32* %bound_ptr2995
  call void @oat_array_bounds_check( i32 %bound2996, i32 %lhs_or_call2993 )
  %elt2994 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2992, i32 0, i32 1, i32 %lhs_or_call2993
  %mem_ptr2997 = call i32* @oat_malloc ( i32 20 )
  %obj2998 = bitcast i32* %mem_ptr2997 to %Array* 
  %new_obj2999 = call %Array* @_Array_ctor ( %Array* %obj2998 )
  store %Array* %new_obj2999, %Array** %elt2994
  %lhs_or_call3000 = load i32* %vdecl_slot2988
  %bop3001 = add i32 %lhs_or_call3000, 1
  store i32 %bop3001, i32* %vdecl_slot2988
  br label %__cond629

__fresh632:
  br label %__post627

__post627:
  store { i32, [ 0 x %Array* ] }* %array2985, { i32, [ 0 x %Array* ] }** %a2983
  %this_vtable3002 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable575, %_Array_vtable** %this_vtable3002
  %value2977 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %value2977
  %length2978 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %length2978
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh626:
  %_name2975 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2976 = load i8** %_name2975
  ret i8* %lhs_or_call2976
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh625:
  %_name2973 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str576, i8** %_name2973
  %this_vtable2974 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable574, %_Object_vtable** %this_vtable2974
  ret %Object* %_this1
}


