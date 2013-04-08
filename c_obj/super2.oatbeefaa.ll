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


define i32 @program (i32 %argc2841, { i32, [ 0 x i8* ] }* %argv2839){
__fresh593:
  %argc_slot2842 = alloca i32
  store i32 %argc2841, i32* %argc_slot2842
  %argv_slot2840 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2839, { i32, [ 0 x i8* ] }** %argv_slot2840
  %mem_ptr2843 = call i32* @oat_malloc ( i32 8 )
  %obj2844 = bitcast i32* %mem_ptr2843 to %C* 
  %new_obj2845 = call %C* @_C_ctor ( %C* %obj2844 )
  %vdecl_slot2846 = alloca %C*
  store %C* %new_obj2845, %C** %vdecl_slot2846
  %lhs_or_call2847 = load %C** %vdecl_slot2846
  %vtable_ptr2848 = getelementptr %C* %lhs_or_call2847, i32 0
  %vtable2849 = load %_C_vtable** %vtable_ptr2848
  %six2851 = getelementptr %_C_vtable* %vtable2849, i32 0, i32 2
  %six2850 = load i32 (%C*)** %six2851
  %cast_op2852 = bitcast %C %lhs_or_call2847 to %C* 
  %ret2853 = call i32 %six2850 ( %C* %cast_op2852 )
  %vdecl_slot2854 = alloca i32
  store i32 %ret2853, i32* %vdecl_slot2854
  %lhs_or_call2855 = load %C** %vdecl_slot2846
  %vtable_ptr2856 = getelementptr %C* %lhs_or_call2855, i32 0
  %vtable2857 = load %_C_vtable** %vtable_ptr2856
  %f2859 = getelementptr %_C_vtable* %vtable2857, i32 0, i32 3
  %f2858 = load void (%C*)** %f2859
  %cast_op2860 = bitcast %C %lhs_or_call2855 to %C* 
  call void %f2858( %C* %cast_op2860 )
  %lhs_or_call2861 = load i32* %vdecl_slot2854
  ret i32 %lhs_or_call2861
}


define void @_C_f (%C* %_this1){
__fresh592:
  call void @print_string( i8* @_const_str549 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh591:
  %vtable_ptr2832 = getelementptr %C* %_this1, i32 0
  %vtable2833 = load %_C_vtable** %vtable_ptr2832
  %six2835 = getelementptr %_C_vtable* %vtable2833, i32 0, i32 2
  %six2834 = load i32 (%C*)** %six2835
  %cast_op2836 = bitcast %C %_this1 to %C* 
  %ret2837 = call i32 %six2834 ( %C* %cast_op2836 )
  %bop2838 = add i32 %ret2837, 3
  ret i32 %bop2838
}


define %C* @_C_ctor (%C* %_this1){
__fresh590:
  %mem_ptr2827 = call i32* @oat_malloc ( i32 8 )
  %obj2828 = bitcast i32* %mem_ptr2827 to %B* 
  %new_obj2829 = call %B* @_B_ctor ( %B* %obj2828 )
  %_this1 = bitcast %B* %new_obj2829 to %C 
  %_name2830 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str548, i8** %_name2830
  %this_vtable2831 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable542, %_C_vtable** %this_vtable2831
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh589:
  call void @print_string( i8* @_const_str547 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh588:
  %vtable_ptr2820 = getelementptr %B* %_this1, i32 0
  %vtable2821 = load %_B_vtable** %vtable_ptr2820
  %six2823 = getelementptr %_B_vtable* %vtable2821, i32 0, i32 2
  %six2822 = load i32 (%B*)** %six2823
  %cast_op2824 = bitcast %B %_this1 to %B* 
  %ret2825 = call i32 %six2822 ( %B* %cast_op2824 )
  %bop2826 = add i32 %ret2825, 2
  ret i32 %bop2826
}


define %B* @_B_ctor (%B* %_this1){
__fresh587:
  %mem_ptr2815 = call i32* @oat_malloc ( i32 8 )
  %obj2816 = bitcast i32* %mem_ptr2815 to %A* 
  %new_obj2817 = call %A* @_A_ctor ( %A* %obj2816 )
  %_this1 = bitcast %A* %new_obj2817 to %B 
  %_name2818 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str546, i8** %_name2818
  %this_vtable2819 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable541, %_B_vtable** %this_vtable2819
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
  %mem_ptr2810 = call i32* @oat_malloc ( i32 8 )
  %obj2811 = bitcast i32* %mem_ptr2810 to %Object* 
  %new_obj2812 = call %Object* @_Object_ctor ( %Object* %obj2811 )
  %_this1 = bitcast %Object* %new_obj2812 to %A 
  %_name2813 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %_name2813
  %this_vtable2814 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable540, %_A_vtable** %this_vtable2814
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh583:
  %_name2808 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2809 = load i8** %_name2808
  ret i8* %lhs_or_call2809
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh582:
  %_name2806 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str543, i8** %_name2806
  %this_vtable2807 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable539, %_Object_vtable** %this_vtable2807
  ret %Object* %_this1
}


