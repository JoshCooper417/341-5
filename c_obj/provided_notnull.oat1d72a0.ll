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
@_const_str560.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str560 = alias bitcast([ 6 x i8 ]* @_const_str560.str. to i8*)@_const_str559.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str559 = alias bitcast([ 7 x i8 ]* @_const_str559.str. to i8*)@_Object_vtable558 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh675:
  ret void
}


define i32 @program (i32 %argc2531, { i32, [ 0 x i8* ] }* %argv2529){
__fresh670:
  %argc_slot2532 = alloca i32
  store i32 %argc2531, i32* %argc_slot2532
  %argv_slot2530 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2529, { i32, [ 0 x i8* ] }** %argv_slot2530
  %vdecl_slot2533 = alloca i8*
  store i8* null, i8** %vdecl_slot2533
  %vdecl_slot2534 = alloca i8*
  store i8* @_const_str560, i8** %vdecl_slot2534
  %vdecl_slot2535 = alloca i8*
  store i8* null, i8** %vdecl_slot2535
  %vdecl_slot2536 = alloca i32
  store i32 0, i32* %vdecl_slot2536
  %lhs_or_call2537 = load i8** %vdecl_slot2533
  %ifnull_slot2538 = alloca i8*
  store i8* %lhs_or_call2537, i8** %ifnull_slot2538
  %ifnull_guard2539 = icmp ne i8* %lhs_or_call2537, null
  br i1 %ifnull_guard2539, label %__then666, label %__else665

__fresh671:
  br label %__then666

__then666:
  %lhs_or_call2540 = load i8** %ifnull_slot2538
  call void @print_string( i8* %lhs_or_call2540 )
  %lhs_or_call2541 = load i32* %vdecl_slot2536
  %bop2542 = add i32 %lhs_or_call2541, 2
  store i32 %bop2542, i32* %vdecl_slot2536
  %lhs_or_call2543 = load i8** %vdecl_slot2533
  store i8* %lhs_or_call2543, i8** %vdecl_slot2535
  br label %__merge664

__fresh672:
  br label %__else665

__else665:
  br label %__merge664

__merge664:
  %lhs_or_call2544 = load i8** %vdecl_slot2534
  %ifnull_slot2545 = alloca i8*
  store i8* %lhs_or_call2544, i8** %ifnull_slot2545
  %ifnull_guard2546 = icmp ne i8* %lhs_or_call2544, null
  br i1 %ifnull_guard2546, label %__then669, label %__else668

__fresh673:
  br label %__then669

__then669:
  %lhs_or_call2547 = load i8** %ifnull_slot2545
  call void @print_string( i8* %lhs_or_call2547 )
  %lhs_or_call2548 = load i32* %vdecl_slot2536
  %bop2549 = add i32 %lhs_or_call2548, 40
  store i32 %bop2549, i32* %vdecl_slot2536
  %lhs_or_call2550 = load i8** %vdecl_slot2533
  store i8* %lhs_or_call2550, i8** %vdecl_slot2535
  br label %__merge667

__fresh674:
  br label %__else668

__else668:
  br label %__merge667

__merge667:
  %lhs_or_call2551 = load i32* %vdecl_slot2536
  ret i32 %lhs_or_call2551
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh663:
  %_name2527 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2528 = load i8** %_name2527
  ret i8* %lhs_or_call2528
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh662:
  %_name2525 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str559, i8** %_name2525
  %this_vtable2526 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable558, %_Object_vtable** %this_vtable2526
  ret %Object* %_this1
}


