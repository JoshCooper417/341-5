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
@_const_str608.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str608 = alias bitcast([ 24 x i8 ]* @_const_str608.str. to i8*)@_const_str607.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str607 = alias bitcast([ 24 x i8 ]* @_const_str607.str. to i8*)@_const_str606.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str606 = alias bitcast([ 6 x i8 ]* @_const_str606.str. to i8*)@_const_str605.str. = private unnamed_addr constant [ 10 x i8 ] c "ArrayItem\00", align 4
@_const_str605 = alias bitcast([ 10 x i8 ]* @_const_str605.str. to i8*)@_const_str604.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str604 = alias bitcast([ 7 x i8 ]* @_const_str604.str. to i8*)@_Array_vtable603 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable601, i8* (%Object*)* @_Object_get_name, i32 (%Array*, i32)* @_Array_getElement, void (%Array*, i32, i32)* @_Array_setElement, void (%Array*, i32)* @_Array_addElement, i32 (%Array*)* @_Array_getLength}, align 4
@_ArrayItem_vtable602 = private constant %_ArrayItem_vtable {%_Object_vtable* @_Object_vtable601, i8* (%Object*)* @_Object_get_name, void (%ArrayItem*, i32)* @_ArrayItem_set}, align 4
@_Object_vtable601 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh777:
  ret void
}


