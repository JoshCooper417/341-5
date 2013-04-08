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
@_const_str628.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str628 = alias bitcast([ 24 x i8 ]* @_const_str628.str. to i8*)@_const_str627.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str627 = alias bitcast([ 24 x i8 ]* @_const_str627.str. to i8*)@_const_str626.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str626 = alias bitcast([ 6 x i8 ]* @_const_str626.str. to i8*)@_const_str625.str. = private unnamed_addr constant [ 10 x i8 ] c "ArrayItem\00", align 4
@_const_str625 = alias bitcast([ 10 x i8 ]* @_const_str625.str. to i8*)@_const_str624.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str624 = alias bitcast([ 7 x i8 ]* @_const_str624.str. to i8*)@_Array_vtable623 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable621, i8* (%Object*)* @_Object_get_name, i32 (%Array*, i32)* @_Array_getElement, void (%Array*, i32, i32)* @_Array_setElement, void (%Array*, i32)* @_Array_addElement, i32 (%Array*)* @_Array_getLength}, align 4
@_ArrayItem_vtable622 = private constant %_ArrayItem_vtable {%_Object_vtable* @_Object_vtable621, i8* (%Object*)* @_Object_get_name, void (%ArrayItem*, i32)* @_ArrayItem_set}, align 4
@_Object_vtable621 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh802:
  ret void
}


