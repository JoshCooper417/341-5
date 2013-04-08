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


define i32 @program (i32 %argc3102, { i32, [ 0 x i8* ] }* %argv3100){
__fresh663:
  %argc_slot3103 = alloca i32
  store i32 %argc3102, i32* %argc_slot3103
  %argv_slot3101 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3100, { i32, [ 0 x i8* ] }** %argv_slot3101
  %lhs_or_call3104 = load %Array** @a567
  %vtable_ptr3105 = getelementptr %Array* %lhs_or_call3104, i32 0
  %vtable3106 = load %_Array_vtable** %vtable_ptr3105
  %set_length3108 = getelementptr %_Array_vtable* %vtable3106, i32 0, i32 2
  %set_length3107 = load void (%Array*, i32)** %set_length3108
  %cast_op3109 = bitcast %Array %lhs_or_call3104 to %Array* 
  call void %set_length3107( %Array* %cast_op3109, i32 5 )
  %lhs_or_call3110 = load %Array** @a567
  %vtable_ptr3111 = getelementptr %Array* %lhs_or_call3110, i32 0
  %vtable3112 = load %_Array_vtable** %vtable_ptr3111
  %add_dimension3114 = getelementptr %_Array_vtable* %vtable3112, i32 0, i32 3
  %add_dimension3113 = load void (%Array*)** %add_dimension3114
  %cast_op3115 = bitcast %Array %lhs_or_call3110 to %Array* 
  call void %add_dimension3113( %Array* %cast_op3115 )
  %lhs_or_call3116 = load %Array** @a567
  %vtable_ptr3117 = getelementptr %Array* %lhs_or_call3116, i32 0
  %vtable3118 = load %_Array_vtable** %vtable_ptr3117
  %add_dimension3120 = getelementptr %_Array_vtable* %vtable3118, i32 0, i32 3
  %add_dimension3119 = load void (%Array*)** %add_dimension3120
  %cast_op3121 = bitcast %Array %lhs_or_call3116 to %Array* 
  call void %add_dimension3119( %Array* %cast_op3121 )
  %lhs_or_call3122 = load %Array** @a567
  %vtable_ptr3123 = getelementptr %Array* %lhs_or_call3122, i32 0
  %vtable3124 = load %_Array_vtable** %vtable_ptr3123
  %add_dimension3126 = getelementptr %_Array_vtable* %vtable3124, i32 0, i32 3
  %add_dimension3125 = load void (%Array*)** %add_dimension3126
  %cast_op3127 = bitcast %Array %lhs_or_call3122 to %Array* 
  call void %add_dimension3125( %Array* %cast_op3127 )
  %lhs_or_call3128 = load %Array** @a567
  %vtable_ptr3129 = getelementptr %Array* %lhs_or_call3128, i32 0
  %vtable3130 = load %_Array_vtable** %vtable_ptr3129
  %fill_random_bits3132 = getelementptr %_Array_vtable* %vtable3130, i32 0, i32 4
  %fill_random_bits3131 = load void (%Array*)** %fill_random_bits3132
  %cast_op3133 = bitcast %Array %lhs_or_call3128 to %Array* 
  call void %fill_random_bits3131( %Array* %cast_op3133 )
  %lhs_or_call3134 = load %Array** @a567
  %vtable_ptr3135 = getelementptr %Array* %lhs_or_call3134, i32 0
  %vtable3136 = load %_Array_vtable** %vtable_ptr3135
  %total3138 = getelementptr %_Array_vtable* %vtable3136, i32 0, i32 5
  %total3137 = load i32 (%Array*)** %total3138
  %cast_op3139 = bitcast %Array %lhs_or_call3134 to %Array* 
  %ret3140 = call i32 %total3137 ( %Array* %cast_op3139 )
  ret i32 %ret3140
}


