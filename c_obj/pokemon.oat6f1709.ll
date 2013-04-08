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


define i32 @program (i32 %argc3459, { i32, [ 0 x i8* ] }* %argv3457){
__fresh835:
  %argc_slot3460 = alloca i32
  store i32 %argc3459, i32* %argc_slot3460
  %argv_slot3458 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3457, { i32, [ 0 x i8* ] }** %argv_slot3458
  %lhs_or_call3461 = load %Pikachu** @p591
  %lhs_or_call3462 = load %Charmander** @c593
  %vtable_ptr3463 = getelementptr %Charmander* %lhs_or_call3462, i32 0
  %vtable3464 = load %_Charmander_vtable** %vtable_ptr3463
  %attack3466 = getelementptr %_Charmander_vtable* %vtable3464, i32 0, i32 3
  %attack3465 = load void (%Charmander*, %Pikachu*)** %attack3466
  %cast_op3467 = bitcast %Charmander %lhs_or_call3462 to %Charmander* 
  call void %attack3465( %Charmander* %cast_op3467, %Pikachu* %lhs_or_call3461 )
  %lhs_or_call3468 = load %Charmander** @c593
  %lhs_or_call3469 = load %Pikachu** @p591
  %vtable_ptr3470 = getelementptr %Pikachu* %lhs_or_call3469, i32 0
  %vtable3471 = load %_Pikachu_vtable** %vtable_ptr3470
  %attack3473 = getelementptr %_Pikachu_vtable* %vtable3471, i32 0, i32 3
  %attack3472 = load void (%Pikachu*, %Charmander*)** %attack3473
  %cast_op3474 = bitcast %Pikachu %lhs_or_call3469 to %Pikachu* 
  call void %attack3472( %Pikachu* %cast_op3474, %Charmander* %lhs_or_call3468 )
  %lhs_or_call3475 = load %Pikachu** @p591
  %lhs_or_call3476 = load %Charmander** @c593
  %vtable_ptr3477 = getelementptr %Charmander* %lhs_or_call3476, i32 0
  %vtable3478 = load %_Charmander_vtable** %vtable_ptr3477
  %attack3480 = getelementptr %_Charmander_vtable* %vtable3478, i32 0, i32 3
  %attack3479 = load void (%Charmander*, %Pikachu*)** %attack3480
  %cast_op3481 = bitcast %Charmander %lhs_or_call3476 to %Charmander* 
  call void %attack3479( %Charmander* %cast_op3481, %Pikachu* %lhs_or_call3475 )
  %lhs_or_call3482 = load %Charmander** @c593
  %lhs_or_call3483 = load %Pikachu** @p591
  %vtable_ptr3484 = getelementptr %Pikachu* %lhs_or_call3483, i32 0
  %vtable3485 = load %_Pikachu_vtable** %vtable_ptr3484
  %attack3487 = getelementptr %_Pikachu_vtable* %vtable3485, i32 0, i32 3
  %attack3486 = load void (%Pikachu*, %Charmander*)** %attack3487
  %cast_op3488 = bitcast %Pikachu %lhs_or_call3483 to %Pikachu* 
  call void %attack3486( %Pikachu* %cast_op3488, %Charmander* %lhs_or_call3482 )
  %lhs_or_call3489 = load %Pikachu** @p591
  %lhs_or_call3490 = load %Charmander** @c593
  %vtable_ptr3491 = getelementptr %Charmander* %lhs_or_call3490, i32 0
  %vtable3492 = load %_Charmander_vtable** %vtable_ptr3491
  %attack3494 = getelementptr %_Charmander_vtable* %vtable3492, i32 0, i32 3
  %attack3493 = load void (%Charmander*, %Pikachu*)** %attack3494
  %cast_op3495 = bitcast %Charmander %lhs_or_call3490 to %Charmander* 
  call void %attack3493( %Charmander* %cast_op3495, %Pikachu* %lhs_or_call3489 )
  %lhs_or_call3496 = load %Charmander** @c593
  %lhs_or_call3497 = load %Pikachu** @p591
  %vtable_ptr3498 = getelementptr %Pikachu* %lhs_or_call3497, i32 0
  %vtable3499 = load %_Pikachu_vtable** %vtable_ptr3498
  %attack3501 = getelementptr %_Pikachu_vtable* %vtable3499, i32 0, i32 3
  %attack3500 = load void (%Pikachu*, %Charmander*)** %attack3501
  %cast_op3502 = bitcast %Pikachu %lhs_or_call3497 to %Pikachu* 
  call void %attack3500( %Pikachu* %cast_op3502, %Charmander* %lhs_or_call3496 )
  %lhs_or_call3503 = load %Pikachu** @p591
  %lhs_or_call3504 = load %Charmander** @c593
  %vtable_ptr3505 = getelementptr %Charmander* %lhs_or_call3504, i32 0
  %vtable3506 = load %_Charmander_vtable** %vtable_ptr3505
  %attack3508 = getelementptr %_Charmander_vtable* %vtable3506, i32 0, i32 3
  %attack3507 = load void (%Charmander*, %Pikachu*)** %attack3508
  %cast_op3509 = bitcast %Charmander %lhs_or_call3504 to %Charmander* 
  call void %attack3507( %Charmander* %cast_op3509, %Pikachu* %lhs_or_call3503 )
  %lhs_or_call3510 = load %Charmander** @c593
  %lhs_or_call3511 = load %Pikachu** @p591
  %vtable_ptr3512 = getelementptr %Pikachu* %lhs_or_call3511, i32 0
  %vtable3513 = load %_Pikachu_vtable** %vtable_ptr3512
  %attack3515 = getelementptr %_Pikachu_vtable* %vtable3513, i32 0, i32 3
  %attack3514 = load void (%Pikachu*, %Charmander*)** %attack3515
  %cast_op3516 = bitcast %Pikachu %lhs_or_call3511 to %Pikachu* 
  call void %attack3514( %Pikachu* %cast_op3516, %Charmander* %lhs_or_call3510 )
  %lhs_or_call3517 = load %Pikachu** @p591
  %lhs_or_call3518 = load %Charmander** @c593
  %vtable_ptr3519 = getelementptr %Charmander* %lhs_or_call3518, i32 0
  %vtable3520 = load %_Charmander_vtable** %vtable_ptr3519
  %attack3522 = getelementptr %_Charmander_vtable* %vtable3520, i32 0, i32 3
  %attack3521 = load void (%Charmander*, %Pikachu*)** %attack3522
  %cast_op3523 = bitcast %Charmander %lhs_or_call3518 to %Charmander* 
  call void %attack3521( %Charmander* %cast_op3523, %Pikachu* %lhs_or_call3517 )
  call void @print_string( i8* @_const_str595 )
  ret i32 0
}


