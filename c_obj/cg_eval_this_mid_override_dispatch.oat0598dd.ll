%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%C*, i32)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@_const_str455.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str455 = alias bitcast([ 2 x i8 ]* @_const_str455.str. to i8*)@_const_str454.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str454 = alias bitcast([ 2 x i8 ]* @_const_str454.str. to i8*)@_const_str453.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str453 = alias bitcast([ 2 x i8 ]* @_const_str453.str. to i8*)@_const_str452.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str452 = alias bitcast([ 7 x i8 ]* @_const_str452.str. to i8*)@_C_vtable451 = private constant %_C_vtable {%_B_vtable* @_B_vtable450, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable450 = private constant %_B_vtable {%_A_vtable* @_A_vtable449, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable449 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable448, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable448 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh563:
  ret void
}


define i32 @program (i32 %argc2495, { i32, [ 0 x i8* ] }* %argv2493){
__fresh562:
  %argc_slot2496 = alloca i32
  store i32 %argc2495, i32* %argc_slot2496
  %argv_slot2494 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2493, { i32, [ 0 x i8* ] }** %argv_slot2494
  %mem_ptr2497 = call i32* @oat_malloc ( i32 8 )
  %obj2498 = bitcast i32* %mem_ptr2497 to %C* 
  %new_obj2499 = call %C* @_C_ctor ( %C* %obj2498 )
  %vdecl_slot2500 = alloca %C*
  store %C* %new_obj2499, %C** %vdecl_slot2500
  %lhs_or_call2501 = load %C** %vdecl_slot2500
  %vtable_ptr2502 = getelementptr %C* %lhs_or_call2501, i32 0
  %vtable2503 = load %_C_vtable** %vtable_ptr2502
  %call2505 = getelementptr %_C_vtable* %vtable2503, i32 0, i32 4
  %call2504 = load i32 (%C*)** %call2505
  %cast_op2506 = bitcast %C %lhs_or_call2501 to %C* 
  %ret2507 = call i32 %call2504 ( %C* %cast_op2506 )
  ret i32 %ret2507
}


define i32 @_C_call (%C* %_this1){
__fresh561:
  %vtable_ptr2487 = getelementptr %C* %_this1, i32 0
  %vtable2488 = load %_C_vtable** %vtable_ptr2487
  %over2490 = getelementptr %_C_vtable* %vtable2488, i32 0, i32 2
  %over2489 = load i32 (%B*, i32)** %over2490
  %cast_op2491 = bitcast %C %_this1 to %B* 
  %ret2492 = call i32 %over2489 ( %B* %cast_op2491, i32 3 )
  ret i32 %ret2492
}


define i32 @_C_notover (%C* %_this1, i32 %x2483){
__fresh560:
  %x_slot2484 = alloca i32
  store i32 %x2483, i32* %x_slot2484
  %lhs_or_call2485 = load i32* %x_slot2484
  %bop2486 = add i32 %lhs_or_call2485, 1
  ret i32 %bop2486
}


define %C* @_C_ctor (%C* %_this1){
__fresh559:
  %mem_ptr2478 = call i32* @oat_malloc ( i32 8 )
  %obj2479 = bitcast i32* %mem_ptr2478 to %B* 
  %new_obj2480 = call %B* @_B_ctor ( %B* %obj2479 )
  %_this1 = bitcast %B* %new_obj2480 to %C 
  %_name2481 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str455, i8** %_name2481
  %this_vtable2482 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable451, %_C_vtable** %this_vtable2482
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2474){
__fresh558:
  %x_slot2475 = alloca i32
  store i32 %x2474, i32* %x_slot2475
  %lhs_or_call2476 = load i32* %x_slot2475
  %bop2477 = add i32 %lhs_or_call2476, 2
  ret i32 %bop2477
}


define %B* @_B_ctor (%B* %_this1){
__fresh557:
  %mem_ptr2469 = call i32* @oat_malloc ( i32 8 )
  %obj2470 = bitcast i32* %mem_ptr2469 to %A* 
  %new_obj2471 = call %A* @_A_ctor ( %A* %obj2470 )
  %_this1 = bitcast %A* %new_obj2471 to %B 
  %_name2472 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %_name2472
  %this_vtable2473 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable450, %_B_vtable** %this_vtable2473
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2465){
__fresh556:
  %x_slot2466 = alloca i32
  store i32 %x2465, i32* %x_slot2466
  %lhs_or_call2467 = load i32* %x_slot2466
  %bop2468 = add i32 %lhs_or_call2467, 1
  ret i32 %bop2468
}


define %A* @_A_ctor (%A* %_this1){
__fresh555:
  %mem_ptr2460 = call i32* @oat_malloc ( i32 8 )
  %obj2461 = bitcast i32* %mem_ptr2460 to %Object* 
  %new_obj2462 = call %Object* @_Object_ctor ( %Object* %obj2461 )
  %_this1 = bitcast %Object* %new_obj2462 to %A 
  %_name2463 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str453, i8** %_name2463
  %this_vtable2464 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable449, %_A_vtable** %this_vtable2464
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh554:
  %_name2458 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2459 = load i8** %_name2458
  ret i8* %lhs_or_call2459
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh553:
  %_name2456 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str452, i8** %_name2456
  %this_vtable2457 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable448, %_Object_vtable** %this_vtable2457
  ret %Object* %_this1
}


