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
@_const_str597.str. = private unnamed_addr constant [ 2 x i8 ] c "6\00", align 4
@_const_str597 = alias bitcast([ 2 x i8 ]* @_const_str597.str. to i8*)@c595 = global %Charmander* zeroinitializer, align 4		; initialized by @c595.init596
@p593 = global %Pikachu* zeroinitializer, align 4		; initialized by @p593.init594
@_const_str592.str. = private unnamed_addr constant [ 2 x i8 ] c "5\00", align 4
@_const_str592 = alias bitcast([ 2 x i8 ]* @_const_str592.str. to i8*)@_const_str591.str. = private unnamed_addr constant [ 2 x i8 ] c "4\00", align 4
@_const_str591 = alias bitcast([ 2 x i8 ]* @_const_str591.str. to i8*)@_const_str590.str. = private unnamed_addr constant [ 11 x i8 ] c "Charmander\00", align 4
@_const_str590 = alias bitcast([ 11 x i8 ]* @_const_str590.str. to i8*)@_const_str589.str. = private unnamed_addr constant [ 2 x i8 ] c "3\00", align 4
@_const_str589 = alias bitcast([ 2 x i8 ]* @_const_str589.str. to i8*)@_const_str587.str. = private unnamed_addr constant [ 2 x i8 ] c "2\00", align 4
@_const_str587 = alias bitcast([ 2 x i8 ]* @_const_str587.str. to i8*)@_const_str588.str. = private unnamed_addr constant [ 8 x i8 ] c "Pikachu\00", align 4
@_const_str588 = alias bitcast([ 8 x i8 ]* @_const_str588.str. to i8*)@_const_str586.str. = private unnamed_addr constant [ 2 x i8 ] c "9\00", align 4
@_const_str586 = alias bitcast([ 2 x i8 ]* @_const_str586.str. to i8*)@_const_str585.str. = private unnamed_addr constant [ 8 x i8 ] c "Pokemon\00", align 4
@_const_str585 = alias bitcast([ 8 x i8 ]* @_const_str585.str. to i8*)@_const_str584.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str584 = alias bitcast([ 7 x i8 ]* @_const_str584.str. to i8*)@_Charmander_vtable583 = private constant %_Charmander_vtable {%_Pokemon_vtable* @_Pokemon_vtable581, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Charmander*, %Pikachu*)* @_Charmander_attack, void (%Charmander*)* @_Charmander_noise}, align 4
@_Pikachu_vtable582 = private constant %_Pikachu_vtable {%_Pokemon_vtable* @_Pokemon_vtable581, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Pikachu*, %Charmander*)* @_Pikachu_attack, void (%Pikachu*)* @_Pikachu_noise}, align 4
@_Pokemon_vtable581 = private constant %_Pokemon_vtable {%_Object_vtable* @_Object_vtable580, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit}, align 4
@_Object_vtable580 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh678:
  call void @p593.init594(  )
  call void @c595.init596(  )
  ret void
}


