%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)*, void (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)* }
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
@_const_str547.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str547 = alias bitcast([ 2 x i8 ]* @_const_str547.str. to i8*)@_const_str546.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str546 = alias bitcast([ 2 x i8 ]* @_const_str546.str. to i8*)@_const_str545.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str545 = alias bitcast([ 2 x i8 ]* @_const_str545.str. to i8*)@_const_str544.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str544 = alias bitcast([ 2 x i8 ]* @_const_str544.str. to i8*)@_const_str543.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str543 = alias bitcast([ 2 x i8 ]* @_const_str543.str. to i8*)@_const_str542.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str542 = alias bitcast([ 2 x i8 ]* @_const_str542.str. to i8*)@_const_str541.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str541 = alias bitcast([ 7 x i8 ]* @_const_str541.str. to i8*)@_C_vtable540 = private constant %_C_vtable {%_B_vtable* @_B_vtable539, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six, void (%C*)* @_C_f}, align 4
@_B_vtable539 = private constant %_B_vtable {%_A_vtable* @_A_vtable538, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six, void (%B*)* @_B_f}, align 4
@_A_vtable538 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable537, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six, void (%A*)* @_A_f}, align 4
@_Object_vtable537 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh752:
  ret void
}


define i32 @program (i32 %argc3079, { i32, [ 0 x i8* ] }* %argv3077){
__fresh751:
  %argc_slot3080 = alloca i32
  store i32 %argc3079, i32* %argc_slot3080
  %argv_slot3078 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3077, { i32, [ 0 x i8* ] }** %argv_slot3078
  %mem_ptr3081 = call i32* @oat_malloc ( i32 8 )
  %obj3082 = bitcast i32* %mem_ptr3081 to %C* 
  %new_obj3083 = call %C* @_C_ctor ( %C* %obj3082 )
  %vdecl_slot3084 = alloca %C*
  store %C* %new_obj3083, %C** %vdecl_slot3084
  %lhs_or_call3085 = load %C** %vdecl_slot3084
  %vtable_ptr3086 = getelementptr %C* %lhs_or_call3085, i32 0
  %vtable3087 = load %_C_vtable** %vtable_ptr3086
  %six3089 = getelementptr %_C_vtable* %vtable3087, i32 0, i32 2
  %six3088 = load i32 (%C*)** %six3089
  %cast_op3090 = bitcast %C %lhs_or_call3085 to %C* 
  %ret3091 = call i32 %six3088 ( %C* %cast_op3090 )
  %vdecl_slot3092 = alloca i32
  store i32 %ret3091, i32* %vdecl_slot3092
  %lhs_or_call3093 = load %C** %vdecl_slot3084
  %vtable_ptr3094 = getelementptr %C* %lhs_or_call3093, i32 0
  %vtable3095 = load %_C_vtable** %vtable_ptr3094
  %f3097 = getelementptr %_C_vtable* %vtable3095, i32 0, i32 3
  %f3096 = load void (%C*)** %f3097
  %cast_op3098 = bitcast %C %lhs_or_call3093 to %C* 
  call void %f3096( %C* %cast_op3098 )
  %lhs_or_call3099 = load i32* %vdecl_slot3092
  ret i32 %lhs_or_call3099
}


define void @_C_f (%C* %_this1){
__fresh750:
  call void @print_string( i8* @_const_str547 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh749:
  %vtable_ptr3070 = getelementptr %C* %_this1, i32 0
  %vtable3071 = load %_C_vtable** %vtable_ptr3070
  %six3073 = getelementptr %_C_vtable* %vtable3071, i32 0, i32 2
  %six3072 = load i32 (%C*)** %six3073
  %cast_op3074 = bitcast %C %_this1 to %C* 
  %ret3075 = call i32 %six3072 ( %C* %cast_op3074 )
  %bop3076 = add i32 %ret3075, 3
  ret i32 %bop3076
}


define %C* @_C_ctor (%C* %_this1){
__fresh748:
  %mem_ptr3065 = call i32* @oat_malloc ( i32 8 )
  %obj3066 = bitcast i32* %mem_ptr3065 to %B* 
  %new_obj3067 = call %B* @_B_ctor ( %B* %obj3066 )
  %_this1 = bitcast %B* %new_obj3067 to %C 
  %_name3068 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str546, i8** %_name3068
  %this_vtable3069 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable540, %_C_vtable** %this_vtable3069
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh747:
  call void @print_string( i8* @_const_str545 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh746:
  %vtable_ptr3058 = getelementptr %B* %_this1, i32 0
  %vtable3059 = load %_B_vtable** %vtable_ptr3058
  %six3061 = getelementptr %_B_vtable* %vtable3059, i32 0, i32 2
  %six3060 = load i32 (%B*)** %six3061
  %cast_op3062 = bitcast %B %_this1 to %B* 
  %ret3063 = call i32 %six3060 ( %B* %cast_op3062 )
  %bop3064 = add i32 %ret3063, 2
  ret i32 %bop3064
}


define %B* @_B_ctor (%B* %_this1){
__fresh745:
  %mem_ptr3053 = call i32* @oat_malloc ( i32 8 )
  %obj3054 = bitcast i32* %mem_ptr3053 to %A* 
  %new_obj3055 = call %A* @_A_ctor ( %A* %obj3054 )
  %_this1 = bitcast %A* %new_obj3055 to %B 
  %_name3056 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %_name3056
  %this_vtable3057 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable539, %_B_vtable** %this_vtable3057
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh744:
  call void @print_string( i8* @_const_str543 )
  ret void
}


define i32 @_A_six (%A* %_this1){
__fresh743:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh742:
  %mem_ptr3048 = call i32* @oat_malloc ( i32 8 )
  %obj3049 = bitcast i32* %mem_ptr3048 to %Object* 
  %new_obj3050 = call %Object* @_Object_ctor ( %Object* %obj3049 )
  %_this1 = bitcast %Object* %new_obj3050 to %A 
  %_name3051 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str542, i8** %_name3051
  %this_vtable3052 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable538, %_A_vtable** %this_vtable3052
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh741:
  %_name3046 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3047 = load i8** %_name3046
  ret i8* %lhs_or_call3047
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh740:
  %_name3044 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str541, i8** %_name3044
  %this_vtable3045 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable537, %_Object_vtable** %this_vtable3045
  ret %Object* %_this1
}


