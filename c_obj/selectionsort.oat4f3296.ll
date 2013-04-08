%Array = type { %_Array_vtable*, i8*, i32, %ArrayItem* }
%_Array_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%Array*, i32)*, void (%Array*, i32, i32)*, void (%Array*, i32)*, i32 (%Array*)* }
%ArrayItem = type { %_ArrayItem_vtable*, i8*, i32, %ArrayItem* }
%_ArrayItem_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%ArrayItem*, i32)* }
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
@_const_str619.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str619 = alias bitcast([ 24 x i8 ]* @_const_str619.str. to i8*)@_const_str618.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str618 = alias bitcast([ 24 x i8 ]* @_const_str618.str. to i8*)@_const_str617.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str617 = alias bitcast([ 6 x i8 ]* @_const_str617.str. to i8*)@_const_str616.str. = private unnamed_addr constant [ 10 x i8 ] c "ArrayItem\00", align 4
@_const_str616 = alias bitcast([ 10 x i8 ]* @_const_str616.str. to i8*)@_const_str615.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str615 = alias bitcast([ 7 x i8 ]* @_const_str615.str. to i8*)@_Array_vtable614 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable612, i8* (%Object*)* @_Object_get_name, i32 (%Array*, i32)* @_Array_getElement, void (%Array*, i32, i32)* @_Array_setElement, void (%Array*, i32)* @_Array_addElement, i32 (%Array*)* @_Array_getLength}, align 4
@_ArrayItem_vtable613 = private constant %_ArrayItem_vtable {%_Object_vtable* @_Object_vtable612, i8* (%Object*)* @_Object_get_name, void (%ArrayItem*, i32)* @_ArrayItem_set}, align 4
@_Object_vtable612 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh777:
  ret void
}


