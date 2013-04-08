%Owl = type { %_Owl_vtable*, i8* }
%_Owl_vtable = type { %_Wl_vtable*, i8* (%Object*)*, i8* (%Owl*)*, i32 (%Wl*)*, i32 (%Owl*)*, i32 (%Owl*)* }
%Wl = type { %_Wl_vtable*, i8* }
%_Wl_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Wl*)*, i32 (%Wl*)*, i32 (%Wl*)* }
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
@o465 = global %Owl* zeroinitializer, align 4		; initialized by @o465.init466
@_const_str464.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str464 = alias bitcast([ 6 x i8 ]* @_const_str464.str. to i8*)@_const_str463.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str463 = alias bitcast([ 4 x i8 ]* @_const_str463.str. to i8*)@_const_str462.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str462 = alias bitcast([ 5 x i8 ]* @_const_str462.str. to i8*)@_const_str461.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str461 = alias bitcast([ 3 x i8 ]* @_const_str461.str. to i8*)@_const_str460.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str460 = alias bitcast([ 7 x i8 ]* @_const_str460.str. to i8*)@_Owl_vtable459 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable458, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable458 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable457, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable457 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh517:
  call void @o465.init466(  )
  ret void
}


define i32 @program (i32 %argc2434, { i32, [ 0 x i8* ] }* %argv2432){
__fresh516:
  %argc_slot2435 = alloca i32
  store i32 %argc2434, i32* %argc_slot2435
  %argv_slot2433 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2432, { i32, [ 0 x i8* ] }** %argv_slot2433
  %lhs_or_call2436 = load %Owl** @o465
  %cast_op2437 = bitcast %Owl* %lhs_or_call2436 to %Wl* 
  %ret2438 = call i8* @getNoise ( %Wl* %cast_op2437 )
  call void @print_string( i8* %ret2438 )
  %lhs_or_call2439 = load %Owl** @o465
  %vtable_ptr2440 = getelementptr %Owl* %lhs_or_call2439, i32 0
  %vtable2441 = load %_Owl_vtable** %vtable_ptr2440
  %childmethod2443 = getelementptr %_Owl_vtable* %vtable2441, i32 0, i32 5
  %childmethod2442 = load i32 (%Owl*)** %childmethod2443
  %cast_op2444 = bitcast %Owl %lhs_or_call2439 to %Owl* 
  %ret2445 = call i32 %childmethod2442 ( %Owl* %cast_op2444 )
  %lhs_or_call2446 = load %Owl** @o465
  %vtable_ptr2447 = getelementptr %Owl* %lhs_or_call2446, i32 0
  %vtable2448 = load %_Owl_vtable** %vtable_ptr2447
  %parentmethod2450 = getelementptr %_Owl_vtable* %vtable2448, i32 0, i32 3
  %parentmethod2449 = load i32 (%Wl*)** %parentmethod2450
  %cast_op2451 = bitcast %Owl %lhs_or_call2446 to %Wl* 
  %ret2452 = call i32 %parentmethod2449 ( %Wl* %cast_op2451 )
  %bop2453 = add i32 %ret2445, %ret2452
  %lhs_or_call2454 = load %Owl** @o465
  %vtable_ptr2455 = getelementptr %Owl* %lhs_or_call2454, i32 0
  %vtable2456 = load %_Owl_vtable** %vtable_ptr2455
  %secondoverride2458 = getelementptr %_Owl_vtable* %vtable2456, i32 0, i32 4
  %secondoverride2457 = load i32 (%Owl*)** %secondoverride2458
  %cast_op2459 = bitcast %Owl %lhs_or_call2454 to %Owl* 
  %ret2460 = call i32 %secondoverride2457 ( %Owl* %cast_op2459 )
  %bop2461 = add i32 %bop2453, %ret2460
  ret i32 %bop2461
}


define void @o465.init466 (){
__fresh515:
  %mem_ptr2429 = call i32* @oat_malloc ( i32 8 )
  %obj2430 = bitcast i32* %mem_ptr2429 to %Owl* 
  %new_obj2431 = call %Owl* @_Owl_ctor ( %Owl* %obj2430 )
  store %Owl* %new_obj2431, %Owl** @o465
  ret void
}


define i8* @getNoise (%Wl* %thing2420){
__fresh514:
  %thing_slot2421 = alloca %Wl*
  store %Wl* %thing2420, %Wl** %thing_slot2421
  %lhs_or_call2422 = load %Wl** %thing_slot2421
  %vtable_ptr2423 = getelementptr %Wl* %lhs_or_call2422, i32 0
  %vtable2424 = load %_Wl_vtable** %vtable_ptr2423
  %noise2426 = getelementptr %_Wl_vtable* %vtable2424, i32 0, i32 2
  %noise2425 = load i8* (%Wl*)** %noise2426
  %cast_op2427 = bitcast %Wl %lhs_or_call2422 to %Wl* 
  %ret2428 = call i8* %noise2425 ( %Wl* %cast_op2427 )
  ret i8* %ret2428
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh513:
  %vtable_ptr2413 = getelementptr %Owl* %_this1, i32 0
  %vtable2414 = load %_Owl_vtable** %vtable_ptr2413
  %secondoverride2416 = getelementptr %_Owl_vtable* %vtable2414, i32 0, i32 4
  %secondoverride2415 = load i32 (%Owl*)** %secondoverride2416
  %cast_op2417 = bitcast %Owl %_this1 to %Owl* 
  %ret2418 = call i32 %secondoverride2415 ( %Owl* %cast_op2417 )
  %bop2419 = add i32 %ret2418, 1
  ret i32 %bop2419
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh512:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh511:
  ret i8* @_const_str464
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh510:
  %mem_ptr2408 = call i32* @oat_malloc ( i32 8 )
  %obj2409 = bitcast i32* %mem_ptr2408 to %Wl* 
  %new_obj2410 = call %Wl* @_Wl_ctor ( %Wl* %obj2409 )
  %_this1 = bitcast %Wl* %new_obj2410 to %Owl 
  %_name2411 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2411
  %this_vtable2412 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable459, %_Owl_vtable** %this_vtable2412
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh509:
  %unop2407 = sub i32 0, 2
  ret i32 %unop2407
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh508:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh507:
  ret i8* @_const_str462
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh506:
  %mem_ptr2402 = call i32* @oat_malloc ( i32 8 )
  %obj2403 = bitcast i32* %mem_ptr2402 to %Object* 
  %new_obj2404 = call %Object* @_Object_ctor ( %Object* %obj2403 )
  %_this1 = bitcast %Object* %new_obj2404 to %Wl 
  %_name2405 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str461, i8** %_name2405
  %this_vtable2406 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable458, %_Wl_vtable** %this_vtable2406
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh505:
  %_name2400 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2401 = load i8** %_name2400
  ret i8* %lhs_or_call2401
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh504:
  %_name2398 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str460, i8** %_name2398
  %this_vtable2399 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable457, %_Object_vtable** %this_vtable2399
  ret %Object* %_this1
}


