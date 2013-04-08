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
@_const_str595.str. = private unnamed_addr constant [ 2 x i8 ] c "6\00", align 4
@_const_str595 = alias bitcast([ 2 x i8 ]* @_const_str595.str. to i8*)@c593 = global %Charmander* zeroinitializer, align 4		; initialized by @c593.init594
@p591 = global %Pikachu* zeroinitializer, align 4		; initialized by @p591.init592
@_const_str590.str. = private unnamed_addr constant [ 2 x i8 ] c "5\00", align 4
@_const_str590 = alias bitcast([ 2 x i8 ]* @_const_str590.str. to i8*)@_const_str589.str. = private unnamed_addr constant [ 2 x i8 ] c "4\00", align 4
@_const_str589 = alias bitcast([ 2 x i8 ]* @_const_str589.str. to i8*)@_const_str588.str. = private unnamed_addr constant [ 11 x i8 ] c "Charmander\00", align 4
@_const_str588 = alias bitcast([ 11 x i8 ]* @_const_str588.str. to i8*)@_const_str587.str. = private unnamed_addr constant [ 2 x i8 ] c "3\00", align 4
@_const_str587 = alias bitcast([ 2 x i8 ]* @_const_str587.str. to i8*)@_const_str585.str. = private unnamed_addr constant [ 2 x i8 ] c "2\00", align 4
@_const_str585 = alias bitcast([ 2 x i8 ]* @_const_str585.str. to i8*)@_const_str586.str. = private unnamed_addr constant [ 8 x i8 ] c "Pikachu\00", align 4
@_const_str586 = alias bitcast([ 8 x i8 ]* @_const_str586.str. to i8*)@_const_str584.str. = private unnamed_addr constant [ 2 x i8 ] c "9\00", align 4
@_const_str584 = alias bitcast([ 2 x i8 ]* @_const_str584.str. to i8*)@_const_str583.str. = private unnamed_addr constant [ 8 x i8 ] c "Pokemon\00", align 4
@_const_str583 = alias bitcast([ 8 x i8 ]* @_const_str583.str. to i8*)@_const_str582.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str582 = alias bitcast([ 7 x i8 ]* @_const_str582.str. to i8*)@_Charmander_vtable581 = private constant %_Charmander_vtable {%_Pokemon_vtable* @_Pokemon_vtable579, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Charmander*, %Pikachu*)* @_Charmander_attack, void (%Charmander*)* @_Charmander_noise}, align 4
@_Pikachu_vtable580 = private constant %_Pikachu_vtable {%_Pokemon_vtable* @_Pokemon_vtable579, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Pikachu*, %Charmander*)* @_Pikachu_attack, void (%Pikachu*)* @_Pikachu_noise}, align 4
@_Pokemon_vtable579 = private constant %_Pokemon_vtable {%_Object_vtable* @_Object_vtable578, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit}, align 4
@_Object_vtable578 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh836:
  call void @p591.init592(  )
  call void @c593.init594(  )
  ret void
}


