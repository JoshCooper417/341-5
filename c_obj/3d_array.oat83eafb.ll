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
@a567 = global %Array* zeroinitializer, align 4		; initialized by @a567.init568
@_const_str566.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str566 = alias bitcast([ 6 x i8 ]* @_const_str566.str. to i8*)@_const_str565.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str565 = alias bitcast([ 7 x i8 ]* @_const_str565.str. to i8*)@_Array_vtable564 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable563, i8* (%Object*)* @_Object_get_name, void (%Array*, i32)* @_Array_set_length, void (%Array*)* @_Array_add_dimension, void (%Array*)* @_Array_fill_random_bits, i32 (%Array*)* @_Array_total}, align 4
@_Object_vtable563 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh664:
  call void @a567.init568(  )
  ret void
}


define i32 @program (i32 %argc3109, { i32, [ 0 x i8* ] }* %argv3107){
__fresh663:
  %argc_slot3110 = alloca i32
  store i32 %argc3109, i32* %argc_slot3110
  %argv_slot3108 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3107, { i32, [ 0 x i8* ] }** %argv_slot3108
  %lhs_or_call3111 = load %Array** @a567
  %vtable_ptr3112 = getelementptr %Array* %lhs_or_call3111, i32 0
  %vtable3113 = load %_Array_vtable** %vtable_ptr3112
  %set_length3115 = getelementptr %_Array_vtable* %vtable3113, i32 0, i32 2
  %set_length3114 = load void (%Array*, i32)** %set_length3115
  %cast_op3116 = bitcast %Array %lhs_or_call3111 to %Array* 
  call void %set_length3114( %Array* %cast_op3116, i32 5 )
  %lhs_or_call3117 = load %Array** @a567
  %vtable_ptr3118 = getelementptr %Array* %lhs_or_call3117, i32 0
  %vtable3119 = load %_Array_vtable** %vtable_ptr3118
  %add_dimension3121 = getelementptr %_Array_vtable* %vtable3119, i32 0, i32 3
  %add_dimension3120 = load void (%Array*)** %add_dimension3121
  %cast_op3122 = bitcast %Array %lhs_or_call3117 to %Array* 
  call void %add_dimension3120( %Array* %cast_op3122 )
  %lhs_or_call3123 = load %Array** @a567
  %vtable_ptr3124 = getelementptr %Array* %lhs_or_call3123, i32 0
  %vtable3125 = load %_Array_vtable** %vtable_ptr3124
  %add_dimension3127 = getelementptr %_Array_vtable* %vtable3125, i32 0, i32 3
  %add_dimension3126 = load void (%Array*)** %add_dimension3127
  %cast_op3128 = bitcast %Array %lhs_or_call3123 to %Array* 
  call void %add_dimension3126( %Array* %cast_op3128 )
  %lhs_or_call3129 = load %Array** @a567
  %vtable_ptr3130 = getelementptr %Array* %lhs_or_call3129, i32 0
  %vtable3131 = load %_Array_vtable** %vtable_ptr3130
  %add_dimension3133 = getelementptr %_Array_vtable* %vtable3131, i32 0, i32 3
  %add_dimension3132 = load void (%Array*)** %add_dimension3133
  %cast_op3134 = bitcast %Array %lhs_or_call3129 to %Array* 
  call void %add_dimension3132( %Array* %cast_op3134 )
  %lhs_or_call3135 = load %Array** @a567
  %vtable_ptr3136 = getelementptr %Array* %lhs_or_call3135, i32 0
  %vtable3137 = load %_Array_vtable** %vtable_ptr3136
  %fill_random_bits3139 = getelementptr %_Array_vtable* %vtable3137, i32 0, i32 4
  %fill_random_bits3138 = load void (%Array*)** %fill_random_bits3139
  %cast_op3140 = bitcast %Array %lhs_or_call3135 to %Array* 
  call void %fill_random_bits3138( %Array* %cast_op3140 )
  %lhs_or_call3141 = load %Array** @a567
  %vtable_ptr3142 = getelementptr %Array* %lhs_or_call3141, i32 0
  %vtable3143 = load %_Array_vtable** %vtable_ptr3142
  %total3145 = getelementptr %_Array_vtable* %vtable3143, i32 0, i32 5
  %total3144 = load i32 (%Array*)** %total3145
  %cast_op3146 = bitcast %Array %lhs_or_call3141 to %Array* 
  %ret3147 = call i32 %total3144 ( %Array* %cast_op3146 )
  ret i32 %ret3147
}


