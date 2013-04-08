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
@_const_str325.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str325 = alias bitcast([ 6 x i8 ]* @_const_str325.str. to i8*)@_Object_vtable324 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh624:
  ret void
}


define i32 @program (i32 %argc3506, { i32, [ 0 x i8* ] }* %argv3504){
__fresh619:
  %argc_slot3507 = alloca i32
  store i32 %argc3506, i32* %argc_slot3507
  %argv_slot3505 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3504, { i32, [ 0 x i8* ] }** %argv_slot3505
  %vdecl_slot3508 = alloca i8*
  store i8* null, i8** %vdecl_slot3508
  %vdecl_slot3509 = alloca i8*
  store i8* @_const_str325, i8** %vdecl_slot3509
  %vdecl_slot3510 = alloca i8*
  store i8* null, i8** %vdecl_slot3510
  %vdecl_slot3511 = alloca i32
  store i32 0, i32* %vdecl_slot3511
  %lhs_or_call3512 = load i8** %vdecl_slot3508
  %ifnull_slot3513 = alloca i8*
  store i8* %lhs_or_call3512, i8** %ifnull_slot3513
  %ifnull_guard3514 = icmp ne i8* %lhs_or_call3512, null
  br i1 %ifnull_guard3514, label %__then615, label %__else614

__fresh620:
  br label %__then615

__then615:
  %lhs_or_call3515 = load i8** %ifnull_slot3513
  call void @print_string( i8* %lhs_or_call3515 )
  %lhs_or_call3516 = load i32* %vdecl_slot3511
  %bop3517 = add i32 %lhs_or_call3516, 2
  store i32 %bop3517, i32* %vdecl_slot3511
  %lhs_or_call3518 = load i8** %vdecl_slot3508
  store i8* %lhs_or_call3518, i8** %vdecl_slot3510
  br label %__merge613

__fresh621:
  br label %__else614

__else614:
  br label %__merge613

__merge613:
  %lhs_or_call3519 = load i8** %vdecl_slot3509
  %ifnull_slot3520 = alloca i8*
  store i8* %lhs_or_call3519, i8** %ifnull_slot3520
  %ifnull_guard3521 = icmp ne i8* %lhs_or_call3519, null
  br i1 %ifnull_guard3521, label %__then618, label %__else617

__fresh622:
  br label %__then618

__then618:
  %lhs_or_call3522 = load i8** %ifnull_slot3520
  call void @print_string( i8* %lhs_or_call3522 )
  %lhs_or_call3523 = load i32* %vdecl_slot3511
  %bop3524 = add i32 %lhs_or_call3523, 40
  store i32 %bop3524, i32* %vdecl_slot3511
  %lhs_or_call3525 = load i8** %vdecl_slot3508
  store i8* %lhs_or_call3525, i8** %vdecl_slot3510
  br label %__merge616

__fresh623:
  br label %__else617

__else617:
  br label %__merge616

__merge616:
  %lhs_or_call3526 = load i32* %vdecl_slot3511
  ret i32 %lhs_or_call3526
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh612:
  %_name3502 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3503 = load i8** %_name3502
  ret i8* %lhs_or_call3503
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh611:
  %_name3498 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3499 = load %Object* %_this1
  %cast_op3500 = bitcast %Object %lhs_or_call3499 to i8* 
  store i8* %cast_op3500, i8** %_name3498
  %this_vtable3501 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3501
  ret %Object* %_this1
}


