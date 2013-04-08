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


define i32 @program (i32 %argc3126, { i32, [ 0 x i8* ] }* %argv3124){
__fresh759:
  %argc_slot3127 = alloca i32
  store i32 %argc3126, i32* %argc_slot3127
  %argv_slot3125 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3124, { i32, [ 0 x i8* ] }** %argv_slot3125
  %mem_ptr3128 = call i32* @oat_malloc ( i32 8 )
  %obj3129 = bitcast i32* %mem_ptr3128 to %A* 
  %new_obj3130 = call %A* @_A_ctor ( %A* %obj3129 )
  %vdecl_slot3131 = alloca %A*
  store %A* %new_obj3130, %A** %vdecl_slot3131
  %mem_ptr3132 = call i32* @oat_malloc ( i32 8 )
  %obj3133 = bitcast i32* %mem_ptr3132 to %B* 
  %new_obj3134 = call %B* @_B_ctor ( %B* %obj3133 )
  %vdecl_slot3135 = alloca %B*
  store %B* %new_obj3134, %B** %vdecl_slot3135
  %mem_ptr3136 = call i32* @oat_malloc ( i32 8 )
  %obj3137 = bitcast i32* %mem_ptr3136 to %C1* 
  %new_obj3138 = call %C1* @_C1_ctor ( %C1* %obj3137 )
  %vdecl_slot3139 = alloca %C1*
  store %C1* %new_obj3138, %C1** %vdecl_slot3139
  %mem_ptr3140 = call i32* @oat_malloc ( i32 8 )
  %obj3141 = bitcast i32* %mem_ptr3140 to %C2* 
  %new_obj3142 = call %C2* @_C2_ctor ( %C2* %obj3141 )
  %vdecl_slot3143 = alloca %C2*
  store %C2* %new_obj3142, %C2** %vdecl_slot3143
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh758:
  %mem_ptr3119 = call i32* @oat_malloc ( i32 8 )
  %obj3120 = bitcast i32* %mem_ptr3119 to %B* 
  %new_obj3121 = call %B* @_B_ctor ( %B* %obj3120 )
  %_this1 = bitcast %B* %new_obj3121 to %C2 
  %_name3122 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str557, i8** %_name3122
  %this_vtable3123 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable552, %_C2_vtable** %this_vtable3123
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh757:
  %mem_ptr3114 = call i32* @oat_malloc ( i32 8 )
  %obj3115 = bitcast i32* %mem_ptr3114 to %B* 
  %new_obj3116 = call %B* @_B_ctor ( %B* %obj3115 )
  %_this1 = bitcast %B* %new_obj3116 to %C1 
  %_name3117 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str556, i8** %_name3117
  %this_vtable3118 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable551, %_C1_vtable** %this_vtable3118
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh756:
  %mem_ptr3109 = call i32* @oat_malloc ( i32 8 )
  %obj3110 = bitcast i32* %mem_ptr3109 to %A* 
  %new_obj3111 = call %A* @_A_ctor ( %A* %obj3110 )
  %_this1 = bitcast %A* %new_obj3111 to %B 
  %_name3112 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str555, i8** %_name3112
  %this_vtable3113 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable550, %_B_vtable** %this_vtable3113
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh755:
  %mem_ptr3104 = call i32* @oat_malloc ( i32 8 )
  %obj3105 = bitcast i32* %mem_ptr3104 to %Object* 
  %new_obj3106 = call %Object* @_Object_ctor ( %Object* %obj3105 )
  %_this1 = bitcast %Object* %new_obj3106 to %A 
  %_name3107 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str554, i8** %_name3107
  %this_vtable3108 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable549, %_A_vtable** %this_vtable3108
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh754:
  %_name3102 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3103 = load i8** %_name3102
  ret i8* %lhs_or_call3103
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh753:
  %_name3100 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str553, i8** %_name3100
  %this_vtable3101 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable548, %_Object_vtable** %this_vtable3101
  ret %Object* %_this1
}