define void @a567.init568 (){
__fresh662:
  %mem_ptr3104 = call i32* @oat_malloc ( i32 20 )
  %obj3105 = bitcast i32* %mem_ptr3104 to %Array* 
  %new_obj3106 = call %Array* @_Array_ctor ( %Array* %obj3105 )
  store %Array* %new_obj3106, %Array** @a567
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
  %vtable_ptr3094 = getelementptr %Array* %lhs_or_call3093, i32 0
  %vtable3095 = load %_Array_vtable** %vtable_ptr3094
  %total3097 = getelementptr %_Array_vtable* %vtable3095, i32 0, i32 5
  %total3096 = load i32 (%Array*)** %total3097
  %cast_op3098 = bitcast %Array %lhs_or_call3093 to %Array* 
  %ret3099 = call i32 %total3096 ( %Array* %cast_op3098 )
  %bop3100 = add i32 %lhs_or_call3086, %ret3099
  store i32 %bop3100, i32* %vdecl_slot3080
  %lhs_or_call3101 = load i32* %vdecl_slot3081
  %bop3102 = add i32 %lhs_or_call3101, 1
  store i32 %bop3102, i32* %vdecl_slot3081
  br label %__cond658

__fresh661:
  br label %__post656

__post656:
  %lhs_or_call3103 = load i32* %vdecl_slot3080
  ret i32 %lhs_or_call3103
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh653:
  %vdecl_slot3058 = alloca i32
  store i32 0, i32* %vdecl_slot3058
  br label %__cond652

__cond652:
  %lhs_or_call3059 = load i32* %vdecl_slot3058
  %length3060 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3061 = load i32* %length3060
  %bop3062 = icmp slt i32 %lhs_or_call3059, %lhs_or_call3061
  br i1 %bop3062, label %__body651, label %__post650

__fresh654:
  br label %__body651

__body651:
  %a3063 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3064 = load { i32, [ 0 x %Array* ] }** %a3063
  %lhs_or_call3065 = load i32* %vdecl_slot3058
  %bound_ptr3067 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3064, i32 0, i32 0
  %bound3068 = load i32* %bound_ptr3067
  call void @oat_array_bounds_check( i32 %bound3068, i32 %lhs_or_call3065 )
  %elt3066 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3064, i32 0, i32 1, i32 %lhs_or_call3065
  %lhs_or_call3069 = load %Array** %elt3066
  %vtable_ptr3070 = getelementptr %Array* %lhs_or_call3069, i32 0
  %vtable3071 = load %_Array_vtable** %vtable_ptr3070
  %fill_random_bits3073 = getelementptr %_Array_vtable* %vtable3071, i32 0, i32 4
  %fill_random_bits3072 = load void (%Array*)** %fill_random_bits3073
  %cast_op3074 = bitcast %Array %lhs_or_call3069 to %Array* 
  call void %fill_random_bits3072( %Array* %cast_op3074 )
  %lhs_or_call3075 = load i32* %vdecl_slot3058
  %bop3076 = add i32 %lhs_or_call3075, 1
  store i32 %bop3076, i32* %vdecl_slot3058
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
  %a3016 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3017 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3018 = load i32* %length3017
  %array_ptr3019 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3018 )
  %array3020 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3019 to { i32, [ 0 x %Array* ] }* 
  %_tmp5383021 = alloca i32
  store i32 %lhs_or_call3018, i32* %_tmp5383021
  %_tmp5393022 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3020, { i32, [ 0 x %Array* ] }** %_tmp5393022
  %vdecl_slot3023 = alloca i32
  store i32 0, i32* %vdecl_slot3023
  br label %__cond641

__cond641:
  %lhs_or_call3024 = load i32* %vdecl_slot3023
  %lhs_or_call3025 = load i32* %_tmp5383021
  %bop3026 = icmp slt i32 %lhs_or_call3024, %lhs_or_call3025
  br i1 %bop3026, label %__body640, label %__post639

