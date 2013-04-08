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


define i32 @program (i32 %argc3445, { i32, [ 0 x i8* ] }* %argv3443){
__fresh764:
  %argc_slot3446 = alloca i32
  store i32 %argc3445, i32* %argc_slot3446
  %argv_slot3444 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3443, { i32, [ 0 x i8* ] }** %argv_slot3444
  %mem_ptr3447 = call i32* @oat_malloc ( i32 16 )
  %obj3448 = bitcast i32* %mem_ptr3447 to %Array* 
  %new_obj3449 = call %Array* @_Array_ctor ( %Array* %obj3448 )
  %vdecl_slot3450 = alloca %Array*
  store %Array* %new_obj3449, %Array** %vdecl_slot3450
  %vdecl_slot3451 = alloca i32
  store i32 0, i32* %vdecl_slot3451
  %vdecl_slot3452 = alloca i32
  store i32 0, i32* %vdecl_slot3452
  %lhs_or_call3453 = load %Array** %vdecl_slot3450
  %vtable_ptr3454 = getelementptr %Array* %lhs_or_call3453, i32 0
  %vtable3455 = load %_Array_vtable** %vtable_ptr3454
  %addElement3457 = getelementptr %_Array_vtable* %vtable3455, i32 0, i32 4
  %addElement3456 = load void (%Array*, i32)** %addElement3457
  %cast_op3458 = bitcast %Array %lhs_or_call3453 to %Array* 
  call void %addElement3456( %Array* %cast_op3458, i32 79 )
  %lhs_or_call3459 = load %Array** %vdecl_slot3450
  %vtable_ptr3460 = getelementptr %Array* %lhs_or_call3459, i32 0
  %vtable3461 = load %_Array_vtable** %vtable_ptr3460
  %getLength3463 = getelementptr %_Array_vtable* %vtable3461, i32 0, i32 5
  %getLength3462 = load i32 (%Array*)** %getLength3463
  %cast_op3464 = bitcast %Array %lhs_or_call3459 to %Array* 
  %ret3465 = call i32 %getLength3462 ( %Array* %cast_op3464 )
  store i32 %ret3465, i32* %vdecl_slot3451
  %vdecl_slot3466 = alloca i32
  store i32 1, i32* %vdecl_slot3466
  br label %__cond748

__cond748:
  %lhs_or_call3467 = load i32* %vdecl_slot3466
  %lhs_or_call3468 = load i32* %vdecl_slot3451
  %bop3469 = icmp slt i32 %lhs_or_call3467, %lhs_or_call3468
  br i1 %bop3469, label %__body747, label %__post746

__fresh765:
  br label %__body747

__body747:
  %lhs_or_call3470 = load i32* %vdecl_slot3466
  %vdecl_slot3471 = alloca i32
  store i32 %lhs_or_call3470, i32* %vdecl_slot3471
  %lhs_or_call3472 = load i32* %vdecl_slot3466
  %bop3473 = add i32 %lhs_or_call3472, 1
  %vdecl_slot3474 = alloca i32
  store i32 %bop3473, i32* %vdecl_slot3474
  br label %__cond751

__cond751:
  %lhs_or_call3475 = load i32* %vdecl_slot3474
  %lhs_or_call3476 = load i32* %vdecl_slot3451
  %bop3477 = icmp sle i32 %lhs_or_call3475, %lhs_or_call3476
  br i1 %bop3477, label %__body750, label %__post749

__fresh766:
  br label %__body750

__body750:
  %lhs_or_call3478 = load i32* %vdecl_slot3474
  %lhs_or_call3479 = load %Array** %vdecl_slot3450
  %vtable_ptr3480 = getelementptr %Array* %lhs_or_call3479, i32 0
  %vtable3481 = load %_Array_vtable** %vtable_ptr3480
  %getElement3483 = getelementptr %_Array_vtable* %vtable3481, i32 0, i32 2
  %getElement3482 = load i32 (%Array*, i32)** %getElement3483
  %cast_op3484 = bitcast %Array %lhs_or_call3479 to %Array* 
  %ret3485 = call i32 %getElement3482 ( %Array* %cast_op3484, i32 %lhs_or_call3478 )
  %vdecl_slot3486 = alloca i32
  store i32 %ret3485, i32* %vdecl_slot3486
  %lhs_or_call3487 = load i32* %vdecl_slot3471
  %lhs_or_call3488 = load %Array** %vdecl_slot3450
  %vtable_ptr3489 = getelementptr %Array* %lhs_or_call3488, i32 0
  %vtable3490 = load %_Array_vtable** %vtable_ptr3489
  %getElement3492 = getelementptr %_Array_vtable* %vtable3490, i32 0, i32 2
  %getElement3491 = load i32 (%Array*, i32)** %getElement3492
  %cast_op3493 = bitcast %Array %lhs_or_call3488 to %Array* 
  %ret3494 = call i32 %getElement3491 ( %Array* %cast_op3493, i32 %lhs_or_call3487 )
  %vdecl_slot3495 = alloca i32
  store i32 %ret3494, i32* %vdecl_slot3495
  %lhs_or_call3496 = load i32* %vdecl_slot3486
  %lhs_or_call3497 = load i32* %vdecl_slot3495
  %bop3498 = icmp slt i32 %lhs_or_call3496, %lhs_or_call3497
  br i1 %bop3498, label %__then754, label %__else753

__fresh767:
  br label %__then754

__then754:
  %lhs_or_call3499 = load i32* %vdecl_slot3474
  store i32 %lhs_or_call3499, i32* %vdecl_slot3471
  br label %__merge752

__fresh768:
  br label %__else753

__else753:
  br label %__merge752

__merge752:
  %lhs_or_call3500 = load i32* %vdecl_slot3474
  %bop3501 = add i32 %lhs_or_call3500, 1
  store i32 %bop3501, i32* %vdecl_slot3474
  br label %__cond751

__fresh769:
  br label %__post749

__post749:
  %lhs_or_call3502 = load i32* %vdecl_slot3471
  %lhs_or_call3503 = load i32* %vdecl_slot3466
  %bop3504 = icmp ne i32 %lhs_or_call3502, %lhs_or_call3503
  br i1 %bop3504, label %__then757, label %__else756

__fresh770:
  br label %__then757

__then757:
  %lhs_or_call3505 = load i32* %vdecl_slot3471
  %lhs_or_call3506 = load %Array** %vdecl_slot3450
  %vtable_ptr3507 = getelementptr %Array* %lhs_or_call3506, i32 0
  %vtable3508 = load %_Array_vtable** %vtable_ptr3507
  %getElement3510 = getelementptr %_Array_vtable* %vtable3508, i32 0, i32 2
  %getElement3509 = load i32 (%Array*, i32)** %getElement3510
  %cast_op3511 = bitcast %Array %lhs_or_call3506 to %Array* 
  %ret3512 = call i32 %getElement3509 ( %Array* %cast_op3511, i32 %lhs_or_call3505 )
  %vdecl_slot3513 = alloca i32
  store i32 %ret3512, i32* %vdecl_slot3513
  %lhs_or_call3514 = load i32* %vdecl_slot3466
  %lhs_or_call3515 = load %Array** %vdecl_slot3450
  %vtable_ptr3516 = getelementptr %Array* %lhs_or_call3515, i32 0
  %vtable3517 = load %_Array_vtable** %vtable_ptr3516
  %getElement3519 = getelementptr %_Array_vtable* %vtable3517, i32 0, i32 2
  %getElement3518 = load i32 (%Array*, i32)** %getElement3519
  %cast_op3520 = bitcast %Array %lhs_or_call3515 to %Array* 
  %ret3521 = call i32 %getElement3518 ( %Array* %cast_op3520, i32 %lhs_or_call3514 )
  %vdecl_slot3522 = alloca i32
  store i32 %ret3521, i32* %vdecl_slot3522
  %lhs_or_call3523 = load i32* %vdecl_slot3513
  %lhs_or_call3524 = load i32* %vdecl_slot3466
  %lhs_or_call3525 = load %Array** %vdecl_slot3450
  %vtable_ptr3526 = getelementptr %Array* %lhs_or_call3525, i32 0
  %vtable3527 = load %_Array_vtable** %vtable_ptr3526
  %setElement3529 = getelementptr %_Array_vtable* %vtable3527, i32 0, i32 3
  %setElement3528 = load void (%Array*, i32, i32)** %setElement3529
  %cast_op3530 = bitcast %Array %lhs_or_call3525 to %Array* 
  call void %setElement3528( %Array* %cast_op3530, i32 %lhs_or_call3524, i32 %lhs_or_call3523 )
  %lhs_or_call3531 = load i32* %vdecl_slot3522
  %lhs_or_call3532 = load i32* %vdecl_slot3471
  %lhs_or_call3533 = load %Array** %vdecl_slot3450
  %vtable_ptr3534 = getelementptr %Array* %lhs_or_call3533, i32 0
  %vtable3535 = load %_Array_vtable** %vtable_ptr3534
  %setElement3537 = getelementptr %_Array_vtable* %vtable3535, i32 0, i32 3
  %setElement3536 = load void (%Array*, i32, i32)** %setElement3537
  %cast_op3538 = bitcast %Array %lhs_or_call3533 to %Array* 
  call void %setElement3536( %Array* %cast_op3538, i32 %lhs_or_call3532, i32 %lhs_or_call3531 )
  br label %__merge755

__fresh771:
  br label %__else756

__else756:
  br label %__merge755

__merge755:
  %lhs_or_call3539 = load i32* %vdecl_slot3466
  %bop3540 = add i32 %lhs_or_call3539, 1
  store i32 %bop3540, i32* %vdecl_slot3466
  br label %__cond748

__fresh772:
  br label %__post746

__post746:
  %vdecl_slot3541 = alloca i32
  store i32 1, i32* %vdecl_slot3541
  br label %__cond760

__cond760:
  %lhs_or_call3542 = load i32* %vdecl_slot3541
  %lhs_or_call3543 = load i32* %vdecl_slot3451
  %bop3544 = icmp slt i32 %lhs_or_call3542, %lhs_or_call3543
  br i1 %bop3544, label %__body759, label %__post758

__fresh773:
  br label %__body759

__body759:
  %lhs_or_call3545 = load i32* %vdecl_slot3541
  %lhs_or_call3546 = load %Array** %vdecl_slot3450
  %vtable_ptr3547 = getelementptr %Array* %lhs_or_call3546, i32 0
  %vtable3548 = load %_Array_vtable** %vtable_ptr3547
  %getElement3550 = getelementptr %_Array_vtable* %vtable3548, i32 0, i32 2
  %getElement3549 = load i32 (%Array*, i32)** %getElement3550
  %cast_op3551 = bitcast %Array %lhs_or_call3546 to %Array* 
  %ret3552 = call i32 %getElement3549 ( %Array* %cast_op3551, i32 %lhs_or_call3545 )
  %vdecl_slot3553 = alloca i32
  store i32 %ret3552, i32* %vdecl_slot3553
  %lhs_or_call3554 = load i32* %vdecl_slot3541
  %bop3555 = add i32 %lhs_or_call3554, 1
  %lhs_or_call3556 = load %Array** %vdecl_slot3450
  %vtable_ptr3557 = getelementptr %Array* %lhs_or_call3556, i32 0
  %vtable3558 = load %_Array_vtable** %vtable_ptr3557
  %getElement3560 = getelementptr %_Array_vtable* %vtable3558, i32 0, i32 2
  %getElement3559 = load i32 (%Array*, i32)** %getElement3560
  %cast_op3561 = bitcast %Array %lhs_or_call3556 to %Array* 
  %ret3562 = call i32 %getElement3559 ( %Array* %cast_op3561, i32 %bop3555 )
  %vdecl_slot3563 = alloca i32
  store i32 %ret3562, i32* %vdecl_slot3563
  %lhs_or_call3564 = load i32* %vdecl_slot3553
  %lhs_or_call3565 = load i32* %vdecl_slot3563
  %bop3566 = icmp sgt i32 %lhs_or_call3564, %lhs_or_call3565
  br i1 %bop3566, label %__then763, label %__else762

__fresh774:
  br label %__then763

__then763:
  %lhs_or_call3567 = load i32* %vdecl_slot3452
  %bop3568 = add i32 %lhs_or_call3567, 1
  store i32 %bop3568, i32* %vdecl_slot3452
  br label %__merge761

__fresh775:
  br label %__else762

__else762:
  br label %__merge761

__merge761:
  %lhs_or_call3569 = load i32* %vdecl_slot3541
  %bop3570 = add i32 %lhs_or_call3569, 1
  store i32 %bop3570, i32* %vdecl_slot3541
  br label %__cond760

__fresh776:
  br label %__post758

__post758:
  %lhs_or_call3571 = load i32* %vdecl_slot3452
  ret i32 %lhs_or_call3571
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh745:
  %arrayLength3441 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3442 = load i32* %arrayLength3441
  ret i32 %lhs_or_call3442
}