define i32 @program (i32 %argc3466, { i32, [ 0 x i8* ] }* %argv3464){
__fresh789:
  %argc_slot3467 = alloca i32
  store i32 %argc3466, i32* %argc_slot3467
  %argv_slot3465 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3464, { i32, [ 0 x i8* ] }** %argv_slot3465
  %mem_ptr3468 = call i32* @oat_malloc ( i32 16 )
  %obj3469 = bitcast i32* %mem_ptr3468 to %Array* 
  %new_obj3470 = call %Array* @_Array_ctor ( %Array* %obj3469 )
  %vdecl_slot3471 = alloca %Array*
  store %Array* %new_obj3470, %Array** %vdecl_slot3471
  %vdecl_slot3472 = alloca i32
  store i32 0, i32* %vdecl_slot3472
  %vdecl_slot3473 = alloca i32
  store i32 0, i32* %vdecl_slot3473
  %lhs_or_call3474 = load %Array** %vdecl_slot3471
  %addElement3476 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 4
  %addElement3475 = load void (%Array*, i32)** %addElement3476
  %cast_op3477 = bitcast %Array %lhs_or_call3474 to %Array* 
  call void %addElement3475( %Array* %cast_op3477, i32 79 )
  %lhs_or_call3478 = load %Array** %vdecl_slot3471
  %getLength3480 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 5
  %getLength3479 = load i32 (%Array*)** %getLength3480
  %cast_op3481 = bitcast %Array %lhs_or_call3478 to %Array* 
  %ret3482 = call i32 %getLength3479 ( %Array* %cast_op3481 )
  store i32 %ret3482, i32* %vdecl_slot3472
  %vdecl_slot3483 = alloca i32
  store i32 1, i32* %vdecl_slot3483
  br label %__cond773

__cond773:
  %lhs_or_call3484 = load i32* %vdecl_slot3483
  %lhs_or_call3485 = load i32* %vdecl_slot3472
  %bop3486 = icmp slt i32 %lhs_or_call3484, %lhs_or_call3485
  br i1 %bop3486, label %__body772, label %__post771

__fresh790:
  br label %__body772

__body772:
  %lhs_or_call3487 = load i32* %vdecl_slot3483
  %vdecl_slot3488 = alloca i32
  store i32 %lhs_or_call3487, i32* %vdecl_slot3488
  %lhs_or_call3489 = load i32* %vdecl_slot3483
  %bop3490 = add i32 %lhs_or_call3489, 1
  %vdecl_slot3491 = alloca i32
  store i32 %bop3490, i32* %vdecl_slot3491
  br label %__cond776

__cond776:
  %lhs_or_call3492 = load i32* %vdecl_slot3491
  %lhs_or_call3493 = load i32* %vdecl_slot3472
  %bop3494 = icmp sle i32 %lhs_or_call3492, %lhs_or_call3493
  br i1 %bop3494, label %__body775, label %__post774

__fresh791:
  br label %__body775

__body775:
  %lhs_or_call3495 = load i32* %vdecl_slot3491
  %lhs_or_call3496 = load %Array** %vdecl_slot3471
  %getElement3498 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 2
  %getElement3497 = load i32 (%Array*, i32)** %getElement3498
  %cast_op3499 = bitcast %Array %lhs_or_call3496 to %Array* 
  %ret3500 = call i32 %getElement3497 ( %Array* %cast_op3499, i32 %lhs_or_call3495 )
  %vdecl_slot3501 = alloca i32
  store i32 %ret3500, i32* %vdecl_slot3501
  %lhs_or_call3502 = load i32* %vdecl_slot3488
  %lhs_or_call3503 = load %Array** %vdecl_slot3471
  %getElement3505 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 2
  %getElement3504 = load i32 (%Array*, i32)** %getElement3505
  %cast_op3506 = bitcast %Array %lhs_or_call3503 to %Array* 
  %ret3507 = call i32 %getElement3504 ( %Array* %cast_op3506, i32 %lhs_or_call3502 )
  %vdecl_slot3508 = alloca i32
  store i32 %ret3507, i32* %vdecl_slot3508
  %lhs_or_call3509 = load i32* %vdecl_slot3501
  %lhs_or_call3510 = load i32* %vdecl_slot3508
  %bop3511 = icmp slt i32 %lhs_or_call3509, %lhs_or_call3510
  br i1 %bop3511, label %__then779, label %__else778

__fresh792:
  br label %__then779

__then779:
  %lhs_or_call3512 = load i32* %vdecl_slot3491
  store i32 %lhs_or_call3512, i32* %vdecl_slot3488
  br label %__merge777

__fresh793:
  br label %__else778

__else778:
  br label %__merge777

__merge777:
  %lhs_or_call3513 = load i32* %vdecl_slot3491
  %bop3514 = add i32 %lhs_or_call3513, 1
  store i32 %bop3514, i32* %vdecl_slot3491
  br label %__cond776

__fresh794:
  br label %__post774

__post774:
  %lhs_or_call3515 = load i32* %vdecl_slot3488
  %lhs_or_call3516 = load i32* %vdecl_slot3483
  %bop3517 = icmp ne i32 %lhs_or_call3515, %lhs_or_call3516
  br i1 %bop3517, label %__then782, label %__else781

__fresh795:
  br label %__then782

__then782:
  %lhs_or_call3518 = load i32* %vdecl_slot3488
  %lhs_or_call3519 = load %Array** %vdecl_slot3471
  %getElement3521 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 2
  %getElement3520 = load i32 (%Array*, i32)** %getElement3521
  %cast_op3522 = bitcast %Array %lhs_or_call3519 to %Array* 
  %ret3523 = call i32 %getElement3520 ( %Array* %cast_op3522, i32 %lhs_or_call3518 )
  %vdecl_slot3524 = alloca i32
  store i32 %ret3523, i32* %vdecl_slot3524
  %lhs_or_call3525 = load i32* %vdecl_slot3483
  %lhs_or_call3526 = load %Array** %vdecl_slot3471
  %getElement3528 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 2
  %getElement3527 = load i32 (%Array*, i32)** %getElement3528
  %cast_op3529 = bitcast %Array %lhs_or_call3526 to %Array* 
  %ret3530 = call i32 %getElement3527 ( %Array* %cast_op3529, i32 %lhs_or_call3525 )
  %vdecl_slot3531 = alloca i32
  store i32 %ret3530, i32* %vdecl_slot3531
  %lhs_or_call3532 = load i32* %vdecl_slot3524
  %lhs_or_call3533 = load i32* %vdecl_slot3483
  %lhs_or_call3534 = load %Array** %vdecl_slot3471
  %setElement3536 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 3
  %setElement3535 = load void (%Array*, i32, i32)** %setElement3536
  %cast_op3537 = bitcast %Array %lhs_or_call3534 to %Array* 
  call void %setElement3535( %Array* %cast_op3537, i32 %lhs_or_call3533, i32 %lhs_or_call3532 )
  %lhs_or_call3538 = load i32* %vdecl_slot3531
  %lhs_or_call3539 = load i32* %vdecl_slot3488
  %lhs_or_call3540 = load %Array** %vdecl_slot3471
  %setElement3542 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 3
  %setElement3541 = load void (%Array*, i32, i32)** %setElement3542
  %cast_op3543 = bitcast %Array %lhs_or_call3540 to %Array* 
  call void %setElement3541( %Array* %cast_op3543, i32 %lhs_or_call3539, i32 %lhs_or_call3538 )
  br label %__merge780

__fresh796:
  br label %__else781

__else781:
  br label %__merge780

__merge780:
  %lhs_or_call3544 = load i32* %vdecl_slot3483
  %bop3545 = add i32 %lhs_or_call3544, 1
  store i32 %bop3545, i32* %vdecl_slot3483
  br label %__cond773

__fresh797:
  br label %__post771

__post771:
  %vdecl_slot3546 = alloca i32
  store i32 1, i32* %vdecl_slot3546
  br label %__cond785

__cond785:
  %lhs_or_call3547 = load i32* %vdecl_slot3546
  %lhs_or_call3548 = load i32* %vdecl_slot3472
  %bop3549 = icmp slt i32 %lhs_or_call3547, %lhs_or_call3548
  br i1 %bop3549, label %__body784, label %__post783

__fresh798:
  br label %__body784

__body784:
  %lhs_or_call3550 = load i32* %vdecl_slot3546
  %lhs_or_call3551 = load %Array** %vdecl_slot3471
  %getElement3553 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 2
  %getElement3552 = load i32 (%Array*, i32)** %getElement3553
  %cast_op3554 = bitcast %Array %lhs_or_call3551 to %Array* 
  %ret3555 = call i32 %getElement3552 ( %Array* %cast_op3554, i32 %lhs_or_call3550 )
  %vdecl_slot3556 = alloca i32
  store i32 %ret3555, i32* %vdecl_slot3556
  %lhs_or_call3557 = load i32* %vdecl_slot3546
  %bop3558 = add i32 %lhs_or_call3557, 1
  %lhs_or_call3559 = load %Array** %vdecl_slot3471
  %getElement3561 = getelementptr %_Array_vtable* @_Array_vtable623, i32 0, i32 2
  %getElement3560 = load i32 (%Array*, i32)** %getElement3561
  %cast_op3562 = bitcast %Array %lhs_or_call3559 to %Array* 
  %ret3563 = call i32 %getElement3560 ( %Array* %cast_op3562, i32 %bop3558 )
  %vdecl_slot3564 = alloca i32
  store i32 %ret3563, i32* %vdecl_slot3564
  %lhs_or_call3565 = load i32* %vdecl_slot3556
  %lhs_or_call3566 = load i32* %vdecl_slot3564
  %bop3567 = icmp sgt i32 %lhs_or_call3565, %lhs_or_call3566
  br i1 %bop3567, label %__then788, label %__else787

__fresh799:
  br label %__then788

__then788:
  %lhs_or_call3568 = load i32* %vdecl_slot3473
  %bop3569 = add i32 %lhs_or_call3568, 1
  store i32 %bop3569, i32* %vdecl_slot3473
  br label %__merge786

__fresh800:
  br label %__else787

__else787:
  br label %__merge786

__merge786:
  %lhs_or_call3570 = load i32* %vdecl_slot3546
  %bop3571 = add i32 %lhs_or_call3570, 1
  store i32 %bop3571, i32* %vdecl_slot3546
  br label %__cond785

__fresh801:
  br label %__post783

__post783:
  %lhs_or_call3572 = load i32* %vdecl_slot3473
  ret i32 %lhs_or_call3572
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh770:
  %arrayLength3462 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3463 = load i32* %arrayLength3462
  ret i32 %lhs_or_call3463
}


