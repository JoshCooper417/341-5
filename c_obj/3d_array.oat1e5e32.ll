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
@a587 = global %Array* zeroinitializer, align 4		; initialized by @a587.init588
@_const_str586.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str586 = alias bitcast([ 6 x i8 ]* @_const_str586.str. to i8*)@_const_str585.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str585 = alias bitcast([ 7 x i8 ]* @_const_str585.str. to i8*)@_Array_vtable584 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable583, i8* (%Object*)* @_Object_get_name, void (%Array*, i32)* @_Array_set_length, void (%Array*)* @_Array_add_dimension, void (%Array*)* @_Array_fill_random_bits, i32 (%Array*)* @_Array_total}, align 4
@_Object_vtable583 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh689:
  call void @a587.init588(  )
  ret void
}


define i32 @program (i32 %argc3152, { i32, [ 0 x i8* ] }* %argv3150){
__fresh688:
  %argc_slot3153 = alloca i32
  store i32 %argc3152, i32* %argc_slot3153
  %argv_slot3151 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3150, { i32, [ 0 x i8* ] }** %argv_slot3151
  %lhs_or_call3154 = load %Array** @a587
  %set_length3156 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 2
  %set_length3155 = load void (%Array*, i32)** %set_length3156
  %cast_op3157 = bitcast %Array %lhs_or_call3154 to %Array* 
  call void %set_length3155( %Array* %cast_op3157, i32 5 )
  %lhs_or_call3158 = load %Array** @a587
  %add_dimension3160 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 3
  %add_dimension3159 = load void (%Array*)** %add_dimension3160
  %cast_op3161 = bitcast %Array %lhs_or_call3158 to %Array* 
  call void %add_dimension3159( %Array* %cast_op3161 )
  %lhs_or_call3162 = load %Array** @a587
  %add_dimension3164 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 3
  %add_dimension3163 = load void (%Array*)** %add_dimension3164
  %cast_op3165 = bitcast %Array %lhs_or_call3162 to %Array* 
  call void %add_dimension3163( %Array* %cast_op3165 )
  %lhs_or_call3166 = load %Array** @a587
  %add_dimension3168 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 3
  %add_dimension3167 = load void (%Array*)** %add_dimension3168
  %cast_op3169 = bitcast %Array %lhs_or_call3166 to %Array* 
  call void %add_dimension3167( %Array* %cast_op3169 )
  %lhs_or_call3170 = load %Array** @a587
  %fill_random_bits3172 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 4
  %fill_random_bits3171 = load void (%Array*)** %fill_random_bits3172
  %cast_op3173 = bitcast %Array %lhs_or_call3170 to %Array* 
  call void %fill_random_bits3171( %Array* %cast_op3173 )
  %lhs_or_call3174 = load %Array** @a587
  %total3176 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 5
  %total3175 = load i32 (%Array*)** %total3176
  %cast_op3177 = bitcast %Array %lhs_or_call3174 to %Array* 
  %ret3178 = call i32 %total3175 ( %Array* %cast_op3177 )
  ret i32 %ret3178
}


