%C = type { %_C_vtable*, i8*, i32, i32, i32, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, void (%C*)*, void (%C*, i32, i32)* }
%B = type { %_B_vtable*, i8*, i32, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@x500 = global i32 0, align 4
@a498 = global %A* zeroinitializer, align 4		; initialized by @a498.init499
@_const_str497.str. = private unnamed_addr constant [ 6 x i8 ] c "C: w=\00", align 4
@_const_str497 = alias bitcast([ 6 x i8 ]* @_const_str497.str. to i8*)@_const_str496.str. = private unnamed_addr constant [ 6 x i8 ] c "C: z=\00", align 4
@_const_str496 = alias bitcast([ 6 x i8 ]* @_const_str496.str. to i8*)@_const_str495.str. = private unnamed_addr constant [ 6 x i8 ] c "C: y=\00", align 4
@_const_str495 = alias bitcast([ 6 x i8 ]* @_const_str495.str. to i8*)@_const_str494.str. = private unnamed_addr constant [ 6 x i8 ] c "C: x=\00", align 4
@_const_str494 = alias bitcast([ 6 x i8 ]* @_const_str494.str. to i8*)@_const_str493.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: b=\00", align 4
@_const_str493 = alias bitcast([ 10 x i8 ]* @_const_str493.str. to i8*)@_const_str492.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: a=\00", align 4
@_const_str492 = alias bitcast([ 10 x i8 ]* @_const_str492.str. to i8*)@_const_str491.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str491 = alias bitcast([ 2 x i8 ]* @_const_str491.str. to i8*)@_const_str490.str. = private unnamed_addr constant [ 6 x i8 ] c "B: z=\00", align 4
@_const_str490 = alias bitcast([ 6 x i8 ]* @_const_str490.str. to i8*)@_const_str489.str. = private unnamed_addr constant [ 6 x i8 ] c "B: y=\00", align 4
@_const_str489 = alias bitcast([ 6 x i8 ]* @_const_str489.str. to i8*)@_const_str488.str. = private unnamed_addr constant [ 6 x i8 ] c "B: x=\00", align 4
@_const_str488 = alias bitcast([ 6 x i8 ]* @_const_str488.str. to i8*)@_const_str487.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str487 = alias bitcast([ 2 x i8 ]* @_const_str487.str. to i8*)@_const_str486.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str486 = alias bitcast([ 6 x i8 ]* @_const_str486.str. to i8*)@_const_str485.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str485 = alias bitcast([ 2 x i8 ]* @_const_str485.str. to i8*)@_const_str484.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str484 = alias bitcast([ 7 x i8 ]* @_const_str484.str. to i8*)@_C_vtable483 = private constant %_C_vtable {%_B_vtable* @_B_vtable482, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print, void (%C*, i32, i32)* @_C_foo}, align 4
@_B_vtable482 = private constant %_B_vtable {%_A_vtable* @_A_vtable481, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_print}, align 4
@_A_vtable481 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable480, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable480 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh610:
  call void @a498.init499(  )
  ret void
}