define void @_Array_addElement (%Array* %_this1, i32 %key3425){
__fresh761:
  %key_slot3426 = alloca i32
  store i32 %key3425, i32* %key_slot3426
  %arrayLength3427 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3428 = load i32* %arrayLength3427
  %bop3429 = icmp eq i32 %lhs_or_call3428, 0
  br i1 %bop3429, label %__then760, label %__else759

__fresh762:
  br label %__then760

__then760:
  %headItem3430 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3431 = load i32* %key_slot3426
  %mem_ptr3432 = call i32* @oat_malloc ( i32 16 )
  %obj3433 = bitcast i32* %mem_ptr3432 to %ArrayItem* 
  %new_obj3434 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3433, i32 %lhs_or_call3431 )
  store %ArrayItem* %new_obj3434, %ArrayItem** %headItem3430
  br label %__merge758

__fresh763:
  br label %__else759

__else759:
  %headItem3435 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3436 = load %ArrayItem** %headItem3435
  %ifnull_slot3437 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3436, %ArrayItem** %ifnull_slot3437
  %ifnull_guard3438 = icmp ne %ArrayItem* %lhs_or_call3436, null
  br i1 %ifnull_guard3438, label %__then757, label %__else756

__fresh764:
  br label %__then757

__then757:
  %vdecl_slot3439 = alloca i32
  store i32 1, i32* %vdecl_slot3439
  br label %__cond751