define i32 @program (i32 %argc3452, { i32, [ 0 x i8* ] }* %argv3450){
__fresh764:
  %argc_slot3453 = alloca i32
  store i32 %argc3452, i32* %argc_slot3453
  %argv_slot3451 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3450, { i32, [ 0 x i8* ] }** %argv_slot3451
  %mem_ptr3454 = call i32* @oat_malloc ( i32 16 )
  %obj3455 = bitcast i32* %mem_ptr3454 to %Array* 
  %new_obj3456 = call %Array* @_Array_ctor ( %Array* %obj3455 )
  %vdecl_slot3457 = alloca %Array*
  store %Array* %new_obj3456, %Array** %vdecl_slot3457
  %vdecl_slot3458 = alloca i32
  store i32 0, i32* %vdecl_slot3458
  %vdecl_slot3459 = alloca i32
  store i32 0, i32* %vdecl_slot3459
  %lhs_or_call3460 = load %Array** %vdecl_slot3457
  %vtable_ptr3461 = getelementptr %Array* %lhs_or_call3460, i32 0
  %vtable3462 = load %_Array_vtable** %vtable_ptr3461
  %addElement3464 = getelementptr %_Array_vtable* %vtable3462, i32 0, i32 4
  %addElement3463 = load void (%Array*, i32)** %addElement3464
  %cast_op3465 = bitcast %Array %lhs_or_call3460 to %Array* 
  call void %addElement3463( %Array* %cast_op3465, i32 79 )
  %lhs_or_call3466 = load %Array** %vdecl_slot3457
  %vtable_ptr3467 = getelementptr %Array* %lhs_or_call3466, i32 0
  %vtable3468 = load %_Array_vtable** %vtable_ptr3467
  %getLength3470 = getelementptr %_Array_vtable* %vtable3468, i32 0, i32 5
  %getLength3469 = load i32 (%Array*)** %getLength3470
  %cast_op3471 = bitcast %Array %lhs_or_call3466 to %Array* 
  %ret3472 = call i32 %getLength3469 ( %Array* %cast_op3471 )
  store i32 %ret3472, i32* %vdecl_slot3458
  %vdecl_slot3473 = alloca i32
  store i32 1, i32* %vdecl_slot3473
  br label %__cond748

__cond748:
  %lhs_or_call3474 = load i32* %vdecl_slot3473
  %lhs_or_call3475 = load i32* %vdecl_slot3458
  %bop3476 = icmp slt i32 %lhs_or_call3474, %lhs_or_call3475
  br i1 %bop3476, label %__body747, label %__post746

__fresh765:
  br label %__body747

__body747:
  %lhs_or_call3477 = load i32* %vdecl_slot3473
  %vdecl_slot3478 = alloca i32
  store i32 %lhs_or_call3477, i32* %vdecl_slot3478
  %lhs_or_call3479 = load i32* %vdecl_slot3473
  %bop3480 = add i32 %lhs_or_call3479, 1
  %vdecl_slot3481 = alloca i32
  store i32 %bop3480, i32* %vdecl_slot3481
  br label %__cond751

__cond751:
  %lhs_or_call3482 = load i32* %vdecl_slot3481
  %lhs_or_call3483 = load i32* %vdecl_slot3458
  %bop3484 = icmp sle i32 %lhs_or_call3482, %lhs_or_call3483
  br i1 %bop3484, label %__body750, label %__post749

__fresh766:
  br label %__body750

__body750:
  %lhs_or_call3485 = load i32* %vdecl_slot3481
  %lhs_or_call3486 = load %Array** %vdecl_slot3457
  %vtable_ptr3487 = getelementptr %Array* %lhs_or_call3486, i32 0
  %vtable3488 = load %_Array_vtable** %vtable_ptr3487
  %getElement3490 = getelementptr %_Array_vtable* %vtable3488, i32 0, i32 2
  %getElement3489 = load i32 (%Array*, i32)** %getElement3490
  %cast_op3491 = bitcast %Array %lhs_or_call3486 to %Array* 
  %ret3492 = call i32 %getElement3489 ( %Array* %cast_op3491, i32 %lhs_or_call3485 )
  %vdecl_slot3493 = alloca i32
  store i32 %ret3492, i32* %vdecl_slot3493
  %lhs_or_call3494 = load i32* %vdecl_slot3478
  %lhs_or_call3495 = load %Array** %vdecl_slot3457
  %vtable_ptr3496 = getelementptr %Array* %lhs_or_call3495, i32 0
  %vtable3497 = load %_Array_vtable** %vtable_ptr3496
  %getElement3499 = getelementptr %_Array_vtable* %vtable3497, i32 0, i32 2
  %getElement3498 = load i32 (%Array*, i32)** %getElement3499
  %cast_op3500 = bitcast %Array %lhs_or_call3495 to %Array* 
  %ret3501 = call i32 %getElement3498 ( %Array* %cast_op3500, i32 %lhs_or_call3494 )
  %vdecl_slot3502 = alloca i32
  store i32 %ret3501, i32* %vdecl_slot3502
  %lhs_or_call3503 = load i32* %vdecl_slot3493
  %lhs_or_call3504 = load i32* %vdecl_slot3502
  %bop3505 = icmp slt i32 %lhs_or_call3503, %lhs_or_call3504
  br i1 %bop3505, label %__then754, label %__else753

__fresh767:
  br label %__then754

__then754:
  %lhs_or_call3506 = load i32* %vdecl_slot3481
  store i32 %lhs_or_call3506, i32* %vdecl_slot3478
  br label %__merge752

__fresh768:
  br label %__else753

__else753:
  br label %__merge752

__merge752:
  %lhs_or_call3507 = load i32* %vdecl_slot3481
  %bop3508 = add i32 %lhs_or_call3507, 1
  store i32 %bop3508, i32* %vdecl_slot3481
  br label %__cond751

__fresh769:
  br label %__post749

__post749:
  %lhs_or_call3509 = load i32* %vdecl_slot3478
  %lhs_or_call3510 = load i32* %vdecl_slot3473
  %bop3511 = icmp ne i32 %lhs_or_call3509, %lhs_or_call3510
  br i1 %bop3511, label %__then757, label %__else756

__fresh770:
  br label %__then757

__then757:
  %lhs_or_call3512 = load i32* %vdecl_slot3478
  %lhs_or_call3513 = load %Array** %vdecl_slot3457
  %vtable_ptr3514 = getelementptr %Array* %lhs_or_call3513, i32 0
  %vtable3515 = load %_Array_vtable** %vtable_ptr3514
  %getElement3517 = getelementptr %_Array_vtable* %vtable3515, i32 0, i32 2
  %getElement3516 = load i32 (%Array*, i32)** %getElement3517
  %cast_op3518 = bitcast %Array %lhs_or_call3513 to %Array* 
  %ret3519 = call i32 %getElement3516 ( %Array* %cast_op3518, i32 %lhs_or_call3512 )
  %vdecl_slot3520 = alloca i32
  store i32 %ret3519, i32* %vdecl_slot3520
  %lhs_or_call3521 = load i32* %vdecl_slot3473
  %lhs_or_call3522 = load %Array** %vdecl_slot3457
  %vtable_ptr3523 = getelementptr %Array* %lhs_or_call3522, i32 0
  %vtable3524 = load %_Array_vtable** %vtable_ptr3523
  %getElement3526 = getelementptr %_Array_vtable* %vtable3524, i32 0, i32 2
  %getElement3525 = load i32 (%Array*, i32)** %getElement3526
  %cast_op3527 = bitcast %Array %lhs_or_call3522 to %Array* 
  %ret3528 = call i32 %getElement3525 ( %Array* %cast_op3527, i32 %lhs_or_call3521 )
  %vdecl_slot3529 = alloca i32
  store i32 %ret3528, i32* %vdecl_slot3529
  %lhs_or_call3530 = load i32* %vdecl_slot3520
  %lhs_or_call3531 = load i32* %vdecl_slot3473
  %lhs_or_call3532 = load %Array** %vdecl_slot3457
  %vtable_ptr3533 = getelementptr %Array* %lhs_or_call3532, i32 0
  %vtable3534 = load %_Array_vtable** %vtable_ptr3533
  %setElement3536 = getelementptr %_Array_vtable* %vtable3534, i32 0, i32 3
  %setElement3535 = load void (%Array*, i32, i32)** %setElement3536
  %cast_op3537 = bitcast %Array %lhs_or_call3532 to %Array* 
  call void %setElement3535( %Array* %cast_op3537, i32 %lhs_or_call3531, i32 %lhs_or_call3530 )
  %lhs_or_call3538 = load i32* %vdecl_slot3529
  %lhs_or_call3539 = load i32* %vdecl_slot3478
  %lhs_or_call3540 = load %Array** %vdecl_slot3457
  %vtable_ptr3541 = getelementptr %Array* %lhs_or_call3540, i32 0
  %vtable3542 = load %_Array_vtable** %vtable_ptr3541
  %setElement3544 = getelementptr %_Array_vtable* %vtable3542, i32 0, i32 3
  %setElement3543 = load void (%Array*, i32, i32)** %setElement3544
  %cast_op3545 = bitcast %Array %lhs_or_call3540 to %Array* 
  call void %setElement3543( %Array* %cast_op3545, i32 %lhs_or_call3539, i32 %lhs_or_call3538 )
  br label %__merge755

__fresh771:
  br label %__else756

__else756:
  br label %__merge755

__merge755:
  %lhs_or_call3546 = load i32* %vdecl_slot3473
  %bop3547 = add i32 %lhs_or_call3546, 1
  store i32 %bop3547, i32* %vdecl_slot3473
  br label %__cond748

__fresh772:
  br label %__post746

__post746:
  %vdecl_slot3548 = alloca i32
  store i32 1, i32* %vdecl_slot3548
  br label %__cond760

__cond760:
  %lhs_or_call3549 = load i32* %vdecl_slot3548
  %lhs_or_call3550 = load i32* %vdecl_slot3458
  %bop3551 = icmp slt i32 %lhs_or_call3549, %lhs_or_call3550
  br i1 %bop3551, label %__body759, label %__post758

__fresh773:
  br label %__body759

__body759:
  %lhs_or_call3552 = load i32* %vdecl_slot3548
  %lhs_or_call3553 = load %Array** %vdecl_slot3457
  %vtable_ptr3554 = getelementptr %Array* %lhs_or_call3553, i32 0
  %vtable3555 = load %_Array_vtable** %vtable_ptr3554
  %getElement3557 = getelementptr %_Array_vtable* %vtable3555, i32 0, i32 2
  %getElement3556 = load i32 (%Array*, i32)** %getElement3557
  %cast_op3558 = bitcast %Array %lhs_or_call3553 to %Array* 
  %ret3559 = call i32 %getElement3556 ( %Array* %cast_op3558, i32 %lhs_or_call3552 )
  %vdecl_slot3560 = alloca i32
  store i32 %ret3559, i32* %vdecl_slot3560
  %lhs_or_call3561 = load i32* %vdecl_slot3548
  %bop3562 = add i32 %lhs_or_call3561, 1
  %lhs_or_call3563 = load %Array** %vdecl_slot3457
  %vtable_ptr3564 = getelementptr %Array* %lhs_or_call3563, i32 0
  %vtable3565 = load %_Array_vtable** %vtable_ptr3564
  %getElement3567 = getelementptr %_Array_vtable* %vtable3565, i32 0, i32 2
  %getElement3566 = load i32 (%Array*, i32)** %getElement3567
  %cast_op3568 = bitcast %Array %lhs_or_call3563 to %Array* 
  %ret3569 = call i32 %getElement3566 ( %Array* %cast_op3568, i32 %bop3562 )
  %vdecl_slot3570 = alloca i32
  store i32 %ret3569, i32* %vdecl_slot3570
  %lhs_or_call3571 = load i32* %vdecl_slot3560
  %lhs_or_call3572 = load i32* %vdecl_slot3570
  %bop3573 = icmp sgt i32 %lhs_or_call3571, %lhs_or_call3572
  br i1 %bop3573, label %__then763, label %__else762

__fresh774:
  br label %__then763

__then763:
  %lhs_or_call3574 = load i32* %vdecl_slot3459
  %bop3575 = add i32 %lhs_or_call3574, 1
  store i32 %bop3575, i32* %vdecl_slot3459
  br label %__merge761

__fresh775:
  br label %__else762

__else762:
  br label %__merge761

__merge761:
  %lhs_or_call3576 = load i32* %vdecl_slot3548
  %bop3577 = add i32 %lhs_or_call3576, 1
  store i32 %bop3577, i32* %vdecl_slot3548
  br label %__cond760

__fresh776:
  br label %__post758

__post758:
  %lhs_or_call3578 = load i32* %vdecl_slot3459
  ret i32 %lhs_or_call3578
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh745:
  %arrayLength3448 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3449 = load i32* %arrayLength3448
  ret i32 %lhs_or_call3449
}