define void @_Array_addElement (%Array* %_this1, i32 %key3404){
__fresh736:
  %key_slot3405 = alloca i32
  store i32 %key3404, i32* %key_slot3405
  %arrayLength3406 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3407 = load i32* %arrayLength3406
  %bop3408 = icmp eq i32 %lhs_or_call3407, 0
  br i1 %bop3408, label %__then735, label %__else734

__fresh737:
  br label %__then735

__then735:
  %headItem3409 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3410 = load i32* %key_slot3405
  %mem_ptr3411 = call i32* @oat_malloc ( i32 16 )
  %obj3412 = bitcast i32* %mem_ptr3411 to %ArrayItem* 
  %new_obj3413 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3412, i32 %lhs_or_call3410 )
  store %ArrayItem* %new_obj3413, %ArrayItem** %headItem3409
  br label %__merge733

__fresh738:
  br label %__else734

__else734:
  %headItem3414 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3415 = load %ArrayItem** %headItem3414
  %ifnull_slot3416 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3415, %ArrayItem** %ifnull_slot3416
  %ifnull_guard3417 = icmp ne %ArrayItem* %lhs_or_call3415, null
  br i1 %ifnull_guard3417, label %__then732, label %__else731

__fresh739:
  br label %__then732

__then732:
  %vdecl_slot3418 = alloca i32
  store i32 1, i32* %vdecl_slot3418
  br label %__cond726