define void @a567.init568 (){
__fresh662:
  %mem_ptr3097 = call i32* @oat_malloc ( i32 20 )
  %obj3098 = bitcast i32* %mem_ptr3097 to %Array* 
  %new_obj3099 = call %Array* @_Array_ctor ( %Array* %obj3098 )
  store %Array* %new_obj3099, %Array** @a567
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh659:
  %value3071 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call3072 = load i32* %value3071
  %vdecl_slot3073 = alloca i32
  store i32 %lhs_or_call3072, i32* %vdecl_slot3073
  %vdecl_slot3074 = alloca i32
  store i32 0, i32* %vdecl_slot3074
  br label %__cond658

__cond658:
  %lhs_or_call3075 = load i32* %vdecl_slot3074
  %length3076 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3077 = load i32* %length3076
  %bop3078 = icmp slt i32 %lhs_or_call3075, %lhs_or_call3077
  br i1 %bop3078, label %__body657, label %__post656

__fresh660:
  br label %__body657

__body657:
  %lhs_or_call3079 = load i32* %vdecl_slot3073
  %a3080 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3081 = load { i32, [ 0 x %Array* ] }** %a3080
  %lhs_or_call3082 = load i32* %vdecl_slot3074
  %bound_ptr3084 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3081, i32 0, i32 0
  %bound3085 = load i32* %bound_ptr3084
  call void @oat_array_bounds_check( i32 %bound3085, i32 %lhs_or_call3082 )
  %elt3083 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3081, i32 0, i32 1, i32 %lhs_or_call3082
  %lhs_or_call3086 = load %Array** %elt3083
  %vtable_ptr3087 = getelementptr %Array* %lhs_or_call3086, i32 0
  %vtable3088 = load %_Array_vtable** %vtable_ptr3087
  %total3090 = getelementptr %_Array_vtable* %vtable3088, i32 0, i32 5
  %total3089 = load i32 (%Array*)** %total3090
  %cast_op3091 = bitcast %Array %lhs_or_call3086 to %Array* 
  %ret3092 = call i32 %total3089 ( %Array* %cast_op3091 )
  %bop3093 = add i32 %lhs_or_call3079, %ret3092
  store i32 %bop3093, i32* %vdecl_slot3073
  %lhs_or_call3094 = load i32* %vdecl_slot3074
  %bop3095 = add i32 %lhs_or_call3094, 1
  store i32 %bop3095, i32* %vdecl_slot3074
  br label %__cond658

__fresh661:
  br label %__post656

__post656:
  %lhs_or_call3096 = load i32* %vdecl_slot3073
  ret i32 %lhs_or_call3096
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh653:
  %vdecl_slot3051 = alloca i32
  store i32 0, i32* %vdecl_slot3051
  br label %__cond652

__cond652:
  %lhs_or_call3052 = load i32* %vdecl_slot3051
  %length3053 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3054 = load i32* %length3053
  %bop3055 = icmp slt i32 %lhs_or_call3052, %lhs_or_call3054
  br i1 %bop3055, label %__body651, label %__post650

__fresh654:
  br label %__body651

__body651:
  %a3056 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3057 = load { i32, [ 0 x %Array* ] }** %a3056
  %lhs_or_call3058 = load i32* %vdecl_slot3051
  %bound_ptr3060 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3057, i32 0, i32 0
  %bound3061 = load i32* %bound_ptr3060
  call void @oat_array_bounds_check( i32 %bound3061, i32 %lhs_or_call3058 )
  %elt3059 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3057, i32 0, i32 1, i32 %lhs_or_call3058
  %lhs_or_call3062 = load %Array** %elt3059
  %vtable_ptr3063 = getelementptr %Array* %lhs_or_call3062, i32 0
  %vtable3064 = load %_Array_vtable** %vtable_ptr3063
  %fill_random_bits3066 = getelementptr %_Array_vtable* %vtable3064, i32 0, i32 4
  %fill_random_bits3065 = load void (%Array*)** %fill_random_bits3066
  %cast_op3067 = bitcast %Array %lhs_or_call3062 to %Array* 
  call void %fill_random_bits3065( %Array* %cast_op3067 )
  %lhs_or_call3068 = load i32* %vdecl_slot3051
  %bop3069 = add i32 %lhs_or_call3068, 1
  store i32 %bop3069, i32* %vdecl_slot3051
  br label %__cond652

__fresh655:
  br label %__post650

__post650:
  %value3070 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %value3070
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh645:
  %a3009 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3010 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3011 = load i32* %length3010
  %array_ptr3012 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3011 )
  %array3013 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3012 to { i32, [ 0 x %Array* ] }* 
  %_tmp5383014 = alloca i32
  store i32 %lhs_or_call3011, i32* %_tmp5383014
  %_tmp5393015 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3013, { i32, [ 0 x %Array* ] }** %_tmp5393015
  %vdecl_slot3016 = alloca i32
  store i32 0, i32* %vdecl_slot3016
  br label %__cond641