__fresh646:
  br label %__body640

__body640:
  %lhs_or_call3027 = load { i32, [ 0 x %Array* ] }** %_tmp5393022
  %lhs_or_call3028 = load i32* %vdecl_slot3023
  %bound_ptr3030 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3027, i32 0, i32 0
  %bound3031 = load i32* %bound_ptr3030
  call void @oat_array_bounds_check( i32 %bound3031, i32 %lhs_or_call3028 )
  %elt3029 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3027, i32 0, i32 1, i32 %lhs_or_call3028
  %mem_ptr3032 = call i32* @oat_malloc ( i32 20 )
  %obj3033 = bitcast i32* %mem_ptr3032 to %Array* 
  %new_obj3034 = call %Array* @_Array_ctor ( %Array* %obj3033 )
  store %Array* %new_obj3034, %Array** %elt3029
  %lhs_or_call3035 = load i32* %vdecl_slot3023
  %bop3036 = add i32 %lhs_or_call3035, 1
  store i32 %bop3036, i32* %vdecl_slot3023
  br label %__cond641

__fresh647:
  br label %__post639

__post639:
  store { i32, [ 0 x %Array* ] }* %array3020, { i32, [ 0 x %Array* ] }** %a3016
  %vdecl_slot3037 = alloca i32
  store i32 0, i32* %vdecl_slot3037
  br label %__cond644

__cond644:
  %lhs_or_call3038 = load i32* %vdecl_slot3037
  %length3039 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3040 = load i32* %length3039
  %bop3041 = icmp slt i32 %lhs_or_call3038, %lhs_or_call3040
  br i1 %bop3041, label %__body643, label %__post642

__fresh648:
  br label %__body643

__body643:
  %length3042 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3043 = load i32* %length3042
  %a3044 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3045 = load { i32, [ 0 x %Array* ] }** %a3044
  %lhs_or_call3046 = load i32* %vdecl_slot3037
  %bound_ptr3048 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3045, i32 0, i32 0
  %bound3049 = load i32* %bound_ptr3048
  call void @oat_array_bounds_check( i32 %bound3049, i32 %lhs_or_call3046 )
  %elt3047 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3045, i32 0, i32 1, i32 %lhs_or_call3046
  %lhs_or_call3050 = load %Array** %elt3047
  %vtable_ptr3051 = getelementptr %Array* %lhs_or_call3050, i32 0
  %vtable3052 = load %_Array_vtable** %vtable_ptr3051
  %set_length3054 = getelementptr %_Array_vtable* %vtable3052, i32 0, i32 2
  %set_length3053 = load void (%Array*, i32)** %set_length3054
  %cast_op3055 = bitcast %Array %lhs_or_call3050 to %Array* 
  call void %set_length3053( %Array* %cast_op3055, i32 %lhs_or_call3043 )
  %lhs_or_call3056 = load i32* %vdecl_slot3037
  %bop3057 = add i32 %lhs_or_call3056, 1
  store i32 %bop3057, i32* %vdecl_slot3037
  br label %__cond644

__fresh649:
  br label %__post642

__post642:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l2991){
__fresh636:
  %l_slot2992 = alloca i32
  store i32 %l2991, i32* %l_slot2992
  %length2993 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2994 = load i32* %l_slot2992
  store i32 %lhs_or_call2994, i32* %length2993
  %a2995 = getelementptr %Array* %_this1, i32 0, i32 2
  %length2996 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2997 = load i32* %length2996
  %array_ptr2998 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call2997 )
  %array2999 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2998 to { i32, [ 0 x %Array* ] }* 
  %_tmp5363000 = alloca i32
  store i32 %lhs_or_call2997, i32* %_tmp5363000
  %_tmp5373001 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2999, { i32, [ 0 x %Array* ] }** %_tmp5373001
  %vdecl_slot3002 = alloca i32
  store i32 0, i32* %vdecl_slot3002
  br label %__cond635

__cond635:
  %lhs_or_call3003 = load i32* %vdecl_slot3002
  %lhs_or_call3004 = load i32* %_tmp5363000
  %bop3005 = icmp slt i32 %lhs_or_call3003, %lhs_or_call3004
  br i1 %bop3005, label %__body634, label %__post633