define i32 @program (i32 %argc3464, { i32, [ 0 x i8* ] }* %argv3462){
__fresh764:
  %argc_slot3465 = alloca i32
  store i32 %argc3464, i32* %argc_slot3465
  %argv_slot3463 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3462, { i32, [ 0 x i8* ] }** %argv_slot3463
  %mem_ptr3466 = call i32* @oat_malloc ( i32 16 )
  %obj3467 = bitcast i32* %mem_ptr3466 to %Array* 
  %new_obj3468 = call %Array* @_Array_ctor ( %Array* %obj3467 )
  %vdecl_slot3469 = alloca %Array*
  store %Array* %new_obj3468, %Array** %vdecl_slot3469
  %vdecl_slot3470 = alloca i32
  store i32 0, i32* %vdecl_slot3470
  %vdecl_slot3471 = alloca i32
  store i32 0, i32* %vdecl_slot3471
  %lhs_or_call3472 = load %Array** %vdecl_slot3469
  %vtable_ptr3473 = getelementptr %Array* %lhs_or_call3472, i32 0
  %vtable3474 = load %_Array_vtable** %vtable_ptr3473
  %addElement3476 = getelementptr %_Array_vtable* %vtable3474, i32 0, i32 4
  %addElement3475 = load void (%Array*, i32)** %addElement3476
  %cast_op3477 = bitcast %Array %lhs_or_call3472 to %Array* 
  call void %addElement3475( %Array* %cast_op3477, i32 79 )
  %lhs_or_call3478 = load %Array** %vdecl_slot3469
  %vtable_ptr3479 = getelementptr %Array* %lhs_or_call3478, i32 0
  %vtable3480 = load %_Array_vtable** %vtable_ptr3479
  %getLength3482 = getelementptr %_Array_vtable* %vtable3480, i32 0, i32 5
  %getLength3481 = load i32 (%Array*)** %getLength3482
  %cast_op3483 = bitcast %Array %lhs_or_call3478 to %Array* 
  %ret3484 = call i32 %getLength3481 ( %Array* %cast_op3483 )
  store i32 %ret3484, i32* %vdecl_slot3470
  %vdecl_slot3485 = alloca i32
  store i32 1, i32* %vdecl_slot3485
  br label %__cond748

__cond748:
  %lhs_or_call3486 = load i32* %vdecl_slot3485
  %lhs_or_call3487 = load i32* %vdecl_slot3470
  %bop3488 = icmp slt i32 %lhs_or_call3486, %lhs_or_call3487
  br i1 %bop3488, label %__body747, label %__post746

__fresh765:
  br label %__body747

__body747:
  %lhs_or_call3489 = load i32* %vdecl_slot3485
  %vdecl_slot3490 = alloca i32
  store i32 %lhs_or_call3489, i32* %vdecl_slot3490
  %lhs_or_call3491 = load i32* %vdecl_slot3485
  %bop3492 = add i32 %lhs_or_call3491, 1
  %vdecl_slot3493 = alloca i32
  store i32 %bop3492, i32* %vdecl_slot3493
  br label %__cond751

__cond751:
  %lhs_or_call3494 = load i32* %vdecl_slot3493
  %lhs_or_call3495 = load i32* %vdecl_slot3470
  %bop3496 = icmp sle i32 %lhs_or_call3494, %lhs_or_call3495
  br i1 %bop3496, label %__body750, label %__post749

__fresh766:
  br label %__body750

__body750:
  %lhs_or_call3497 = load i32* %vdecl_slot3493
  %lhs_or_call3498 = load %Array** %vdecl_slot3469
  %vtable_ptr3499 = getelementptr %Array* %lhs_or_call3498, i32 0
  %vtable3500 = load %_Array_vtable** %vtable_ptr3499
  %getElement3502 = getelementptr %_Array_vtable* %vtable3500, i32 0, i32 2
  %getElement3501 = load i32 (%Array*, i32)** %getElement3502
  %cast_op3503 = bitcast %Array %lhs_or_call3498 to %Array* 
  %ret3504 = call i32 %getElement3501 ( %Array* %cast_op3503, i32 %lhs_or_call3497 )
  %vdecl_slot3505 = alloca i32
  store i32 %ret3504, i32* %vdecl_slot3505
  %lhs_or_call3506 = load i32* %vdecl_slot3490
  %lhs_or_call3507 = load %Array** %vdecl_slot3469
  %vtable_ptr3508 = getelementptr %Array* %lhs_or_call3507, i32 0
  %vtable3509 = load %_Array_vtable** %vtable_ptr3508
  %getElement3511 = getelementptr %_Array_vtable* %vtable3509, i32 0, i32 2
  %getElement3510 = load i32 (%Array*, i32)** %getElement3511
  %cast_op3512 = bitcast %Array %lhs_or_call3507 to %Array* 
  %ret3513 = call i32 %getElement3510 ( %Array* %cast_op3512, i32 %lhs_or_call3506 )
  %vdecl_slot3514 = alloca i32
  store i32 %ret3513, i32* %vdecl_slot3514
  %lhs_or_call3515 = load i32* %vdecl_slot3505
  %lhs_or_call3516 = load i32* %vdecl_slot3514
  %bop3517 = icmp slt i32 %lhs_or_call3515, %lhs_or_call3516
  br i1 %bop3517, label %__then754, label %__else753

__fresh767:
  br label %__then754

__then754:
  %lhs_or_call3518 = load i32* %vdecl_slot3493
  store i32 %lhs_or_call3518, i32* %vdecl_slot3490
  br label %__merge752

__fresh768:
  br label %__else753

__else753:
  br label %__merge752

__merge752:
  %lhs_or_call3519 = load i32* %vdecl_slot3493
  %bop3520 = add i32 %lhs_or_call3519, 1
  store i32 %bop3520, i32* %vdecl_slot3493
  br label %__cond751

__fresh769:
  br label %__post749

__post749:
  %lhs_or_call3521 = load i32* %vdecl_slot3490
  %lhs_or_call3522 = load i32* %vdecl_slot3485
  %bop3523 = icmp ne i32 %lhs_or_call3521, %lhs_or_call3522
  br i1 %bop3523, label %__then757, label %__else756

__fresh770:
  br label %__then757

__then757:
  %lhs_or_call3524 = load i32* %vdecl_slot3490
  %lhs_or_call3525 = load %Array** %vdecl_slot3469
  %vtable_ptr3526 = getelementptr %Array* %lhs_or_call3525, i32 0
  %vtable3527 = load %_Array_vtable** %vtable_ptr3526
  %getElement3529 = getelementptr %_Array_vtable* %vtable3527, i32 0, i32 2
  %getElement3528 = load i32 (%Array*, i32)** %getElement3529
  %cast_op3530 = bitcast %Array %lhs_or_call3525 to %Array* 
  %ret3531 = call i32 %getElement3528 ( %Array* %cast_op3530, i32 %lhs_or_call3524 )
  %vdecl_slot3532 = alloca i32
  store i32 %ret3531, i32* %vdecl_slot3532
  %lhs_or_call3533 = load i32* %vdecl_slot3485
  %lhs_or_call3534 = load %Array** %vdecl_slot3469
  %vtable_ptr3535 = getelementptr %Array* %lhs_or_call3534, i32 0
  %vtable3536 = load %_Array_vtable** %vtable_ptr3535
  %getElement3538 = getelementptr %_Array_vtable* %vtable3536, i32 0, i32 2
  %getElement3537 = load i32 (%Array*, i32)** %getElement3538
  %cast_op3539 = bitcast %Array %lhs_or_call3534 to %Array* 
  %ret3540 = call i32 %getElement3537 ( %Array* %cast_op3539, i32 %lhs_or_call3533 )
  %vdecl_slot3541 = alloca i32
  store i32 %ret3540, i32* %vdecl_slot3541
  %lhs_or_call3542 = load i32* %vdecl_slot3532
  %lhs_or_call3543 = load i32* %vdecl_slot3485
  %lhs_or_call3544 = load %Array** %vdecl_slot3469
  %vtable_ptr3545 = getelementptr %Array* %lhs_or_call3544, i32 0
  %vtable3546 = load %_Array_vtable** %vtable_ptr3545
  %setElement3548 = getelementptr %_Array_vtable* %vtable3546, i32 0, i32 3
  %setElement3547 = load void (%Array*, i32, i32)** %setElement3548
  %cast_op3549 = bitcast %Array %lhs_or_call3544 to %Array* 
  call void %setElement3547( %Array* %cast_op3549, i32 %lhs_or_call3543, i32 %lhs_or_call3542 )
  %lhs_or_call3550 = load i32* %vdecl_slot3541
  %lhs_or_call3551 = load i32* %vdecl_slot3490
  %lhs_or_call3552 = load %Array** %vdecl_slot3469
  %vtable_ptr3553 = getelementptr %Array* %lhs_or_call3552, i32 0
  %vtable3554 = load %_Array_vtable** %vtable_ptr3553
  %setElement3556 = getelementptr %_Array_vtable* %vtable3554, i32 0, i32 3
  %setElement3555 = load void (%Array*, i32, i32)** %setElement3556
  %cast_op3557 = bitcast %Array %lhs_or_call3552 to %Array* 
  call void %setElement3555( %Array* %cast_op3557, i32 %lhs_or_call3551, i32 %lhs_or_call3550 )
  br label %__merge755

__fresh771:
  br label %__else756

__else756:
  br label %__merge755

__merge755:
  %lhs_or_call3558 = load i32* %vdecl_slot3485
  %bop3559 = add i32 %lhs_or_call3558, 1
  store i32 %bop3559, i32* %vdecl_slot3485
  br label %__cond748

__fresh772:
  br label %__post746

__post746:
  %vdecl_slot3560 = alloca i32
  store i32 1, i32* %vdecl_slot3560
  br label %__cond760

__cond760:
  %lhs_or_call3561 = load i32* %vdecl_slot3560
  %lhs_or_call3562 = load i32* %vdecl_slot3470
  %bop3563 = icmp slt i32 %lhs_or_call3561, %lhs_or_call3562
  br i1 %bop3563, label %__body759, label %__post758

__fresh773:
  br label %__body759

__body759:
  %lhs_or_call3564 = load i32* %vdecl_slot3560
  %lhs_or_call3565 = load %Array** %vdecl_slot3469
  %vtable_ptr3566 = getelementptr %Array* %lhs_or_call3565, i32 0
  %vtable3567 = load %_Array_vtable** %vtable_ptr3566
  %getElement3569 = getelementptr %_Array_vtable* %vtable3567, i32 0, i32 2
  %getElement3568 = load i32 (%Array*, i32)** %getElement3569
  %cast_op3570 = bitcast %Array %lhs_or_call3565 to %Array* 
  %ret3571 = call i32 %getElement3568 ( %Array* %cast_op3570, i32 %lhs_or_call3564 )
  %vdecl_slot3572 = alloca i32
  store i32 %ret3571, i32* %vdecl_slot3572
  %lhs_or_call3573 = load i32* %vdecl_slot3560
  %bop3574 = add i32 %lhs_or_call3573, 1
  %lhs_or_call3575 = load %Array** %vdecl_slot3469
  %vtable_ptr3576 = getelementptr %Array* %lhs_or_call3575, i32 0
  %vtable3577 = load %_Array_vtable** %vtable_ptr3576
  %getElement3579 = getelementptr %_Array_vtable* %vtable3577, i32 0, i32 2
  %getElement3578 = load i32 (%Array*, i32)** %getElement3579
  %cast_op3580 = bitcast %Array %lhs_or_call3575 to %Array* 
  %ret3581 = call i32 %getElement3578 ( %Array* %cast_op3580, i32 %bop3574 )
  %vdecl_slot3582 = alloca i32
  store i32 %ret3581, i32* %vdecl_slot3582
  %lhs_or_call3583 = load i32* %vdecl_slot3572
  %lhs_or_call3584 = load i32* %vdecl_slot3582
  %bop3585 = icmp sgt i32 %lhs_or_call3583, %lhs_or_call3584
  br i1 %bop3585, label %__then763, label %__else762

__fresh774:
  br label %__then763

__then763:
  %lhs_or_call3586 = load i32* %vdecl_slot3471
  %bop3587 = add i32 %lhs_or_call3586, 1
  store i32 %bop3587, i32* %vdecl_slot3471
  br label %__merge761

__fresh775:
  br label %__else762

__else762:
  br label %__merge761

__merge761:
  %lhs_or_call3588 = load i32* %vdecl_slot3560
  %bop3589 = add i32 %lhs_or_call3588, 1
  store i32 %bop3589, i32* %vdecl_slot3560
  br label %__cond760

__fresh776:
  br label %__post758

__post758:
  %lhs_or_call3590 = load i32* %vdecl_slot3471
  ret i32 %lhs_or_call3590
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh745:
  %arrayLength3460 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3461 = load i32* %arrayLength3460
  ret i32 %lhs_or_call3461
}


