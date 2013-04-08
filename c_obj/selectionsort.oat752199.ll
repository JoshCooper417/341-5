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


define i32 @program (i32 %argc3420, { i32, [ 0 x i8* ] }* %argv3418){
__fresh764:
  %argc_slot3421 = alloca i32
  store i32 %argc3420, i32* %argc_slot3421
  %argv_slot3419 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3418, { i32, [ 0 x i8* ] }** %argv_slot3419
  %mem_ptr3422 = call i32* @oat_malloc ( i32 16 )
  %obj3423 = bitcast i32* %mem_ptr3422 to %Array* 
  %new_obj3424 = call %Array* @_Array_ctor ( %Array* %obj3423 )
  %vdecl_slot3425 = alloca %Array*
  store %Array* %new_obj3424, %Array** %vdecl_slot3425
  %vdecl_slot3426 = alloca i32
  store i32 0, i32* %vdecl_slot3426
  %vdecl_slot3427 = alloca i32
  store i32 0, i32* %vdecl_slot3427
  %lhs_or_call3428 = load %Array** %vdecl_slot3425
  %addElement3430 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 4
  %addElement3429 = load void (%Array*, i32)** %addElement3430
  %cast_op3431 = bitcast %Array %lhs_or_call3428 to %Array* 
  call void %addElement3429( %Array* %cast_op3431, i32 79 )
  %lhs_or_call3432 = load %Array** %vdecl_slot3425
  %getLength3434 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 5
  %getLength3433 = load i32 (%Array*)** %getLength3434
  %cast_op3435 = bitcast %Array %lhs_or_call3432 to %Array* 
  %ret3436 = call i32 %getLength3433 ( %Array* %cast_op3435 )
  store i32 %ret3436, i32* %vdecl_slot3426
  %vdecl_slot3437 = alloca i32
  store i32 1, i32* %vdecl_slot3437
  br label %__cond748

__cond748:
  %lhs_or_call3438 = load i32* %vdecl_slot3437
  %lhs_or_call3439 = load i32* %vdecl_slot3426
  %bop3440 = icmp slt i32 %lhs_or_call3438, %lhs_or_call3439
  br i1 %bop3440, label %__body747, label %__post746

__fresh765:
  br label %__body747

__body747:
  %lhs_or_call3441 = load i32* %vdecl_slot3437
  %vdecl_slot3442 = alloca i32
  store i32 %lhs_or_call3441, i32* %vdecl_slot3442
  %lhs_or_call3443 = load i32* %vdecl_slot3437
  %bop3444 = add i32 %lhs_or_call3443, 1
  %vdecl_slot3445 = alloca i32
  store i32 %bop3444, i32* %vdecl_slot3445
  br label %__cond751

__cond751:
  %lhs_or_call3446 = load i32* %vdecl_slot3445
  %lhs_or_call3447 = load i32* %vdecl_slot3426
  %bop3448 = icmp sle i32 %lhs_or_call3446, %lhs_or_call3447
  br i1 %bop3448, label %__body750, label %__post749

__fresh766:
  br label %__body750

__body750:
  %lhs_or_call3449 = load i32* %vdecl_slot3445
  %lhs_or_call3450 = load %Array** %vdecl_slot3425
  %getElement3452 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3451 = load i32 (%Array*, i32)** %getElement3452
  %cast_op3453 = bitcast %Array %lhs_or_call3450 to %Array* 
  %ret3454 = call i32 %getElement3451 ( %Array* %cast_op3453, i32 %lhs_or_call3449 )
  %vdecl_slot3455 = alloca i32
  store i32 %ret3454, i32* %vdecl_slot3455
  %lhs_or_call3456 = load i32* %vdecl_slot3442
  %lhs_or_call3457 = load %Array** %vdecl_slot3425
  %getElement3459 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3458 = load i32 (%Array*, i32)** %getElement3459
  %cast_op3460 = bitcast %Array %lhs_or_call3457 to %Array* 
  %ret3461 = call i32 %getElement3458 ( %Array* %cast_op3460, i32 %lhs_or_call3456 )
  %vdecl_slot3462 = alloca i32
  store i32 %ret3461, i32* %vdecl_slot3462
  %lhs_or_call3463 = load i32* %vdecl_slot3455
  %lhs_or_call3464 = load i32* %vdecl_slot3462
  %bop3465 = icmp slt i32 %lhs_or_call3463, %lhs_or_call3464
  br i1 %bop3465, label %__then754, label %__else753

__fresh767:
  br label %__then754

__then754:
  %lhs_or_call3466 = load i32* %vdecl_slot3445
  store i32 %lhs_or_call3466, i32* %vdecl_slot3442
  br label %__merge752

__fresh768:
  br label %__else753

__else753:
  br label %__merge752

__merge752:
  %lhs_or_call3467 = load i32* %vdecl_slot3445
  %bop3468 = add i32 %lhs_or_call3467, 1
  store i32 %bop3468, i32* %vdecl_slot3445
  br label %__cond751

__fresh769:
  br label %__post749

__post749:
  %lhs_or_call3469 = load i32* %vdecl_slot3442
  %lhs_or_call3470 = load i32* %vdecl_slot3437
  %bop3471 = icmp ne i32 %lhs_or_call3469, %lhs_or_call3470
  br i1 %bop3471, label %__then757, label %__else756

__fresh770:
  br label %__then757

__then757:
  %lhs_or_call3472 = load i32* %vdecl_slot3442
  %lhs_or_call3473 = load %Array** %vdecl_slot3425
  %getElement3475 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3474 = load i32 (%Array*, i32)** %getElement3475
  %cast_op3476 = bitcast %Array %lhs_or_call3473 to %Array* 
  %ret3477 = call i32 %getElement3474 ( %Array* %cast_op3476, i32 %lhs_or_call3472 )
  %vdecl_slot3478 = alloca i32
  store i32 %ret3477, i32* %vdecl_slot3478
  %lhs_or_call3479 = load i32* %vdecl_slot3437
  %lhs_or_call3480 = load %Array** %vdecl_slot3425
  %getElement3482 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3481 = load i32 (%Array*, i32)** %getElement3482
  %cast_op3483 = bitcast %Array %lhs_or_call3480 to %Array* 
  %ret3484 = call i32 %getElement3481 ( %Array* %cast_op3483, i32 %lhs_or_call3479 )
  %vdecl_slot3485 = alloca i32
  store i32 %ret3484, i32* %vdecl_slot3485
  %lhs_or_call3486 = load i32* %vdecl_slot3478
  %lhs_or_call3487 = load i32* %vdecl_slot3437
  %lhs_or_call3488 = load %Array** %vdecl_slot3425
  %setElement3490 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 3
  %setElement3489 = load void (%Array*, i32, i32)** %setElement3490
  %cast_op3491 = bitcast %Array %lhs_or_call3488 to %Array* 
  call void %setElement3489( %Array* %cast_op3491, i32 %lhs_or_call3487, i32 %lhs_or_call3486 )
  %lhs_or_call3492 = load i32* %vdecl_slot3485
  %lhs_or_call3493 = load i32* %vdecl_slot3442
  %lhs_or_call3494 = load %Array** %vdecl_slot3425
  %setElement3496 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 3
  %setElement3495 = load void (%Array*, i32, i32)** %setElement3496
  %cast_op3497 = bitcast %Array %lhs_or_call3494 to %Array* 
  call void %setElement3495( %Array* %cast_op3497, i32 %lhs_or_call3493, i32 %lhs_or_call3492 )
  br label %__merge755

__fresh771:
  br label %__else756

__else756:
  br label %__merge755

__merge755:
  %lhs_or_call3498 = load i32* %vdecl_slot3437
  %bop3499 = add i32 %lhs_or_call3498, 1
  store i32 %bop3499, i32* %vdecl_slot3437
  br label %__cond748

__fresh772:
  br label %__post746

__post746:
  %vdecl_slot3500 = alloca i32
  store i32 1, i32* %vdecl_slot3500
  br label %__cond760

__cond760:
  %lhs_or_call3501 = load i32* %vdecl_slot3500
  %lhs_or_call3502 = load i32* %vdecl_slot3426
  %bop3503 = icmp slt i32 %lhs_or_call3501, %lhs_or_call3502
  br i1 %bop3503, label %__body759, label %__post758

__fresh773:
  br label %__body759

__body759:
  %lhs_or_call3504 = load i32* %vdecl_slot3500
  %lhs_or_call3505 = load %Array** %vdecl_slot3425
  %getElement3507 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3506 = load i32 (%Array*, i32)** %getElement3507
  %cast_op3508 = bitcast %Array %lhs_or_call3505 to %Array* 
  %ret3509 = call i32 %getElement3506 ( %Array* %cast_op3508, i32 %lhs_or_call3504 )
  %vdecl_slot3510 = alloca i32
  store i32 %ret3509, i32* %vdecl_slot3510
  %lhs_or_call3511 = load i32* %vdecl_slot3500
  %bop3512 = add i32 %lhs_or_call3511, 1
  %lhs_or_call3513 = load %Array** %vdecl_slot3425
  %getElement3515 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3514 = load i32 (%Array*, i32)** %getElement3515
  %cast_op3516 = bitcast %Array %lhs_or_call3513 to %Array* 
  %ret3517 = call i32 %getElement3514 ( %Array* %cast_op3516, i32 %bop3512 )
  %vdecl_slot3518 = alloca i32
  store i32 %ret3517, i32* %vdecl_slot3518
  %lhs_or_call3519 = load i32* %vdecl_slot3510
  %lhs_or_call3520 = load i32* %vdecl_slot3518
  %bop3521 = icmp sgt i32 %lhs_or_call3519, %lhs_or_call3520
  br i1 %bop3521, label %__then763, label %__else762

__fresh774:
  br label %__then763

__then763:
  %lhs_or_call3522 = load i32* %vdecl_slot3427
  %bop3523 = add i32 %lhs_or_call3522, 1
  store i32 %bop3523, i32* %vdecl_slot3427
  br label %__merge761

__fresh775:
  br label %__else762

__else762:
  br label %__merge761

__merge761:
  %lhs_or_call3524 = load i32* %vdecl_slot3500
  %bop3525 = add i32 %lhs_or_call3524, 1
  store i32 %bop3525, i32* %vdecl_slot3500
  br label %__cond760

__fresh776:
  br label %__post758

__post758:
  %lhs_or_call3526 = load i32* %vdecl_slot3427
  ret i32 %lhs_or_call3526
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh745:
  %arrayLength3416 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3417 = load i32* %arrayLength3416
  ret i32 %lhs_or_call3417
}


