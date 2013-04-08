%Bb = type { %_Bb_vtable*, i8*, i32 }
%_Bb_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%Bb*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str581.str. = private unnamed_addr constant [ 13 x i8 ] c "makes sense.\00", align 4
@_const_str581 = alias bitcast([ 13 x i8 ]* @_const_str581.str. to i8*)@_const_str580.str. = private unnamed_addr constant [ 4 x i8 ] c "???\00", align 4
@_const_str580 = alias bitcast([ 4 x i8 ]* @_const_str580.str. to i8*)@_const_str579.str. = private unnamed_addr constant [ 13 x i8 ] c "makes sense.\00", align 4
@_const_str579 = alias bitcast([ 13 x i8 ]* @_const_str579.str. to i8*)@_const_str578.str. = private unnamed_addr constant [ 4 x i8 ] c "???\00", align 4
@_const_str578 = alias bitcast([ 4 x i8 ]* @_const_str578.str. to i8*)@_const_str577.str. = private unnamed_addr constant [ 3 x i8 ] c "Bb\00", align 4
@_const_str577 = alias bitcast([ 3 x i8 ]* @_const_str577.str. to i8*)@_const_str576.str. = private unnamed_addr constant [ 3 x i8 ] c "Bb\00", align 4
@_const_str576 = alias bitcast([ 3 x i8 ]* @_const_str576.str. to i8*)@_const_str575.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str575 = alias bitcast([ 2 x i8 ]* @_const_str575.str. to i8*)@_const_str574.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str574 = alias bitcast([ 2 x i8 ]* @_const_str574.str. to i8*)@_const_str573.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str573 = alias bitcast([ 2 x i8 ]* @_const_str573.str. to i8*)@_const_str572.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str572 = alias bitcast([ 2 x i8 ]* @_const_str572.str. to i8*)@_const_str571.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str571 = alias bitcast([ 7 x i8 ]* @_const_str571.str. to i8*)@_Bb_vtable570 = private constant %_Bb_vtable {%_A_vtable* @_A_vtable568, i8* (%Object*)* @_Object_get_name, void (%Bb*)* @_Bb_name}, align 4
@_B_vtable569 = private constant %_B_vtable {%_A_vtable* @_A_vtable568, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_name}, align 4
@_A_vtable568 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable567, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_name}, align 4
@_Object_vtable567 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1101:
  ret void
}


