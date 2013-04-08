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
@s3511 = global i8* zeroinitializer, align 4		; initialized by @s3511.init512
@_const_str510.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str510 = alias bitcast([ 8 x i8 ]* @_const_str510.str. to i8*)@s2508 = global i8* zeroinitializer, align 4		; initialized by @s2508.init509
@s1506 = global i8* zeroinitializer, align 4		; initialized by @s1506.init507
@_const_str505.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str505 = alias bitcast([ 6 x i8 ]* @_const_str505.str. to i8*)@_const_str504.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str504 = alias bitcast([ 7 x i8 ]* @_const_str504.str. to i8*)@_Object_vtable503 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh557:
  call void @s1506.init507(  )
  call void @s2508.init509(  )
  call void @s3511.init512(  )
  ret void
}


define i32 @program (i32 %argc2495, { i32, [ 0 x i8* ] }* %argv2493){
__fresh550:
  %argc_slot2496 = alloca i32
  store i32 %argc2495, i32* %argc_slot2496
  %argv_slot2494 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2493, { i32, [ 0 x i8* ] }** %argv_slot2494
  %vdecl_slot2497 = alloca i32
  store i32 0, i32* %vdecl_slot2497
  %lhs_or_call2498 = load i8** @s1506
  %ifnull_slot2499 = alloca i8*
  store i8* %lhs_or_call2498, i8** %ifnull_slot2499
  %ifnull_guard2500 = icmp ne i8* %lhs_or_call2498, null
  br i1 %ifnull_guard2500, label %__then543, label %__else542

__fresh551:
  br label %__then543

__then543:
  %lhs_or_call2501 = load i8** %ifnull_slot2499
  %ret2502 = call i32 @length_of_string ( i8* %lhs_or_call2501 )
  store i32 %ret2502, i32* %vdecl_slot2497
  br label %__merge541

__fresh552:
  br label %__else542

__else542:
  store i32 0, i32* %vdecl_slot2497
  br label %__merge541

__merge541:
  %lhs_or_call2503 = load i8** @s2508
  %ifnull_slot2504 = alloca i8*
  store i8* %lhs_or_call2503, i8** %ifnull_slot2504
  %ifnull_guard2505 = icmp ne i8* %lhs_or_call2503, null
  br i1 %ifnull_guard2505, label %__then546, label %__else545

__fresh553:
  br label %__then546

__then546:
  %lhs_or_call2506 = load i32* %vdecl_slot2497
  %lhs_or_call2507 = load i8** %ifnull_slot2504
  %ret2508 = call i32 @length_of_string ( i8* %lhs_or_call2507 )
  %bop2509 = add i32 %lhs_or_call2506, %ret2508
  store i32 %bop2509, i32* %vdecl_slot2497
  br label %__merge544

__fresh554:
  br label %__else545

__else545:
  %lhs_or_call2510 = load i32* %vdecl_slot2497
  %bop2511 = add i32 %lhs_or_call2510, 30
  store i32 %bop2511, i32* %vdecl_slot2497
  br label %__merge544

__merge544:
  %lhs_or_call2512 = load i8** @s3511
  %ifnull_slot2513 = alloca i8*
  store i8* %lhs_or_call2512, i8** %ifnull_slot2513
  %ifnull_guard2514 = icmp ne i8* %lhs_or_call2512, null
  br i1 %ifnull_guard2514, label %__then549, label %__else548

__fresh555:
  br label %__then549

__then549:
  %lhs_or_call2515 = load i32* %vdecl_slot2497
  %lhs_or_call2516 = load i8** %ifnull_slot2513
  %ret2517 = call i32 @length_of_string ( i8* %lhs_or_call2516 )
  %bop2518 = add i32 %lhs_or_call2515, %ret2517
  store i32 %bop2518, i32* %vdecl_slot2497
  br label %__merge547

__fresh556:
  br label %__else548

__else548:
  %lhs_or_call2519 = load i32* %vdecl_slot2497
  %bop2520 = add i32 %lhs_or_call2519, 41
  store i32 %bop2520, i32* %vdecl_slot2497
  br label %__merge547

__merge547:
  %lhs_or_call2521 = load i32* %vdecl_slot2497
  ret i32 %lhs_or_call2521
}


define void @s3511.init512 (){
__fresh540:
  store i8* @_const_str510, i8** @s3511
  ret void
}


define void @s2508.init509 (){
__fresh539:
  store i8* null, i8** @s2508
  ret void
}


define void @s1506.init507 (){
__fresh538:
  store i8* @_const_str505, i8** @s1506
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh537:
  %_name2491 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2492 = load i8** %_name2491
  ret i8* %lhs_or_call2492
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh536:
  %_name2489 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str504, i8** %_name2489
  %this_vtable2490 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable503, %_Object_vtable** %this_vtable2490
  ret %Object* %_this1
}


