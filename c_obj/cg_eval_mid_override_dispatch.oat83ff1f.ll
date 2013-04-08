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
@a227 = global %A* zeroinitializer, align 4		; initialized by @a227.init228
@_C_vtable226 = private constant %_C_vtable {%_B_vtable* @_B_vtable225, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable225 = private constant %_B_vtable {%_A_vtable* @_A_vtable224, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable224 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable223, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable223 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh445:
  call void @a227.init228(  )
  ret void
}


define i32 @program (i32 %argc2587, { i32, [ 0 x i8* ] }* %argv2585){
__fresh444:
  %argc_slot2588 = alloca i32
  store i32 %argc2587, i32* %argc_slot2588
  %argv_slot2586 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2585, { i32, [ 0 x i8* ] }** %argv_slot2586
  %lhs_or_call2589 = load %A** @a227
  %over2591 = getelementptr %_A_vtable* @_A_vtable224, i32 0, i32 2
  %over2590 = load i32 (%A*, i32)** %over2591
  %cast_op2592 = bitcast %A %lhs_or_call2589 to %A* 
  %ret2593 = call i32 %over2590 ( %A* %cast_op2592, i32 3 )
  ret i32 %ret2593
}


define void @a227.init228 (){
__fresh443:
  %mem_ptr2581 = call i32* @oat_malloc ( i32 8 )
  %obj2582 = bitcast i32* %mem_ptr2581 to %C* 
  %new_obj2583 = call %C* @_C_ctor ( %C* %obj2582 )
  %cast_op2584 = bitcast %C* %new_obj2583 to %A* 
  store %A* %cast_op2584, %A** @a227
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2577){
__fresh442:
  %x_slot2578 = alloca i32
  store i32 %x2577, i32* %x_slot2578
  %lhs_or_call2579 = load i32* %x_slot2578
  %bop2580 = add i32 %lhs_or_call2579, 1
  ret i32 %bop2580
}


define %C* @_C_ctor (%C* %_this1){
__fresh441:
  %lhs_or_call2568 = load %C* %_this1
  %cast_op2569 = bitcast %C %lhs_or_call2568 to %B* 
  %mem_ptr2570 = call i32* @oat_malloc ( i32 8 )
  %obj2571 = bitcast i32* %mem_ptr2570 to %B* 
  %new_obj2572 = call %B* @_B_ctor ( %B* %obj2571, %B* %cast_op2569 )
  %_name2573 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call2574 = load %C* %_this1
  %cast_op2575 = bitcast %C %lhs_or_call2574 to i8* 
  store i8* %cast_op2575, i8** %_name2573
  %this_vtable2576 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable2576
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2564){
__fresh440:
  %x_slot2565 = alloca i32
  store i32 %x2564, i32* %x_slot2565
  %lhs_or_call2566 = load i32* %x_slot2565
  %bop2567 = add i32 %lhs_or_call2566, 2
  ret i32 %bop2567
}


define %B* @_B_ctor (%B* %_this1){
__fresh439:
  %lhs_or_call2555 = load %B* %_this1
  %cast_op2556 = bitcast %B %lhs_or_call2555 to %A* 
  %mem_ptr2557 = call i32* @oat_malloc ( i32 8 )
  %obj2558 = bitcast i32* %mem_ptr2557 to %A* 
  %new_obj2559 = call %A* @_A_ctor ( %A* %obj2558, %A* %cast_op2556 )
  %_name2560 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call2561 = load %B* %_this1
  %cast_op2562 = bitcast %B %lhs_or_call2561 to i8* 
  store i8* %cast_op2562, i8** %_name2560
  %this_vtable2563 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2563
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2551){
__fresh438:
  %x_slot2552 = alloca i32
  store i32 %x2551, i32* %x_slot2552
  %lhs_or_call2553 = load i32* %x_slot2552
  %bop2554 = add i32 %lhs_or_call2553, 1
  ret i32 %bop2554
}


define %A* @_A_ctor (%A* %_this1){
__fresh437:
  %lhs_or_call2542 = load %A* %_this1
  %cast_op2543 = bitcast %A %lhs_or_call2542 to %Object* 
  %mem_ptr2544 = call i32* @oat_malloc ( i32 8 )
  %obj2545 = bitcast i32* %mem_ptr2544 to %Object* 
  %new_obj2546 = call %Object* @_Object_ctor ( %Object* %obj2545, %Object* %cast_op2543 )
  %_name2547 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2548 = load %A* %_this1
  %cast_op2549 = bitcast %A %lhs_or_call2548 to i8* 
  store i8* %cast_op2549, i8** %_name2547
  %this_vtable2550 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2550
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh436:
  %_name2540 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2541 = load i8** %_name2540
  ret i8* %lhs_or_call2541
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh435:
  %_name2536 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2537 = load %Object* %_this1
  %cast_op2538 = bitcast %Object %lhs_or_call2537 to i8* 
  store i8* %cast_op2538, i8** %_name2536
  %this_vtable2539 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2539
  ret %Object* %_this1
}