define void @a587.init588 (){
__fresh687:
  %mem_ptr3147 = call i32* @oat_malloc ( i32 20 )
  %obj3148 = bitcast i32* %mem_ptr3147 to %Array* 
  %new_obj3149 = call %Array* @_Array_ctor ( %Array* %obj3148 )
  store %Array* %new_obj3149, %Array** @a587
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh684:
  %value3123 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call3124 = load i32* %value3123
  %vdecl_slot3125 = alloca i32
  store i32 %lhs_or_call3124, i32* %vdecl_slot3125
  %vdecl_slot3126 = alloca i32
  store i32 0, i32* %vdecl_slot3126
  br label %__cond683

__cond683:
  %lhs_or_call3127 = load i32* %vdecl_slot3126
  %length3128 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3129 = load i32* %length3128
  %bop3130 = icmp slt i32 %lhs_or_call3127, %lhs_or_call3129
  br i1 %bop3130, label %__body682, label %__post681

__fresh685:
  br label %__body682

__body682:
  %lhs_or_call3131 = load i32* %vdecl_slot3125
  %a3132 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3133 = load { i32, [ 0 x %Array* ] }** %a3132
  %lhs_or_call3134 = load i32* %vdecl_slot3126
  %bound_ptr3136 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3133, i32 0, i32 0
  %bound3137 = load i32* %bound_ptr3136
  call void @oat_array_bounds_check( i32 %bound3137, i32 %lhs_or_call3134 )
  %elt3135 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3133, i32 0, i32 1, i32 %lhs_or_call3134
  %lhs_or_call3138 = load %Array** %elt3135
  %total3140 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 5
  %total3139 = load i32 (%Array*)** %total3140
  %cast_op3141 = bitcast %Array %lhs_or_call3138 to %Array* 
  %ret3142 = call i32 %total3139 ( %Array* %cast_op3141 )
  %bop3143 = add i32 %lhs_or_call3131, %ret3142
  store i32 %bop3143, i32* %vdecl_slot3125
  %lhs_or_call3144 = load i32* %vdecl_slot3126
  %bop3145 = add i32 %lhs_or_call3144, 1
  store i32 %bop3145, i32* %vdecl_slot3126
  br label %__cond683

__fresh686:
  br label %__post681

__post681:
  %lhs_or_call3146 = load i32* %vdecl_slot3125
  ret i32 %lhs_or_call3146
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh678:
  %vdecl_slot3105 = alloca i32
  store i32 0, i32* %vdecl_slot3105
  br label %__cond677

__cond677:
  %lhs_or_call3106 = load i32* %vdecl_slot3105
  %length3107 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3108 = load i32* %length3107
  %bop3109 = icmp slt i32 %lhs_or_call3106, %lhs_or_call3108
  br i1 %bop3109, label %__body676, label %__post675

__fresh679:
  br label %__body676

__body676:
  %a3110 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3111 = load { i32, [ 0 x %Array* ] }** %a3110
  %lhs_or_call3112 = load i32* %vdecl_slot3105
  %bound_ptr3114 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3111, i32 0, i32 0
  %bound3115 = load i32* %bound_ptr3114
  call void @oat_array_bounds_check( i32 %bound3115, i32 %lhs_or_call3112 )
  %elt3113 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3111, i32 0, i32 1, i32 %lhs_or_call3112
  %lhs_or_call3116 = load %Array** %elt3113
  %fill_random_bits3118 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 4
  %fill_random_bits3117 = load void (%Array*)** %fill_random_bits3118
  %cast_op3119 = bitcast %Array %lhs_or_call3116 to %Array* 
  call void %fill_random_bits3117( %Array* %cast_op3119 )
  %lhs_or_call3120 = load i32* %vdecl_slot3105
  %bop3121 = add i32 %lhs_or_call3120, 1
  store i32 %bop3121, i32* %vdecl_slot3105
  br label %__cond677

__fresh680:
  br label %__post675

__post675:
  %value3122 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %value3122
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh670:
  %a3065 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3066 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3067 = load i32* %length3066
  %array_ptr3068 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3067 )
  %array3069 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3068 to { i32, [ 0 x %Array* ] }* 
  %_tmp5493070 = alloca i32
  store i32 %lhs_or_call3067, i32* %_tmp5493070
  %_tmp5503071 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3069, { i32, [ 0 x %Array* ] }** %_tmp5503071
  %vdecl_slot3072 = alloca i32
  store i32 0, i32* %vdecl_slot3072
  br label %__cond666

__cond666:
  %lhs_or_call3073 = load i32* %vdecl_slot3072
  %lhs_or_call3074 = load i32* %_tmp5493070
  %bop3075 = icmp slt i32 %lhs_or_call3073, %lhs_or_call3074
  br i1 %bop3075, label %__body665, label %__post664

__fresh671:
  br label %__body665