__fresh637:
  br label %__body634

__body634:
  %lhs_or_call3006 = load { i32, [ 0 x %Array* ] }** %_tmp5373001
  %lhs_or_call3007 = load i32* %vdecl_slot3002
  %bound_ptr3009 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3006, i32 0, i32 0
  %bound3010 = load i32* %bound_ptr3009
  call void @oat_array_bounds_check( i32 %bound3010, i32 %lhs_or_call3007 )
  %elt3008 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3006, i32 0, i32 1, i32 %lhs_or_call3007
  %mem_ptr3011 = call i32* @oat_malloc ( i32 20 )
  %obj3012 = bitcast i32* %mem_ptr3011 to %Array* 
  %new_obj3013 = call %Array* @_Array_ctor ( %Array* %obj3012 )
  store %Array* %new_obj3013, %Array** %elt3008
  %lhs_or_call3014 = load i32* %vdecl_slot3002
  %bop3015 = add i32 %lhs_or_call3014, 1
  store i32 %bop3015, i32* %vdecl_slot3002
  br label %__cond635

__fresh638:
  br label %__post633

__post633:
  store { i32, [ 0 x %Array* ] }* %array2999, { i32, [ 0 x %Array* ] }** %a2995
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh630:
  %mem_ptr2967 = call i32* @oat_malloc ( i32 8 )
  %obj2968 = bitcast i32* %mem_ptr2967 to %Object* 
  %new_obj2969 = call %Object* @_Object_ctor ( %Object* %obj2968 )
  %_this1 = bitcast %Object* %new_obj2969 to %Array 
  %_name2970 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str566, i8** %_name2970
  %a2971 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr2972 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array2973 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2972 to { i32, [ 0 x %Array* ] }* 
  %_tmp5332974 = alloca i32
  store i32 0, i32* %_tmp5332974
  %_tmp5342975 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2973, { i32, [ 0 x %Array* ] }** %_tmp5342975
  %vdecl_slot2976 = alloca i32
  store i32 0, i32* %vdecl_slot2976
  br label %__cond629

__cond629:
  %lhs_or_call2977 = load i32* %vdecl_slot2976
  %lhs_or_call2978 = load i32* %_tmp5332974
  %bop2979 = icmp slt i32 %lhs_or_call2977, %lhs_or_call2978
  br i1 %bop2979, label %__body628, label %__post627

__fresh631:
  br label %__body628

__body628:
  %lhs_or_call2980 = load { i32, [ 0 x %Array* ] }** %_tmp5342975
  %lhs_or_call2981 = load i32* %vdecl_slot2976
  %bound_ptr2983 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2980, i32 0, i32 0
  %bound2984 = load i32* %bound_ptr2983
  call void @oat_array_bounds_check( i32 %bound2984, i32 %lhs_or_call2981 )
  %elt2982 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2980, i32 0, i32 1, i32 %lhs_or_call2981
  %mem_ptr2985 = call i32* @oat_malloc ( i32 20 )
  %obj2986 = bitcast i32* %mem_ptr2985 to %Array* 
  %new_obj2987 = call %Array* @_Array_ctor ( %Array* %obj2986 )
  store %Array* %new_obj2987, %Array** %elt2982
  %lhs_or_call2988 = load i32* %vdecl_slot2976
  %bop2989 = add i32 %lhs_or_call2988, 1
  store i32 %bop2989, i32* %vdecl_slot2976
  br label %__cond629

__fresh632:
  br label %__post627

__post627:
  store { i32, [ 0 x %Array* ] }* %array2973, { i32, [ 0 x %Array* ] }** %a2971
  %this_vtable2990 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable564, %_Array_vtable** %this_vtable2990
  %value2965 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %value2965
  %length2966 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %length2966
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh626:
  %_name2963 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2964 = load i8** %_name2963
  ret i8* %lhs_or_call2964
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh625:
  %_name2961 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str565, i8** %_name2961
  %this_vtable2962 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable563, %_Object_vtable** %this_vtable2962
  ret %Object* %_this1
}


