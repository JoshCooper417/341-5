%C = type { %_C_vtable*, i8*, i32, i32, i32, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, void (%C*)*, void (%C*, i32, i32)* }
%B = type { %_B_vtable*, i8*, i32, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@x279 = global i32 0, align 4
@a277 = global %A* zeroinitializer, align 4		; initialized by @a277.init278
@_const_str276.str. = private unnamed_addr constant [ 6 x i8 ] c "C: w=\00", align 4
@_const_str276 = alias bitcast([ 6 x i8 ]* @_const_str276.str. to i8*)@_const_str275.str. = private unnamed_addr constant [ 6 x i8 ] c "C: z=\00", align 4
@_const_str275 = alias bitcast([ 6 x i8 ]* @_const_str275.str. to i8*)@_const_str274.str. = private unnamed_addr constant [ 6 x i8 ] c "C: y=\00", align 4
@_const_str274 = alias bitcast([ 6 x i8 ]* @_const_str274.str. to i8*)@_const_str273.str. = private unnamed_addr constant [ 6 x i8 ] c "C: x=\00", align 4
@_const_str273 = alias bitcast([ 6 x i8 ]* @_const_str273.str. to i8*)@_const_str272.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: b=\00", align 4
@_const_str272 = alias bitcast([ 10 x i8 ]* @_const_str272.str. to i8*)@_const_str271.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: a=\00", align 4
@_const_str271 = alias bitcast([ 10 x i8 ]* @_const_str271.str. to i8*)@_const_str270.str. = private unnamed_addr constant [ 6 x i8 ] c "B: z=\00", align 4
@_const_str270 = alias bitcast([ 6 x i8 ]* @_const_str270.str. to i8*)@_const_str269.str. = private unnamed_addr constant [ 6 x i8 ] c "B: y=\00", align 4
@_const_str269 = alias bitcast([ 6 x i8 ]* @_const_str269.str. to i8*)@_const_str268.str. = private unnamed_addr constant [ 6 x i8 ] c "B: x=\00", align 4
@_const_str268 = alias bitcast([ 6 x i8 ]* @_const_str268.str. to i8*)@_const_str267.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str267 = alias bitcast([ 6 x i8 ]* @_const_str267.str. to i8*)@_C_vtable266 = private constant %_C_vtable {%_B_vtable* @_B_vtable265, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print, void (%C*, i32, i32)* @_C_foo}, align 4
@_B_vtable265 = private constant %_B_vtable {%_A_vtable* @_A_vtable264, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_print}, align 4
@_A_vtable264 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable263, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable263 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh535:
  call void @a277.init278(  )
  ret void
}


