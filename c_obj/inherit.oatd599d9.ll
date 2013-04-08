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


define i32 @program (i32 %argc2755, { i32, [ 0 x i8* ] }* %argv2753){
__fresh609:
  %argc_slot2756 = alloca i32
  store i32 %argc2755, i32* %argc_slot2756
  %argv_slot2754 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2753, { i32, [ 0 x i8* ] }** %argv_slot2754
  %lhs_or_call2757 = load i32* @x500
  %bop2758 = add i32 %lhs_or_call2757, 3
  %lhs_or_call2759 = load i32* @x500
  %bop2760 = add i32 %lhs_or_call2759, 2
  %lhs_or_call2761 = load i32* @x500
  %bop2762 = add i32 %lhs_or_call2761, 1
  %mem_ptr2763 = call i32* @oat_malloc ( i32 20 )
  %obj2764 = bitcast i32* %mem_ptr2763 to %B* 
  %new_obj2765 = call %B* @_B_ctor ( %B* %obj2764, i32 %bop2762, i32 %bop2760, i32 %bop2758 )
  %vdecl_slot2766 = alloca %B*
  store %B* %new_obj2765, %B** %vdecl_slot2766
  %mem_ptr2767 = call i32* @oat_malloc ( i32 24 )
  %obj2768 = bitcast i32* %mem_ptr2767 to %C* 
  %new_obj2769 = call %C* @_C_ctor ( %C* %obj2768, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2770 = alloca %C*
  store %C* %new_obj2769, %C** %vdecl_slot2770
  %lhs_or_call2771 = load %A** @a498
  %vtable_ptr2772 = getelementptr %A* %lhs_or_call2771, i32 0
  %vtable2773 = load %_A_vtable** %vtable_ptr2772
  %print2775 = getelementptr %_A_vtable* %vtable2773, i32 0, i32 2
  %print2774 = load void (%A*)** %print2775
  %cast_op2776 = bitcast %A %lhs_or_call2771 to %A* 
  call void %print2774( %A* %cast_op2776 )
  %lhs_or_call2777 = load %B** %vdecl_slot2766
  %vtable_ptr2778 = getelementptr %B* %lhs_or_call2777, i32 0
  %vtable2779 = load %_B_vtable** %vtable_ptr2778
  %print2781 = getelementptr %_B_vtable* %vtable2779, i32 0, i32 2
  %print2780 = load void (%B*)** %print2781
  %cast_op2782 = bitcast %B %lhs_or_call2777 to %B* 
  call void %print2780( %B* %cast_op2782 )
  %lhs_or_call2783 = load %C** %vdecl_slot2770
  %vtable_ptr2784 = getelementptr %C* %lhs_or_call2783, i32 0
  %vtable2785 = load %_C_vtable** %vtable_ptr2784
  %print2787 = getelementptr %_C_vtable* %vtable2785, i32 0, i32 2
  %print2786 = load void (%C*)** %print2787
  %cast_op2788 = bitcast %C %lhs_or_call2783 to %C* 
  call void %print2786( %C* %cast_op2788 )
  %lhs_or_call2789 = load i32* @x500
  %bop2790 = add i32 %lhs_or_call2789, 2
  %lhs_or_call2791 = load i32* @x500
  %bop2792 = add i32 %lhs_or_call2791, 1
  %lhs_or_call2793 = load %C** %vdecl_slot2770
  %vtable_ptr2794 = getelementptr %C* %lhs_or_call2793, i32 0
  %vtable2795 = load %_C_vtable** %vtable_ptr2794
  %foo2797 = getelementptr %_C_vtable* %vtable2795, i32 0, i32 3
  %foo2796 = load void (%C*, i32, i32)** %foo2797
  %cast_op2798 = bitcast %C %lhs_or_call2793 to %C* 
  call void %foo2796( %C* %cast_op2798, i32 %bop2792, i32 %bop2790 )
  ret i32 0
}


define void @a498.init499 (){
__fresh608:
  %mem_ptr2750 = call i32* @oat_malloc ( i32 12 )
  %obj2751 = bitcast i32* %mem_ptr2750 to %A* 
  %new_obj2752 = call %A* @_A_ctor ( %A* %obj2751, i32 3 )
  store %A* %new_obj2752, %A** @a498
  ret void
}


define void @_C_print (%C* %_this1){
__fresh607:
  %x2734 = getelementptr %C* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call2735 = load i32* %x2734
  %ret2736 = call i8* @string_of_int ( i32 %lhs_or_call2735 )
  %ret2737 = call i8* @string_cat ( i8* @_const_str494, i8* %ret2736 )
  call void @print_string( i8* %ret2737 )
  %y2738 = getelementptr %C* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call2739 = load i32* %y2738
  %ret2740 = call i8* @string_of_int ( i32 %lhs_or_call2739 )
  %ret2741 = call i8* @string_cat ( i8* @_const_str495, i8* %ret2740 )
  call void @print_string( i8* %ret2741 )
  %z2742 = getelementptr %C* %_this1, i32 0, i32 0, i32 4
  %lhs_or_call2743 = load i32* %z2742
  %ret2744 = call i8* @string_of_int ( i32 %lhs_or_call2743 )
  %ret2745 = call i8* @string_cat ( i8* @_const_str496, i8* %ret2744 )
  call void @print_string( i8* %ret2745 )
  %w2746 = getelementptr %C* %_this1, i32 0, i32 0, i32 5
  %lhs_or_call2747 = load i32* %w2746
  %ret2748 = call i8* @string_of_int ( i32 %lhs_or_call2747 )
  %ret2749 = call i8* @string_cat ( i8* @_const_str497, i8* %ret2748 )
  call void @print_string( i8* %ret2749 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2726, i32 %b2724){
__fresh606:
  %a_slot2727 = alloca i32
  store i32 %a2726, i32* %a_slot2727
  %b_slot2725 = alloca i32
  store i32 %b2724, i32* %b_slot2725
  %lhs_or_call2728 = load i32* %a_slot2727
  %ret2729 = call i8* @string_of_int ( i32 %lhs_or_call2728 )
  %ret2730 = call i8* @string_cat ( i8* @_const_str492, i8* %ret2729 )
  call void @print_string( i8* %ret2730 )
  %lhs_or_call2731 = load i32* %b_slot2725
  %ret2732 = call i8* @string_of_int ( i32 %lhs_or_call2731 )
  %ret2733 = call i8* @string_cat ( i8* @_const_str493, i8* %ret2732 )
  call void @print_string( i8* %ret2733 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2712, i32 %y2710, i32 %z2708, i32 %w2706){
__fresh605:
  %x_slot2713 = alloca i32
  store i32 %x2712, i32* %x_slot2713
  %y_slot2711 = alloca i32
  store i32 %y2710, i32* %y_slot2711
  %z_slot2709 = alloca i32
  store i32 %z2708, i32* %z_slot2709
  %w_slot2707 = alloca i32
  store i32 %w2706, i32* %w_slot2707
  %lhs_or_call2716 = load i32* %x_slot2713
  %lhs_or_call2717 = load i32* %y_slot2711
  %lhs_or_call2718 = load i32* %z_slot2709
  %mem_ptr2719 = call i32* @oat_malloc ( i32 20 )
  %obj2720 = bitcast i32* %mem_ptr2719 to %B* 
  %new_obj2721 = call %B* @_B_ctor ( %B* %obj2720, i32 %lhs_or_call2718, i32 %lhs_or_call2717, i32 %lhs_or_call2716 )
  %_this1 = bitcast %B* %new_obj2721 to %C 
  %_name2722 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str491, i8** %_name2722
  %this_vtable2723 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable483, %_C_vtable** %this_vtable2723
  %w2714 = getelementptr %C* %_this1, i32 0, i32 0, i32 5
  %lhs_or_call2715 = load i32* %w_slot2707
  store i32 %lhs_or_call2715, i32* %w2714
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh604:
  %x2694 = getelementptr %B* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call2695 = load i32* %x2694
  %ret2696 = call i8* @string_of_int ( i32 %lhs_or_call2695 )
  %ret2697 = call i8* @string_cat ( i8* @_const_str488, i8* %ret2696 )
  call void @print_string( i8* %ret2697 )
  %y2698 = getelementptr %B* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call2699 = load i32* %y2698
  %ret2700 = call i8* @string_of_int ( i32 %lhs_or_call2699 )
  %ret2701 = call i8* @string_cat ( i8* @_const_str489, i8* %ret2700 )
  call void @print_string( i8* %ret2701 )
  %z2702 = getelementptr %B* %_this1, i32 0, i32 0, i32 4
  %lhs_or_call2703 = load i32* %z2702
  %ret2704 = call i8* @string_of_int ( i32 %lhs_or_call2703 )
  %ret2705 = call i8* @string_cat ( i8* @_const_str490, i8* %ret2704 )
  call void @print_string( i8* %ret2705 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2682, i32 %y2680, i32 %z2678){
__fresh603:
  %x_slot2683 = alloca i32
  store i32 %x2682, i32* %x_slot2683
  %y_slot2681 = alloca i32
  store i32 %y2680, i32* %y_slot2681
  %z_slot2679 = alloca i32
  store i32 %z2678, i32* %z_slot2679
  %lhs_or_call2688 = load i32* %x_slot2683
  %mem_ptr2689 = call i32* @oat_malloc ( i32 12 )
  %obj2690 = bitcast i32* %mem_ptr2689 to %A* 
  %new_obj2691 = call %A* @_A_ctor ( %A* %obj2690, i32 %lhs_or_call2688 )
  %_this1 = bitcast %A* %new_obj2691 to %B 
  %_name2692 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str487, i8** %_name2692
  %this_vtable2693 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable482, %_B_vtable** %this_vtable2693
  %y2684 = getelementptr %B* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call2685 = load i32* %y_slot2681
  store i32 %lhs_or_call2685, i32* %y2684
  %z2686 = getelementptr %B* %_this1, i32 0, i32 0, i32 4
  %lhs_or_call2687 = load i32* %z_slot2679
  store i32 %lhs_or_call2687, i32* %z2686
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh602:
  %x2674 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call2675 = load i32* %x2674
  %ret2676 = call i8* @string_of_int ( i32 %lhs_or_call2675 )
  %ret2677 = call i8* @string_cat ( i8* @_const_str486, i8* %ret2676 )
  call void @print_string( i8* %ret2677 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2665){
__fresh601:
  %x_slot2666 = alloca i32
  store i32 %x2665, i32* %x_slot2666
  %mem_ptr2669 = call i32* @oat_malloc ( i32 8 )
  %obj2670 = bitcast i32* %mem_ptr2669 to %Object* 
  %new_obj2671 = call %Object* @_Object_ctor ( %Object* %obj2670 )
  %_this1 = bitcast %Object* %new_obj2671 to %A 
  %_name2672 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str485, i8** %_name2672
  %this_vtable2673 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable481, %_A_vtable** %this_vtable2673
  %x2667 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call2668 = load i32* %x_slot2666
  store i32 %lhs_or_call2668, i32* %x2667
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh600:
  %_name2663 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2664 = load i8** %_name2663
  ret i8* %lhs_or_call2664
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh599:
  %_name2661 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str484, i8** %_name2661
  %this_vtable2662 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable480, %_Object_vtable** %this_vtable2662
  ret %Object* %_this1
}