__cond641:
  %lhs_or_call3017 = load i32* %vdecl_slot3016
  %lhs_or_call3018 = load i32* %_tmp5383014
  %bop3019 = icmp slt i32 %lhs_or_call3017, %lhs_or_call3018
  br i1 %bop3019, label %__body640, label %__post639

__fresh646:
  br label %__body640

__body640:
  %lhs_or_call3020 = load { i32, [ 0 x %Array* ] }** %_tmp5393015
  %lhs_or_call3021 = load i32* %vdecl_slot3016
  %bound_ptr3023 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3020, i32 0, i32 0
  %bound3024 = load i32* %bound_ptr3023
  call void @oat_array_bounds_check( i32 %bound3024, i32 %lhs_or_call3021 )
  %elt3022 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3020, i32 0, i32 1, i32 %lhs_or_call3021
  %mem_ptr3025 = call i32* @oat_malloc ( i32 20 )
  %obj3026 = bitcast i32* %mem_ptr3025 to %Array* 
  %new_obj3027 = call %Array* @_Array_ctor ( %Array* %obj3026 )
  store %Array* %new_obj3027, %Array** %elt3022
  %lhs_or_call3028 = load i32* %vdecl_slot3016
  %bop3029 = add i32 %lhs_or_call3028, 1
  store i32 %bop3029, i32* %vdecl_slot3016
  br label %__cond641

__fresh647:
  br label %__post639

__post639:
  store { i32, [ 0 x %Array* ] }* %array3013, { i32, [ 0 x %Array* ] }** %a3009
  %vdecl_slot3030 = alloca i32
  store i32 0, i32* %vdecl_slot3030
  br label %__cond644

__cond644:
  %lhs_or_call3031 = load i32* %vdecl_slot3030
  %length3032 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3033 = load i32* %length3032
  %bop3034 = icmp slt i32 %lhs_or_call3031, %lhs_or_call3033
  br i1 %bop3034, label %__body643, label %__post642

__fresh648:
  br label %__body643

__body643:
  %length3035 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3036 = load i32* %length3035
  %a3037 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3038 = load { i32, [ 0 x %Array* ] }** %a3037
  %lhs_or_call3039 = load i32* %vdecl_slot3030
  %bound_ptr3041 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3038, i32 0, i32 0
  %bound3042 = load i32* %bound_ptr3041
  call void @oat_array_bounds_check( i32 %bound3042, i32 %lhs_or_call3039 )
  %elt3040 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3038, i32 0, i32 1, i32 %lhs_or_call3039
  %lhs_or_call3043 = load %Array** %elt3040
  %vtable_ptr3044 = getelementptr %Array* %lhs_or_call3043, i32 0
  %vtable3045 = load %_Array_vtable** %vtable_ptr3044
  %set_length3047 = getelementptr %_Array_vtable* %vtable3045, i32 0, i32 2
  %set_length3046 = load void (%Array*, i32)** %set_length3047
  %cast_op3048 = bitcast %Array %lhs_or_call3043 to %Array* 
  call void %set_length3046( %Array* %cast_op3048, i32 %lhs_or_call3036 )
  %lhs_or_call3049 = load i32* %vdecl_slot3030
  %bop3050 = add i32 %lhs_or_call3049, 1
  store i32 %bop3050, i32* %vdecl_slot3030
  br label %__cond644

__fresh649:
  br label %__post642

__post642:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l2984){
__fresh636:
  %l_slot2985 = alloca i32
  store i32 %l2984, i32* %l_slot2985
  %length2986 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2987 = load i32* %l_slot2985
  store i32 %lhs_or_call2987, i32* %length2986
  %a2988 = getelementptr %Array* %_this1, i32 0, i32 2
  %length2989 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2990 = load i32* %length2989
  %array_ptr2991 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call2990 )
  %array2992 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2991 to { i32, [ 0 x %Array* ] }* 
  %_tmp5362993 = alloca i32
  store i32 %lhs_or_call2990, i32* %_tmp5362993
  %_tmp5372994 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2992, { i32, [ 0 x %Array* ] }** %_tmp5372994
  %vdecl_slot2995 = alloca i32
  store i32 0, i32* %vdecl_slot2995
  br label %__cond635