define i32 @program (i32 %argc3099, { i32, [ 0 x i8* ] }* %argv3097){
__fresh534:
  %argc_slot3100 = alloca i32
  store i32 %argc3099, i32* %argc_slot3100
  %argv_slot3098 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3097, { i32, [ 0 x i8* ] }** %argv_slot3098
  %lhs_or_call3101 = load i32* @x279
  %bop3102 = add i32 %lhs_or_call3101, 3
  %lhs_or_call3103 = load i32* @x279
  %bop3104 = add i32 %lhs_or_call3103, 2
  %lhs_or_call3105 = load i32* @x279
  %bop3106 = add i32 %lhs_or_call3105, 1
  %mem_ptr3107 = call i32* @oat_malloc ( i32 20 )
  %obj3108 = bitcast i32* %mem_ptr3107 to %B* 
  %new_obj3109 = call %B* @_B_ctor ( %B* %obj3108, i32 %bop3106, i32 %bop3104, i32 %bop3102 )
  %vdecl_slot3110 = alloca %B*
  store %B* %new_obj3109, %B** %vdecl_slot3110
  %mem_ptr3111 = call i32* @oat_malloc ( i32 24 )
  %obj3112 = bitcast i32* %mem_ptr3111 to %C* 
  %new_obj3113 = call %C* @_C_ctor ( %C* %obj3112, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot3114 = alloca %C*
  store %C* %new_obj3113, %C** %vdecl_slot3114
  %lhs_or_call3115 = load %A** @a277
  %print3117 = getelementptr %_A_vtable* @_A_vtable264, i32 0, i32 2
  %print3116 = load void (%A*)** %print3117
  %cast_op3118 = bitcast %A %lhs_or_call3115 to %A* 
  call void %print3116( %A* %cast_op3118 )
  %lhs_or_call3119 = load %B** %vdecl_slot3110
  %print3121 = getelementptr %_B_vtable* @_B_vtable265, i32 0, i32 2
  %print3120 = load void (%B*)** %print3121
  %cast_op3122 = bitcast %B %lhs_or_call3119 to %B* 
  call void %print3120( %B* %cast_op3122 )
  %lhs_or_call3123 = load %C** %vdecl_slot3114
  %print3125 = getelementptr %_C_vtable* @_C_vtable266, i32 0, i32 2
  %print3124 = load void (%C*)** %print3125
  %cast_op3126 = bitcast %C %lhs_or_call3123 to %C* 
  call void %print3124( %C* %cast_op3126 )
  %lhs_or_call3127 = load i32* @x279
  %bop3128 = add i32 %lhs_or_call3127, 2
  %lhs_or_call3129 = load i32* @x279
  %bop3130 = add i32 %lhs_or_call3129, 1
  %lhs_or_call3131 = load %C** %vdecl_slot3114
  %foo3133 = getelementptr %_C_vtable* @_C_vtable266, i32 0, i32 3
  %foo3132 = load void (%C*, i32, i32)** %foo3133
  %cast_op3134 = bitcast %C %lhs_or_call3131 to %C* 
  call void %foo3132( %C* %cast_op3134, i32 %bop3130, i32 %bop3128 )
  ret i32 0
}


define void @a277.init278 (){
__fresh533:
  %mem_ptr3094 = call i32* @oat_malloc ( i32 12 )
  %obj3095 = bitcast i32* %mem_ptr3094 to %A* 
  %new_obj3096 = call %A* @_A_ctor ( %A* %obj3095, i32 3 )
  store %A* %new_obj3096, %A** @a277
  ret void
}


define void @_C_print (%C* %_this1){
__fresh532:
  %x3078 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call3079 = load i32* %x3078
  %ret3080 = call i8* @string_of_int ( i32 %lhs_or_call3079 )
  %ret3081 = call i8* @string_cat ( i8* @_const_str273, i8* %ret3080 )
  call void @print_string( i8* %ret3081 )
  %y3082 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call3083 = load i32* %y3082
  %ret3084 = call i8* @string_of_int ( i32 %lhs_or_call3083 )
  %ret3085 = call i8* @string_cat ( i8* @_const_str274, i8* %ret3084 )
  call void @print_string( i8* %ret3085 )
  %z3086 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call3087 = load i32* %z3086
  %ret3088 = call i8* @string_of_int ( i32 %lhs_or_call3087 )
  %ret3089 = call i8* @string_cat ( i8* @_const_str275, i8* %ret3088 )
  call void @print_string( i8* %ret3089 )
  %w3090 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call3091 = load i32* %w3090
  %ret3092 = call i8* @string_of_int ( i32 %lhs_or_call3091 )
  %ret3093 = call i8* @string_cat ( i8* @_const_str276, i8* %ret3092 )
  call void @print_string( i8* %ret3093 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a3070, i32 %b3068){
__fresh531:
  %a_slot3071 = alloca i32
  store i32 %a3070, i32* %a_slot3071
  %b_slot3069 = alloca i32
  store i32 %b3068, i32* %b_slot3069
  %lhs_or_call3072 = load i32* %a_slot3071
  %ret3073 = call i8* @string_of_int ( i32 %lhs_or_call3072 )
  %ret3074 = call i8* @string_cat ( i8* @_const_str271, i8* %ret3073 )
  call void @print_string( i8* %ret3074 )
  %lhs_or_call3075 = load i32* %b_slot3069
  %ret3076 = call i8* @string_of_int ( i32 %lhs_or_call3075 )
  %ret3077 = call i8* @string_cat ( i8* @_const_str272, i8* %ret3076 )
  call void @print_string( i8* %ret3077 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x3053, i32 %y3051, i32 %z3049, i32 %w3047){
__fresh530:
  %x_slot3054 = alloca i32
  store i32 %x3053, i32* %x_slot3054
  %y_slot3052 = alloca i32
  store i32 %y3051, i32* %y_slot3052
  %z_slot3050 = alloca i32
  store i32 %z3049, i32* %z_slot3050
  %w_slot3048 = alloca i32
  store i32 %w3047, i32* %w_slot3048
  %lhs_or_call3055 = load %C* %_this1
  %lhs_or_call3056 = load i32* %x_slot3054
  %lhs_or_call3057 = load i32* %y_slot3052
  %lhs_or_call3058 = load i32* %z_slot3050
  %cast_op3059 = bitcast %C %lhs_or_call3055 to i32 
  %cast_op3060 = bitcast i32 %lhs_or_call3058 to %B* 
  %mem_ptr3061 = call i32* @oat_malloc ( i32 20 )
  %obj3062 = bitcast i32* %mem_ptr3061 to %B* 
  %new_obj3063 = call %B* @_B_ctor ( %B* %obj3062, %B* %cast_op3060, i32 %lhs_or_call3057, i32 %lhs_or_call3056, i32 %cast_op3059 )
  %_name3064 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call3065 = load %C* %_this1
  %cast_op3066 = bitcast %C %lhs_or_call3065 to i8* 
  store i8* %cast_op3066, i8** %_name3064
  %this_vtable3067 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable3067
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh529:
  %x3035 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call3036 = load i32* %x3035
  %ret3037 = call i8* @string_of_int ( i32 %lhs_or_call3036 )
  %ret3038 = call i8* @string_cat ( i8* @_const_str268, i8* %ret3037 )
  call void @print_string( i8* %ret3038 )
  %y3039 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call3040 = load i32* %y3039
  %ret3041 = call i8* @string_of_int ( i32 %lhs_or_call3040 )
  %ret3042 = call i8* @string_cat ( i8* @_const_str269, i8* %ret3041 )
  call void @print_string( i8* %ret3042 )
  %z3043 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call3044 = load i32* %z3043
  %ret3045 = call i8* @string_of_int ( i32 %lhs_or_call3044 )
  %ret3046 = call i8* @string_cat ( i8* @_const_str270, i8* %ret3045 )
  call void @print_string( i8* %ret3046 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x3022, i32 %y3020, i32 %z3018){
__fresh528:
  %x_slot3023 = alloca i32
  store i32 %x3022, i32* %x_slot3023
  %y_slot3021 = alloca i32
  store i32 %y3020, i32* %y_slot3021
  %z_slot3019 = alloca i32
  store i32 %z3018, i32* %z_slot3019
  %lhs_or_call3024 = load %B* %_this1
  %lhs_or_call3025 = load i32* %x_slot3023
  %cast_op3026 = bitcast %B %lhs_or_call3024 to i32 
  %cast_op3027 = bitcast i32 %lhs_or_call3025 to %A* 
  %mem_ptr3028 = call i32* @oat_malloc ( i32 12 )
  %obj3029 = bitcast i32* %mem_ptr3028 to %A* 
  %new_obj3030 = call %A* @_A_ctor ( %A* %obj3029, %A* %cast_op3027, i32 %cast_op3026 )
  %_name3031 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call3032 = load %B* %_this1
  %cast_op3033 = bitcast %B %lhs_or_call3032 to i8* 
  store i8* %cast_op3033, i8** %_name3031
  %this_vtable3034 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable3034
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh527:
  %x3014 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call3015 = load i32* %x3014
  %ret3016 = call i8* @string_of_int ( i32 %lhs_or_call3015 )
  %ret3017 = call i8* @string_cat ( i8* @_const_str267, i8* %ret3016 )
  call void @print_string( i8* %ret3017 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x3003){
__fresh526:
  %x_slot3004 = alloca i32
  store i32 %x3003, i32* %x_slot3004
  %lhs_or_call3005 = load %A* %_this1
  %cast_op3006 = bitcast %A %lhs_or_call3005 to %Object* 
  %mem_ptr3007 = call i32* @oat_malloc ( i32 8 )
  %obj3008 = bitcast i32* %mem_ptr3007 to %Object* 
  %new_obj3009 = call %Object* @_Object_ctor ( %Object* %obj3008, %Object* %cast_op3006 )
  %_name3010 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call3011 = load %A* %_this1
  %cast_op3012 = bitcast %A %lhs_or_call3011 to i8* 
  store i8* %cast_op3012, i8** %_name3010
  %this_vtable3013 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable3013
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh525:
  %_name3001 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3002 = load i8** %_name3001
  ret i8* %lhs_or_call3002
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh524:
  %_name2997 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2998 = load %Object* %_this1
  %cast_op2999 = bitcast %Object %lhs_or_call2998 to i8* 
  store i8* %cast_op2999, i8** %_name2997
  %this_vtable3000 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3000
  ret %Object* %_this1
}