define void @_Array_addElement (%Array* %_this1, i32 %key3411){
__fresh736:
  %key_slot3412 = alloca i32
  store i32 %key3411, i32* %key_slot3412
  %arrayLength3413 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3414 = load i32* %arrayLength3413
  %bop3415 = icmp eq i32 %lhs_or_call3414, 0
  br i1 %bop3415, label %__then735, label %__else734

__fresh737:
  br label %__then735

__then735:
  %headItem3416 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3417 = load i32* %key_slot3412
  %mem_ptr3418 = call i32* @oat_malloc ( i32 16 )
  %obj3419 = bitcast i32* %mem_ptr3418 to %ArrayItem* 
  %new_obj3420 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3419, i32 %lhs_or_call3417 )
  store %ArrayItem* %new_obj3420, %ArrayItem** %headItem3416
  br label %__merge733

__fresh738:
  br label %__else734

__else734:
  %headItem3421 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3422 = load %ArrayItem** %headItem3421
  %ifnull_slot3423 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3422, %ArrayItem** %ifnull_slot3423
  %ifnull_guard3424 = icmp ne %ArrayItem* %lhs_or_call3422, null
  br i1 %ifnull_guard3424, label %__then732, label %__else731

__fresh739:
  br label %__then732

__then732:
  %vdecl_slot3425 = alloca i32
  store i32 1, i32* %vdecl_slot3425
  br label %__cond726