__cond751:
  %lhs_or_call3440 = load i32* %vdecl_slot3439
  %arrayLength3441 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3442 = load i32* %arrayLength3441
  %bop3443 = icmp ne i32 %lhs_or_call3440, %lhs_or_call3442
  br i1 %bop3443, label %__body750, label %__post749

__fresh765:
  br label %__body750

__body750:
  %lhs_or_call3444 = load %ArrayItem** %ifnull_slot3437
  %nextItem3445 = getelementptr %ArrayItem* %lhs_or_call3444, i32 0, i32 3
  %lhs_or_call3446 = load %ArrayItem** %nextItem3445
  %ifnull_slot3447 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3446, %ArrayItem** %ifnull_slot3447
  %ifnull_guard3448 = icmp ne %ArrayItem* %lhs_or_call3446, null
  br i1 %ifnull_guard3448, label %__then754, label %__else753

__fresh766:
  br label %__then754

__then754:
  %lhs_or_call3449 = load %ArrayItem** %ifnull_slot3447
  store %ArrayItem* %lhs_or_call3449, %ArrayItem** %ifnull_slot3437
  br label %__merge752

__fresh767:
  br label %__else753

__else753:
  br label %__merge752

__merge752:
  %lhs_or_call3450 = load i32* %vdecl_slot3439
  %bop3451 = add i32 %lhs_or_call3450, 1
  store i32 %bop3451, i32* %vdecl_slot3439
  br label %__cond751

__fresh768:
  br label %__post749

__post749:
  %lhs_or_call3452 = load %ArrayItem** %ifnull_slot3437
  %nextItem3453 = getelementptr %ArrayItem* %lhs_or_call3452, i32 0, i32 3
  %lhs_or_call3454 = load i32* %key_slot3426
  %mem_ptr3455 = call i32* @oat_malloc ( i32 16 )
  %obj3456 = bitcast i32* %mem_ptr3455 to %ArrayItem* 
  %new_obj3457 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3456, i32 %lhs_or_call3454 )
  store %ArrayItem* %new_obj3457, %ArrayItem** %nextItem3453
  br label %__merge755

__fresh769:
  br label %__else756

__else756:
  br label %__merge755

__merge755:
  br label %__merge758