define i32 @program (i32 %argc3471, { i32, [ 0 x i8* ] }* %argv3469){
__fresh835:
  %argc_slot3472 = alloca i32
  store i32 %argc3471, i32* %argc_slot3472
  %argv_slot3470 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3469, { i32, [ 0 x i8* ] }** %argv_slot3470
  %lhs_or_call3473 = load %Pikachu** @p591
  %lhs_or_call3474 = load %Charmander** @c593
  %vtable_ptr3475 = getelementptr %Charmander* %lhs_or_call3474, i32 0
  %vtable3476 = load %_Charmander_vtable** %vtable_ptr3475
  %attack3478 = getelementptr %_Charmander_vtable* %vtable3476, i32 0, i32 3
  %attack3477 = load void (%Charmander*, %Pikachu*)** %attack3478
  %cast_op3479 = bitcast %Charmander %lhs_or_call3474 to %Charmander* 
  call void %attack3477( %Charmander* %cast_op3479, %Pikachu* %lhs_or_call3473 )
  %lhs_or_call3480 = load %Charmander** @c593
  %lhs_or_call3481 = load %Pikachu** @p591
  %vtable_ptr3482 = getelementptr %Pikachu* %lhs_or_call3481, i32 0
  %vtable3483 = load %_Pikachu_vtable** %vtable_ptr3482
  %attack3485 = getelementptr %_Pikachu_vtable* %vtable3483, i32 0, i32 3
  %attack3484 = load void (%Pikachu*, %Charmander*)** %attack3485
  %cast_op3486 = bitcast %Pikachu %lhs_or_call3481 to %Pikachu* 
  call void %attack3484( %Pikachu* %cast_op3486, %Charmander* %lhs_or_call3480 )
  %lhs_or_call3487 = load %Pikachu** @p591
  %lhs_or_call3488 = load %Charmander** @c593
  %vtable_ptr3489 = getelementptr %Charmander* %lhs_or_call3488, i32 0
  %vtable3490 = load %_Charmander_vtable** %vtable_ptr3489
  %attack3492 = getelementptr %_Charmander_vtable* %vtable3490, i32 0, i32 3
  %attack3491 = load void (%Charmander*, %Pikachu*)** %attack3492
  %cast_op3493 = bitcast %Charmander %lhs_or_call3488 to %Charmander* 
  call void %attack3491( %Charmander* %cast_op3493, %Pikachu* %lhs_or_call3487 )
  %lhs_or_call3494 = load %Charmander** @c593
  %lhs_or_call3495 = load %Pikachu** @p591
  %vtable_ptr3496 = getelementptr %Pikachu* %lhs_or_call3495, i32 0
  %vtable3497 = load %_Pikachu_vtable** %vtable_ptr3496
  %attack3499 = getelementptr %_Pikachu_vtable* %vtable3497, i32 0, i32 3
  %attack3498 = load void (%Pikachu*, %Charmander*)** %attack3499
  %cast_op3500 = bitcast %Pikachu %lhs_or_call3495 to %Pikachu* 
  call void %attack3498( %Pikachu* %cast_op3500, %Charmander* %lhs_or_call3494 )
  %lhs_or_call3501 = load %Pikachu** @p591
  %lhs_or_call3502 = load %Charmander** @c593
  %vtable_ptr3503 = getelementptr %Charmander* %lhs_or_call3502, i32 0
  %vtable3504 = load %_Charmander_vtable** %vtable_ptr3503
  %attack3506 = getelementptr %_Charmander_vtable* %vtable3504, i32 0, i32 3
  %attack3505 = load void (%Charmander*, %Pikachu*)** %attack3506
  %cast_op3507 = bitcast %Charmander %lhs_or_call3502 to %Charmander* 
  call void %attack3505( %Charmander* %cast_op3507, %Pikachu* %lhs_or_call3501 )
  %lhs_or_call3508 = load %Charmander** @c593
  %lhs_or_call3509 = load %Pikachu** @p591
  %vtable_ptr3510 = getelementptr %Pikachu* %lhs_or_call3509, i32 0
  %vtable3511 = load %_Pikachu_vtable** %vtable_ptr3510
  %attack3513 = getelementptr %_Pikachu_vtable* %vtable3511, i32 0, i32 3
  %attack3512 = load void (%Pikachu*, %Charmander*)** %attack3513
  %cast_op3514 = bitcast %Pikachu %lhs_or_call3509 to %Pikachu* 
  call void %attack3512( %Pikachu* %cast_op3514, %Charmander* %lhs_or_call3508 )
  %lhs_or_call3515 = load %Pikachu** @p591
  %lhs_or_call3516 = load %Charmander** @c593
  %vtable_ptr3517 = getelementptr %Charmander* %lhs_or_call3516, i32 0
  %vtable3518 = load %_Charmander_vtable** %vtable_ptr3517
  %attack3520 = getelementptr %_Charmander_vtable* %vtable3518, i32 0, i32 3
  %attack3519 = load void (%Charmander*, %Pikachu*)** %attack3520
  %cast_op3521 = bitcast %Charmander %lhs_or_call3516 to %Charmander* 
  call void %attack3519( %Charmander* %cast_op3521, %Pikachu* %lhs_or_call3515 )
  %lhs_or_call3522 = load %Charmander** @c593
  %lhs_or_call3523 = load %Pikachu** @p591
  %vtable_ptr3524 = getelementptr %Pikachu* %lhs_or_call3523, i32 0
  %vtable3525 = load %_Pikachu_vtable** %vtable_ptr3524
  %attack3527 = getelementptr %_Pikachu_vtable* %vtable3525, i32 0, i32 3
  %attack3526 = load void (%Pikachu*, %Charmander*)** %attack3527
  %cast_op3528 = bitcast %Pikachu %lhs_or_call3523 to %Pikachu* 
  call void %attack3526( %Pikachu* %cast_op3528, %Charmander* %lhs_or_call3522 )
  %lhs_or_call3529 = load %Pikachu** @p591
  %lhs_or_call3530 = load %Charmander** @c593
  %vtable_ptr3531 = getelementptr %Charmander* %lhs_or_call3530, i32 0
  %vtable3532 = load %_Charmander_vtable** %vtable_ptr3531
  %attack3534 = getelementptr %_Charmander_vtable* %vtable3532, i32 0, i32 3
  %attack3533 = load void (%Charmander*, %Pikachu*)** %attack3534
  %cast_op3535 = bitcast %Charmander %lhs_or_call3530 to %Charmander* 
  call void %attack3533( %Charmander* %cast_op3535, %Pikachu* %lhs_or_call3529 )
  call void @print_string( i8* @_const_str595 )
  ret i32 0
}


define void @c593.init594 (){
__fresh834:
  %mem_ptr3466 = call i32* @oat_malloc ( i32 20 )
  %obj3467 = bitcast i32* %mem_ptr3466 to %Charmander* 
  %new_obj3468 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3467 )
  store %Charmander* %new_obj3468, %Charmander** @c593
  ret void
}