__cond726:
  %lhs_or_call3426 = load i32* %vdecl_slot3425
  %arrayLength3427 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3428 = load i32* %arrayLength3427
  %bop3429 = icmp ne i32 %lhs_or_call3426, %lhs_or_call3428
  br i1 %bop3429, label %__body725, label %__post724

__fresh740:
  br label %__body725

__body725:
  %lhs_or_call3430 = load %ArrayItem** %ifnull_slot3423
  %nextItem3431 = getelementptr %ArrayItem* %lhs_or_call3430, i32 0, i32 3
  %lhs_or_call3432 = load %ArrayItem** %nextItem3431
  %ifnull_slot3433 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3432, %ArrayItem** %ifnull_slot3433
  %ifnull_guard3434 = icmp ne %ArrayItem* %lhs_or_call3432, null
  br i1 %ifnull_guard3434, label %__then729, label %__else728

__fresh741:
  br label %__then729

__then729:
  %lhs_or_call3435 = load %ArrayItem** %ifnull_slot3433
  store %ArrayItem* %lhs_or_call3435, %ArrayItem** %ifnull_slot3423
  br label %__merge727

__fresh742:
  br label %__else728

__else728:
  br label %__merge727

__merge727:
  %lhs_or_call3436 = load i32* %vdecl_slot3425
  %bop3437 = add i32 %lhs_or_call3436, 1
  store i32 %bop3437, i32* %vdecl_slot3425
  br label %__cond726