__body665:
  %lhs_or_call3076 = load { i32, [ 0 x %Array* ] }** %_tmp5503071
  %lhs_or_call3077 = load i32* %vdecl_slot3072
  %bound_ptr3079 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3076, i32 0, i32 0
  %bound3080 = load i32* %bound_ptr3079
  call void @oat_array_bounds_check( i32 %bound3080, i32 %lhs_or_call3077 )
  %elt3078 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3076, i32 0, i32 1, i32 %lhs_or_call3077
  %mem_ptr3081 = call i32* @oat_malloc ( i32 20 )
  %obj3082 = bitcast i32* %mem_ptr3081 to %Array* 
  %new_obj3083 = call %Array* @_Array_ctor ( %Array* %obj3082 )
  store %Array* %new_obj3083, %Array** %elt3078
  %lhs_or_call3084 = load i32* %vdecl_slot3072
  %bop3085 = add i32 %lhs_or_call3084, 1
  store i32 %bop3085, i32* %vdecl_slot3072
  br label %__cond666

__fresh672:
  br label %__post664

__post664:
  store { i32, [ 0 x %Array* ] }* %array3069, { i32, [ 0 x %Array* ] }** %a3065
  %vdecl_slot3086 = alloca i32
  store i32 0, i32* %vdecl_slot3086
  br label %__cond669

__cond669:
  %lhs_or_call3087 = load i32* %vdecl_slot3086
  %length3088 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3089 = load i32* %length3088
  %bop3090 = icmp slt i32 %lhs_or_call3087, %lhs_or_call3089
  br i1 %bop3090, label %__body668, label %__post667

__fresh673:
  br label %__body668

__body668:
  %length3091 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3092 = load i32* %length3091
  %a3093 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3094 = load { i32, [ 0 x %Array* ] }** %a3093
  %lhs_or_call3095 = load i32* %vdecl_slot3086
  %bound_ptr3097 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3094, i32 0, i32 0
  %bound3098 = load i32* %bound_ptr3097
  call void @oat_array_bounds_check( i32 %bound3098, i32 %lhs_or_call3095 )
  %elt3096 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3094, i32 0, i32 1, i32 %lhs_or_call3095
  %lhs_or_call3099 = load %Array** %elt3096
  %set_length3101 = getelementptr %_Array_vtable* @_Array_vtable584, i32 0, i32 2
  %set_length3100 = load void (%Array*, i32)** %set_length3101
  %cast_op3102 = bitcast %Array %lhs_or_call3099 to %Array* 
  call void %set_length3100( %Array* %cast_op3102, i32 %lhs_or_call3092 )
  %lhs_or_call3103 = load i32* %vdecl_slot3086
  %bop3104 = add i32 %lhs_or_call3103, 1
  store i32 %bop3104, i32* %vdecl_slot3086
  br label %__cond669

__fresh674:
  br label %__post667

__post667:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l3040){
__fresh661:
  %l_slot3041 = alloca i32
  store i32 %l3040, i32* %l_slot3041
  %length3042 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3043 = load i32* %l_slot3041
  store i32 %lhs_or_call3043, i32* %length3042
  %a3044 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3045 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3046 = load i32* %length3045
  %array_ptr3047 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3046 )
  %array3048 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3047 to { i32, [ 0 x %Array* ] }* 
  %_tmp5473049 = alloca i32
  store i32 %lhs_or_call3046, i32* %_tmp5473049
  %_tmp5483050 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3048, { i32, [ 0 x %Array* ] }** %_tmp5483050
  %vdecl_slot3051 = alloca i32
  store i32 0, i32* %vdecl_slot3051
  br label %__cond660

__cond660:
  %lhs_or_call3052 = load i32* %vdecl_slot3051
  %lhs_or_call3053 = load i32* %_tmp5473049
  %bop3054 = icmp slt i32 %lhs_or_call3052, %lhs_or_call3053
  br i1 %bop3054, label %__body659, label %__post658

__fresh662:
  br label %__body659

