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
@_const_str311.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str311 = alias bitcast([ 2 x i8 ]* @_const_str311.str. to i8*)@_const_str310.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str310 = alias bitcast([ 2 x i8 ]* @_const_str310.str. to i8*)@_const_str309.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str309 = alias bitcast([ 2 x i8 ]* @_const_str309.str. to i8*)@_C_vtable308 = private constant %_C_vtable {%_B_vtable* @_B_vtable307, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six, void (%C*)* @_C_f}, align 4
@_B_vtable307 = private constant %_B_vtable {%_A_vtable* @_A_vtable306, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six, void (%B*)* @_B_f}, align 4
@_A_vtable306 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable305, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six, void (%A*)* @_A_f}, align 4
@_Object_vtable305 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh594:
  ret void
}


define i32 @program (i32 %argc3367, { i32, [ 0 x i8* ] }* %argv3365){
__fresh593:
  %argc_slot3368 = alloca i32
  store i32 %argc3367, i32* %argc_slot3368
  %argv_slot3366 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3365, { i32, [ 0 x i8* ] }** %argv_slot3366
  %mem_ptr3369 = call i32* @oat_malloc ( i32 8 )
  %obj3370 = bitcast i32* %mem_ptr3369 to %C* 
  %new_obj3371 = call %C* @_C_ctor ( %C* %obj3370 )
  %vdecl_slot3372 = alloca %C*
  store %C* %new_obj3371, %C** %vdecl_slot3372
  %lhs_or_call3373 = load %C** %vdecl_slot3372
  %six3375 = getelementptr %_C_vtable* @_C_vtable308, i32 0, i32 2
  %six3374 = load i32 (%C*)** %six3375
  %cast_op3376 = bitcast %C %lhs_or_call3373 to %C* 
  %ret3377 = call i32 %six3374 ( %C* %cast_op3376 )
  %vdecl_slot3378 = alloca i32
  store i32 %ret3377, i32* %vdecl_slot3378
  %lhs_or_call3379 = load %C** %vdecl_slot3372
  %f3381 = getelementptr %_C_vtable* @_C_vtable308, i32 0, i32 3
  %f3380 = load void (%C*)** %f3381
  %cast_op3382 = bitcast %C %lhs_or_call3379 to %C* 
  call void %f3380( %C* %cast_op3382 )
  %lhs_or_call3383 = load i32* %vdecl_slot3378
  ret i32 %lhs_or_call3383
}


define void @_C_f (%C* %_this1){
__fresh592:
  call void @print_string( i8* @_const_str311 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh591:
  %six3361 = getelementptr %_C_vtable* @_C_vtable308, i32 0, i32 2
  %six3360 = load i32 (%C*)** %six3361
  %cast_op3362 = bitcast %C %_this1 to %C* 
  %ret3363 = call i32 %six3360 ( %C* %cast_op3362 )
  %bop3364 = add i32 %ret3363, 3
  ret i32 %bop3364
}


define %C* @_C_ctor (%C* %_this1){
__fresh590:
  %lhs_or_call3351 = load %C* %_this1
  %cast_op3352 = bitcast %C %lhs_or_call3351 to %B* 
  %mem_ptr3353 = call i32* @oat_malloc ( i32 8 )
  %obj3354 = bitcast i32* %mem_ptr3353 to %B* 
  %new_obj3355 = call %B* @_B_ctor ( %B* %obj3354, %B* %cast_op3352 )
  %_name3356 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call3357 = load %C* %_this1
  %cast_op3358 = bitcast %C %lhs_or_call3357 to i8* 
  store i8* %cast_op3358, i8** %_name3356
  %this_vtable3359 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable3359
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh589:
  call void @print_string( i8* @_const_str310 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh588:
  %six3347 = getelementptr %_B_vtable* @_B_vtable307, i32 0, i32 2
  %six3346 = load i32 (%B*)** %six3347
  %cast_op3348 = bitcast %B %_this1 to %B* 
  %ret3349 = call i32 %six3346 ( %B* %cast_op3348 )
  %bop3350 = add i32 %ret3349, 2
  ret i32 %bop3350
}


define %B* @_B_ctor (%B* %_this1){
__fresh587:
  %lhs_or_call3337 = load %B* %_this1
  %cast_op3338 = bitcast %B %lhs_or_call3337 to %A* 
  %mem_ptr3339 = call i32* @oat_malloc ( i32 8 )
  %obj3340 = bitcast i32* %mem_ptr3339 to %A* 
  %new_obj3341 = call %A* @_A_ctor ( %A* %obj3340, %A* %cast_op3338 )
  %_name3342 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call3343 = load %B* %_this1
  %cast_op3344 = bitcast %B %lhs_or_call3343 to i8* 
  store i8* %cast_op3344, i8** %_name3342
  %this_vtable3345 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable3345
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh586:
  call void @print_string( i8* @_const_str309 )
  ret void
}


define i32 @_A_six (%A* %_this1){
__fresh585:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh584:
  %lhs_or_call3328 = load %A* %_this1
  %cast_op3329 = bitcast %A %lhs_or_call3328 to %Object* 
  %mem_ptr3330 = call i32* @oat_malloc ( i32 8 )
  %obj3331 = bitcast i32* %mem_ptr3330 to %Object* 
  %new_obj3332 = call %Object* @_Object_ctor ( %Object* %obj3331, %Object* %cast_op3329 )
  %_name3333 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call3334 = load %A* %_this1
  %cast_op3335 = bitcast %A %lhs_or_call3334 to i8* 
  store i8* %cast_op3335, i8** %_name3333
  %this_vtable3336 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable3336
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh583:
  %_name3326 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3327 = load i8** %_name3326
  ret i8* %lhs_or_call3327
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh582:
  %_name3322 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3323 = load %Object* %_this1
  %cast_op3324 = bitcast %Object %lhs_or_call3323 to i8* 
  store i8* %cast_op3324, i8** %_name3322
  %this_vtable3325 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3325
  ret %Object* %_this1
}


