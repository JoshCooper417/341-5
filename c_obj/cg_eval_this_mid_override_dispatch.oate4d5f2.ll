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


define i32 @program (i32 %argc2506, { i32, [ 0 x i8* ] }* %argv2504){
__fresh562:
  %argc_slot2507 = alloca i32
  store i32 %argc2506, i32* %argc_slot2507
  %argv_slot2505 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2504, { i32, [ 0 x i8* ] }** %argv_slot2505
  %mem_ptr2508 = call i32* @oat_malloc ( i32 8 )
  %obj2509 = bitcast i32* %mem_ptr2508 to %C* 
  %new_obj2510 = call %C* @_C_ctor ( %C* %obj2509 )
  %vdecl_slot2511 = alloca %C*
  store %C* %new_obj2510, %C** %vdecl_slot2511
  %lhs_or_call2512 = load %C** %vdecl_slot2511
  %vtable_ptr2513 = getelementptr %C* %lhs_or_call2512, i32 0
  %vtable2514 = load %_C_vtable** %vtable_ptr2513
  %call2516 = getelementptr %_C_vtable* %vtable2514, i32 0, i32 4
  %call2515 = load i32 (%C*)** %call2516
  %cast_op2517 = bitcast %C %lhs_or_call2512 to %C* 
  %ret2518 = call i32 %call2515 ( %C* %cast_op2517 )
  ret i32 %ret2518
}


define i32 @_C_call (%C* %_this1){
__fresh561:
  %vtable_ptr2498 = getelementptr %C* %_this1, i32 0
  %vtable2499 = load %_C_vtable** %vtable_ptr2498
  %over2501 = getelementptr %_C_vtable* %vtable2499, i32 0, i32 2
  %over2500 = load i32 (%B*, i32)** %over2501
  %cast_op2502 = bitcast %C %_this1 to %B* 
  %ret2503 = call i32 %over2500 ( %B* %cast_op2502, i32 3 )
  ret i32 %ret2503
}


define i32 @_C_notover (%C* %_this1, i32 %x2494){
__fresh560:
  %x_slot2495 = alloca i32
  store i32 %x2494, i32* %x_slot2495
  %lhs_or_call2496 = load i32* %x_slot2495
  %bop2497 = add i32 %lhs_or_call2496, 1
  ret i32 %bop2497
}


define %C* @_C_ctor (%C* %_this1){
__fresh559:
  %mem_ptr2489 = call i32* @oat_malloc ( i32 8 )
  %obj2490 = bitcast i32* %mem_ptr2489 to %B* 
  %new_obj2491 = call %B* @_B_ctor ( %B* %obj2490 )
  %_this1 = bitcast %B* %new_obj2491 to %C 
  %_name2492 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str455, i8** %_name2492
  %this_vtable2493 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable451, %_C_vtable** %this_vtable2493
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2485){
__fresh558:
  %x_slot2486 = alloca i32
  store i32 %x2485, i32* %x_slot2486
  %lhs_or_call2487 = load i32* %x_slot2486
  %bop2488 = add i32 %lhs_or_call2487, 2
  ret i32 %bop2488
}


define %B* @_B_ctor (%B* %_this1){
__fresh557:
  %mem_ptr2480 = call i32* @oat_malloc ( i32 8 )
  %obj2481 = bitcast i32* %mem_ptr2480 to %A* 
  %new_obj2482 = call %A* @_A_ctor ( %A* %obj2481 )
  %_this1 = bitcast %A* %new_obj2482 to %B 
  %_name2483 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %_name2483
  %this_vtable2484 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable450, %_B_vtable** %this_vtable2484
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2476){
__fresh556:
  %x_slot2477 = alloca i32
  store i32 %x2476, i32* %x_slot2477
  %lhs_or_call2478 = load i32* %x_slot2477
  %bop2479 = add i32 %lhs_or_call2478, 1
  ret i32 %bop2479
}


define %A* @_A_ctor (%A* %_this1){
__fresh555:
  %mem_ptr2471 = call i32* @oat_malloc ( i32 8 )
  %obj2472 = bitcast i32* %mem_ptr2471 to %Object* 
  %new_obj2473 = call %Object* @_Object_ctor ( %Object* %obj2472 )
  %_this1 = bitcast %Object* %new_obj2473 to %A 
  %_name2474 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str453, i8** %_name2474
  %this_vtable2475 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable449, %_A_vtable** %this_vtable2475
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh554:
  %_name2469 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2470 = load i8** %_name2469
  ret i8* %lhs_or_call2470
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh553:
  %_name2467 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str452, i8** %_name2467
  %this_vtable2468 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable448, %_Object_vtable** %this_vtable2468
  ret %Object* %_this1
}