define void @_Array_addElement (%Array* %_this1, i32 %key3379){
__fresh736:
  %key_slot3380 = alloca i32
  store i32 %key3379, i32* %key_slot3380
  %arrayLength3381 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3382 = load i32* %arrayLength3381
  %bop3383 = icmp eq i32 %lhs_or_call3382, 0
  br i1 %bop3383, label %__then735, label %__else734

__fresh737:
  br label %__then735

__then735:
  %headItem3384 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3385 = load i32* %key_slot3380
  %mem_ptr3386 = call i32* @oat_malloc ( i32 16 )
  %obj3387 = bitcast i32* %mem_ptr3386 to %ArrayItem* 
  %new_obj3388 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3387, i32 %lhs_or_call3385 )
  store %ArrayItem* %new_obj3388, %ArrayItem** %headItem3384
  br label %__merge733

__fresh738:
  br label %__else734

__else734:
  %headItem3389 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3390 = load %ArrayItem** %headItem3389
  %ifnull_slot3391 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3390, %ArrayItem** %ifnull_slot3391
  %ifnull_guard3392 = icmp ne %ArrayItem* %lhs_or_call3390, null
  br i1 %ifnull_guard3392, label %__then732, label %__else731

__fresh739:
  br label %__then732

__then732:
  %vdecl_slot3393 = alloca i32
  store i32 1, i32* %vdecl_slot3393
  br label %__cond726