__cond635:
  %lhs_or_call2996 = load i32* %vdecl_slot2995
  %lhs_or_call2997 = load i32* %_tmp5362993
  %bop2998 = icmp slt i32 %lhs_or_call2996, %lhs_or_call2997
  br i1 %bop2998, label %__body634, label %__post633

__fresh637:
  br label %__body634

__body634:
  %lhs_or_call2999 = load { i32, [ 0 x %Array* ] }** %_tmp5372994
  %lhs_or_call3000 = load i32* %vdecl_slot2995
  %bound_ptr3002 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2999, i32 0, i32 0
  %bound3003 = load i32* %bound_ptr3002
  call void @oat_array_bounds_check( i32 %bound3003, i32 %lhs_or_call3000 )
  %elt3001 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2999, i32 0, i32 1, i32 %lhs_or_call3000
  %mem_ptr3004 = call i32* @oat_malloc ( i32 20 )
  %obj3005 = bitcast i32* %mem_ptr3004 to %Array* 
  %new_obj3006 = call %Array* @_Array_ctor ( %Array* %obj3005 )
  store %Array* %new_obj3006, %Array** %elt3001
  %lhs_or_call3007 = load i32* %vdecl_slot2995
  %bop3008 = add i32 %lhs_or_call3007, 1
  store i32 %bop3008, i32* %vdecl_slot2995
  br label %__cond635

__fresh638:
  br label %__post633

__post633:
  store { i32, [ 0 x %Array* ] }* %array2992, { i32, [ 0 x %Array* ] }** %a2988
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh630:
  %mem_ptr2960 = call i32* @oat_malloc ( i32 8 )
  %obj2961 = bitcast i32* %mem_ptr2960 to %Object* 
  %new_obj2962 = call %Object* @_Object_ctor ( %Object* %obj2961 )
  %_this1 = bitcast %Object* %new_obj2962 to %Array 
  %_name2963 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str566, i8** %_name2963
  %a2964 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr2965 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array2966 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2965 to { i32, [ 0 x %Array* ] }* 
  %_tmp5332967 = alloca i32
  store i32 0, i32* %_tmp5332967
  %_tmp5342968 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2966, { i32, [ 0 x %Array* ] }** %_tmp5342968
  %vdecl_slot2969 = alloca i32
  store i32 0, i32* %vdecl_slot2969
  br label %__cond629

__cond629:
  %lhs_or_call2970 = load i32* %vdecl_slot2969
  %lhs_or_call2971 = load i32* %_tmp5332967
  %bop2972 = icmp slt i32 %lhs_or_call2970, %lhs_or_call2971
  br i1 %bop2972, label %__body628, label %__post627

__fresh631:
  br label %__body628

__body628:
  %lhs_or_call2973 = load { i32, [ 0 x %Array* ] }** %_tmp5342968
  %lhs_or_call2974 = load i32* %vdecl_slot2969
  %bound_ptr2976 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2973, i32 0, i32 0
  %bound2977 = load i32* %bound_ptr2976
  call void @oat_array_bounds_check( i32 %bound2977, i32 %lhs_or_call2974 )
  %elt2975 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2973, i32 0, i32 1, i32 %lhs_or_call2974
  %mem_ptr2978 = call i32* @oat_malloc ( i32 20 )
  %obj2979 = bitcast i32* %mem_ptr2978 to %Array* 
  %new_obj2980 = call %Array* @_Array_ctor ( %Array* %obj2979 )
  store %Array* %new_obj2980, %Array** %elt2975
  %lhs_or_call2981 = load i32* %vdecl_slot2969
  %bop2982 = add i32 %lhs_or_call2981, 1
  store i32 %bop2982, i32* %vdecl_slot2969
  br label %__cond629

__fresh632:
  br label %__post627

__post627:
  store { i32, [ 0 x %Array* ] }* %array2966, { i32, [ 0 x %Array* ] }** %a2964
  %this_vtable2983 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable564, %_Array_vtable** %this_vtable2983
  %value2958 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %value2958
  %length2959 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %length2959
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh626:
  %_name2956 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2957 = load i8** %_name2956
  ret i8* %lhs_or_call2957
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh625:
  %_name2954 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str565, i8** %_name2954
  %this_vtable2955 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable563, %_Object_vtable** %this_vtable2955
  ret %Object* %_this1
}