define i32 @program (i32 %argc3384, { i32, [ 0 x i8* ] }* %argv3382){
__fresh1072:
  %argc_slot3385 = alloca i32
  store i32 %argc3384, i32* %argc_slot3385
  %argv_slot3383 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3382, { i32, [ 0 x i8* ] }** %argv_slot3383
  %mem_ptr3386 = call i32* @oat_malloc ( i32 8 )
  %obj3387 = bitcast i32* %mem_ptr3386 to %A* 
  %new_obj3388 = call %A* @_A_ctor ( %A* %obj3387 )
  %vdecl_slot3389 = alloca %A*
  store %A* %new_obj3388, %A** %vdecl_slot3389
  %mem_ptr3390 = call i32* @oat_malloc ( i32 12 )
  %obj3391 = bitcast i32* %mem_ptr3390 to %B* 
  %new_obj3392 = call %B* @_B_ctor ( %B* %obj3391 )
  %cast_op3393 = bitcast %B* %new_obj3392 to %A* 
  %vdecl_slot3394 = alloca %A*
  store %A* %cast_op3393, %A** %vdecl_slot3394
  %mem_ptr3395 = call i32* @oat_malloc ( i32 12 )
  %obj3396 = bitcast i32* %mem_ptr3395 to %Bb* 
  %new_obj3397 = call %Bb* @_Bb_ctor ( %Bb* %obj3396 )
  %cast_op3398 = bitcast %Bb* %new_obj3397 to %A* 
  %vdecl_slot3399 = alloca %A*
  store %A* %cast_op3398, %A** %vdecl_slot3399
  %vdecl_slot3400 = alloca i32
  store i32 0, i32* %vdecl_slot3400
  br label %__init1044

__fresh1073:
  br label %__init1044

__init1044:
  %lhs_or_call3402 = load %A** %vdecl_slot3399
  %rvtable3414 = getelementptr %A* %lhs_or_call3402, i32 0
  br label %__bound_check1045

__fresh1074:
  br label %__bound_check1045

__bound_check1045:
  %cast_op3418 = bitcast %_Bb_vtable* @_Bb_vtable570 to i8** 
  %lvtable3415 = load i8** %cast_op3418
  %cast_vtable3419 = bitcast i8** %rvtable3414 to i8** 
  %rvtable3417 = load i8** %cast_vtable3419
  %compare3416 = icmp eq i8* %rvtable3417, null
  br i1 %compare3416, label %__end_no1048, label %__check_curr1047

__fresh1075:
  br label %__check_curr1047

__check_curr1047:
  %compare3416 = icmp eq i8** %lvtable3415, %rvtable3417
  br i1 %compare3416, label %__end_yes1049, label %__move_up1046

__fresh1076:
  br label %__move_up1046

__move_up1046:
  %rvtable3414 = getelementptr i8* %rvtable3417, i32 0
  br label %__bound_check1045

__fresh1077:
  br label %__end_yes1049

__end_yes1049:
  %lhs_or_call3402 = load %A** %vdecl_slot3399
  %cast_ptr3401 = bitcast %A* %lhs_or_call3402 to %Bb* 
  %lhs_or_call3403 = load i32* %vdecl_slot3400
  %lhs_or_call3404 = load %Bb** %cast_ptr3401
  %only_bb3405 = getelementptr %Bb* %lhs_or_call3404, i32 0, i32 2
  %lhs_or_call3406 = load i32* %only_bb3405
  %bop3407 = add i32 %lhs_or_call3403, %lhs_or_call3406
  store i32 %bop3407, i32* %vdecl_slot3400
  %lhs_or_call3408 = load %Bb** %cast_ptr3401
  %vtable_ptr3409 = getelementptr %Bb* %lhs_or_call3408, i32 0
  %vtable3410 = load %_Bb_vtable** %vtable_ptr3409
  %name3412 = getelementptr %_Bb_vtable* %vtable3410, i32 0, i32 2
  %name3411 = load void (%Bb*)** %name3412
  %cast_op3413 = bitcast %Bb %lhs_or_call3408 to %Bb* 
  call void %name3411( %Bb* %cast_op3413 )
  br label %__end1050

__fresh1078:
  br label %__end_no1048

__end_no1048:
  br label %__end1050

__fresh1079:
  br label %__end1050

__end1050:
  br label %__init1051

__fresh1080:
  br label %__init1051

__init1051:
  %lhs_or_call3421 = load %A** %vdecl_slot3394
  %rvtable3433 = getelementptr %A* %lhs_or_call3421, i32 0
  br label %__bound_check1052

__fresh1081:
  br label %__bound_check1052

__bound_check1052:
  %cast_op3437 = bitcast %_B_vtable* @_B_vtable569 to i8** 
  %lvtable3434 = load i8** %cast_op3437
  %cast_vtable3438 = bitcast i8** %rvtable3433 to i8** 
  %rvtable3436 = load i8** %cast_vtable3438
  %compare3435 = icmp eq i8* %rvtable3436, null
  br i1 %compare3435, label %__end_no1055, label %__check_curr1054

__fresh1082:
  br label %__check_curr1054

__check_curr1054:
  %compare3435 = icmp eq i8** %lvtable3434, %rvtable3436
  br i1 %compare3435, label %__end_yes1056, label %__move_up1053

__fresh1083:
  br label %__move_up1053

__move_up1053:
  %rvtable3433 = getelementptr i8* %rvtable3436, i32 0
  br label %__bound_check1052

__fresh1084:
  br label %__end_yes1056

__end_yes1056:
  %lhs_or_call3421 = load %A** %vdecl_slot3394
  %cast_ptr3420 = bitcast %A* %lhs_or_call3421 to %B* 
  %lhs_or_call3422 = load i32* %vdecl_slot3400
  %lhs_or_call3423 = load %B** %cast_ptr3420
  %only_b3424 = getelementptr %B* %lhs_or_call3423, i32 0, i32 2
  %lhs_or_call3425 = load i32* %only_b3424
  %bop3426 = add i32 %lhs_or_call3422, %lhs_or_call3425
  store i32 %bop3426, i32* %vdecl_slot3400
  %lhs_or_call3427 = load %B** %cast_ptr3420
  %vtable_ptr3428 = getelementptr %B* %lhs_or_call3427, i32 0
  %vtable3429 = load %_B_vtable** %vtable_ptr3428
  %name3431 = getelementptr %_B_vtable* %vtable3429, i32 0, i32 2
  %name3430 = load void (%B*)** %name3431
  %cast_op3432 = bitcast %B %lhs_or_call3427 to %B* 
  call void %name3430( %B* %cast_op3432 )
  br label %__end1057

__fresh1085:
  br label %__end_no1055

__end_no1055:
  br label %__end1057

__fresh1086:
  br label %__end1057

__end1057:
  br label %__init1058

__fresh1087:
  br label %__init1058

__init1058:
  %lhs_or_call3440 = load %A** %vdecl_slot3394
  %rvtable3441 = getelementptr %A* %lhs_or_call3440, i32 0
  br label %__bound_check1059

__fresh1088:
  br label %__bound_check1059

__bound_check1059:
  %cast_op3445 = bitcast %_Bb_vtable* @_Bb_vtable570 to i8** 
  %lvtable3442 = load i8** %cast_op3445
  %cast_vtable3446 = bitcast i8** %rvtable3441 to i8** 
  %rvtable3444 = load i8** %cast_vtable3446
  %compare3443 = icmp eq i8* %rvtable3444, null
  br i1 %compare3443, label %__end_no1062, label %__check_curr1061

__fresh1089:
  br label %__check_curr1061

__check_curr1061:
  %compare3443 = icmp eq i8** %lvtable3442, %rvtable3444
  br i1 %compare3443, label %__end_yes1063, label %__move_up1060

__fresh1090:
  br label %__move_up1060

__move_up1060:
  %rvtable3441 = getelementptr i8* %rvtable3444, i32 0
  br label %__bound_check1059

__fresh1091:
  br label %__end_yes1063

__end_yes1063:
  %lhs_or_call3440 = load %A** %vdecl_slot3394
  %cast_ptr3439 = bitcast %A* %lhs_or_call3440 to %Bb* 
  call void @print_string( i8* @_const_str578 )
  call void @oat_abort( i32 -1 )
  br label %__end1064

__fresh1092:
  br label %__end_no1062

__end_no1062:
  call void @print_string( i8* @_const_str579 )
  br label %__end1064

__fresh1093:
  br label %__end1064

__end1064:
  br label %__init1065

__fresh1094:
  br label %__init1065

__init1065:
  %lhs_or_call3448 = load %A** %vdecl_slot3399
  %rvtable3449 = getelementptr %A* %lhs_or_call3448, i32 0
  br label %__bound_check1066

__fresh1095:
  br label %__bound_check1066

__bound_check1066:
  %cast_op3453 = bitcast %_B_vtable* @_B_vtable569 to i8** 
  %lvtable3450 = load i8** %cast_op3453
  %cast_vtable3454 = bitcast i8** %rvtable3449 to i8** 
  %rvtable3452 = load i8** %cast_vtable3454
  %compare3451 = icmp eq i8* %rvtable3452, null
  br i1 %compare3451, label %__end_no1069, label %__check_curr1068

__fresh1096:
  br label %__check_curr1068

__check_curr1068:
  %compare3451 = icmp eq i8** %lvtable3450, %rvtable3452
  br i1 %compare3451, label %__end_yes1070, label %__move_up1067

__fresh1097:
  br label %__move_up1067

__move_up1067:
  %rvtable3449 = getelementptr i8* %rvtable3452, i32 0
  br label %__bound_check1066

__fresh1098:
  br label %__end_yes1070

__end_yes1070:
  %lhs_or_call3448 = load %A** %vdecl_slot3399
  %cast_ptr3447 = bitcast %A* %lhs_or_call3448 to %B* 
  call void @print_string( i8* @_const_str580 )
  call void @oat_abort( i32 -1 )
  br label %__end1071

__fresh1099:
  br label %__end_no1069

__end_no1069:
  call void @print_string( i8* @_const_str581 )
  br label %__end1071

__fresh1100:
  br label %__end1071

__end1071:
  %lhs_or_call3455 = load i32* %vdecl_slot3400
  ret i32 %lhs_or_call3455
}