define void @c593.init594 (){
__fresh834:
  %mem_ptr3454 = call i32* @oat_malloc ( i32 20 )
  %obj3455 = bitcast i32* %mem_ptr3454 to %Charmander* 
  %new_obj3456 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3455 )
  store %Charmander* %new_obj3456, %Charmander** @c593
  ret void
}


define void @p591.init592 (){
__fresh833:
  %mem_ptr3451 = call i32* @oat_malloc ( i32 20 )
  %obj3452 = bitcast i32* %mem_ptr3451 to %Pikachu* 
  %new_obj3453 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3452 )
  store %Pikachu* %new_obj3453, %Pikachu** @p591
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh832:
  %voice3449 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3450 = load i8** %voice3449
  call void @print_string( i8* %lhs_or_call3450 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3437){
__fresh831:
  %pi_slot3438 = alloca %Pikachu*
  store %Pikachu* %pi3437, %Pikachu** %pi_slot3438
  call void @print_string( i8* @_const_str590 )
  %voice3439 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3440 = load i8** %voice3439
  call void @print_string( i8* %lhs_or_call3440 )
  %speed3441 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3442 = load i32* %speed3441
  %lhs_or_call3443 = load %Pikachu** %pi_slot3438
  %vtable_ptr3444 = getelementptr %Pikachu* %lhs_or_call3443, i32 0
  %vtable3445 = load %_Pikachu_vtable** %vtable_ptr3444
  %gethit3447 = getelementptr %_Pikachu_vtable* %vtable3445, i32 0, i32 2
  %gethit3446 = load void (%Pokemon*, i32)** %gethit3447
  %cast_op3448 = bitcast %Pikachu %lhs_or_call3443 to %Pokemon* 
  call void %gethit3446( %Pokemon* %cast_op3448, i32 %lhs_or_call3442 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh830:
  %mem_ptr3431 = call i32* @oat_malloc ( i32 16 )
  %obj3432 = bitcast i32* %mem_ptr3431 to %Pokemon* 
  %new_obj3433 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3432 )
  %_this1 = bitcast %Pokemon* %new_obj3433 to %Charmander 
  %_name3434 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str588, i8** %_name3434
  %voice3435 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str589, i8** %voice3435
  %this_vtable3436 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable581, %_Charmander_vtable** %this_vtable3436
  %speed3430 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3430
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh829:
  %voice3428 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3429 = load i8** %voice3428
  call void @print_string( i8* %lhs_or_call3429 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3416){
__fresh828:
  %ch_slot3417 = alloca %Charmander*
  store %Charmander* %ch3416, %Charmander** %ch_slot3417
  call void @print_string( i8* @_const_str587 )
  %voice3418 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3419 = load i8** %voice3418
  call void @print_string( i8* %lhs_or_call3419 )
  %speed3420 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3421 = load i32* %speed3420
  %lhs_or_call3422 = load %Charmander** %ch_slot3417
  %vtable_ptr3423 = getelementptr %Charmander* %lhs_or_call3422, i32 0
  %vtable3424 = load %_Charmander_vtable** %vtable_ptr3423
  %gethit3426 = getelementptr %_Charmander_vtable* %vtable3424, i32 0, i32 2
  %gethit3425 = load void (%Pokemon*, i32)** %gethit3426
  %cast_op3427 = bitcast %Charmander %lhs_or_call3422 to %Pokemon* 
  call void %gethit3425( %Pokemon* %cast_op3427, i32 %lhs_or_call3421 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh827:
  %mem_ptr3411 = call i32* @oat_malloc ( i32 16 )
  %obj3412 = bitcast i32* %mem_ptr3411 to %Pokemon* 
  %new_obj3413 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3412 )
  %_this1 = bitcast %Pokemon* %new_obj3413 to %Pikachu 
  %_name3414 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str586, i8** %_name3414
  %this_vtable3415 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable580, %_Pikachu_vtable** %this_vtable3415
  %speed3409 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed3409
  %voice3410 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str585, i8** %voice3410
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3400){
__fresh826:
  %s_slot3401 = alloca i32
  store i32 %s3400, i32* %s_slot3401
  %life3402 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3403 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3404 = load i32* %life3403
  %lhs_or_call3405 = load i32* %s_slot3401
  %bop3406 = sub i32 %lhs_or_call3404, %lhs_or_call3405
  store i32 %bop3406, i32* %life3402
  %voice3407 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3408 = load i8** %voice3407
  call void @print_string( i8* %lhs_or_call3408 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh825:
  %mem_ptr3394 = call i32* @oat_malloc ( i32 8 )
  %obj3395 = bitcast i32* %mem_ptr3394 to %Object* 
  %new_obj3396 = call %Object* @_Object_ctor ( %Object* %obj3395 )
  %_this1 = bitcast %Object* %new_obj3396 to %Pokemon 
  %_name3397 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str583, i8** %_name3397
  %voice3398 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str584, i8** %voice3398
  %this_vtable3399 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable579, %_Pokemon_vtable** %this_vtable3399
  %life3393 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life3393
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh824:
  %_name3391 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3392 = load i8** %_name3391
  ret i8* %lhs_or_call3392
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh823:
  %_name3389 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str582, i8** %_name3389
  %this_vtable3390 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable578, %_Object_vtable** %this_vtable3390
  ret %Object* %_this1
}