__merge758:
  %arrayLength3458 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3459 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3460 = load i32* %arrayLength3459
  %bop3461 = add i32 %lhs_or_call3460, 1
  store i32 %bop3461, i32* %arrayLength3458
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3404, i32 %key3402){
__fresh742:
  %index_slot3405 = alloca i32
  store i32 %index3404, i32* %index_slot3405
  %key_slot3403 = alloca i32
  store i32 %key3402, i32* %key_slot3403
  %headItem3406 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3407 = load %ArrayItem** %headItem3406
  %ifnull_slot3408 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3407, %ArrayItem** %ifnull_slot3408
  %ifnull_guard3409 = icmp ne %ArrayItem* %lhs_or_call3407, null
  br i1 %ifnull_guard3409, label %__then741, label %__else740

__fresh743:
  br label %__then741

__then741:
  %vdecl_slot3410 = alloca i32
  store i32 1, i32* %vdecl_slot3410
  br label %__cond735

__cond735:
  %lhs_or_call3411 = load i32* %vdecl_slot3410
  %lhs_or_call3412 = load i32* %index_slot3405
  %bop3413 = icmp ne i32 %lhs_or_call3411, %lhs_or_call3412
  br i1 %bop3413, label %__body734, label %__post733

__fresh744:
  br label %__body734

__body734:
  %lhs_or_call3414 = load %ArrayItem** %ifnull_slot3408
  %nextItem3415 = getelementptr %ArrayItem* %lhs_or_call3414, i32 0, i32 3
  %lhs_or_call3416 = load %ArrayItem** %nextItem3415
  %ifnull_slot3417 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3416, %ArrayItem** %ifnull_slot3417
  %ifnull_guard3418 = icmp ne %ArrayItem* %lhs_or_call3416, null
  br i1 %ifnull_guard3418, label %__then738, label %__else737

__fresh745:
  br label %__then738

__then738:
  %lhs_or_call3419 = load %ArrayItem** %ifnull_slot3417
  store %ArrayItem* %lhs_or_call3419, %ArrayItem** %ifnull_slot3408
  br label %__merge736

__fresh746:
  br label %__else737

__else737:
  br label %__merge736

__merge736:
  %lhs_or_call3420 = load i32* %vdecl_slot3410
  %bop3421 = add i32 %lhs_or_call3420, 1
  store i32 %bop3421, i32* %vdecl_slot3410
  br label %__cond735

__fresh747:
  br label %__post733

__post733:
  %lhs_or_call3422 = load %ArrayItem** %ifnull_slot3408
  %keyValue3423 = getelementptr %ArrayItem* %lhs_or_call3422, i32 0, i32 2
  %lhs_or_call3424 = load i32* %key_slot3403
  store i32 %lhs_or_call3424, i32* %keyValue3423
  br label %__merge739

__fresh748:
  br label %__else740

__else740:
  call void @print_string( i8* @_const_str628 )
  call void @oat_abort( i32 -1 )
  br label %__merge739

__merge739:
  ret void
}


