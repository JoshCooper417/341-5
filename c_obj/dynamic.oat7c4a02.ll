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
@o485 = global %Owl* zeroinitializer, align 4		; initialized by @o485.init486
@_const_str484.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str484 = alias bitcast([ 6 x i8 ]* @_const_str484.str. to i8*)@_const_str483.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str483 = alias bitcast([ 4 x i8 ]* @_const_str483.str. to i8*)@_const_str482.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str482 = alias bitcast([ 5 x i8 ]* @_const_str482.str. to i8*)@_const_str481.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str481 = alias bitcast([ 3 x i8 ]* @_const_str481.str. to i8*)@_const_str480.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str480 = alias bitcast([ 7 x i8 ]* @_const_str480.str. to i8*)@_Owl_vtable479 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable478, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable478 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable477, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable477 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh537:
  call void @o485.init486(  )
  ret void
}


define i32 @program (i32 %argc2483, { i32, [ 0 x i8* ] }* %argv2481){
__fresh536:
  %argc_slot2484 = alloca i32
  store i32 %argc2483, i32* %argc_slot2484
  %argv_slot2482 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2481, { i32, [ 0 x i8* ] }** %argv_slot2482
  %lhs_or_call2485 = load %Owl** @o485
  %cast_op2486 = bitcast %Owl* %lhs_or_call2485 to %Wl* 
  %ret2487 = call i8* @getNoise ( %Wl* %cast_op2486 )
  call void @print_string( i8* %ret2487 )
  %lhs_or_call2488 = load %Owl** @o485
  %childmethod2490 = getelementptr %_Owl_vtable* @_Owl_vtable479, i32 0, i32 5
  %childmethod2489 = load i32 (%Owl*)** %childmethod2490
  %cast_op2491 = bitcast %Owl %lhs_or_call2488 to %Owl* 
  %ret2492 = call i32 %childmethod2489 ( %Owl* %cast_op2491 )
  %lhs_or_call2493 = load %Owl** @o485
  %parentmethod2495 = getelementptr %_Owl_vtable* @_Owl_vtable479, i32 0, i32 3
  %parentmethod2494 = load i32 (%Wl*)** %parentmethod2495
  %cast_op2496 = bitcast %Owl %lhs_or_call2493 to %Wl* 
  %ret2497 = call i32 %parentmethod2494 ( %Wl* %cast_op2496 )
  %bop2498 = add i32 %ret2492, %ret2497
  %lhs_or_call2499 = load %Owl** @o485
  %secondoverride2501 = getelementptr %_Owl_vtable* @_Owl_vtable479, i32 0, i32 4
  %secondoverride2500 = load i32 (%Owl*)** %secondoverride2501
  %cast_op2502 = bitcast %Owl %lhs_or_call2499 to %Owl* 
  %ret2503 = call i32 %secondoverride2500 ( %Owl* %cast_op2502 )
  %bop2504 = add i32 %bop2498, %ret2503
  ret i32 %bop2504
}


define void @o485.init486 (){
__fresh535:
  %mem_ptr2478 = call i32* @oat_malloc ( i32 8 )
  %obj2479 = bitcast i32* %mem_ptr2478 to %Owl* 
  %new_obj2480 = call %Owl* @_Owl_ctor ( %Owl* %obj2479 )
  store %Owl* %new_obj2480, %Owl** @o485
  ret void
}


define i8* @getNoise (%Wl* %thing2471){
__fresh534:
  %thing_slot2472 = alloca %Wl*
  store %Wl* %thing2471, %Wl** %thing_slot2472
  %lhs_or_call2473 = load %Wl** %thing_slot2472
  %noise2475 = getelementptr %_Wl_vtable* @_Wl_vtable478, i32 0, i32 2
  %noise2474 = load i8* (%Wl*)** %noise2475
  %cast_op2476 = bitcast %Wl %lhs_or_call2473 to %Wl* 
  %ret2477 = call i8* %noise2474 ( %Wl* %cast_op2476 )
  ret i8* %ret2477
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh533:
  %secondoverride2467 = getelementptr %_Owl_vtable* @_Owl_vtable479, i32 0, i32 4
  %secondoverride2466 = load i32 (%Owl*)** %secondoverride2467
  %cast_op2468 = bitcast %Owl %_this1 to %Owl* 
  %ret2469 = call i32 %secondoverride2466 ( %Owl* %cast_op2468 )
  %bop2470 = add i32 %ret2469, 1
  ret i32 %bop2470
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh532:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh531:
  ret i8* @_const_str484
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh530:
  %cast_op2460 = bitcast %Owl* %_this1 to %Wl* 
  %mem_ptr2461 = call i32* @oat_malloc ( i32 8 )
  %obj2462 = bitcast i32* %mem_ptr2461 to %Owl* 
  %new_obj2463 = call %Wl* @_Wl_ctor ( %Owl* %obj2462, %Wl* %cast_op2460 )
  %_this1 = bitcast %Wl* %new_obj2463 to %Owl 
  %_name2464 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str483, i8** %_name2464
  %this_vtable2465 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable479, %_Owl_vtable** %this_vtable2465
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh529:
  %unop2459 = sub i32 0, 2
  ret i32 %unop2459
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh528:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh527:
  ret i8* @_const_str482
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh526:
  %cast_op2453 = bitcast %Wl* %_this1 to %Object* 
  %mem_ptr2454 = call i32* @oat_malloc ( i32 8 )
  %obj2455 = bitcast i32* %mem_ptr2454 to %Wl* 
  %new_obj2456 = call %Object* @_Object_ctor ( %Wl* %obj2455, %Object* %cast_op2453 )
  %_this1 = bitcast %Object* %new_obj2456 to %Wl 
  %_name2457 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str481, i8** %_name2457
  %this_vtable2458 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable478, %_Wl_vtable** %this_vtable2458
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh525:
  %_name2451 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2452 = load i8** %_name2451
  ret i8* %lhs_or_call2452
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh524:
  %_name2449 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str480, i8** %_name2449
  %this_vtable2450 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable477, %_Object_vtable** %this_vtable2450
  ret %Object* %_this1
}


