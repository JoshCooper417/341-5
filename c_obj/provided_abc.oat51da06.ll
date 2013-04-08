%C2 = type { %_C2_vtable*, i8* }
%_C2_vtable = type { %_B_vtable*, i8* (%Object*)* }
%C1 = type { %_C1_vtable*, i8* }
%_C1_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str557.str. = private unnamed_addr constant [ 3 x i8 ] c "C2\00", align 4
@_const_str557 = alias bitcast([ 3 x i8 ]* @_const_str557.str. to i8*)@_const_str556.str. = private unnamed_addr constant [ 3 x i8 ] c "C1\00", align 4
@_const_str556 = alias bitcast([ 3 x i8 ]* @_const_str556.str. to i8*)@_const_str555.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str555 = alias bitcast([ 2 x i8 ]* @_const_str555.str. to i8*)@_const_str554.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str554 = alias bitcast([ 2 x i8 ]* @_const_str554.str. to i8*)@_const_str553.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str553 = alias bitcast([ 7 x i8 ]* @_const_str553.str. to i8*)@_C2_vtable552 = private constant %_C2_vtable {%_B_vtable* @_B_vtable550, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable551 = private constant %_C1_vtable {%_B_vtable* @_B_vtable550, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable550 = private constant %_B_vtable {%_A_vtable* @_A_vtable549, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable549 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable548, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable548 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh760:
  ret void
}


define i32 @program (i32 %argc3115, { i32, [ 0 x i8* ] }* %argv3113){
__fresh759:
  %argc_slot3116 = alloca i32
  store i32 %argc3115, i32* %argc_slot3116
  %argv_slot3114 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3113, { i32, [ 0 x i8* ] }** %argv_slot3114
  %mem_ptr3117 = call i32* @oat_malloc ( i32 8 )
  %obj3118 = bitcast i32* %mem_ptr3117 to %A* 
  %new_obj3119 = call %A* @_A_ctor ( %A* %obj3118 )
  %vdecl_slot3120 = alloca %A*
  store %A* %new_obj3119, %A** %vdecl_slot3120
  %mem_ptr3121 = call i32* @oat_malloc ( i32 8 )
  %obj3122 = bitcast i32* %mem_ptr3121 to %B* 
  %new_obj3123 = call %B* @_B_ctor ( %B* %obj3122 )
  %vdecl_slot3124 = alloca %B*
  store %B* %new_obj3123, %B** %vdecl_slot3124
  %mem_ptr3125 = call i32* @oat_malloc ( i32 8 )
  %obj3126 = bitcast i32* %mem_ptr3125 to %C1* 
  %new_obj3127 = call %C1* @_C1_ctor ( %C1* %obj3126 )
  %vdecl_slot3128 = alloca %C1*
  store %C1* %new_obj3127, %C1** %vdecl_slot3128
  %mem_ptr3129 = call i32* @oat_malloc ( i32 8 )
  %obj3130 = bitcast i32* %mem_ptr3129 to %C2* 
  %new_obj3131 = call %C2* @_C2_ctor ( %C2* %obj3130 )
  %vdecl_slot3132 = alloca %C2*
  store %C2* %new_obj3131, %C2** %vdecl_slot3132
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh758:
  %mem_ptr3108 = call i32* @oat_malloc ( i32 8 )
  %obj3109 = bitcast i32* %mem_ptr3108 to %B* 
  %new_obj3110 = call %B* @_B_ctor ( %B* %obj3109 )
  %_this1 = bitcast %B* %new_obj3110 to %C2 
  %_name3111 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str557, i8** %_name3111
  %this_vtable3112 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable552, %_C2_vtable** %this_vtable3112
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh757:
  %mem_ptr3103 = call i32* @oat_malloc ( i32 8 )
  %obj3104 = bitcast i32* %mem_ptr3103 to %B* 
  %new_obj3105 = call %B* @_B_ctor ( %B* %obj3104 )
  %_this1 = bitcast %B* %new_obj3105 to %C1 
  %_name3106 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str556, i8** %_name3106
  %this_vtable3107 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable551, %_C1_vtable** %this_vtable3107
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh756:
  %mem_ptr3098 = call i32* @oat_malloc ( i32 8 )
  %obj3099 = bitcast i32* %mem_ptr3098 to %A* 
  %new_obj3100 = call %A* @_A_ctor ( %A* %obj3099 )
  %_this1 = bitcast %A* %new_obj3100 to %B 
  %_name3101 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str555, i8** %_name3101
  %this_vtable3102 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable550, %_B_vtable** %this_vtable3102
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh755:
  %mem_ptr3093 = call i32* @oat_malloc ( i32 8 )
  %obj3094 = bitcast i32* %mem_ptr3093 to %Object* 
  %new_obj3095 = call %Object* @_Object_ctor ( %Object* %obj3094 )
  %_this1 = bitcast %Object* %new_obj3095 to %A 
  %_name3096 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str554, i8** %_name3096
  %this_vtable3097 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable549, %_A_vtable** %this_vtable3097
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh754:
  %_name3091 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3092 = load i8** %_name3091
  ret i8* %lhs_or_call3092
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh753:
  %_name3089 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str553, i8** %_name3089
  %this_vtable3090 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable548, %_Object_vtable** %this_vtable3090
  ret %Object* %_this1
}


