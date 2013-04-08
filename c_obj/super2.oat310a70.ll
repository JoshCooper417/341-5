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


define i32 @program (i32 %argc3068, { i32, [ 0 x i8* ] }* %argv3066){
__fresh751:
  %argc_slot3069 = alloca i32
  store i32 %argc3068, i32* %argc_slot3069
  %argv_slot3067 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3066, { i32, [ 0 x i8* ] }** %argv_slot3067
  %mem_ptr3070 = call i32* @oat_malloc ( i32 8 )
  %obj3071 = bitcast i32* %mem_ptr3070 to %C* 
  %new_obj3072 = call %C* @_C_ctor ( %C* %obj3071 )
  %vdecl_slot3073 = alloca %C*
  store %C* %new_obj3072, %C** %vdecl_slot3073
  %lhs_or_call3074 = load %C** %vdecl_slot3073
  %vtable_ptr3075 = getelementptr %C* %lhs_or_call3074, i32 0
  %vtable3076 = load %_C_vtable** %vtable_ptr3075
  %six3078 = getelementptr %_C_vtable* %vtable3076, i32 0, i32 2
  %six3077 = load i32 (%C*)** %six3078
  %cast_op3079 = bitcast %C %lhs_or_call3074 to %C* 
  %ret3080 = call i32 %six3077 ( %C* %cast_op3079 )
  %vdecl_slot3081 = alloca i32
  store i32 %ret3080, i32* %vdecl_slot3081
  %lhs_or_call3082 = load %C** %vdecl_slot3073
  %vtable_ptr3083 = getelementptr %C* %lhs_or_call3082, i32 0
  %vtable3084 = load %_C_vtable** %vtable_ptr3083
  %f3086 = getelementptr %_C_vtable* %vtable3084, i32 0, i32 3
  %f3085 = load void (%C*)** %f3086
  %cast_op3087 = bitcast %C %lhs_or_call3082 to %C* 
  call void %f3085( %C* %cast_op3087 )
  %lhs_or_call3088 = load i32* %vdecl_slot3081
  ret i32 %lhs_or_call3088
}


define void @_C_f (%C* %_this1){
__fresh750:
  call void @print_string( i8* @_const_str547 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh749:
  %vtable_ptr3059 = getelementptr %C* %_this1, i32 0
  %vtable3060 = load %_C_vtable** %vtable_ptr3059
  %six3062 = getelementptr %_C_vtable* %vtable3060, i32 0, i32 2
  %six3061 = load i32 (%C*)** %six3062
  %cast_op3063 = bitcast %C %_this1 to %C* 
  %ret3064 = call i32 %six3061 ( %C* %cast_op3063 )
  %bop3065 = add i32 %ret3064, 3
  ret i32 %bop3065
}


define %C* @_C_ctor (%C* %_this1){
__fresh748:
  %mem_ptr3054 = call i32* @oat_malloc ( i32 8 )
  %obj3055 = bitcast i32* %mem_ptr3054 to %B* 
  %new_obj3056 = call %B* @_B_ctor ( %B* %obj3055 )
  %_this1 = bitcast %B* %new_obj3056 to %C 
  %_name3057 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str546, i8** %_name3057
  %this_vtable3058 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable540, %_C_vtable** %this_vtable3058
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh747:
  call void @print_string( i8* @_const_str545 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh746:
  %vtable_ptr3047 = getelementptr %B* %_this1, i32 0
  %vtable3048 = load %_B_vtable** %vtable_ptr3047
  %six3050 = getelementptr %_B_vtable* %vtable3048, i32 0, i32 2
  %six3049 = load i32 (%B*)** %six3050
  %cast_op3051 = bitcast %B %_this1 to %B* 
  %ret3052 = call i32 %six3049 ( %B* %cast_op3051 )
  %bop3053 = add i32 %ret3052, 2
  ret i32 %bop3053
}


define %B* @_B_ctor (%B* %_this1){
__fresh745:
  %mem_ptr3042 = call i32* @oat_malloc ( i32 8 )
  %obj3043 = bitcast i32* %mem_ptr3042 to %A* 
  %new_obj3044 = call %A* @_A_ctor ( %A* %obj3043 )
  %_this1 = bitcast %A* %new_obj3044 to %B 
  %_name3045 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str544, i8** %_name3045
  %this_vtable3046 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable539, %_B_vtable** %this_vtable3046
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
  %mem_ptr3037 = call i32* @oat_malloc ( i32 8 )
  %obj3038 = bitcast i32* %mem_ptr3037 to %Object* 
  %new_obj3039 = call %Object* @_Object_ctor ( %Object* %obj3038 )
  %_this1 = bitcast %Object* %new_obj3039 to %A 
  %_name3040 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str542, i8** %_name3040
  %this_vtable3041 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable538, %_A_vtable** %this_vtable3041
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh741:
  %_name3035 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call3036 = load i8** %_name3035
  ret i8* %lhs_or_call3036
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh740:
  %_name3033 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str541, i8** %_name3033
  %this_vtable3034 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable537, %_Object_vtable** %this_vtable3034
  ret %Object* %_this1
}