__body659:
  %lhs_or_call3055 = load { i32, [ 0 x %Array* ] }** %_tmp5483050
  %lhs_or_call3056 = load i32* %vdecl_slot3051
  %bound_ptr3058 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3055, i32 0, i32 0
  %bound3059 = load i32* %bound_ptr3058
  call void @oat_array_bounds_check( i32 %bound3059, i32 %lhs_or_call3056 )
  %elt3057 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3055, i32 0, i32 1, i32 %lhs_or_call3056
  %mem_ptr3060 = call i32* @oat_malloc ( i32 20 )
  %obj3061 = bitcast i32* %mem_ptr3060 to %Array* 
  %new_obj3062 = call %Array* @_Array_ctor ( %Array* %obj3061 )
  store %Array* %new_obj3062, %Array** %elt3057
  %lhs_or_call3063 = load i32* %vdecl_slot3051
  %bop3064 = add i32 %lhs_or_call3063, 1
  store i32 %bop3064, i32* %vdecl_slot3051
  br label %__cond660

__fresh663:
  br label %__post658

__post658:
  store { i32, [ 0 x %Array* ] }* %array3048, { i32, [ 0 x %Array* ] }** %a3044
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh655:
  %cast_op3015 = bitcast %Array* %_this1 to %Object* 
  %mem_ptr3016 = call i32* @oat_malloc ( i32 20 )
  %obj3017 = bitcast i32* %mem_ptr3016 to %Array* 
  %new_obj3018 = call %Object* @_Object_ctor ( %Array* %obj3017, %Object* %cast_op3015 )
  %_this1 = bitcast %Object* %new_obj3018 to %Array 
  %_name3019 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str586, i8** %_name3019
  %a3020 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr3021 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array3022 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3021 to { i32, [ 0 x %Array* ] }* 
  %_tmp5443023 = alloca i32
  store i32 0, i32* %_tmp5443023
  %_tmp5453024 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3022, { i32, [ 0 x %Array* ] }** %_tmp5453024
  %vdecl_slot3025 = alloca i32
  store i32 0, i32* %vdecl_slot3025
  br label %__cond654

__cond654:
  %lhs_or_call3026 = load i32* %vdecl_slot3025
  %lhs_or_call3027 = load i32* %_tmp5443023
  %bop3028 = icmp slt i32 %lhs_or_call3026, %lhs_or_call3027
  br i1 %bop3028, label %__body653, label %__post652

__fresh656:
  br label %__body653

__body653:
  %lhs_or_call3029 = load { i32, [ 0 x %Array* ] }** %_tmp5453024
  %lhs_or_call3030 = load i32* %vdecl_slot3025
  %bound_ptr3032 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3029, i32 0, i32 0
  %bound3033 = load i32* %bound_ptr3032
  call void @oat_array_bounds_check( i32 %bound3033, i32 %lhs_or_call3030 )
  %elt3031 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3029, i32 0, i32 1, i32 %lhs_or_call3030
  %mem_ptr3034 = call i32* @oat_malloc ( i32 20 )
  %obj3035 = bitcast i32* %mem_ptr3034 to %Array* 
  %new_obj3036 = call %Array* @_Array_ctor ( %Array* %obj3035 )
  store %Array* %new_obj3036, %Array** %elt3031
  %lhs_or_call3037 = load i32* %vdecl_slot3025
  %bop3038 = add i32 %lhs_or_call3037, 1
  store i32 %bop3038, i32* %vdecl_slot3025
  br label %__cond654

__fresh657:
  br label %__post652

__post652:
  store { i32, [ 0 x %Array* ] }* %array3022, { i32, [ 0 x %Array* ] }** %a3020
  %this_vtable3039 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable584, %_Array_vtable** %this_vtable3039
  %value3013 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %value3013
  %length3014 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %length3014
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh651:
  %_name3011 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3012 = load i8** %_name3011
  ret i8* %lhs_or_call3012
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh650:
  %_name3009 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str585, i8** %_name3009
  %this_vtable3010 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable583, %_Object_vtable** %this_vtable3010
  ret %Object* %_this1
}


