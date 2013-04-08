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
@_C2_vtable316 = private constant %_C2_vtable {%_B_vtable* @_B_vtable314, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable315 = private constant %_C1_vtable {%_B_vtable* @_B_vtable314, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable314 = private constant %_B_vtable {%_A_vtable* @_A_vtable313, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable313 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable312, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable312 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh602:
  ret void
}


define i32 @program (i32 %argc3428, { i32, [ 0 x i8* ] }* %argv3426){
__fresh601:
  %argc_slot3429 = alloca i32
  store i32 %argc3428, i32* %argc_slot3429
  %argv_slot3427 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3426, { i32, [ 0 x i8* ] }** %argv_slot3427
  %mem_ptr3430 = call i32* @oat_malloc ( i32 8 )
  %obj3431 = bitcast i32* %mem_ptr3430 to %A* 
  %new_obj3432 = call %A* @_A_ctor ( %A* %obj3431 )
  %vdecl_slot3433 = alloca %A*
  store %A* %new_obj3432, %A** %vdecl_slot3433
  %mem_ptr3434 = call i32* @oat_malloc ( i32 8 )
  %obj3435 = bitcast i32* %mem_ptr3434 to %B* 
  %new_obj3436 = call %B* @_B_ctor ( %B* %obj3435 )
  %vdecl_slot3437 = alloca %B*
  store %B* %new_obj3436, %B** %vdecl_slot3437
  %mem_ptr3438 = call i32* @oat_malloc ( i32 8 )
  %obj3439 = bitcast i32* %mem_ptr3438 to %C1* 
  %new_obj3440 = call %C1* @_C1_ctor ( %C1* %obj3439 )
  %vdecl_slot3441 = alloca %C1*
  store %C1* %new_obj3440, %C1** %vdecl_slot3441
  %mem_ptr3442 = call i32* @oat_malloc ( i32 8 )
  %obj3443 = bitcast i32* %mem_ptr3442 to %C2* 
  %new_obj3444 = call %C2* @_C2_ctor ( %C2* %obj3443 )
  %vdecl_slot3445 = alloca %C2*
  store %C2* %new_obj3444, %C2** %vdecl_slot3445
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh600:
  %lhs_or_call3417 = load %C2* %_this1
  %cast_op3418 = bitcast %C2 %lhs_or_call3417 to %B* 
  %mem_ptr3419 = call i32* @oat_malloc ( i32 8 )
  %obj3420 = bitcast i32* %mem_ptr3419 to %B* 
  %new_obj3421 = call %B* @_B_ctor ( %B* %obj3420, %B* %cast_op3418 )
  %_name3422 = getelementptr %C2* %_this1, i32 0, i32 1
  %lhs_or_call3423 = load %C2* %_this1
  %cast_op3424 = bitcast %C2 %lhs_or_call3423 to i8* 
  store i8* %cast_op3424, i8** %_name3422
  %this_vtable3425 = getelementptr %C2* %_this1, i32 0, i32 0
  store %C2* %_this1, %_C2_vtable* %this_vtable3425
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh599:
  %lhs_or_call3408 = load %C1* %_this1
  %cast_op3409 = bitcast %C1 %lhs_or_call3408 to %B* 
  %mem_ptr3410 = call i32* @oat_malloc ( i32 8 )
  %obj3411 = bitcast i32* %mem_ptr3410 to %B* 
  %new_obj3412 = call %B* @_B_ctor ( %B* %obj3411, %B* %cast_op3409 )
  %_name3413 = getelementptr %C1* %_this1, i32 0, i32 1
  %lhs_or_call3414 = load %C1* %_this1
  %cast_op3415 = bitcast %C1 %lhs_or_call3414 to i8* 
  store i8* %cast_op3415, i8** %_name3413
  %this_vtable3416 = getelementptr %C1* %_this1, i32 0, i32 0
  store %C1* %_this1, %_C1_vtable* %this_vtable3416
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh598:
  %lhs_or_call3399 = load %B* %_this1
  %cast_op3400 = bitcast %B %lhs_or_call3399 to %A* 
  %mem_ptr3401 = call i32* @oat_malloc ( i32 8 )
  %obj3402 = bitcast i32* %mem_ptr3401 to %A* 
  %new_obj3403 = call %A* @_A_ctor ( %A* %obj3402, %A* %cast_op3400 )
  %_name3404 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call3405 = load %B* %_this1
  %cast_op3406 = bitcast %B %lhs_or_call3405 to i8* 
  store i8* %cast_op3406, i8** %_name3404
  %this_vtable3407 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable3407
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh597:
  %lhs_or_call3390 = load %A* %_this1
  %cast_op3391 = bitcast %A %lhs_or_call3390 to %Object* 
  %mem_ptr3392 = call i32* @oat_malloc ( i32 8 )
  %obj3393 = bitcast i32* %mem_ptr3392 to %Object* 
  %new_obj3394 = call %Object* @_Object_ctor ( %Object* %obj3393, %Object* %cast_op3391 )
  %_name3395 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call3396 = load %A* %_this1
  %cast_op3397 = bitcast %A %lhs_or_call3396 to i8* 
  store i8* %cast_op3397, i8** %_name3395
  %this_vtable3398 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable3398
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh596:
  %_name3388 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3389 = load i8** %_name3388
  ret i8* %lhs_or_call3389
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh595:
  %_name3384 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3385 = load %Object* %_this1
  %cast_op3386 = bitcast %Object %lhs_or_call3385 to i8* 
  store i8* %cast_op3386, i8** %_name3384
  %this_vtable3387 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3387
  ret %Object* %_this1
}