define i32 @program (i32 %argc3036, { i32, [ 0 x i8* ] }* %argv3034){
__fresh677:
  %argc_slot3037 = alloca i32
  store i32 %argc3036, i32* %argc_slot3037
  %argv_slot3035 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3034, { i32, [ 0 x i8* ] }** %argv_slot3035
  %lhs_or_call3038 = load %Pikachu** @p593
  %lhs_or_call3039 = load %Charmander** @c595
  %attack3041 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3040 = load void (%Charmander*, %Pikachu*)** %attack3041
  %cast_op3042 = bitcast %Charmander %lhs_or_call3039 to %Charmander* 
  call void %attack3040( %Charmander* %cast_op3042, %Pikachu* %lhs_or_call3038 )
  %lhs_or_call3043 = load %Charmander** @c595
  %lhs_or_call3044 = load %Pikachu** @p593
  %attack3046 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 3
  %attack3045 = load void (%Pikachu*, %Charmander*)** %attack3046
  %cast_op3047 = bitcast %Pikachu %lhs_or_call3044 to %Pikachu* 
  call void %attack3045( %Pikachu* %cast_op3047, %Charmander* %lhs_or_call3043 )
  %lhs_or_call3048 = load %Pikachu** @p593
  %lhs_or_call3049 = load %Charmander** @c595
  %attack3051 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3050 = load void (%Charmander*, %Pikachu*)** %attack3051
  %cast_op3052 = bitcast %Charmander %lhs_or_call3049 to %Charmander* 
  call void %attack3050( %Charmander* %cast_op3052, %Pikachu* %lhs_or_call3048 )
  %lhs_or_call3053 = load %Charmander** @c595
  %lhs_or_call3054 = load %Pikachu** @p593
  %attack3056 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 3
  %attack3055 = load void (%Pikachu*, %Charmander*)** %attack3056
  %cast_op3057 = bitcast %Pikachu %lhs_or_call3054 to %Pikachu* 
  call void %attack3055( %Pikachu* %cast_op3057, %Charmander* %lhs_or_call3053 )
  %lhs_or_call3058 = load %Pikachu** @p593
  %lhs_or_call3059 = load %Charmander** @c595
  %attack3061 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3060 = load void (%Charmander*, %Pikachu*)** %attack3061
  %cast_op3062 = bitcast %Charmander %lhs_or_call3059 to %Charmander* 
  call void %attack3060( %Charmander* %cast_op3062, %Pikachu* %lhs_or_call3058 )
  %lhs_or_call3063 = load %Charmander** @c595
  %lhs_or_call3064 = load %Pikachu** @p593
  %attack3066 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 3
  %attack3065 = load void (%Pikachu*, %Charmander*)** %attack3066
  %cast_op3067 = bitcast %Pikachu %lhs_or_call3064 to %Pikachu* 
  call void %attack3065( %Pikachu* %cast_op3067, %Charmander* %lhs_or_call3063 )
  %lhs_or_call3068 = load %Pikachu** @p593
  %lhs_or_call3069 = load %Charmander** @c595
  %attack3071 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3070 = load void (%Charmander*, %Pikachu*)** %attack3071
  %cast_op3072 = bitcast %Charmander %lhs_or_call3069 to %Charmander* 
  call void %attack3070( %Charmander* %cast_op3072, %Pikachu* %lhs_or_call3068 )
  %lhs_or_call3073 = load %Charmander** @c595
  %lhs_or_call3074 = load %Pikachu** @p593
  %attack3076 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 3
  %attack3075 = load void (%Pikachu*, %Charmander*)** %attack3076
  %cast_op3077 = bitcast %Pikachu %lhs_or_call3074 to %Pikachu* 
  call void %attack3075( %Pikachu* %cast_op3077, %Charmander* %lhs_or_call3073 )
  %lhs_or_call3078 = load %Pikachu** @p593
  %lhs_or_call3079 = load %Charmander** @c595
  %attack3081 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3080 = load void (%Charmander*, %Pikachu*)** %attack3081
  %cast_op3082 = bitcast %Charmander %lhs_or_call3079 to %Charmander* 
  call void %attack3080( %Charmander* %cast_op3082, %Pikachu* %lhs_or_call3078 )
  call void @print_string( i8* @_const_str597 )
  ret i32 0
}


define void @c595.init596 (){
__fresh676:
  %mem_ptr3031 = call i32* @oat_malloc ( i32 20 )
  %obj3032 = bitcast i32* %mem_ptr3031 to %Charmander* 
  %new_obj3033 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3032 )
  store %Charmander* %new_obj3033, %Charmander** @c595
  ret void
}


