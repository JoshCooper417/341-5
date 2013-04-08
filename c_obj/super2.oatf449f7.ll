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
@_const_str538.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str538 = alias bitcast([ 2 x i8 ]* @_const_str538.str. to i8*)@_const_str537.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str537 = alias bitcast([ 2 x i8 ]* @_const_str537.str. to i8*)@_const_str536.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str536 = alias bitcast([ 2 x i8 ]* @_const_str536.str. to i8*)@_const_str535.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str535 = alias bitcast([ 2 x i8 ]* @_const_str535.str. to i8*)@_const_str534.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str534 = alias bitcast([ 2 x i8 ]* @_const_str534.str. to i8*)@_const_str533.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str533 = alias bitcast([ 2 x i8 ]* @_const_str533.str. to i8*)@_const_str532.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str532 = alias bitcast([ 7 x i8 ]* @_const_str532.str. to i8*)@_C_vtable531 = private constant %_C_vtable {%_B_vtable* @_B_vtable530, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six, void (%C*)* @_C_f}, align 4
@_B_vtable530 = private constant %_B_vtable {%_A_vtable* @_A_vtable529, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six, void (%B*)* @_B_f}, align 4
@_A_vtable529 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable528, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six, void (%A*)* @_A_f}, align 4
@_Object_vtable528 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh594:
  ret void
}


define i32 @program (i32 %argc2822, { i32, [ 0 x i8* ] }* %argv2820){
__fresh593:
  %argc_slot2823 = alloca i32
  store i32 %argc2822, i32* %argc_slot2823
  %argv_slot2821 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2820, { i32, [ 0 x i8* ] }** %argv_slot2821
  %mem_ptr2824 = call i32* @oat_malloc ( i32 8 )
  %obj2825 = bitcast i32* %mem_ptr2824 to %C* 
  %new_obj2826 = call %C* @_C_ctor ( %C* %obj2825 )
  %vdecl_slot2827 = alloca %C*
  store %C* %new_obj2826, %C** %vdecl_slot2827
  %lhs_or_call2828 = load %C** %vdecl_slot2827
  %vtable_ptr2829 = getelementptr %C* %lhs_or_call2828, i32 0
  %vtable2830 = load %_C_vtable** %vtable_ptr2829
  %six2832 = getelementptr %_C_vtable* %vtable2830, i32 0, i32 2
  %six2831 = load i32 (%C*)** %six2832
  %cast_op2833 = bitcast %C %lhs_or_call2828 to %C* 
  %ret2834 = call i32 %six2831 ( %C* %cast_op2833 )
  %vdecl_slot2835 = alloca i32
  store i32 %ret2834, i32* %vdecl_slot2835
  %lhs_or_call2836 = load %C** %vdecl_slot2827
  %vtable_ptr2837 = getelementptr %C* %lhs_or_call2836, i32 0
  %vtable2838 = load %_C_vtable** %vtable_ptr2837
  %f2840 = getelementptr %_C_vtable* %vtable2838, i32 0, i32 3
  %f2839 = load void (%C*)** %f2840
  %cast_op2841 = bitcast %C %lhs_or_call2836 to %C* 
  call void %f2839( %C* %cast_op2841 )
  %lhs_or_call2842 = load i32* %vdecl_slot2835
  ret i32 %lhs_or_call2842
}


define void @_C_f (%C* %_this1){
__fresh592:
  call void @print_string( i8* @_const_str538 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh591:
  %vtable_ptr2813 = getelementptr %C* %_this1, i32 0
  %vtable2814 = load %_C_vtable** %vtable_ptr2813
  %six2816 = getelementptr %_C_vtable* %vtable2814, i32 0, i32 2
  %six2815 = load i32 (%C*)** %six2816
  %cast_op2817 = bitcast %C %_this1 to %C* 
  %ret2818 = call i32 %six2815 ( %C* %cast_op2817 )
  %bop2819 = add i32 %ret2818, 3
  ret i32 %bop2819
}


define %C* @_C_ctor (%C* %_this1){
__fresh590:
  %mem_ptr2808 = call i32* @oat_malloc ( i32 8 )
  %obj2809 = bitcast i32* %mem_ptr2808 to %B* 
  %new_obj2810 = call %B* @_B_ctor ( %B* %obj2809 )
  %_this1 = bitcast %B* %new_obj2810 to %C 
  %_name2811 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str537, i8** %_name2811
  %this_vtable2812 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable531, %_C_vtable** %this_vtable2812
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh589:
  call void @print_string( i8* @_const_str536 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh588:
  %vtable_ptr2801 = getelementptr %B* %_this1, i32 0
  %vtable2802 = load %_B_vtable** %vtable_ptr2801
  %six2804 = getelementptr %_B_vtable* %vtable2802, i32 0, i32 2
  %six2803 = load i32 (%B*)** %six2804
  %cast_op2805 = bitcast %B %_this1 to %B* 
  %ret2806 = call i32 %six2803 ( %B* %cast_op2805 )
  %bop2807 = add i32 %ret2806, 2
  ret i32 %bop2807
}


define %B* @_B_ctor (%B* %_this1){
__fresh587:
  %mem_ptr2796 = call i32* @oat_malloc ( i32 8 )
  %obj2797 = bitcast i32* %mem_ptr2796 to %A* 
  %new_obj2798 = call %A* @_A_ctor ( %A* %obj2797 )
  %_this1 = bitcast %A* %new_obj2798 to %B 
  %_name2799 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str535, i8** %_name2799
  %this_vtable2800 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable530, %_B_vtable** %this_vtable2800
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh586:
  call void @print_string( i8* @_const_str534 )
  ret void
}


define i32 @_A_six (%A* %_this1){
__fresh585:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh584:
  %mem_ptr2791 = call i32* @oat_malloc ( i32 8 )
  %obj2792 = bitcast i32* %mem_ptr2791 to %Object* 
  %new_obj2793 = call %Object* @_Object_ctor ( %Object* %obj2792 )
  %_this1 = bitcast %Object* %new_obj2793 to %A 
  %_name2794 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str533, i8** %_name2794
  %this_vtable2795 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable529, %_A_vtable** %this_vtable2795
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh583:
  %_name2789 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2790 = load i8** %_name2789
  ret i8* %lhs_or_call2790
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh582:
  %_name2787 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str532, i8** %_name2787
  %this_vtable2788 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable528, %_Object_vtable** %this_vtable2788
  ret %Object* %_this1
}


