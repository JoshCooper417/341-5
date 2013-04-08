%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)* }
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
@a233 = global %A* zeroinitializer, align 4		; initialized by @a233.init234
@_C_vtable232 = private constant %_C_vtable {%_B_vtable* @_B_vtable231, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable231 = private constant %_B_vtable {%_A_vtable* @_A_vtable230, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo}, align 4
@_A_vtable230 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable229, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo}, align 4
@_Object_vtable229 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh457:
  call void @a233.init234(  )
  ret void
}


define i32 @program (i32 %argc2649, { i32, [ 0 x i8* ] }* %argv2647){
__fresh456:
  %argc_slot2650 = alloca i32
  store i32 %argc2649, i32* %argc_slot2650
  %argv_slot2648 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2647, { i32, [ 0 x i8* ] }** %argv_slot2648
  %lhs_or_call2651 = load %A** @a233
  %foo2653 = getelementptr %_A_vtable* @_A_vtable230, i32 0, i32 3
  %foo2652 = load i32 (%A*, i32)** %foo2653
  %cast_op2654 = bitcast %A %lhs_or_call2651 to %A* 
  %ret2655 = call i32 %foo2652 ( %A* %cast_op2654, i32 3 )
  ret i32 %ret2655
}


define void @a233.init234 (){
__fresh455:
  %mem_ptr2643 = call i32* @oat_malloc ( i32 8 )
  %obj2644 = bitcast i32* %mem_ptr2643 to %C* 
  %new_obj2645 = call %C* @_C_ctor ( %C* %obj2644 )
  %cast_op2646 = bitcast %C* %new_obj2645 to %A* 
  store %A* %cast_op2646, %A** @a233
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2639){
__fresh454:
  %x_slot2640 = alloca i32
  store i32 %x2639, i32* %x_slot2640
  %lhs_or_call2641 = load i32* %x_slot2640
  %bop2642 = add i32 %lhs_or_call2641, 1
  ret i32 %bop2642
}


define %C* @_C_ctor (%C* %_this1){
__fresh453:
  %lhs_or_call2630 = load %C* %_this1
  %cast_op2631 = bitcast %C %lhs_or_call2630 to %B* 
  %mem_ptr2632 = call i32* @oat_malloc ( i32 8 )
  %obj2633 = bitcast i32* %mem_ptr2632 to %B* 
  %new_obj2634 = call %B* @_B_ctor ( %B* %obj2633, %B* %cast_op2631 )
  %_name2635 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call2636 = load %C* %_this1
  %cast_op2637 = bitcast %C %lhs_or_call2636 to i8* 
  store i8* %cast_op2637, i8** %_name2635
  %this_vtable2638 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable2638
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2626){
__fresh452:
  %x_slot2627 = alloca i32
  store i32 %x2626, i32* %x_slot2627
  %lhs_or_call2628 = load i32* %x_slot2627
  %bop2629 = add i32 %lhs_or_call2628, 2
  ret i32 %bop2629
}


define %B* @_B_ctor (%B* %_this1){
__fresh451:
  %lhs_or_call2617 = load %B* %_this1
  %cast_op2618 = bitcast %B %lhs_or_call2617 to %A* 
  %mem_ptr2619 = call i32* @oat_malloc ( i32 8 )
  %obj2620 = bitcast i32* %mem_ptr2619 to %A* 
  %new_obj2621 = call %A* @_A_ctor ( %A* %obj2620, %A* %cast_op2618 )
  %_name2622 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call2623 = load %B* %_this1
  %cast_op2624 = bitcast %B %lhs_or_call2623 to i8* 
  store i8* %cast_op2624, i8** %_name2622
  %this_vtable2625 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2625
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2613){
__fresh450:
  %x_slot2614 = alloca i32
  store i32 %x2613, i32* %x_slot2614
  %lhs_or_call2615 = load i32* %x_slot2614
  %bop2616 = add i32 %lhs_or_call2615, 8
  ret i32 %bop2616
}


define i32 @_A_over (%A* %_this1, i32 %x2609){
__fresh449:
  %x_slot2610 = alloca i32
  store i32 %x2609, i32* %x_slot2610
  %lhs_or_call2611 = load i32* %x_slot2610
  %bop2612 = add i32 %lhs_or_call2611, 1
  ret i32 %bop2612
}


define %A* @_A_ctor (%A* %_this1){
__fresh448:
  %lhs_or_call2600 = load %A* %_this1
  %cast_op2601 = bitcast %A %lhs_or_call2600 to %Object* 
  %mem_ptr2602 = call i32* @oat_malloc ( i32 8 )
  %obj2603 = bitcast i32* %mem_ptr2602 to %Object* 
  %new_obj2604 = call %Object* @_Object_ctor ( %Object* %obj2603, %Object* %cast_op2601 )
  %_name2605 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2606 = load %A* %_this1
  %cast_op2607 = bitcast %A %lhs_or_call2606 to i8* 
  store i8* %cast_op2607, i8** %_name2605
  %this_vtable2608 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2608
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh447:
  %_name2598 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2599 = load i8** %_name2598
  ret i8* %lhs_or_call2599
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh446:
  %_name2594 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2595 = load %Object* %_this1
  %cast_op2596 = bitcast %Object %lhs_or_call2595 to i8* 
  store i8* %cast_op2596, i8** %_name2594
  %this_vtable2597 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2597
  ret %Object* %_this1
}


