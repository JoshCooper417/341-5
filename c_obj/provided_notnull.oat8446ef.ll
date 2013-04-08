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
@_const_str584.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str584 = alias bitcast([ 6 x i8 ]* @_const_str584.str. to i8*)@_const_str583.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str583 = alias bitcast([ 7 x i8 ]* @_const_str583.str. to i8*)@_Object_vtable582 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1025:
  ret void
}


define i32 @program (i32 %argc3462, { i32, [ 0 x i8* ] }* %argv3460){
__fresh1020:
  %argc_slot3463 = alloca i32
  store i32 %argc3462, i32* %argc_slot3463
  %argv_slot3461 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3460, { i32, [ 0 x i8* ] }** %argv_slot3461
  %vdecl_slot3464 = alloca i8*
  store i8* null, i8** %vdecl_slot3464
  %vdecl_slot3465 = alloca i8*
  store i8* @_const_str584, i8** %vdecl_slot3465
  %vdecl_slot3466 = alloca i8*
  store i8* null, i8** %vdecl_slot3466
  %vdecl_slot3467 = alloca i32
  store i32 0, i32* %vdecl_slot3467
  %lhs_or_call3468 = load i8** %vdecl_slot3464
  %ifnull_slot3469 = alloca i8*
  store i8* %lhs_or_call3468, i8** %ifnull_slot3469
  %ifnull_guard3470 = icmp ne i8* %lhs_or_call3468, null
  br i1 %ifnull_guard3470, label %__then1016, label %__else1015

__fresh1021:
  br label %__then1016

__then1016:
  %lhs_or_call3471 = load i8** %ifnull_slot3469
  call void @print_string( i8* %lhs_or_call3471 )
  %lhs_or_call3472 = load i32* %vdecl_slot3467
  %bop3473 = add i32 %lhs_or_call3472, 2
  store i32 %bop3473, i32* %vdecl_slot3467
  %lhs_or_call3474 = load i8** %vdecl_slot3464
  store i8* %lhs_or_call3474, i8** %vdecl_slot3466
  br label %__merge1014

__fresh1022:
  br label %__else1015

__else1015:
  br label %__merge1014

__merge1014:
  %lhs_or_call3475 = load i8** %vdecl_slot3465
  %ifnull_slot3476 = alloca i8*
  store i8* %lhs_or_call3475, i8** %ifnull_slot3476
  %ifnull_guard3477 = icmp ne i8* %lhs_or_call3475, null
  br i1 %ifnull_guard3477, label %__then1019, label %__else1018

__fresh1023:
  br label %__then1019

__then1019:
  %lhs_or_call3478 = load i8** %ifnull_slot3476
  call void @print_string( i8* %lhs_or_call3478 )
  %lhs_or_call3479 = load i32* %vdecl_slot3467
  %bop3480 = add i32 %lhs_or_call3479, 40
  store i32 %bop3480, i32* %vdecl_slot3467
  %lhs_or_call3481 = load i8** %vdecl_slot3464
  store i8* %lhs_or_call3481, i8** %vdecl_slot3466
  br label %__merge1017

__fresh1024:
  br label %__else1018

__else1018:
  br label %__merge1017

__merge1017:
  %lhs_or_call3482 = load i32* %vdecl_slot3467
  ret i32 %lhs_or_call3482
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1013:
  %_name3458 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3459 = load i8** %_name3458
  ret i8* %lhs_or_call3459
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1012:
  %_name3456 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str583, i8** %_name3456
  %this_vtable3457 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable582, %_Object_vtable** %this_vtable3457
  ret %Object* %_this1
}


