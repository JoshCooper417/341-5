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


define i32 @program (i32 %argc2566, { i32, [ 0 x i8* ] }* %argv2564){
__fresh577:
  %argc_slot2567 = alloca i32
  store i32 %argc2566, i32* %argc_slot2567
  %argv_slot2565 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2564, { i32, [ 0 x i8* ] }** %argv_slot2565
  %lhs_or_call2568 = load %A** @a464
  %vtable_ptr2569 = getelementptr %A* %lhs_or_call2568, i32 0
  %vtable2570 = load %_A_vtable** %vtable_ptr2569
  %call2572 = getelementptr %_A_vtable* %vtable2570, i32 0, i32 4
  %call2571 = load i32 (%A*)** %call2572
  %cast_op2573 = bitcast %A %lhs_or_call2568 to %A* 
  %ret2574 = call i32 %call2571 ( %A* %cast_op2573 )
  ret i32 %ret2574
}


define void @a464.init465 (){
__fresh576:
  %mem_ptr2560 = call i32* @oat_malloc ( i32 8 )
  %obj2561 = bitcast i32* %mem_ptr2560 to %C* 
  %new_obj2562 = call %C* @_C_ctor ( %C* %obj2561 )
  %cast_op2563 = bitcast %C* %new_obj2562 to %A* 
  store %A* %cast_op2563, %A** @a464
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh575:
  %vtable_ptr2554 = getelementptr %C* %_this1, i32 0
  %vtable2555 = load %_C_vtable** %vtable_ptr2554
  %foo2557 = getelementptr %_C_vtable* %vtable2555, i32 0, i32 3
  %foo2556 = load i32 (%A*, i32)** %foo2557
  %cast_op2558 = bitcast %C %_this1 to %A* 
  %ret2559 = call i32 %foo2556 ( %A* %cast_op2558, i32 3 )
  ret i32 %ret2559
}


define i32 @_C_notover (%C* %_this1, i32 %x2550){
__fresh574:
  %x_slot2551 = alloca i32
  store i32 %x2550, i32* %x_slot2551
  %lhs_or_call2552 = load i32* %x_slot2551
  %bop2553 = add i32 %lhs_or_call2552, 1
  ret i32 %bop2553
}


define %C* @_C_ctor (%C* %_this1){
__fresh573:
  %mem_ptr2545 = call i32* @oat_malloc ( i32 8 )
  %obj2546 = bitcast i32* %mem_ptr2545 to %B* 
  %new_obj2547 = call %B* @_B_ctor ( %B* %obj2546 )
  %_this1 = bitcast %B* %new_obj2547 to %C 
  %_name2548 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2548
  %this_vtable2549 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable459, %_C_vtable** %this_vtable2549
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh572:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2541){
__fresh571:
  %x_slot2542 = alloca i32
  store i32 %x2541, i32* %x_slot2542
  %lhs_or_call2543 = load i32* %x_slot2542
  %bop2544 = add i32 %lhs_or_call2543, 2
  ret i32 %bop2544
}


define %B* @_B_ctor (%B* %_this1){
__fresh570:
  %mem_ptr2536 = call i32* @oat_malloc ( i32 8 )
  %obj2537 = bitcast i32* %mem_ptr2536 to %A* 
  %new_obj2538 = call %A* @_A_ctor ( %A* %obj2537 )
  %_this1 = bitcast %A* %new_obj2538 to %B 
  %_name2539 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str462, i8** %_name2539
  %this_vtable2540 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable458, %_B_vtable** %this_vtable2540
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh569:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2532){
__fresh568:
  %x_slot2533 = alloca i32
  store i32 %x2532, i32* %x_slot2533
  %lhs_or_call2534 = load i32* %x_slot2533
  %bop2535 = add i32 %lhs_or_call2534, 8
  ret i32 %bop2535
}


define i32 @_A_over (%A* %_this1, i32 %x2528){
__fresh567:
  %x_slot2529 = alloca i32
  store i32 %x2528, i32* %x_slot2529
  %lhs_or_call2530 = load i32* %x_slot2529
  %bop2531 = add i32 %lhs_or_call2530, 1
  ret i32 %bop2531
}


define %A* @_A_ctor (%A* %_this1){
__fresh566:
  %mem_ptr2523 = call i32* @oat_malloc ( i32 8 )
  %obj2524 = bitcast i32* %mem_ptr2523 to %Object* 
  %new_obj2525 = call %Object* @_Object_ctor ( %Object* %obj2524 )
  %_this1 = bitcast %Object* %new_obj2525 to %A 
  %_name2526 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str461, i8** %_name2526
  %this_vtable2527 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable457, %_A_vtable** %this_vtable2527
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh565:
  %_name2521 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2522 = load i8** %_name2521
  ret i8* %lhs_or_call2522
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh564:
  %_name2519 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str460, i8** %_name2519
  %this_vtable2520 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable456, %_Object_vtable** %this_vtable2520
  ret %Object* %_this1
}


