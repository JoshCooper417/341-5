%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)*, i32 (%A*)* }
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
@a464 = global %A* zeroinitializer, align 4		; initialized by @a464.init465
@_const_str463.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str463 = alias bitcast([ 2 x i8 ]* @_const_str463.str. to i8*)@_const_str462.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str462 = alias bitcast([ 2 x i8 ]* @_const_str462.str. to i8*)@_const_str461.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str461 = alias bitcast([ 2 x i8 ]* @_const_str461.str. to i8*)@_const_str460.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str460 = alias bitcast([ 7 x i8 ]* @_const_str460.str. to i8*)@_C_vtable459 = private constant %_C_vtable {%_B_vtable* @_B_vtable458, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*)* @_C_call, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable458 = private constant %_B_vtable {%_A_vtable* @_A_vtable457, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%B*)* @_B_call}, align 4
@_A_vtable457 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable456, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo, i32 (%A*)* @_A_call}, align 4
@_Object_vtable456 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh578:
  call void @a464.init465(  )
  ret void
}


define i32 @program (i32 %argc2555, { i32, [ 0 x i8* ] }* %argv2553){
__fresh577:
  %argc_slot2556 = alloca i32
  store i32 %argc2555, i32* %argc_slot2556
  %argv_slot2554 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2553, { i32, [ 0 x i8* ] }** %argv_slot2554
  %lhs_or_call2557 = load %A** @a464
  %vtable_ptr2558 = getelementptr %A* %lhs_or_call2557, i32 0
  %vtable2559 = load %_A_vtable** %vtable_ptr2558
  %call2561 = getelementptr %_A_vtable* %vtable2559, i32 0, i32 4
  %call2560 = load i32 (%A*)** %call2561
  %cast_op2562 = bitcast %A %lhs_or_call2557 to %A* 
  %ret2563 = call i32 %call2560 ( %A* %cast_op2562 )
  ret i32 %ret2563
}


define void @a464.init465 (){
__fresh576:
  %mem_ptr2549 = call i32* @oat_malloc ( i32 8 )
  %obj2550 = bitcast i32* %mem_ptr2549 to %C* 
  %new_obj2551 = call %C* @_C_ctor ( %C* %obj2550 )
  %cast_op2552 = bitcast %C* %new_obj2551 to %A* 
  store %A* %cast_op2552, %A** @a464
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh575:
  %vtable_ptr2543 = getelementptr %C* %_this1, i32 0
  %vtable2544 = load %_C_vtable** %vtable_ptr2543
  %foo2546 = getelementptr %_C_vtable* %vtable2544, i32 0, i32 3
  %foo2545 = load i32 (%A*, i32)** %foo2546
  %cast_op2547 = bitcast %C %_this1 to %A* 
  %ret2548 = call i32 %foo2545 ( %A* %cast_op2547, i32 3 )
  ret i32 %ret2548
}


define i32 @_C_notover (%C* %_this1, i32 %x2539){
__fresh574:
  %x_slot2540 = alloca i32
  store i32 %x2539, i32* %x_slot2540
  %lhs_or_call2541 = load i32* %x_slot2540
  %bop2542 = add i32 %lhs_or_call2541, 1
  ret i32 %bop2542
}


define %C* @_C_ctor (%C* %_this1){
__fresh573:
  %mem_ptr2534 = call i32* @oat_malloc ( i32 8 )
  %obj2535 = bitcast i32* %mem_ptr2534 to %B* 
  %new_obj2536 = call %B* @_B_ctor ( %B* %obj2535 )
  %_this1 = bitcast %B* %new_obj2536 to %C 
  %_name2537 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2537
  %this_vtable2538 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable459, %_C_vtable** %this_vtable2538
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh572:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2530){
__fresh571:
  %x_slot2531 = alloca i32
  store i32 %x2530, i32* %x_slot2531
  %lhs_or_call2532 = load i32* %x_slot2531
  %bop2533 = add i32 %lhs_or_call2532, 2
  ret i32 %bop2533
}


define %B* @_B_ctor (%B* %_this1){
__fresh570:
  %mem_ptr2525 = call i32* @oat_malloc ( i32 8 )
  %obj2526 = bitcast i32* %mem_ptr2525 to %A* 
  %new_obj2527 = call %A* @_A_ctor ( %A* %obj2526 )
  %_this1 = bitcast %A* %new_obj2527 to %B 
  %_name2528 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str462, i8** %_name2528
  %this_vtable2529 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable458, %_B_vtable** %this_vtable2529
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh569:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2521){
__fresh568:
  %x_slot2522 = alloca i32
  store i32 %x2521, i32* %x_slot2522
  %lhs_or_call2523 = load i32* %x_slot2522
  %bop2524 = add i32 %lhs_or_call2523, 8
  ret i32 %bop2524
}


define i32 @_A_over (%A* %_this1, i32 %x2517){
__fresh567:
  %x_slot2518 = alloca i32
  store i32 %x2517, i32* %x_slot2518
  %lhs_or_call2519 = load i32* %x_slot2518
  %bop2520 = add i32 %lhs_or_call2519, 1
  ret i32 %bop2520
}


define %A* @_A_ctor (%A* %_this1){
__fresh566:
  %mem_ptr2512 = call i32* @oat_malloc ( i32 8 )
  %obj2513 = bitcast i32* %mem_ptr2512 to %Object* 
  %new_obj2514 = call %Object* @_Object_ctor ( %Object* %obj2513 )
  %_this1 = bitcast %Object* %new_obj2514 to %A 
  %_name2515 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str461, i8** %_name2515
  %this_vtable2516 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable457, %_A_vtable** %this_vtable2516
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh565:
  %_name2510 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2511 = load i8** %_name2510
  ret i8* %lhs_or_call2511
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh564:
  %_name2508 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str460, i8** %_name2508
  %this_vtable2509 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable456, %_Object_vtable** %this_vtable2509
  ret %Object* %_this1
}