__cond726:
  %lhs_or_call3419 = load i32* %vdecl_slot3418
  %arrayLength3420 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3421 = load i32* %arrayLength3420
  %bop3422 = icmp ne i32 %lhs_or_call3419, %lhs_or_call3421
  br i1 %bop3422, label %__body725, label %__post724

__fresh740:
  br label %__body725

__body725:
  %lhs_or_call3423 = load %ArrayItem** %ifnull_slot3416
  %nextItem3424 = getelementptr %ArrayItem* %lhs_or_call3423, i32 0, i32 3
  %lhs_or_call3425 = load %ArrayItem** %nextItem3424
  %ifnull_slot3426 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3425, %ArrayItem** %ifnull_slot3426
  %ifnull_guard3427 = icmp ne %ArrayItem* %lhs_or_call3425, null
  br i1 %ifnull_guard3427, label %__then729, label %__else728

__fresh741:
  br label %__then729

__then729:
  %lhs_or_call3428 = load %ArrayItem** %ifnull_slot3426
  store %ArrayItem* %lhs_or_call3428, %ArrayItem** %ifnull_slot3416
  br label %__merge727

__fresh742:
  br label %__else728

__else728:
  br label %__merge727

__merge727:
  %lhs_or_call3429 = load i32* %vdecl_slot3418
  %bop3430 = add i32 %lhs_or_call3429, 1
  store i32 %bop3430, i32* %vdecl_slot3418
  br label %__cond726