define void @_Array_addElement (%Array* %_this1, i32 %key3423){
__fresh736:
  %key_slot3424 = alloca i32
  store i32 %key3423, i32* %key_slot3424
  %arrayLength3425 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3426 = load i32* %arrayLength3425
  %bop3427 = icmp eq i32 %lhs_or_call3426, 0
  br i1 %bop3427, label %__then735, label %__else734

__fresh737:
  br label %__then735

__then735:
  %headItem3428 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3429 = load i32* %key_slot3424
  %mem_ptr3430 = call i32* @oat_malloc ( i32 16 )
  %obj3431 = bitcast i32* %mem_ptr3430 to %ArrayItem* 
  %new_obj3432 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3431, i32 %lhs_or_call3429 )
  store %ArrayItem* %new_obj3432, %ArrayItem** %headItem3428
  br label %__merge733

__fresh738:
  br label %__else734

__else734:
  %headItem3433 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3434 = load %ArrayItem** %headItem3433
  %ifnull_slot3435 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3434, %ArrayItem** %ifnull_slot3435
  %ifnull_guard3436 = icmp ne %ArrayItem* %lhs_or_call3434, null
  br i1 %ifnull_guard3436, label %__then732, label %__else731

__fresh739:
  br label %__then732

__then732:
  %vdecl_slot3437 = alloca i32
  store i32 1, i32* %vdecl_slot3437
  br label %__cond726