__cond726:
  %lhs_or_call3394 = load i32* %vdecl_slot3393
  %arrayLength3395 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3396 = load i32* %arrayLength3395
  %bop3397 = icmp ne i32 %lhs_or_call3394, %lhs_or_call3396
  br i1 %bop3397, label %__body725, label %__post724

__fresh740:
  br label %__body725

__body725:
  %lhs_or_call3398 = load %ArrayItem** %ifnull_slot3391
  %nextItem3399 = getelementptr %ArrayItem* %lhs_or_call3398, i32 0, i32 3
  %lhs_or_call3400 = load %ArrayItem** %nextItem3399
  %ifnull_slot3401 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3400, %ArrayItem** %ifnull_slot3401
  %ifnull_guard3402 = icmp ne %ArrayItem* %lhs_or_call3400, null
  br i1 %ifnull_guard3402, label %__then729, label %__else728

__fresh741:
  br label %__then729

__then729:
  %lhs_or_call3403 = load %ArrayItem** %ifnull_slot3401
  store %ArrayItem* %lhs_or_call3403, %ArrayItem** %ifnull_slot3391
  br label %__merge727

__fresh742:
  br label %__else728

__else728:
  br label %__merge727

__merge727:
  %lhs_or_call3404 = load i32* %vdecl_slot3393
  %bop3405 = add i32 %lhs_or_call3404, 1
  store i32 %bop3405, i32* %vdecl_slot3393
  br label %__cond726