define i32 @_Array_getElement (%Array* %_this1, i32 %index3379){
__fresh726:
  %index_slot3380 = alloca i32
  store i32 %index3379, i32* %index_slot3380
  %vdecl_slot3381 = alloca i32
  store i32 0, i32* %vdecl_slot3381
  %headItem3382 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3383 = load %ArrayItem** %headItem3382
  %ifnull_slot3384 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3383, %ArrayItem** %ifnull_slot3384
  %ifnull_guard3385 = icmp ne %ArrayItem* %lhs_or_call3383, null
  br i1 %ifnull_guard3385, label %__then725, label %__else724

__fresh727:
  br label %__then725

__then725:
  %vdecl_slot3386 = alloca i32
  store i32 1, i32* %vdecl_slot3386
  br label %__cond719

__cond719:
  %lhs_or_call3387 = load i32* %vdecl_slot3386
  %lhs_or_call3388 = load i32* %index_slot3380
  %bop3389 = icmp ne i32 %lhs_or_call3387, %lhs_or_call3388
  br i1 %bop3389, label %__body718, label %__post717

__fresh728:
  br label %__body718

__body718:
  %lhs_or_call3390 = load %ArrayItem** %ifnull_slot3384
  %nextItem3391 = getelementptr %ArrayItem* %lhs_or_call3390, i32 0, i32 3
  %lhs_or_call3392 = load %ArrayItem** %nextItem3391
  %ifnull_slot3393 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3392, %ArrayItem** %ifnull_slot3393
  %ifnull_guard3394 = icmp ne %ArrayItem* %lhs_or_call3392, null
  br i1 %ifnull_guard3394, label %__then722, label %__else721

__fresh729:
  br label %__then722

__then722:
  %lhs_or_call3395 = load %ArrayItem** %ifnull_slot3393
  store %ArrayItem* %lhs_or_call3395, %ArrayItem** %ifnull_slot3384
  br label %__merge720

__fresh730:
  br label %__else721

__else721:
  br label %__merge720

__merge720:
  %lhs_or_call3396 = load i32* %vdecl_slot3386
  %bop3397 = add i32 %lhs_or_call3396, 1
  store i32 %bop3397, i32* %vdecl_slot3386
  br label %__cond719

__fresh731:
  br label %__post717

__post717:
  %lhs_or_call3398 = load %ArrayItem** %ifnull_slot3384
  %keyValue3399 = getelementptr %ArrayItem* %lhs_or_call3398, i32 0, i32 2
  %lhs_or_call3400 = load i32* %keyValue3399
  store i32 %lhs_or_call3400, i32* %vdecl_slot3381
  br label %__merge723

__fresh732:
  br label %__else724

__else724:
  call void @print_string( i8* @_const_str627 )
  call void @oat_abort( i32 -1 )
  br label %__merge723

__merge723:
  %lhs_or_call3401 = load i32* %vdecl_slot3381
  ret i32 %lhs_or_call3401
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh716:
  %cast_op3373 = bitcast %Array* %_this1 to %Object* 
  %mem_ptr3374 = call i32* @oat_malloc ( i32 16 )
  %obj3375 = bitcast i32* %mem_ptr3374 to %Array* 
  %new_obj3376 = call %Object* @_Object_ctor ( %Array* %obj3375, %Object* %cast_op3373 )
  %_this1 = bitcast %Object* %new_obj3376 to %Array 
  %_name3377 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str626, i8** %_name3377
  %this_vtable3378 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable623, %_Array_vtable** %this_vtable3378
  %arrayLength3372 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3372
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3368){
__fresh715:
  %x_slot3369 = alloca i32
  store i32 %x3368, i32* %x_slot3369
  %keyValue3370 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3371 = load i32* %x_slot3369
  store i32 %lhs_or_call3371, i32* %keyValue3370
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3356){
__fresh714:
  %x_slot3357 = alloca i32
  store i32 %x3356, i32* %x_slot3357
  %cast_op3362 = bitcast %ArrayItem* %_this1 to %Object* 
  %mem_ptr3363 = call i32* @oat_malloc ( i32 16 )
  %obj3364 = bitcast i32* %mem_ptr3363 to %ArrayItem* 
  %new_obj3365 = call %Object* @_Object_ctor ( %ArrayItem* %obj3364, %Object* %cast_op3362 )
  %_this1 = bitcast %Object* %new_obj3365 to %ArrayItem 
  %_name3366 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str625, i8** %_name3366
  %this_vtable3367 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable622, %_ArrayItem_vtable** %this_vtable3367
  %keyValue3358 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3359 = load i32* %x_slot3357
  store i32 %lhs_or_call3359, i32* %keyValue3358
  %nextItem3360 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3361 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3361, %ArrayItem** %nextItem3360
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh713:
  %_name3354 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3355 = load i8** %_name3354
  ret i8* %lhs_or_call3355
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh712:
  %_name3352 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str624, i8** %_name3352
  %this_vtable3353 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable621, %_Object_vtable** %this_vtable3353
  ret %Object* %_this1
}