__cond726:
  %lhs_or_call3438 = load i32* %vdecl_slot3437
  %arrayLength3439 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3440 = load i32* %arrayLength3439
  %bop3441 = icmp ne i32 %lhs_or_call3438, %lhs_or_call3440
  br i1 %bop3441, label %__body725, label %__post724

__fresh740:
  br label %__body725

__body725:
  %lhs_or_call3442 = load %ArrayItem** %ifnull_slot3435
  %nextItem3443 = getelementptr %ArrayItem* %lhs_or_call3442, i32 0, i32 3
  %lhs_or_call3444 = load %ArrayItem** %nextItem3443
  %ifnull_slot3445 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3444, %ArrayItem** %ifnull_slot3445
  %ifnull_guard3446 = icmp ne %ArrayItem* %lhs_or_call3444, null
  br i1 %ifnull_guard3446, label %__then729, label %__else728

__fresh741:
  br label %__then729

__then729:
  %lhs_or_call3447 = load %ArrayItem** %ifnull_slot3445
  store %ArrayItem* %lhs_or_call3447, %ArrayItem** %ifnull_slot3435
  br label %__merge727

__fresh742:
  br label %__else728

__else728:
  br label %__merge727

__merge727:
  %lhs_or_call3448 = load i32* %vdecl_slot3437
  %bop3449 = add i32 %lhs_or_call3448, 1
  store i32 %bop3449, i32* %vdecl_slot3437
  br label %__cond726