__fresh743:
  br label %__post724

__post724:
  %lhs_or_call3431 = load %ArrayItem** %ifnull_slot3416
  %nextItem3432 = getelementptr %ArrayItem* %lhs_or_call3431, i32 0, i32 3
  %lhs_or_call3433 = load i32* %key_slot3405
  %mem_ptr3434 = call i32* @oat_malloc ( i32 16 )
  %obj3435 = bitcast i32* %mem_ptr3434 to %ArrayItem* 
  %new_obj3436 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3435, i32 %lhs_or_call3433 )
  store %ArrayItem* %new_obj3436, %ArrayItem** %nextItem3432
  br label %__merge730

__fresh744:
  br label %__else731

__else731:
  br label %__merge730

__merge730:
  br label %__merge733

__merge733:
  %arrayLength3437 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3438 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3439 = load i32* %arrayLength3438
  %bop3440 = add i32 %lhs_or_call3439, 1
  store i32 %bop3440, i32* %arrayLength3437
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3383, i32 %key3381){
__fresh717:
  %index_slot3384 = alloca i32
  store i32 %index3383, i32* %index_slot3384
  %key_slot3382 = alloca i32
  store i32 %key3381, i32* %key_slot3382
  %headItem3385 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3386 = load %ArrayItem** %headItem3385
  %ifnull_slot3387 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3386, %ArrayItem** %ifnull_slot3387
  %ifnull_guard3388 = icmp ne %ArrayItem* %lhs_or_call3386, null
  br i1 %ifnull_guard3388, label %__then716, label %__else715

__fresh718:
  br label %__then716

__then716:
  %vdecl_slot3389 = alloca i32
  store i32 1, i32* %vdecl_slot3389
  br label %__cond710

__cond710:
  %lhs_or_call3390 = load i32* %vdecl_slot3389
  %lhs_or_call3391 = load i32* %index_slot3384
  %bop3392 = icmp ne i32 %lhs_or_call3390, %lhs_or_call3391
  br i1 %bop3392, label %__body709, label %__post708

__fresh719:
  br label %__body709

__body709:
  %lhs_or_call3393 = load %ArrayItem** %ifnull_slot3387
  %nextItem3394 = getelementptr %ArrayItem* %lhs_or_call3393, i32 0, i32 3
  %lhs_or_call3395 = load %ArrayItem** %nextItem3394
  %ifnull_slot3396 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3395, %ArrayItem** %ifnull_slot3396
  %ifnull_guard3397 = icmp ne %ArrayItem* %lhs_or_call3395, null
  br i1 %ifnull_guard3397, label %__then713, label %__else712

__fresh720:
  br label %__then713

__then713:
  %lhs_or_call3398 = load %ArrayItem** %ifnull_slot3396
  store %ArrayItem* %lhs_or_call3398, %ArrayItem** %ifnull_slot3387
  br label %__merge711

__fresh721:
  br label %__else712

__else712:
  br label %__merge711

__merge711:
  %lhs_or_call3399 = load i32* %vdecl_slot3389
  %bop3400 = add i32 %lhs_or_call3399, 1
  store i32 %bop3400, i32* %vdecl_slot3389
  br label %__cond710

__fresh722:
  br label %__post708

__post708:
  %lhs_or_call3401 = load %ArrayItem** %ifnull_slot3387
  %keyValue3402 = getelementptr %ArrayItem* %lhs_or_call3401, i32 0, i32 2
  %lhs_or_call3403 = load i32* %key_slot3382
  store i32 %lhs_or_call3403, i32* %keyValue3402
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


define i32 @_Array_getElement (%Array* %_this1, i32 %index3358){
__fresh701:
  %index_slot3359 = alloca i32
  store i32 %index3358, i32* %index_slot3359
  %vdecl_slot3360 = alloca i32
  store i32 0, i32* %vdecl_slot3360
  %headItem3361 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3362 = load %ArrayItem** %headItem3361
  %ifnull_slot3363 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3362, %ArrayItem** %ifnull_slot3363
  %ifnull_guard3364 = icmp ne %ArrayItem* %lhs_or_call3362, null
  br i1 %ifnull_guard3364, label %__then700, label %__else699

__fresh702:
  br label %__then700

__then700:
  %vdecl_slot3365 = alloca i32
  store i32 1, i32* %vdecl_slot3365
  br label %__cond694

__cond694:
  %lhs_or_call3366 = load i32* %vdecl_slot3365
  %lhs_or_call3367 = load i32* %index_slot3359
  %bop3368 = icmp ne i32 %lhs_or_call3366, %lhs_or_call3367
  br i1 %bop3368, label %__body693, label %__post692

__fresh703:
  br label %__body693

__body693:
  %lhs_or_call3369 = load %ArrayItem** %ifnull_slot3363
  %nextItem3370 = getelementptr %ArrayItem* %lhs_or_call3369, i32 0, i32 3
  %lhs_or_call3371 = load %ArrayItem** %nextItem3370
  %ifnull_slot3372 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3371, %ArrayItem** %ifnull_slot3372
  %ifnull_guard3373 = icmp ne %ArrayItem* %lhs_or_call3371, null
  br i1 %ifnull_guard3373, label %__then697, label %__else696

__fresh704:
  br label %__then697

__then697:
  %lhs_or_call3374 = load %ArrayItem** %ifnull_slot3372
  store %ArrayItem* %lhs_or_call3374, %ArrayItem** %ifnull_slot3363
  br label %__merge695

__fresh705:
  br label %__else696

__else696:
  br label %__merge695

__merge695:
  %lhs_or_call3375 = load i32* %vdecl_slot3365
  %bop3376 = add i32 %lhs_or_call3375, 1
  store i32 %bop3376, i32* %vdecl_slot3365
  br label %__cond694

__fresh706:
  br label %__post692

__post692:
  %lhs_or_call3377 = load %ArrayItem** %ifnull_slot3363
  %keyValue3378 = getelementptr %ArrayItem* %lhs_or_call3377, i32 0, i32 2
  %lhs_or_call3379 = load i32* %keyValue3378
  store i32 %lhs_or_call3379, i32* %vdecl_slot3360
  br label %__merge698

__fresh707:
  br label %__else699

__else699:
  call void @print_string( i8* @_const_str607 )
  call void @oat_abort( i32 -1 )
  br label %__merge698

__merge698:
  %lhs_or_call3380 = load i32* %vdecl_slot3360
  ret i32 %lhs_or_call3380
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh691:
  %mem_ptr3353 = call i32* @oat_malloc ( i32 8 )
  %obj3354 = bitcast i32* %mem_ptr3353 to %Object* 
  %new_obj3355 = call %Object* @_Object_ctor ( %Object* %obj3354 )
  %_this1 = bitcast %Object* %new_obj3355 to %Array 
  %_name3356 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str606, i8** %_name3356
  %this_vtable3357 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable603, %_Array_vtable** %this_vtable3357
  %arrayLength3352 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3352
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3348){
__fresh690:
  %x_slot3349 = alloca i32
  store i32 %x3348, i32* %x_slot3349
  %keyValue3350 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3351 = load i32* %x_slot3349
  store i32 %lhs_or_call3351, i32* %keyValue3350
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3337){
__fresh689:
  %x_slot3338 = alloca i32
  store i32 %x3337, i32* %x_slot3338
  %mem_ptr3343 = call i32* @oat_malloc ( i32 8 )
  %obj3344 = bitcast i32* %mem_ptr3343 to %Object* 
  %new_obj3345 = call %Object* @_Object_ctor ( %Object* %obj3344 )
  %_this1 = bitcast %Object* %new_obj3345 to %ArrayItem 
  %_name3346 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str605, i8** %_name3346
  %this_vtable3347 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable602, %_ArrayItem_vtable** %this_vtable3347
  %keyValue3339 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3340 = load i32* %x_slot3338
  store i32 %lhs_or_call3340, i32* %keyValue3339
  %nextItem3341 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3342 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3342, %ArrayItem** %nextItem3341
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh688:
  %_name3335 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3336 = load i8** %_name3335
  ret i8* %lhs_or_call3336
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh687:
  %_name3333 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str604, i8** %_name3333
  %this_vtable3334 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable601, %_Object_vtable** %this_vtable3334
  ret %Object* %_this1
}