define void @p593.init594 (){
__fresh675:
  %mem_ptr3028 = call i32* @oat_malloc ( i32 20 )
  %obj3029 = bitcast i32* %mem_ptr3028 to %Pikachu* 
  %new_obj3030 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3029 )
  store %Pikachu* %new_obj3030, %Pikachu** @p593
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh674:
  %voice3026 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3027 = load i8** %voice3026
  call void @print_string( i8* %lhs_or_call3027 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3016){
__fresh673:
  %pi_slot3017 = alloca %Pikachu*
  store %Pikachu* %pi3016, %Pikachu** %pi_slot3017
  call void @print_string( i8* @_const_str592 )
  %voice3018 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3019 = load i8** %voice3018
  call void @print_string( i8* %lhs_or_call3019 )
  %speed3020 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3021 = load i32* %speed3020
  %lhs_or_call3022 = load %Pikachu** %pi_slot3017
  %gethit3024 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 2
  %gethit3023 = load void (%Pokemon*, i32)** %gethit3024
  %cast_op3025 = bitcast %Pikachu %lhs_or_call3022 to %Pokemon* 
  call void %gethit3023( %Pokemon* %cast_op3025, i32 %lhs_or_call3021 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh672:
  %mem_ptr3010 = call i32* @oat_malloc ( i32 16 )
  %obj3011 = bitcast i32* %mem_ptr3010 to %Pokemon* 
  %new_obj3012 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3011 )
  %_this1 = bitcast %Pokemon* %new_obj3012 to %Charmander 
  %_name3013 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str590, i8** %_name3013
  %voice3014 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str591, i8** %voice3014
  %this_vtable3015 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable583, %_Charmander_vtable** %this_vtable3015
  %speed3009 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3009
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh671:
  %voice3007 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3008 = load i8** %voice3007
  call void @print_string( i8* %lhs_or_call3008 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch2997){
__fresh670:
  %ch_slot2998 = alloca %Charmander*
  store %Charmander* %ch2997, %Charmander** %ch_slot2998
  call void @print_string( i8* @_const_str589 )
  %voice2999 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3000 = load i8** %voice2999
  call void @print_string( i8* %lhs_or_call3000 )
  %speed3001 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3002 = load i32* %speed3001
  %lhs_or_call3003 = load %Charmander** %ch_slot2998
  %gethit3005 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 2
  %gethit3004 = load void (%Pokemon*, i32)** %gethit3005
  %cast_op3006 = bitcast %Charmander %lhs_or_call3003 to %Pokemon* 
  call void %gethit3004( %Pokemon* %cast_op3006, i32 %lhs_or_call3002 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh669:
  %mem_ptr2992 = call i32* @oat_malloc ( i32 16 )
  %obj2993 = bitcast i32* %mem_ptr2992 to %Pokemon* 
  %new_obj2994 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj2993 )
  %_this1 = bitcast %Pokemon* %new_obj2994 to %Pikachu 
  %_name2995 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str588, i8** %_name2995
  %this_vtable2996 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable582, %_Pikachu_vtable** %this_vtable2996
  %speed2990 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed2990
  %voice2991 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str587, i8** %voice2991
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s2981){
__fresh668:
  %s_slot2982 = alloca i32
  store i32 %s2981, i32* %s_slot2982
  %life2983 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life2984 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call2985 = load i32* %life2984
  %lhs_or_call2986 = load i32* %s_slot2982
  %bop2987 = sub i32 %lhs_or_call2985, %lhs_or_call2986
  store i32 %bop2987, i32* %life2983
  %voice2988 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call2989 = load i8** %voice2988
  call void @print_string( i8* %lhs_or_call2989 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh667:
  %mem_ptr2975 = call i32* @oat_malloc ( i32 8 )
  %obj2976 = bitcast i32* %mem_ptr2975 to %Object* 
  %new_obj2977 = call %Object* @_Object_ctor ( %Object* %obj2976 )
  %_this1 = bitcast %Object* %new_obj2977 to %Pokemon 
  %_name2978 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str585, i8** %_name2978
  %voice2979 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str586, i8** %voice2979
  %this_vtable2980 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable581, %_Pokemon_vtable** %this_vtable2980
  %life2974 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life2974
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh666:
  %_name2972 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2973 = load i8** %_name2972
  ret i8* %lhs_or_call2973
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh665:
  %_name2970 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str584, i8** %_name2970
  %this_vtable2971 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable580, %_Object_vtable** %this_vtable2971
  ret %Object* %_this1
}