__fresh743:
  br label %__post724

__post724:
  %lhs_or_call3406 = load %ArrayItem** %ifnull_slot3391
  %nextItem3407 = getelementptr %ArrayItem* %lhs_or_call3406, i32 0, i32 3
  %lhs_or_call3408 = load i32* %key_slot3380
  %mem_ptr3409 = call i32* @oat_malloc ( i32 16 )
  %obj3410 = bitcast i32* %mem_ptr3409 to %ArrayItem* 
  %new_obj3411 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3410, i32 %lhs_or_call3408 )
  store %ArrayItem* %new_obj3411, %ArrayItem** %nextItem3407
  br label %__merge730

__fresh744:
  br label %__else731

__else731:
  br label %__merge730

__merge730:
  br label %__merge733

__merge733:
  %arrayLength3412 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3413 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3414 = load i32* %arrayLength3413
  %bop3415 = add i32 %lhs_or_call3414, 1
  store i32 %bop3415, i32* %arrayLength3412
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3358, i32 %key3356){
__fresh717:
  %index_slot3359 = alloca i32
  store i32 %index3358, i32* %index_slot3359
  %key_slot3357 = alloca i32
  store i32 %key3356, i32* %key_slot3357
  %headItem3360 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3361 = load %ArrayItem** %headItem3360
  %ifnull_slot3362 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3361, %ArrayItem** %ifnull_slot3362
  %ifnull_guard3363 = icmp ne %ArrayItem* %lhs_or_call3361, null
  br i1 %ifnull_guard3363, label %__then716, label %__else715

__fresh718:
  br label %__then716

__then716:
  %vdecl_slot3364 = alloca i32
  store i32 1, i32* %vdecl_slot3364
  br label %__cond710

__cond710:
  %lhs_or_call3365 = load i32* %vdecl_slot3364
  %lhs_or_call3366 = load i32* %index_slot3359
  %bop3367 = icmp ne i32 %lhs_or_call3365, %lhs_or_call3366
  br i1 %bop3367, label %__body709, label %__post708

__fresh719:
  br label %__body709

__body709:
  %lhs_or_call3368 = load %ArrayItem** %ifnull_slot3362
  %nextItem3369 = getelementptr %ArrayItem* %lhs_or_call3368, i32 0, i32 3
  %lhs_or_call3370 = load %ArrayItem** %nextItem3369
  %ifnull_slot3371 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3370, %ArrayItem** %ifnull_slot3371
  %ifnull_guard3372 = icmp ne %ArrayItem* %lhs_or_call3370, null
  br i1 %ifnull_guard3372, label %__then713, label %__else712

__fresh720:
  br label %__then713

__then713:
  %lhs_or_call3373 = load %ArrayItem** %ifnull_slot3371
  store %ArrayItem* %lhs_or_call3373, %ArrayItem** %ifnull_slot3362
  br label %__merge711

__fresh721:
  br label %__else712

__else712:
  br label %__merge711

__merge711:
  %lhs_or_call3374 = load i32* %vdecl_slot3364
  %bop3375 = add i32 %lhs_or_call3374, 1
  store i32 %bop3375, i32* %vdecl_slot3364
  br label %__cond710

__fresh722:
  br label %__post708

__post708:
  %lhs_or_call3376 = load %ArrayItem** %ifnull_slot3362
  %keyValue3377 = getelementptr %ArrayItem* %lhs_or_call3376, i32 0, i32 2
  %lhs_or_call3378 = load i32* %key_slot3357
  store i32 %lhs_or_call3378, i32* %keyValue3377
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


define i32 @_Array_getElement (%Array* %_this1, i32 %index3333){
__fresh701:
  %index_slot3334 = alloca i32
  store i32 %index3333, i32* %index_slot3334
  %vdecl_slot3335 = alloca i32
  store i32 0, i32* %vdecl_slot3335
  %headItem3336 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3337 = load %ArrayItem** %headItem3336
  %ifnull_slot3338 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3337, %ArrayItem** %ifnull_slot3338
  %ifnull_guard3339 = icmp ne %ArrayItem* %lhs_or_call3337, null
  br i1 %ifnull_guard3339, label %__then700, label %__else699

__fresh702:
  br label %__then700

__then700:
  %vdecl_slot3340 = alloca i32
  store i32 1, i32* %vdecl_slot3340
  br label %__cond694

__cond694:
  %lhs_or_call3341 = load i32* %vdecl_slot3340
  %lhs_or_call3342 = load i32* %index_slot3334
  %bop3343 = icmp ne i32 %lhs_or_call3341, %lhs_or_call3342
  br i1 %bop3343, label %__body693, label %__post692

__fresh703:
  br label %__body693

__body693:
  %lhs_or_call3344 = load %ArrayItem** %ifnull_slot3338
  %nextItem3345 = getelementptr %ArrayItem* %lhs_or_call3344, i32 0, i32 3
  %lhs_or_call3346 = load %ArrayItem** %nextItem3345
  %ifnull_slot3347 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3346, %ArrayItem** %ifnull_slot3347
  %ifnull_guard3348 = icmp ne %ArrayItem* %lhs_or_call3346, null
  br i1 %ifnull_guard3348, label %__then697, label %__else696

__fresh704:
  br label %__then697

__then697:
  %lhs_or_call3349 = load %ArrayItem** %ifnull_slot3347
  store %ArrayItem* %lhs_or_call3349, %ArrayItem** %ifnull_slot3338
  br label %__merge695

__fresh705:
  br label %__else696

__else696:
  br label %__merge695

__merge695:
  %lhs_or_call3350 = load i32* %vdecl_slot3340
  %bop3351 = add i32 %lhs_or_call3350, 1
  store i32 %bop3351, i32* %vdecl_slot3340
  br label %__cond694

__fresh706:
  br label %__post692

__post692:
  %lhs_or_call3352 = load %ArrayItem** %ifnull_slot3338
  %keyValue3353 = getelementptr %ArrayItem* %lhs_or_call3352, i32 0, i32 2
  %lhs_or_call3354 = load i32* %keyValue3353
  store i32 %lhs_or_call3354, i32* %vdecl_slot3335
  br label %__merge698

__fresh707:
  br label %__else699

__else699:
  call void @print_string( i8* @_const_str618 )
  call void @oat_abort( i32 -1 )
  br label %__merge698

__merge698:
  %lhs_or_call3355 = load i32* %vdecl_slot3335
  ret i32 %lhs_or_call3355
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh691:
  %cast_op3327 = bitcast %Array* %_this1 to %Object* 
  %mem_ptr3328 = call i32* @oat_malloc ( i32 16 )
  %obj3329 = bitcast i32* %mem_ptr3328 to %Array* 
  %new_obj3330 = call %Object* @_Object_ctor ( %Array* %obj3329, %Object* %cast_op3327 )
  %_this1 = bitcast %Object* %new_obj3330 to %Array 
  %_name3331 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str617, i8** %_name3331
  %this_vtable3332 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable614, %_Array_vtable** %this_vtable3332
  %arrayLength3326 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3326
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3322){
__fresh690:
  %x_slot3323 = alloca i32
  store i32 %x3322, i32* %x_slot3323
  %keyValue3324 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3325 = load i32* %x_slot3323
  store i32 %lhs_or_call3325, i32* %keyValue3324
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3310){
__fresh689:
  %x_slot3311 = alloca i32
  store i32 %x3310, i32* %x_slot3311
  %cast_op3316 = bitcast %ArrayItem* %_this1 to %Object* 
  %mem_ptr3317 = call i32* @oat_malloc ( i32 16 )
  %obj3318 = bitcast i32* %mem_ptr3317 to %ArrayItem* 
  %new_obj3319 = call %Object* @_Object_ctor ( %ArrayItem* %obj3318, %Object* %cast_op3316 )
  %_this1 = bitcast %Object* %new_obj3319 to %ArrayItem 
  %_name3320 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str616, i8** %_name3320
  %this_vtable3321 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable613, %_ArrayItem_vtable** %this_vtable3321
  %keyValue3312 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3313 = load i32* %x_slot3311
  store i32 %lhs_or_call3313, i32* %keyValue3312
  %nextItem3314 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3315 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3315, %ArrayItem** %nextItem3314
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh688:
  %_name3308 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3309 = load i8** %_name3308
  ret i8* %lhs_or_call3309
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh687:
  %_name3306 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str615, i8** %_name3306
  %this_vtable3307 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable612, %_Object_vtable** %this_vtable3307
  ret %Object* %_this1
}


