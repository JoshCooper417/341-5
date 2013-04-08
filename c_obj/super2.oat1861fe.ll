%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)*, void (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)* }
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
@_const_str549.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str549 = alias bitcast([ 2 x i8 ]* @_const_str549.str. to i8*)@_const_str548.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str548 = alias bitcast([ 2 x i8 ]* @_const_str548.str. to i8*)@_const_str547.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str547 = alias bitcast([ 2 x i8 ]* @_const_str547.str. to i8*)@_const_str546.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str546 = alias bitcast([ 2 x i8 ]* @_const_str546.str. to i8*)@_const_str545.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str545 = alias bitcast([ 2 x i8 ]* @_const_str545.str. to i8*)@_const_str544.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str544 = alias bitcast([ 2 x i8 ]* @_const_str544.str. to i8*)@_const_str543.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str543 = alias bitcast([ 7 x i8 ]* @_const_str543.str. to i8*)@_C_vtable542 = private constant %_C_vtable {%_B_vtable* @_B_vtable541, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six, void (%C*)* @_C_f}, align 4
@_B_vtable541 = private constant %_B_vtable {%_A_vtable* @_A_vtable540, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six, void (%B*)* @_B_f}, align 4
@_A_vtable540 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable539, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six, void (%A*)* @_A_f}, align 4
@_Object_vtable539 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh594:
  ret void
}


define i32 @program (i32 %argc2673, { i32, [ 0 x i8* ] }* %argv2671){
__fresh593:
  %argc_slot2674 = alloca i32
  store i32 %argc2673, i32* %argc_slot2674
  %argv_slot2672 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2671, { i32, [ 0 x i8* ] }** %argv_slot2672
  %mem_ptr2675 = call i32* @oat_malloc ( i32 8 )
  %obj2676 = bitcast i32* %mem_ptr2675 to %C* 
  %new_obj2677 = call %C* @_C_ctor ( %C* %obj2676 )
  %vdecl_slot2678 = alloca %C*
  store %C* %new_obj2677, %C** %vdecl_slot2678
  %lhs_or_call2679 = load %C** %vdecl_slot2678
  %six2681 = getelementptr %_C_vtable* @_C_vtable542, i32 0, i32 2
  %six2680 = load i32 (%C*)** %six2681
  %cast_op2682 = bitcast %C %lhs_or_call2679 to %C* 
  %ret2683 = call i32 %six2680 ( %C* %cast_op2682 )
  %vdecl_slot2684 = alloca i32
  store i32 %ret2683, i32* %vdecl_slot2684
  %lhs_or_call2685 = load %C** %vdecl_slot2678
  %f2687 = getelementptr %_C_vtable* @_C_vtable542, i32 0, i32 3
  %f2686 = load void (%C*)** %f2687
  %cast_op2688 = bitcast %C %lhs_or_call2685 to %C* 
  call void %f2686( %C* %cast_op2688 )
  %lhs_or_call2689 = load i32* %vdecl_slot2684
  ret i32 %lhs_or_call2689
}


define void @_C_f (%C* %_this1){
__fresh592:
  call void @print_string( i8* @_const_str549 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh591:
  %six2667 = getelementptr %_C_vtable* @_C_vtable542, i32 0, i32 2
  %six2666 = load i32 (%C*)** %six2667
  %cast_op2668 = bitcast %C %_this1 to %C* 
  %ret2669 = call i32 %six2666 ( %C* %cast_op2668 )
  %bop2670 = add i32 %ret2669, 3
  ret i32 %bop2670
}


define %C* @_C_ctor (%C* %_this1){
__fresh590:
  %mem_ptr2661 = call i32* @oat_malloc ( i32 8 )
  %obj2662 = bitcast i32* %mem_ptr2661 to %B* 
  %new_obj2663 = call %B* @_B_ctor ( %B* %obj2662 )
  %_this1 = bitcast %B* %new_obj2663 to %C 
  %_name2664 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str548, i8** %_name2664
  %this_vtable2665 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable542, %_C_vtable** %this_vtable2665
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh589:
  call void @print_string( i8* @_const_str547 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh588:
  %six2657 = getelementptr %_B_vtable* @_B_vtable541, i32 0, i32 2
  %six2656 = load i32 (%B*)** %six2657
  %cast_op2658 = bitcast %B %_this1 to %B* 
  %ret2659 = call i32 %six2656 ( %B* %cast_op2658 )
  %bop2660 = add i32 %ret2659, 2
  ret i32 %bop2660
}


define %B* @_B_ctor (%B* %_this1){
__fresh587:
  %mem_ptr2651 = call i32* @oat_malloc ( i32 8 )
  %obj2652 = bitcast i32* %mem_ptr2651 to %A* 
  %new_obj2653 = call %A* @_A_ctor ( %A* %obj2652 )
  %_this1 = bitcast %A* %new_obj2653 to %B 
  %_name2654 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str546, i8** %_name2654
  %this_vtable2655 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable541, %_B_vtable** %this_vtable2655
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh586:
  call void @print_string( i8* @_const_str545 )
  ret void
}


define i32 @_A_six (%A* %_this1){
__fresh585:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh584:
  %mem_ptr2646 = call i32* @oat_malloc ( i32 8 )
  %obj2647 = bitcast i32* %mem_ptr2646 to %Object* 
  %new_obj2648 = call %Object* @_Object_ctor ( %Object* %obj2647 )
  %_this1 = bitcast %Object* %new_obj2648 to %A 
  %_name2649 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %_name2649
  %this_vtable2650 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable540, %_A_vtable** %this_vtable2650
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh583:
  %_name2644 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2645 = load i8** %_name2644
  ret i8* %lhs_or_call2645
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh582:
  %_name2642 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str543, i8** %_name2642
  %this_vtable2643 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable539, %_Object_vtable** %this_vtable2643
  ret %Object* %_this1
}