__fresh743:
  br label %__post724

__post724:
  %lhs_or_call3450 = load %ArrayItem** %ifnull_slot3435
  %nextItem3451 = getelementptr %ArrayItem* %lhs_or_call3450, i32 0, i32 3
  %lhs_or_call3452 = load i32* %key_slot3424
  %mem_ptr3453 = call i32* @oat_malloc ( i32 16 )
  %obj3454 = bitcast i32* %mem_ptr3453 to %ArrayItem* 
  %new_obj3455 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3454, i32 %lhs_or_call3452 )
  store %ArrayItem* %new_obj3455, %ArrayItem** %nextItem3451
  br label %__merge730

__fresh744:
  br label %__else731

__else731:
  br label %__merge730

__merge730:
  br label %__merge733

__merge733:
  %arrayLength3456 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3457 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3458 = load i32* %arrayLength3457
  %bop3459 = add i32 %lhs_or_call3458, 1
  store i32 %bop3459, i32* %arrayLength3456
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3402, i32 %key3400){
__fresh717:
  %index_slot3403 = alloca i32
  store i32 %index3402, i32* %index_slot3403
  %key_slot3401 = alloca i32
  store i32 %key3400, i32* %key_slot3401
  %headItem3404 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3405 = load %ArrayItem** %headItem3404
  %ifnull_slot3406 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3405, %ArrayItem** %ifnull_slot3406
  %ifnull_guard3407 = icmp ne %ArrayItem* %lhs_or_call3405, null
  br i1 %ifnull_guard3407, label %__then716, label %__else715

__fresh718:
  br label %__then716

__then716:
  %vdecl_slot3408 = alloca i32
  store i32 1, i32* %vdecl_slot3408
  br label %__cond710

__cond710:
  %lhs_or_call3409 = load i32* %vdecl_slot3408
  %lhs_or_call3410 = load i32* %index_slot3403
  %bop3411 = icmp ne i32 %lhs_or_call3409, %lhs_or_call3410
  br i1 %bop3411, label %__body709, label %__post708

__fresh719:
  br label %__body709

__body709:
  %lhs_or_call3412 = load %ArrayItem** %ifnull_slot3406
  %nextItem3413 = getelementptr %ArrayItem* %lhs_or_call3412, i32 0, i32 3
  %lhs_or_call3414 = load %ArrayItem** %nextItem3413
  %ifnull_slot3415 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3414, %ArrayItem** %ifnull_slot3415
  %ifnull_guard3416 = icmp ne %ArrayItem* %lhs_or_call3414, null
  br i1 %ifnull_guard3416, label %__then713, label %__else712

__fresh720:
  br label %__then713

__then713:
  %lhs_or_call3417 = load %ArrayItem** %ifnull_slot3415
  store %ArrayItem* %lhs_or_call3417, %ArrayItem** %ifnull_slot3406
  br label %__merge711

__fresh721:
  br label %__else712

__else712:
  br label %__merge711

__merge711:
  %lhs_or_call3418 = load i32* %vdecl_slot3408
  %bop3419 = add i32 %lhs_or_call3418, 1
  store i32 %bop3419, i32* %vdecl_slot3408
  br label %__cond710

__fresh722:
  br label %__post708

__post708:
  %lhs_or_call3420 = load %ArrayItem** %ifnull_slot3406
  %keyValue3421 = getelementptr %ArrayItem* %lhs_or_call3420, i32 0, i32 2
  %lhs_or_call3422 = load i32* %key_slot3401
  store i32 %lhs_or_call3422, i32* %keyValue3421
  br label %__merge714

__fresh723:
  br label %__else715

__else715:
  call void @print_string( i8* @_const_str619 )
  call void @oat_abort( i32 -1 )
  br label %__merge714

__merge714:
  ret void
}


