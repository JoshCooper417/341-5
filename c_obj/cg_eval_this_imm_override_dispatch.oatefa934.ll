%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%B*)* }
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
@_const_str456.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str456 = alias bitcast([ 2 x i8 ]* @_const_str456.str. to i8*)@_const_str455.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str455 = alias bitcast([ 2 x i8 ]* @_const_str455.str. to i8*)@_const_str454.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str454 = alias bitcast([ 7 x i8 ]* @_const_str454.str. to i8*)@_B_vtable453 = private constant %_B_vtable {%_A_vtable* @_A_vtable452, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%B*)* @_B_call}, align 4
@_A_vtable452 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable451, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable451 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh782:
  ret void
}


define i32 @program (i32 %argc2653, { i32, [ 0 x i8* ] }* %argv2651){
__fresh781:
  %argc_slot2654 = alloca i32
  store i32 %argc2653, i32* %argc_slot2654
  %argv_slot2652 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2651, { i32, [ 0 x i8* ] }** %argv_slot2652
  %mem_ptr2655 = call i32* @oat_malloc ( i32 8 )
  %obj2656 = bitcast i32* %mem_ptr2655 to %B* 
  %new_obj2657 = call %B* @_B_ctor ( %B* %obj2656 )
  %vdecl_slot2658 = alloca %B*
  store %B* %new_obj2657, %B** %vdecl_slot2658
  %lhs_or_call2659 = load %B** %vdecl_slot2658
  %vtable_ptr2660 = getelementptr %B* %lhs_or_call2659, i32 0
  %vtable2661 = load %_B_vtable** %vtable_ptr2660
  %call2663 = getelementptr %_B_vtable* %vtable2661, i32 0, i32 3
  %call2662 = load i32 (%B*)** %call2663
  %cast_op2664 = bitcast %B %lhs_or_call2659 to %B* 
  %ret2665 = call i32 %call2662 ( %B* %cast_op2664 )
  ret i32 %ret2665
}


define i32 @_B_call (%B* %_this1){
__fresh780:
  %vtable_ptr2645 = getelementptr %B* %_this1, i32 0
  %vtable2646 = load %_B_vtable** %vtable_ptr2645
  %over2648 = getelementptr %_B_vtable* %vtable2646, i32 0, i32 2
  %over2647 = load i32 (%B*, i32)** %over2648
  %cast_op2649 = bitcast %B %_this1 to %B* 
  %ret2650 = call i32 %over2647 ( %B* %cast_op2649, i32 3 )
  ret i32 %ret2650
}


define i32 @_B_over (%B* %_this1, i32 %x2641){
__fresh779:
  %x_slot2642 = alloca i32
  store i32 %x2641, i32* %x_slot2642
  %lhs_or_call2643 = load i32* %x_slot2642
  %bop2644 = add i32 %lhs_or_call2643, 2
  ret i32 %bop2644
}


define %B* @_B_ctor (%B* %_this1){
__fresh778:
  %mem_ptr2636 = call i32* @oat_malloc ( i32 8 )
  %obj2637 = bitcast i32* %mem_ptr2636 to %A* 
  %new_obj2638 = call %A* @_A_ctor ( %A* %obj2637 )
  %_this1 = bitcast %A* %new_obj2638 to %B 
  %_name2639 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str456, i8** %_name2639
  %this_vtable2640 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable453, %_B_vtable** %this_vtable2640
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2632){
__fresh777:
  %x_slot2633 = alloca i32
  store i32 %x2632, i32* %x_slot2633
  %lhs_or_call2634 = load i32* %x_slot2633
  %bop2635 = add i32 %lhs_or_call2634, 1
  ret i32 %bop2635
}


define %A* @_A_ctor (%A* %_this1){
__fresh776:
  %mem_ptr2627 = call i32* @oat_malloc ( i32 8 )
  %obj2628 = bitcast i32* %mem_ptr2627 to %Object* 
  %new_obj2629 = call %Object* @_Object_ctor ( %Object* %obj2628 )
  %_this1 = bitcast %Object* %new_obj2629 to %A 
  %_name2630 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str455, i8** %_name2630
  %this_vtable2631 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable452, %_A_vtable** %this_vtable2631
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh775:
  %_name2625 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2626 = load i8** %_name2625
  ret i8* %lhs_or_call2626
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh774:
  %_name2623 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %_name2623
  %this_vtable2624 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable451, %_Object_vtable** %this_vtable2624
  ret %Object* %_this1
}


