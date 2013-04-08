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
@_C_vtable247 = private constant %_C_vtable {%_B_vtable* @_B_vtable246, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable246 = private constant %_B_vtable {%_A_vtable* @_A_vtable245, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable245 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable244, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable244 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh488:
  ret void
}


define i32 @program (i32 %argc2820, { i32, [ 0 x i8* ] }* %argv2818){
__fresh487:
  %argc_slot2821 = alloca i32
  store i32 %argc2820, i32* %argc_slot2821
  %argv_slot2819 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2818, { i32, [ 0 x i8* ] }** %argv_slot2819
  %mem_ptr2822 = call i32* @oat_malloc ( i32 8 )
  %obj2823 = bitcast i32* %mem_ptr2822 to %C* 
  %new_obj2824 = call %C* @_C_ctor ( %C* %obj2823 )
  %vdecl_slot2825 = alloca %C*
  store %C* %new_obj2824, %C** %vdecl_slot2825
  %lhs_or_call2826 = load %C** %vdecl_slot2825
  %call2828 = getelementptr %_C_vtable* @_C_vtable247, i32 0, i32 4
  %call2827 = load i32 (%C*)** %call2828
  %cast_op2829 = bitcast %C %lhs_or_call2826 to %C* 
  %ret2830 = call i32 %call2827 ( %C* %cast_op2829 )
  ret i32 %ret2830
}


define i32 @_C_call (%C* %_this1){
__fresh486:
  %over2815 = getelementptr %_C_vtable* @_C_vtable247, i32 0, i32 2
  %over2814 = load i32 (%B*, i32)** %over2815
  %cast_op2816 = bitcast %C %_this1 to %B* 
  %ret2817 = call i32 %over2814 ( %B* %cast_op2816, i32 3 )
  ret i32 %ret2817
}


define i32 @_C_notover (%C* %_this1, i32 %x2810){
__fresh485:
  %x_slot2811 = alloca i32
  store i32 %x2810, i32* %x_slot2811
  %lhs_or_call2812 = load i32* %x_slot2811
  %bop2813 = add i32 %lhs_or_call2812, 1
  ret i32 %bop2813
}


define %C* @_C_ctor (%C* %_this1){
__fresh484:
  %lhs_or_call2801 = load %C* %_this1
  %cast_op2802 = bitcast %C %lhs_or_call2801 to %B* 
  %mem_ptr2803 = call i32* @oat_malloc ( i32 8 )
  %obj2804 = bitcast i32* %mem_ptr2803 to %B* 
  %new_obj2805 = call %B* @_B_ctor ( %B* %obj2804, %B* %cast_op2802 )
  %_name2806 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call2807 = load %C* %_this1
  %cast_op2808 = bitcast %C %lhs_or_call2807 to i8* 
  store i8* %cast_op2808, i8** %_name2806
  %this_vtable2809 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable2809
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2797){
__fresh483:
  %x_slot2798 = alloca i32
  store i32 %x2797, i32* %x_slot2798
  %lhs_or_call2799 = load i32* %x_slot2798
  %bop2800 = add i32 %lhs_or_call2799, 2
  ret i32 %bop2800
}


define %B* @_B_ctor (%B* %_this1){
__fresh482:
  %lhs_or_call2788 = load %B* %_this1
  %cast_op2789 = bitcast %B %lhs_or_call2788 to %A* 
  %mem_ptr2790 = call i32* @oat_malloc ( i32 8 )
  %obj2791 = bitcast i32* %mem_ptr2790 to %A* 
  %new_obj2792 = call %A* @_A_ctor ( %A* %obj2791, %A* %cast_op2789 )
  %_name2793 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call2794 = load %B* %_this1
  %cast_op2795 = bitcast %B %lhs_or_call2794 to i8* 
  store i8* %cast_op2795, i8** %_name2793
  %this_vtable2796 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2796
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2784){
__fresh481:
  %x_slot2785 = alloca i32
  store i32 %x2784, i32* %x_slot2785
  %lhs_or_call2786 = load i32* %x_slot2785
  %bop2787 = add i32 %lhs_or_call2786, 1
  ret i32 %bop2787
}


define %A* @_A_ctor (%A* %_this1){
__fresh480:
  %lhs_or_call2775 = load %A* %_this1
  %cast_op2776 = bitcast %A %lhs_or_call2775 to %Object* 
  %mem_ptr2777 = call i32* @oat_malloc ( i32 8 )
  %obj2778 = bitcast i32* %mem_ptr2777 to %Object* 
  %new_obj2779 = call %Object* @_Object_ctor ( %Object* %obj2778, %Object* %cast_op2776 )
  %_name2780 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2781 = load %A* %_this1
  %cast_op2782 = bitcast %A %lhs_or_call2781 to i8* 
  store i8* %cast_op2782, i8** %_name2780
  %this_vtable2783 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2783
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh479:
  %_name2773 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2774 = load i8** %_name2773
  ret i8* %lhs_or_call2774
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh478:
  %_name2769 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2770 = load %Object* %_this1
  %cast_op2771 = bitcast %Object %lhs_or_call2770 to i8* 
  store i8* %cast_op2771, i8** %_name2769
  %this_vtable2772 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2772
  ret %Object* %_this1
}