define i32 @_Array_getElement (%Array* %_this1, i32 %index3377){
__fresh701:
  %index_slot3378 = alloca i32
  store i32 %index3377, i32* %index_slot3378
  %vdecl_slot3379 = alloca i32
  store i32 0, i32* %vdecl_slot3379
  %headItem3380 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3381 = load %ArrayItem** %headItem3380
  %ifnull_slot3382 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3381, %ArrayItem** %ifnull_slot3382
  %ifnull_guard3383 = icmp ne %ArrayItem* %lhs_or_call3381, null
  br i1 %ifnull_guard3383, label %__then700, label %__else699

__fresh702:
  br label %__then700

__then700:
  %vdecl_slot3384 = alloca i32
  store i32 1, i32* %vdecl_slot3384
  br label %__cond694

__cond694:
  %lhs_or_call3385 = load i32* %vdecl_slot3384
  %lhs_or_call3386 = load i32* %index_slot3378
  %bop3387 = icmp ne i32 %lhs_or_call3385, %lhs_or_call3386
  br i1 %bop3387, label %__body693, label %__post692

__fresh703:
  br label %__body693

__body693:
  %lhs_or_call3388 = load %ArrayItem** %ifnull_slot3382
  %nextItem3389 = getelementptr %ArrayItem* %lhs_or_call3388, i32 0, i32 3
  %lhs_or_call3390 = load %ArrayItem** %nextItem3389
  %ifnull_slot3391 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3390, %ArrayItem** %ifnull_slot3391
  %ifnull_guard3392 = icmp ne %ArrayItem* %lhs_or_call3390, null
  br i1 %ifnull_guard3392, label %__then697, label %__else696

__fresh704:
  br label %__then697

__then697:
  %lhs_or_call3393 = load %ArrayItem** %ifnull_slot3391
  store %ArrayItem* %lhs_or_call3393, %ArrayItem** %ifnull_slot3382
  br label %__merge695

__fresh705:
  br label %__else696

__else696:
  br label %__merge695

__merge695:
  %lhs_or_call3394 = load i32* %vdecl_slot3384
  %bop3395 = add i32 %lhs_or_call3394, 1
  store i32 %bop3395, i32* %vdecl_slot3384
  br label %__cond694

__fresh706:
  br label %__post692

__post692:
  %lhs_or_call3396 = load %ArrayItem** %ifnull_slot3382
  %keyValue3397 = getelementptr %ArrayItem* %lhs_or_call3396, i32 0, i32 2
  %lhs_or_call3398 = load i32* %keyValue3397
  store i32 %lhs_or_call3398, i32* %vdecl_slot3379
  br label %__merge698

__fresh707:
  br label %__else699

__else699:
  call void @print_string( i8* @_const_str618 )
  call void @oat_abort( i32 -1 )
  br label %__merge698

__merge698:
  %lhs_or_call3399 = load i32* %vdecl_slot3379
  ret i32 %lhs_or_call3399
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh691:
  %mem_ptr3372 = call i32* @oat_malloc ( i32 8 )
  %obj3373 = bitcast i32* %mem_ptr3372 to %Object* 
  %new_obj3374 = call %Object* @_Object_ctor ( %Object* %obj3373 )
  %_this1 = bitcast %Object* %new_obj3374 to %Array 
  %_name3375 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str617, i8** %_name3375
  %this_vtable3376 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable614, %_Array_vtable** %this_vtable3376
  %arrayLength3371 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3371
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3367){
__fresh690:
  %x_slot3368 = alloca i32
  store i32 %x3367, i32* %x_slot3368
  %keyValue3369 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3370 = load i32* %x_slot3368
  store i32 %lhs_or_call3370, i32* %keyValue3369
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3356){
__fresh689:
  %x_slot3357 = alloca i32
  store i32 %x3356, i32* %x_slot3357
  %mem_ptr3362 = call i32* @oat_malloc ( i32 8 )
  %obj3363 = bitcast i32* %mem_ptr3362 to %Object* 
  %new_obj3364 = call %Object* @_Object_ctor ( %Object* %obj3363 )
  %_this1 = bitcast %Object* %new_obj3364 to %ArrayItem 
  %_name3365 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str616, i8** %_name3365
  %this_vtable3366 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable613, %_ArrayItem_vtable** %this_vtable3366
  %keyValue3358 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3359 = load i32* %x_slot3357
  store i32 %lhs_or_call3359, i32* %keyValue3358
  %nextItem3360 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3361 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3361, %ArrayItem** %nextItem3360
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh688:
  %_name3354 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3355 = load i8** %_name3354
  ret i8* %lhs_or_call3355
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh687:
  %_name3352 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str615, i8** %_name3352
  %this_vtable3353 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable612, %_Object_vtable** %this_vtable3353
  ret %Object* %_this1
}


