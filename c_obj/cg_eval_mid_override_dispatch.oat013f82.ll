%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%C*, i32)* }
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
@a429 = global %A* zeroinitializer, align 4		; initialized by @a429.init430
@_const_str428.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str428 = alias bitcast([ 2 x i8 ]* @_const_str428.str. to i8*)@_const_str427.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str427 = alias bitcast([ 2 x i8 ]* @_const_str427.str. to i8*)@_const_str426.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str426 = alias bitcast([ 2 x i8 ]* @_const_str426.str. to i8*)@_const_str425.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str425 = alias bitcast([ 7 x i8 ]* @_const_str425.str. to i8*)@_C_vtable424 = private constant %_C_vtable {%_B_vtable* @_B_vtable423, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable423 = private constant %_B_vtable {%_A_vtable* @_A_vtable422, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable422 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable421, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable421 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh699:
  call void @a429.init430(  )
  ret void
}


define i32 @program (i32 %argc2510, { i32, [ 0 x i8* ] }* %argv2508){
__fresh698:
  %argc_slot2511 = alloca i32
  store i32 %argc2510, i32* %argc_slot2511
  %argv_slot2509 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2508, { i32, [ 0 x i8* ] }** %argv_slot2509
  %lhs_or_call2512 = load %A** @a429
  %vtable_ptr2513 = getelementptr %A* %lhs_or_call2512, i32 0
  %vtable2514 = load %_A_vtable** %vtable_ptr2513
  %over2516 = getelementptr %_A_vtable* %vtable2514, i32 0, i32 2
  %over2515 = load i32 (%A*, i32)** %over2516
  %cast_op2517 = bitcast %A %lhs_or_call2512 to %A* 
  %ret2518 = call i32 %over2515 ( %A* %cast_op2517, i32 3 )
  ret i32 %ret2518
}


define void @a429.init430 (){
__fresh697:
  %mem_ptr2504 = call i32* @oat_malloc ( i32 8 )
  %obj2505 = bitcast i32* %mem_ptr2504 to %C* 
  %new_obj2506 = call %C* @_C_ctor ( %C* %obj2505 )
  %cast_op2507 = bitcast %C* %new_obj2506 to %A* 
  store %A* %cast_op2507, %A** @a429
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2500){
__fresh696:
  %x_slot2501 = alloca i32
  store i32 %x2500, i32* %x_slot2501
  %lhs_or_call2502 = load i32* %x_slot2501
  %bop2503 = add i32 %lhs_or_call2502, 1
  ret i32 %bop2503
}


define %C* @_C_ctor (%C* %_this1){
__fresh695:
  %mem_ptr2495 = call i32* @oat_malloc ( i32 8 )
  %obj2496 = bitcast i32* %mem_ptr2495 to %B* 
  %new_obj2497 = call %B* @_B_ctor ( %B* %obj2496 )
  %_this1 = bitcast %B* %new_obj2497 to %C 
  %_name2498 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2498
  %this_vtable2499 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable424, %_C_vtable** %this_vtable2499
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2491){
__fresh694:
  %x_slot2492 = alloca i32
  store i32 %x2491, i32* %x_slot2492
  %lhs_or_call2493 = load i32* %x_slot2492
  %bop2494 = add i32 %lhs_or_call2493, 2
  ret i32 %bop2494
}


define %B* @_B_ctor (%B* %_this1){
__fresh693:
  %mem_ptr2486 = call i32* @oat_malloc ( i32 8 )
  %obj2487 = bitcast i32* %mem_ptr2486 to %A* 
  %new_obj2488 = call %A* @_A_ctor ( %A* %obj2487 )
  %_this1 = bitcast %A* %new_obj2488 to %B 
  %_name2489 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str427, i8** %_name2489
  %this_vtable2490 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable423, %_B_vtable** %this_vtable2490
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2482){
__fresh692:
  %x_slot2483 = alloca i32
  store i32 %x2482, i32* %x_slot2483
  %lhs_or_call2484 = load i32* %x_slot2483
  %bop2485 = add i32 %lhs_or_call2484, 1
  ret i32 %bop2485
}


define %A* @_A_ctor (%A* %_this1){
__fresh691:
  %mem_ptr2477 = call i32* @oat_malloc ( i32 8 )
  %obj2478 = bitcast i32* %mem_ptr2477 to %Object* 
  %new_obj2479 = call %Object* @_Object_ctor ( %Object* %obj2478 )
  %_this1 = bitcast %Object* %new_obj2479 to %A 
  %_name2480 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str426, i8** %_name2480
  %this_vtable2481 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable422, %_A_vtable** %this_vtable2481
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh690:
  %_name2475 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2476 = load i8** %_name2475
  ret i8* %lhs_or_call2476
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh689:
  %_name2473 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str425, i8** %_name2473
  %this_vtable2474 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable421, %_Object_vtable** %this_vtable2474
  ret %Object* %_this1
}