define i32 @program (i32 %argc2766, { i32, [ 0 x i8* ] }* %argv2764){
__fresh609:
  %argc_slot2767 = alloca i32
  store i32 %argc2766, i32* %argc_slot2767
  %argv_slot2765 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2764, { i32, [ 0 x i8* ] }** %argv_slot2765
  %lhs_or_call2768 = load i32* @x500
  %bop2769 = add i32 %lhs_or_call2768, 3
  %lhs_or_call2770 = load i32* @x500
  %bop2771 = add i32 %lhs_or_call2770, 2
  %lhs_or_call2772 = load i32* @x500
  %bop2773 = add i32 %lhs_or_call2772, 1
  %mem_ptr2774 = call i32* @oat_malloc ( i32 20 )
  %obj2775 = bitcast i32* %mem_ptr2774 to %B* 
  %new_obj2776 = call %B* @_B_ctor ( %B* %obj2775, i32 %bop2773, i32 %bop2771, i32 %bop2769 )
  %vdecl_slot2777 = alloca %B*
  store %B* %new_obj2776, %B** %vdecl_slot2777
  %mem_ptr2778 = call i32* @oat_malloc ( i32 24 )
  %obj2779 = bitcast i32* %mem_ptr2778 to %C* 
  %new_obj2780 = call %C* @_C_ctor ( %C* %obj2779, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2781 = alloca %C*
  store %C* %new_obj2780, %C** %vdecl_slot2781
  %lhs_or_call2782 = load %A** @a498
  %vtable_ptr2783 = getelementptr %A* %lhs_or_call2782, i32 0
  %vtable2784 = load %_A_vtable** %vtable_ptr2783
  %print2786 = getelementptr %_A_vtable* %vtable2784, i32 0, i32 2
  %print2785 = load void (%A*)** %print2786
  %cast_op2787 = bitcast %A %lhs_or_call2782 to %A* 
  call void %print2785( %A* %cast_op2787 )
  %lhs_or_call2788 = load %B** %vdecl_slot2777
  %vtable_ptr2789 = getelementptr %B* %lhs_or_call2788, i32 0
  %vtable2790 = load %_B_vtable** %vtable_ptr2789
  %print2792 = getelementptr %_B_vtable* %vtable2790, i32 0, i32 2
  %print2791 = load void (%B*)** %print2792
  %cast_op2793 = bitcast %B %lhs_or_call2788 to %B* 
  call void %print2791( %B* %cast_op2793 )
  %lhs_or_call2794 = load %C** %vdecl_slot2781
  %vtable_ptr2795 = getelementptr %C* %lhs_or_call2794, i32 0
  %vtable2796 = load %_C_vtable** %vtable_ptr2795
  %print2798 = getelementptr %_C_vtable* %vtable2796, i32 0, i32 2
  %print2797 = load void (%C*)** %print2798
  %cast_op2799 = bitcast %C %lhs_or_call2794 to %C* 
  call void %print2797( %C* %cast_op2799 )
  %lhs_or_call2800 = load i32* @x500
  %bop2801 = add i32 %lhs_or_call2800, 2
  %lhs_or_call2802 = load i32* @x500
  %bop2803 = add i32 %lhs_or_call2802, 1
  %lhs_or_call2804 = load %C** %vdecl_slot2781
  %vtable_ptr2805 = getelementptr %C* %lhs_or_call2804, i32 0
  %vtable2806 = load %_C_vtable** %vtable_ptr2805
  %foo2808 = getelementptr %_C_vtable* %vtable2806, i32 0, i32 3
  %foo2807 = load void (%C*, i32, i32)** %foo2808
  %cast_op2809 = bitcast %C %lhs_or_call2804 to %C* 
  call void %foo2807( %C* %cast_op2809, i32 %bop2803, i32 %bop2801 )
  ret i32 0
}


define void @a498.init499 (){
__fresh608:
  %mem_ptr2761 = call i32* @oat_malloc ( i32 12 )
  %obj2762 = bitcast i32* %mem_ptr2761 to %A* 
  %new_obj2763 = call %A* @_A_ctor ( %A* %obj2762, i32 3 )
  store %A* %new_obj2763, %A** @a498
  ret void
}


define void @_C_print (%C* %_this1){
__fresh607:
  %x2745 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2746 = load i32* %x2745
  %ret2747 = call i8* @string_of_int ( i32 %lhs_or_call2746 )
  %ret2748 = call i8* @string_cat ( i8* @_const_str494, i8* %ret2747 )
  call void @print_string( i8* %ret2748 )
  %y2749 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2750 = load i32* %y2749
  %ret2751 = call i8* @string_of_int ( i32 %lhs_or_call2750 )
  %ret2752 = call i8* @string_cat ( i8* @_const_str495, i8* %ret2751 )
  call void @print_string( i8* %ret2752 )
  %z2753 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2754 = load i32* %z2753
  %ret2755 = call i8* @string_of_int ( i32 %lhs_or_call2754 )
  %ret2756 = call i8* @string_cat ( i8* @_const_str496, i8* %ret2755 )
  call void @print_string( i8* %ret2756 )
  %w2757 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2758 = load i32* %w2757
  %ret2759 = call i8* @string_of_int ( i32 %lhs_or_call2758 )
  %ret2760 = call i8* @string_cat ( i8* @_const_str497, i8* %ret2759 )
  call void @print_string( i8* %ret2760 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2737, i32 %b2735){
__fresh606:
  %a_slot2738 = alloca i32
  store i32 %a2737, i32* %a_slot2738
  %b_slot2736 = alloca i32
  store i32 %b2735, i32* %b_slot2736
  %lhs_or_call2739 = load i32* %a_slot2738
  %ret2740 = call i8* @string_of_int ( i32 %lhs_or_call2739 )
  %ret2741 = call i8* @string_cat ( i8* @_const_str492, i8* %ret2740 )
  call void @print_string( i8* %ret2741 )
  %lhs_or_call2742 = load i32* %b_slot2736
  %ret2743 = call i8* @string_of_int ( i32 %lhs_or_call2742 )
  %ret2744 = call i8* @string_cat ( i8* @_const_str493, i8* %ret2743 )
  call void @print_string( i8* %ret2744 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2723, i32 %y2721, i32 %z2719, i32 %w2717){
__fresh605:
  %x_slot2724 = alloca i32
  store i32 %x2723, i32* %x_slot2724
  %y_slot2722 = alloca i32
  store i32 %y2721, i32* %y_slot2722
  %z_slot2720 = alloca i32
  store i32 %z2719, i32* %z_slot2720
  %w_slot2718 = alloca i32
  store i32 %w2717, i32* %w_slot2718
  %lhs_or_call2727 = load i32* %x_slot2724
  %lhs_or_call2728 = load i32* %y_slot2722
  %lhs_or_call2729 = load i32* %z_slot2720
  %mem_ptr2730 = call i32* @oat_malloc ( i32 20 )
  %obj2731 = bitcast i32* %mem_ptr2730 to %B* 
  %new_obj2732 = call %B* @_B_ctor ( %B* %obj2731, i32 %lhs_or_call2729, i32 %lhs_or_call2728, i32 %lhs_or_call2727 )
  %_this1 = bitcast %B* %new_obj2732 to %C 
  %_name2733 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str491, i8** %_name2733
  %this_vtable2734 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable483, %_C_vtable** %this_vtable2734
  %w2725 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2726 = load i32* %w_slot2718
  store i32 %lhs_or_call2726, i32* %w2725
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh604:
  %x2705 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2706 = load i32* %x2705
  %ret2707 = call i8* @string_of_int ( i32 %lhs_or_call2706 )
  %ret2708 = call i8* @string_cat ( i8* @_const_str488, i8* %ret2707 )
  call void @print_string( i8* %ret2708 )
  %y2709 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2710 = load i32* %y2709
  %ret2711 = call i8* @string_of_int ( i32 %lhs_or_call2710 )
  %ret2712 = call i8* @string_cat ( i8* @_const_str489, i8* %ret2711 )
  call void @print_string( i8* %ret2712 )
  %z2713 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2714 = load i32* %z2713
  %ret2715 = call i8* @string_of_int ( i32 %lhs_or_call2714 )
  %ret2716 = call i8* @string_cat ( i8* @_const_str490, i8* %ret2715 )
  call void @print_string( i8* %ret2716 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2693, i32 %y2691, i32 %z2689){
__fresh603:
  %x_slot2694 = alloca i32
  store i32 %x2693, i32* %x_slot2694
  %y_slot2692 = alloca i32
  store i32 %y2691, i32* %y_slot2692
  %z_slot2690 = alloca i32
  store i32 %z2689, i32* %z_slot2690
  %lhs_or_call2699 = load i32* %x_slot2694
  %mem_ptr2700 = call i32* @oat_malloc ( i32 12 )
  %obj2701 = bitcast i32* %mem_ptr2700 to %A* 
  %new_obj2702 = call %A* @_A_ctor ( %A* %obj2701, i32 %lhs_or_call2699 )
  %_this1 = bitcast %A* %new_obj2702 to %B 
  %_name2703 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str487, i8** %_name2703
  %this_vtable2704 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable482, %_B_vtable** %this_vtable2704
  %y2695 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2696 = load i32* %y_slot2692
  store i32 %lhs_or_call2696, i32* %y2695
  %z2697 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2698 = load i32* %z_slot2690
  store i32 %lhs_or_call2698, i32* %z2697
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh602:
  %x2685 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2686 = load i32* %x2685
  %ret2687 = call i8* @string_of_int ( i32 %lhs_or_call2686 )
  %ret2688 = call i8* @string_cat ( i8* @_const_str486, i8* %ret2687 )
  call void @print_string( i8* %ret2688 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2676){
__fresh601:
  %x_slot2677 = alloca i32
  store i32 %x2676, i32* %x_slot2677
  %mem_ptr2680 = call i32* @oat_malloc ( i32 8 )
  %obj2681 = bitcast i32* %mem_ptr2680 to %Object* 
  %new_obj2682 = call %Object* @_Object_ctor ( %Object* %obj2681 )
  %_this1 = bitcast %Object* %new_obj2682 to %A 
  %_name2683 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str485, i8** %_name2683
  %this_vtable2684 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable481, %_A_vtable** %this_vtable2684
  %x2678 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2679 = load i32* %x_slot2677
  store i32 %lhs_or_call2679, i32* %x2678
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh600:
  %_name2674 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2675 = load i8** %_name2674
  ret i8* %lhs_or_call2675
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh599:
  %_name2672 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str484, i8** %_name2672
  %this_vtable2673 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable480, %_Object_vtable** %this_vtable2673
  ret %Object* %_this1
}