define void @_Bb_name (%Bb* %_this1){
__fresh1043:
  call void @print_string( i8* @_const_str577 )
  ret void
}


define %Bb* @_Bb_ctor (%Bb* %_this1){
__fresh1042:
  %mem_ptr3377 = call i32* @oat_malloc ( i32 8 )
  %obj3378 = bitcast i32* %mem_ptr3377 to %A* 
  %new_obj3379 = call %A* @_A_ctor ( %A* %obj3378 )
  %_this1 = bitcast %A* %new_obj3379 to %Bb 
  %_name3380 = getelementptr %Bb* %_this1, i32 0, i32 1
  store i8* @_const_str576, i8** %_name3380
  %this_vtable3381 = getelementptr %Bb* %_this1, i32 0, i32 0
  store %_Bb_vtable* @_Bb_vtable570, %_Bb_vtable** %this_vtable3381
  %only_bb3376 = getelementptr %Bb* %_this1, i32 0, i32 2
  store i32 2, i32* %only_bb3376
  ret %Bb* %_this1
}


define void @_B_name (%B* %_this1){
__fresh1041:
  call void @print_string( i8* @_const_str575 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh1040:
  %mem_ptr3371 = call i32* @oat_malloc ( i32 8 )
  %obj3372 = bitcast i32* %mem_ptr3371 to %A* 
  %new_obj3373 = call %A* @_A_ctor ( %A* %obj3372 )
  %_this1 = bitcast %A* %new_obj3373 to %B 
  %_name3374 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str574, i8** %_name3374
  %this_vtable3375 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable569, %_B_vtable** %this_vtable3375
  %only_b3370 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %only_b3370
  ret %B* %_this1
}


define void @_A_name (%A* %_this1){
__fresh1039:
  call void @print_string( i8* @_const_str573 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh1038:
  %mem_ptr3365 = call i32* @oat_malloc ( i32 8 )
  %obj3366 = bitcast i32* %mem_ptr3365 to %Object* 
  %new_obj3367 = call %Object* @_Object_ctor ( %Object* %obj3366 )
  %_this1 = bitcast %Object* %new_obj3367 to %A 
  %_name3368 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str572, i8** %_name3368
  %this_vtable3369 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable568, %_A_vtable** %this_vtable3369
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1037:
  %_name3363 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3364 = load i8** %_name3363
  ret i8* %lhs_or_call3364
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1036:
  %_name3361 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str571, i8** %_name3361
  %this_vtable3362 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable567, %_Object_vtable** %this_vtable3362
  ret %Object* %_this1
}


