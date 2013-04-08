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
@_const_str556.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str556 = alias bitcast([ 2 x i8 ]* @_const_str556.str. to i8*)@_const_str555.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str555 = alias bitcast([ 2 x i8 ]* @_const_str555.str. to i8*)@_const_str554.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str554 = alias bitcast([ 2 x i8 ]* @_const_str554.str. to i8*)@_const_str553.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str553 = alias bitcast([ 2 x i8 ]* @_const_str553.str. to i8*)@_const_str552.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str552 = alias bitcast([ 2 x i8 ]* @_const_str552.str. to i8*)@_const_str551.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str551 = alias bitcast([ 2 x i8 ]* @_const_str551.str. to i8*)@_const_str550.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str550 = alias bitcast([ 7 x i8 ]* @_const_str550.str. to i8*)@_C_vtable549 = private constant %_C_vtable {%_B_vtable* @_B_vtable548, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six, void (%C*)* @_C_f}, align 4
@_B_vtable548 = private constant %_B_vtable {%_A_vtable* @_A_vtable547, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six, void (%B*)* @_B_f}, align 4
@_A_vtable547 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable546, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six, void (%A*)* @_A_f}, align 4
@_Object_vtable546 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1027:
  ret void
}


define i32 @program (i32 %argc3296, { i32, [ 0 x i8* ] }* %argv3294){
__fresh1026:
  %argc_slot3297 = alloca i32
  store i32 %argc3296, i32* %argc_slot3297
  %argv_slot3295 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3294, { i32, [ 0 x i8* ] }** %argv_slot3295
  %mem_ptr3298 = call i32* @oat_malloc ( i32 8 )
  %obj3299 = bitcast i32* %mem_ptr3298 to %C* 
  %new_obj3300 = call %C* @_C_ctor ( %C* %obj3299 )
  %vdecl_slot3301 = alloca %C*
  store %C* %new_obj3300, %C** %vdecl_slot3301
  %lhs_or_call3302 = load %C** %vdecl_slot3301
  %vtable_ptr3303 = getelementptr %C* %lhs_or_call3302, i32 0
  %vtable3304 = load %_C_vtable** %vtable_ptr3303
  %six3306 = getelementptr %_C_vtable* %vtable3304, i32 0, i32 2
  %six3305 = load i32 (%C*)** %six3306
  %cast_op3307 = bitcast %C %lhs_or_call3302 to %C* 
  %ret3308 = call i32 %six3305 ( %C* %cast_op3307 )
  %vdecl_slot3309 = alloca i32
  store i32 %ret3308, i32* %vdecl_slot3309
  %lhs_or_call3310 = load %C** %vdecl_slot3301
  %vtable_ptr3311 = getelementptr %C* %lhs_or_call3310, i32 0
  %vtable3312 = load %_C_vtable** %vtable_ptr3311
  %f3314 = getelementptr %_C_vtable* %vtable3312, i32 0, i32 3
  %f3313 = load void (%C*)** %f3314
  %cast_op3315 = bitcast %C %lhs_or_call3310 to %C* 
  call void %f3313( %C* %cast_op3315 )
  %lhs_or_call3316 = load i32* %vdecl_slot3309
  ret i32 %lhs_or_call3316
}


define void @_C_f (%C* %_this1){
__fresh1025:
  call void @print_string( i8* @_const_str556 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh1024:
  %vtable_ptr3287 = getelementptr %C* %_this1, i32 0
  %vtable3288 = load %_C_vtable** %vtable_ptr3287
  %six3290 = getelementptr %_C_vtable* %vtable3288, i32 0, i32 2
  %six3289 = load i32 (%C*)** %six3290
  %cast_op3291 = bitcast %C %_this1 to %C* 
  %ret3292 = call i32 %six3289 ( %C* %cast_op3291 )
  %bop3293 = add i32 %ret3292, 3
  ret i32 %bop3293
}


define %C* @_C_ctor (%C* %_this1){
__fresh1023:
  %mem_ptr3282 = call i32* @oat_malloc ( i32 8 )
  %obj3283 = bitcast i32* %mem_ptr3282 to %B* 
  %new_obj3284 = call %B* @_B_ctor ( %B* %obj3283 )
  %_this1 = bitcast %B* %new_obj3284 to %C 
  %_name3285 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str555, i8** %_name3285
  %this_vtable3286 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable549, %_C_vtable** %this_vtable3286
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh1022:
  call void @print_string( i8* @_const_str554 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh1021:
  %vtable_ptr3275 = getelementptr %B* %_this1, i32 0
  %vtable3276 = load %_B_vtable** %vtable_ptr3275
  %six3278 = getelementptr %_B_vtable* %vtable3276, i32 0, i32 2
  %six3277 = load i32 (%B*)** %six3278
  %cast_op3279 = bitcast %B %_this1 to %B* 
  %ret3280 = call i32 %six3277 ( %B* %cast_op3279 )
  %bop3281 = add i32 %ret3280, 2
  ret i32 %bop3281
}


define %B* @_B_ctor (%B* %_this1){
__fresh1020:
  %mem_ptr3270 = call i32* @oat_malloc ( i32 8 )
  %obj3271 = bitcast i32* %mem_ptr3270 to %A* 
  %new_obj3272 = call %A* @_A_ctor ( %A* %obj3271 )
  %_this1 = bitcast %A* %new_obj3272 to %B 
  %_name3273 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str553, i8** %_name3273
  %this_vtable3274 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable548, %_B_vtable** %this_vtable3274
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh1019:
  call void @print_string( i8* @_const_str552 )
  ret void
}


define i32 @_A_six (%A* %_this1){
__fresh1018:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh1017:
  %mem_ptr3265 = call i32* @oat_malloc ( i32 8 )
  %obj3266 = bitcast i32* %mem_ptr3265 to %Object* 
  %new_obj3267 = call %Object* @_Object_ctor ( %Object* %obj3266 )
  %_this1 = bitcast %Object* %new_obj3267 to %A 
  %_name3268 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str551, i8** %_name3268
  %this_vtable3269 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable547, %_A_vtable** %this_vtable3269
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1016:
  %_name3263 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3264 = load i8** %_name3263
  ret i8* %lhs_or_call3264
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1015:
  %_name3261 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str550, i8** %_name3261
  %this_vtable3262 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable546, %_Object_vtable** %this_vtable3262
  ret %Object* %_this1
}