__fresh743:
  br label %__post724

__post724:
  %lhs_or_call3438 = load %ArrayItem** %ifnull_slot3423
  %nextItem3439 = getelementptr %ArrayItem* %lhs_or_call3438, i32 0, i32 3
  %lhs_or_call3440 = load i32* %key_slot3412
  %mem_ptr3441 = call i32* @oat_malloc ( i32 16 )
  %obj3442 = bitcast i32* %mem_ptr3441 to %ArrayItem* 
  %new_obj3443 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3442, i32 %lhs_or_call3440 )
  store %ArrayItem* %new_obj3443, %ArrayItem** %nextItem3439
  br label %__merge730

__fresh744:
  br label %__else731

__else731:
  br label %__merge730

__merge730:
  br label %__merge733

__merge733:
  %arrayLength3444 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3445 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3446 = load i32* %arrayLength3445
  %bop3447 = add i32 %lhs_or_call3446, 1
  store i32 %bop3447, i32* %arrayLength3444
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3390, i32 %key3388){
__fresh717:
  %index_slot3391 = alloca i32
  store i32 %index3390, i32* %index_slot3391
  %key_slot3389 = alloca i32
  store i32 %key3388, i32* %key_slot3389
  %headItem3392 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3393 = load %ArrayItem** %headItem3392
  %ifnull_slot3394 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3393, %ArrayItem** %ifnull_slot3394
  %ifnull_guard3395 = icmp ne %ArrayItem* %lhs_or_call3393, null
  br i1 %ifnull_guard3395, label %__then716, label %__else715

__fresh718:
  br label %__then716

__then716:
  %vdecl_slot3396 = alloca i32
  store i32 1, i32* %vdecl_slot3396
  br label %__cond710

__cond710:
  %lhs_or_call3397 = load i32* %vdecl_slot3396
  %lhs_or_call3398 = load i32* %index_slot3391
  %bop3399 = icmp ne i32 %lhs_or_call3397, %lhs_or_call3398
  br i1 %bop3399, label %__body709, label %__post708

__fresh719:
  br label %__body709

__body709:
  %lhs_or_call3400 = load %ArrayItem** %ifnull_slot3394
  %nextItem3401 = getelementptr %ArrayItem* %lhs_or_call3400, i32 0, i32 3
  %lhs_or_call3402 = load %ArrayItem** %nextItem3401
  %ifnull_slot3403 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3402, %ArrayItem** %ifnull_slot3403
  %ifnull_guard3404 = icmp ne %ArrayItem* %lhs_or_call3402, null
  br i1 %ifnull_guard3404, label %__then713, label %__else712

__fresh720:
  br label %__then713

__then713:
  %lhs_or_call3405 = load %ArrayItem** %ifnull_slot3403
  store %ArrayItem* %lhs_or_call3405, %ArrayItem** %ifnull_slot3394
  br label %__merge711

__fresh721:
  br label %__else712

__else712:
  br label %__merge711

__merge711:
  %lhs_or_call3406 = load i32* %vdecl_slot3396
  %bop3407 = add i32 %lhs_or_call3406, 1
  store i32 %bop3407, i32* %vdecl_slot3396
  br label %__cond710

__fresh722:
  br label %__post708

__post708:
  %lhs_or_call3408 = load %ArrayItem** %ifnull_slot3394
  %keyValue3409 = getelementptr %ArrayItem* %lhs_or_call3408, i32 0, i32 2
  %lhs_or_call3410 = load i32* %key_slot3389
  store i32 %lhs_or_call3410, i32* %keyValue3409
  br label %__merge714

__fresh723:
  br label %__else715

__else715:
  call void @print_string( i8* @_const_str608 )
  call void @oat_abort( i32 -1 )
  br label %__merge714

__merge714:
  ret void
}


