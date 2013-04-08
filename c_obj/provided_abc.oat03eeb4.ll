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
@_const_str566.str. = private unnamed_addr constant [ 3 x i8 ] c "C2\00", align 4
@_const_str566 = alias bitcast([ 3 x i8 ]* @_const_str566.str. to i8*)@_const_str565.str. = private unnamed_addr constant [ 3 x i8 ] c "C1\00", align 4
@_const_str565 = alias bitcast([ 3 x i8 ]* @_const_str565.str. to i8*)@_const_str564.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str564 = alias bitcast([ 2 x i8 ]* @_const_str564.str. to i8*)@_const_str563.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str563 = alias bitcast([ 2 x i8 ]* @_const_str563.str. to i8*)@_const_str562.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str562 = alias bitcast([ 7 x i8 ]* @_const_str562.str. to i8*)@_C2_vtable561 = private constant %_C2_vtable {%_B_vtable* @_B_vtable559, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable560 = private constant %_C1_vtable {%_B_vtable* @_B_vtable559, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable559 = private constant %_B_vtable {%_A_vtable* @_A_vtable558, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable558 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable557, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable557 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1035:
  ret void
}


define i32 @program (i32 %argc3343, { i32, [ 0 x i8* ] }* %argv3341){
__fresh1034:
  %argc_slot3344 = alloca i32
  store i32 %argc3343, i32* %argc_slot3344
  %argv_slot3342 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3341, { i32, [ 0 x i8* ] }** %argv_slot3342
  %mem_ptr3345 = call i32* @oat_malloc ( i32 8 )
  %obj3346 = bitcast i32* %mem_ptr3345 to %A* 
  %new_obj3347 = call %A* @_A_ctor ( %A* %obj3346 )
  %vdecl_slot3348 = alloca %A*
  store %A* %new_obj3347, %A** %vdecl_slot3348
  %mem_ptr3349 = call i32* @oat_malloc ( i32 8 )
  %obj3350 = bitcast i32* %mem_ptr3349 to %B* 
  %new_obj3351 = call %B* @_B_ctor ( %B* %obj3350 )
  %vdecl_slot3352 = alloca %B*
  store %B* %new_obj3351, %B** %vdecl_slot3352
  %mem_ptr3353 = call i32* @oat_malloc ( i32 8 )
  %obj3354 = bitcast i32* %mem_ptr3353 to %C1* 
  %new_obj3355 = call %C1* @_C1_ctor ( %C1* %obj3354 )
  %vdecl_slot3356 = alloca %C1*
  store %C1* %new_obj3355, %C1** %vdecl_slot3356
  %mem_ptr3357 = call i32* @oat_malloc ( i32 8 )
  %obj3358 = bitcast i32* %mem_ptr3357 to %C2* 
  %new_obj3359 = call %C2* @_C2_ctor ( %C2* %obj3358 )
  %vdecl_slot3360 = alloca %C2*
  store %C2* %new_obj3359, %C2** %vdecl_slot3360
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh1033:
  %mem_ptr3336 = call i32* @oat_malloc ( i32 8 )
  %obj3337 = bitcast i32* %mem_ptr3336 to %B* 
  %new_obj3338 = call %B* @_B_ctor ( %B* %obj3337 )
  %_this1 = bitcast %B* %new_obj3338 to %C2 
  %_name3339 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str566, i8** %_name3339
  %this_vtable3340 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable561, %_C2_vtable** %this_vtable3340
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh1032:
  %mem_ptr3331 = call i32* @oat_malloc ( i32 8 )
  %obj3332 = bitcast i32* %mem_ptr3331 to %B* 
  %new_obj3333 = call %B* @_B_ctor ( %B* %obj3332 )
  %_this1 = bitcast %B* %new_obj3333 to %C1 
  %_name3334 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str565, i8** %_name3334
  %this_vtable3335 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable560, %_C1_vtable** %this_vtable3335
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh1031:
  %mem_ptr3326 = call i32* @oat_malloc ( i32 8 )
  %obj3327 = bitcast i32* %mem_ptr3326 to %A* 
  %new_obj3328 = call %A* @_A_ctor ( %A* %obj3327 )
  %_this1 = bitcast %A* %new_obj3328 to %B 
  %_name3329 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str564, i8** %_name3329
  %this_vtable3330 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable559, %_B_vtable** %this_vtable3330
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh1030:
  %mem_ptr3321 = call i32* @oat_malloc ( i32 8 )
  %obj3322 = bitcast i32* %mem_ptr3321 to %Object* 
  %new_obj3323 = call %Object* @_Object_ctor ( %Object* %obj3322 )
  %_this1 = bitcast %Object* %new_obj3323 to %A 
  %_name3324 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str563, i8** %_name3324
  %this_vtable3325 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable558, %_A_vtable** %this_vtable3325
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1029:
  %_name3319 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3320 = load i8** %_name3319
  ret i8* %lhs_or_call3320
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1028:
  %_name3317 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str562, i8** %_name3317
  %this_vtable3318 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable557, %_Object_vtable** %this_vtable3318
  ret %Object* %_this1
}


