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
@o476 = global %Owl* zeroinitializer, align 4		; initialized by @o476.init477
@_const_str475.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str475 = alias bitcast([ 6 x i8 ]* @_const_str475.str. to i8*)@_const_str474.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str474 = alias bitcast([ 4 x i8 ]* @_const_str474.str. to i8*)@_const_str473.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str473 = alias bitcast([ 5 x i8 ]* @_const_str473.str. to i8*)@_const_str472.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str472 = alias bitcast([ 3 x i8 ]* @_const_str472.str. to i8*)@_const_str471.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str471 = alias bitcast([ 7 x i8 ]* @_const_str471.str. to i8*)@_Owl_vtable470 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable469, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable469 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable468, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable468 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh517:
  call void @o476.init477(  )
  ret void
}


define i32 @program (i32 %argc2446, { i32, [ 0 x i8* ] }* %argv2444){
__fresh516:
  %argc_slot2447 = alloca i32
  store i32 %argc2446, i32* %argc_slot2447
  %argv_slot2445 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2444, { i32, [ 0 x i8* ] }** %argv_slot2445
  %lhs_or_call2448 = load %Owl** @o476
  %cast_op2449 = bitcast %Owl* %lhs_or_call2448 to %Wl* 
  %ret2450 = call i8* @getNoise ( %Wl* %cast_op2449 )
  call void @print_string( i8* %ret2450 )
  %lhs_or_call2451 = load %Owl** @o476
  %vtable_ptr2452 = getelementptr %Owl* %lhs_or_call2451, i32 0
  %vtable2453 = load %_Owl_vtable** %vtable_ptr2452
  %childmethod2455 = getelementptr %_Owl_vtable* %vtable2453, i32 0, i32 5
  %childmethod2454 = load i32 (%Owl*)** %childmethod2455
  %cast_op2456 = bitcast %Owl %lhs_or_call2451 to %Owl* 
  %ret2457 = call i32 %childmethod2454 ( %Owl* %cast_op2456 )
  %lhs_or_call2458 = load %Owl** @o476
  %vtable_ptr2459 = getelementptr %Owl* %lhs_or_call2458, i32 0
  %vtable2460 = load %_Owl_vtable** %vtable_ptr2459
  %parentmethod2462 = getelementptr %_Owl_vtable* %vtable2460, i32 0, i32 3
  %parentmethod2461 = load i32 (%Wl*)** %parentmethod2462
  %cast_op2463 = bitcast %Owl %lhs_or_call2458 to %Wl* 
  %ret2464 = call i32 %parentmethod2461 ( %Wl* %cast_op2463 )
  %bop2465 = add i32 %ret2457, %ret2464
  %lhs_or_call2466 = load %Owl** @o476
  %vtable_ptr2467 = getelementptr %Owl* %lhs_or_call2466, i32 0
  %vtable2468 = load %_Owl_vtable** %vtable_ptr2467
  %secondoverride2470 = getelementptr %_Owl_vtable* %vtable2468, i32 0, i32 4
  %secondoverride2469 = load i32 (%Owl*)** %secondoverride2470
  %cast_op2471 = bitcast %Owl %lhs_or_call2466 to %Owl* 
  %ret2472 = call i32 %secondoverride2469 ( %Owl* %cast_op2471 )
  %bop2473 = add i32 %bop2465, %ret2472
  ret i32 %bop2473
}


define void @o476.init477 (){
__fresh515:
  %mem_ptr2441 = call i32* @oat_malloc ( i32 8 )
  %obj2442 = bitcast i32* %mem_ptr2441 to %Owl* 
  %new_obj2443 = call %Owl* @_Owl_ctor ( %Owl* %obj2442 )
  store %Owl* %new_obj2443, %Owl** @o476
  ret void
}


define i8* @getNoise (%Wl* %thing2432){
__fresh514:
  %thing_slot2433 = alloca %Wl*
  store %Wl* %thing2432, %Wl** %thing_slot2433
  %lhs_or_call2434 = load %Wl** %thing_slot2433
  %vtable_ptr2435 = getelementptr %Wl* %lhs_or_call2434, i32 0
  %vtable2436 = load %_Wl_vtable** %vtable_ptr2435
  %noise2438 = getelementptr %_Wl_vtable* %vtable2436, i32 0, i32 2
  %noise2437 = load i8* (%Wl*)** %noise2438
  %cast_op2439 = bitcast %Wl %lhs_or_call2434 to %Wl* 
  %ret2440 = call i8* %noise2437 ( %Wl* %cast_op2439 )
  ret i8* %ret2440
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh513:
  %vtable_ptr2425 = getelementptr %Owl* %_this1, i32 0
  %vtable2426 = load %_Owl_vtable** %vtable_ptr2425
  %secondoverride2428 = getelementptr %_Owl_vtable* %vtable2426, i32 0, i32 4
  %secondoverride2427 = load i32 (%Owl*)** %secondoverride2428
  %cast_op2429 = bitcast %Owl %_this1 to %Owl* 
  %ret2430 = call i32 %secondoverride2427 ( %Owl* %cast_op2429 )
  %bop2431 = add i32 %ret2430, 1
  ret i32 %bop2431
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh512:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh511:
  ret i8* @_const_str475
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh510:
  %mem_ptr2420 = call i32* @oat_malloc ( i32 8 )
  %obj2421 = bitcast i32* %mem_ptr2420 to %Wl* 
  %new_obj2422 = call %Wl* @_Wl_ctor ( %Wl* %obj2421 )
  %_this1 = bitcast %Wl* %new_obj2422 to %Owl 
  %_name2423 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str474, i8** %_name2423
  %this_vtable2424 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable470, %_Owl_vtable** %this_vtable2424
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh509:
  %unop2419 = sub i32 0, 2
  ret i32 %unop2419
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh508:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh507:
  ret i8* @_const_str473
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh506:
  %mem_ptr2414 = call i32* @oat_malloc ( i32 8 )
  %obj2415 = bitcast i32* %mem_ptr2414 to %Object* 
  %new_obj2416 = call %Object* @_Object_ctor ( %Object* %obj2415 )
  %_this1 = bitcast %Object* %new_obj2416 to %Wl 
  %_name2417 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str472, i8** %_name2417
  %this_vtable2418 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable469, %_Wl_vtable** %this_vtable2418
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh505:
  %_name2412 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2413 = load i8** %_name2412
  ret i8* %lhs_or_call2413
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh504:
  %_name2410 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str471, i8** %_name2410
  %this_vtable2411 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable468, %_Object_vtable** %this_vtable2411
  ret %Object* %_this1
}