define i32 @_Array_getElement (%Array* %_this1, i32 %index3365){
__fresh701:
  %index_slot3366 = alloca i32
  store i32 %index3365, i32* %index_slot3366
  %vdecl_slot3367 = alloca i32
  store i32 0, i32* %vdecl_slot3367
  %headItem3368 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3369 = load %ArrayItem** %headItem3368
  %ifnull_slot3370 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3369, %ArrayItem** %ifnull_slot3370
  %ifnull_guard3371 = icmp ne %ArrayItem* %lhs_or_call3369, null
  br i1 %ifnull_guard3371, label %__then700, label %__else699

__fresh702:
  br label %__then700

__then700:
  %vdecl_slot3372 = alloca i32
  store i32 1, i32* %vdecl_slot3372
  br label %__cond694

__cond694:
  %lhs_or_call3373 = load i32* %vdecl_slot3372
  %lhs_or_call3374 = load i32* %index_slot3366
  %bop3375 = icmp ne i32 %lhs_or_call3373, %lhs_or_call3374
  br i1 %bop3375, label %__body693, label %__post692

__fresh703:
  br label %__body693

__body693:
  %lhs_or_call3376 = load %ArrayItem** %ifnull_slot3370
  %nextItem3377 = getelementptr %ArrayItem* %lhs_or_call3376, i32 0, i32 3
  %lhs_or_call3378 = load %ArrayItem** %nextItem3377
  %ifnull_slot3379 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3378, %ArrayItem** %ifnull_slot3379
  %ifnull_guard3380 = icmp ne %ArrayItem* %lhs_or_call3378, null
  br i1 %ifnull_guard3380, label %__then697, label %__else696

__fresh704:
  br label %__then697

__then697:
  %lhs_or_call3381 = load %ArrayItem** %ifnull_slot3379
  store %ArrayItem* %lhs_or_call3381, %ArrayItem** %ifnull_slot3370
  br label %__merge695

__fresh705:
  br label %__else696

__else696:
  br label %__merge695

__merge695:
  %lhs_or_call3382 = load i32* %vdecl_slot3372
  %bop3383 = add i32 %lhs_or_call3382, 1
  store i32 %bop3383, i32* %vdecl_slot3372
  br label %__cond694

__fresh706:
  br label %__post692

__post692:
  %lhs_or_call3384 = load %ArrayItem** %ifnull_slot3370
  %keyValue3385 = getelementptr %ArrayItem* %lhs_or_call3384, i32 0, i32 2
  %lhs_or_call3386 = load i32* %keyValue3385
  store i32 %lhs_or_call3386, i32* %vdecl_slot3367
  br label %__merge698

__fresh707:
  br label %__else699

__else699:
  call void @print_string( i8* @_const_str607 )
  call void @oat_abort( i32 -1 )
  br label %__merge698

__merge698:
  %lhs_or_call3387 = load i32* %vdecl_slot3367
  ret i32 %lhs_or_call3387
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh691:
  %mem_ptr3360 = call i32* @oat_malloc ( i32 8 )
  %obj3361 = bitcast i32* %mem_ptr3360 to %Object* 
  %new_obj3362 = call %Object* @_Object_ctor ( %Object* %obj3361 )
  %_this1 = bitcast %Object* %new_obj3362 to %Array 
  %_name3363 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str606, i8** %_name3363
  %this_vtable3364 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable603, %_Array_vtable** %this_vtable3364
  %arrayLength3359 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3359
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3355){
__fresh690:
  %x_slot3356 = alloca i32
  store i32 %x3355, i32* %x_slot3356
  %keyValue3357 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3358 = load i32* %x_slot3356
  store i32 %lhs_or_call3358, i32* %keyValue3357
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3344){
__fresh689:
  %x_slot3345 = alloca i32
  store i32 %x3344, i32* %x_slot3345
  %mem_ptr3350 = call i32* @oat_malloc ( i32 8 )
  %obj3351 = bitcast i32* %mem_ptr3350 to %Object* 
  %new_obj3352 = call %Object* @_Object_ctor ( %Object* %obj3351 )
  %_this1 = bitcast %Object* %new_obj3352 to %ArrayItem 
  %_name3353 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str605, i8** %_name3353
  %this_vtable3354 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable602, %_ArrayItem_vtable** %this_vtable3354
  %keyValue3346 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3347 = load i32* %x_slot3345
  store i32 %lhs_or_call3347, i32* %keyValue3346
  %nextItem3348 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3349 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3349, %ArrayItem** %nextItem3348
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh688:
  %_name3342 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3343 = load i8** %_name3342
  ret i8* %lhs_or_call3343
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh687:
  %_name3340 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str604, i8** %_name3340
  %this_vtable3341 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable601, %_Object_vtable** %this_vtable3341
  ret %Object* %_this1
}