define void @p591.init592 (){
__fresh833:
  %mem_ptr3463 = call i32* @oat_malloc ( i32 20 )
  %obj3464 = bitcast i32* %mem_ptr3463 to %Pikachu* 
  %new_obj3465 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3464 )
  store %Pikachu* %new_obj3465, %Pikachu** @p591
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh832:
  %voice3461 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3462 = load i8** %voice3461
  call void @print_string( i8* %lhs_or_call3462 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3449){
__fresh831:
  %pi_slot3450 = alloca %Pikachu*
  store %Pikachu* %pi3449, %Pikachu** %pi_slot3450
  call void @print_string( i8* @_const_str590 )
  %voice3451 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3452 = load i8** %voice3451
  call void @print_string( i8* %lhs_or_call3452 )
  %speed3453 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3454 = load i32* %speed3453
  %lhs_or_call3455 = load %Pikachu** %pi_slot3450
  %vtable_ptr3456 = getelementptr %Pikachu* %lhs_or_call3455, i32 0
  %vtable3457 = load %_Pikachu_vtable** %vtable_ptr3456
  %gethit3459 = getelementptr %_Pikachu_vtable* %vtable3457, i32 0, i32 2
  %gethit3458 = load void (%Pokemon*, i32)** %gethit3459
  %cast_op3460 = bitcast %Pikachu %lhs_or_call3455 to %Pokemon* 
  call void %gethit3458( %Pokemon* %cast_op3460, i32 %lhs_or_call3454 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh830:
  %mem_ptr3443 = call i32* @oat_malloc ( i32 16 )
  %obj3444 = bitcast i32* %mem_ptr3443 to %Pokemon* 
  %new_obj3445 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3444 )
  %_this1 = bitcast %Pokemon* %new_obj3445 to %Charmander 
  %_name3446 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str588, i8** %_name3446
  %voice3447 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str589, i8** %voice3447
  %this_vtable3448 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable581, %_Charmander_vtable** %this_vtable3448
  %speed3442 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3442
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh829:
  %voice3440 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3441 = load i8** %voice3440
  call void @print_string( i8* %lhs_or_call3441 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3428){
__fresh828:
  %ch_slot3429 = alloca %Charmander*
  store %Charmander* %ch3428, %Charmander** %ch_slot3429
  call void @print_string( i8* @_const_str587 )
  %voice3430 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3431 = load i8** %voice3430
  call void @print_string( i8* %lhs_or_call3431 )
  %speed3432 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3433 = load i32* %speed3432
  %lhs_or_call3434 = load %Charmander** %ch_slot3429
  %vtable_ptr3435 = getelementptr %Charmander* %lhs_or_call3434, i32 0
  %vtable3436 = load %_Charmander_vtable** %vtable_ptr3435
  %gethit3438 = getelementptr %_Charmander_vtable* %vtable3436, i32 0, i32 2
  %gethit3437 = load void (%Pokemon*, i32)** %gethit3438
  %cast_op3439 = bitcast %Charmander %lhs_or_call3434 to %Pokemon* 
  call void %gethit3437( %Pokemon* %cast_op3439, i32 %lhs_or_call3433 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh827:
  %mem_ptr3423 = call i32* @oat_malloc ( i32 16 )
  %obj3424 = bitcast i32* %mem_ptr3423 to %Pokemon* 
  %new_obj3425 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3424 )
  %_this1 = bitcast %Pokemon* %new_obj3425 to %Pikachu 
  %_name3426 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str586, i8** %_name3426
  %this_vtable3427 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable580, %_Pikachu_vtable** %this_vtable3427
  %speed3421 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed3421
  %voice3422 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str585, i8** %voice3422
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3412){
__fresh826:
  %s_slot3413 = alloca i32
  store i32 %s3412, i32* %s_slot3413
  %life3414 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3415 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3416 = load i32* %life3415
  %lhs_or_call3417 = load i32* %s_slot3413
  %bop3418 = sub i32 %lhs_or_call3416, %lhs_or_call3417
  store i32 %bop3418, i32* %life3414
  %voice3419 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3420 = load i8** %voice3419
  call void @print_string( i8* %lhs_or_call3420 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh825:
  %mem_ptr3406 = call i32* @oat_malloc ( i32 8 )
  %obj3407 = bitcast i32* %mem_ptr3406 to %Object* 
  %new_obj3408 = call %Object* @_Object_ctor ( %Object* %obj3407 )
  %_this1 = bitcast %Object* %new_obj3408 to %Pokemon 
  %_name3409 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str583, i8** %_name3409
  %voice3410 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str584, i8** %voice3410
  %this_vtable3411 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable579, %_Pokemon_vtable** %this_vtable3411
  %life3405 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life3405
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh824:
  %_name3403 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3404 = load i8** %_name3403
  ret i8* %lhs_or_call3404
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh823:
  %_name3401 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str582, i8** %_name3401
  %this_vtable3402 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable578, %_Object_vtable** %this_vtable3402
  ret %Object* %_this1
}


