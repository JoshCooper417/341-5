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


define i32 @program (i32 %argc2829, { i32, [ 0 x i8* ] }* %argv2827){
__fresh593:
  %argc_slot2830 = alloca i32
  store i32 %argc2829, i32* %argc_slot2830
  %argv_slot2828 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2827, { i32, [ 0 x i8* ] }** %argv_slot2828
  %mem_ptr2831 = call i32* @oat_malloc ( i32 8 )
  %obj2832 = bitcast i32* %mem_ptr2831 to %C* 
  %new_obj2833 = call %C* @_C_ctor ( %C* %obj2832 )
  %vdecl_slot2834 = alloca %C*
  store %C* %new_obj2833, %C** %vdecl_slot2834
  %lhs_or_call2835 = load %C** %vdecl_slot2834
  %vtable_ptr2836 = getelementptr %C* %lhs_or_call2835, i32 0
  %vtable2837 = load %_C_vtable** %vtable_ptr2836
  %six2839 = getelementptr %_C_vtable* %vtable2837, i32 0, i32 2
  %six2838 = load i32 (%C*)** %six2839
  %cast_op2840 = bitcast %C %lhs_or_call2835 to %C* 
  %ret2841 = call i32 %six2838 ( %C* %cast_op2840 )
  %vdecl_slot2842 = alloca i32
  store i32 %ret2841, i32* %vdecl_slot2842
  %lhs_or_call2843 = load %C** %vdecl_slot2834
  %vtable_ptr2844 = getelementptr %C* %lhs_or_call2843, i32 0
  %vtable2845 = load %_C_vtable** %vtable_ptr2844
  %f2847 = getelementptr %_C_vtable* %vtable2845, i32 0, i32 3
  %f2846 = load void (%C*)** %f2847
  %cast_op2848 = bitcast %C %lhs_or_call2843 to %C* 
  call void %f2846( %C* %cast_op2848 )
  %lhs_or_call2849 = load i32* %vdecl_slot2842
  ret i32 %lhs_or_call2849
}


define void @_C_f (%C* %_this1){
__fresh592:
  call void @print_string( i8* @_const_str538 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh591:
  %vtable_ptr2820 = getelementptr %C* %_this1, i32 0
  %vtable2821 = load %_C_vtable** %vtable_ptr2820
  %six2823 = getelementptr %_C_vtable* %vtable2821, i32 0, i32 2
  %six2822 = load i32 (%C*)** %six2823
  %cast_op2824 = bitcast %C %_this1 to %C* 
  %ret2825 = call i32 %six2822 ( %C* %cast_op2824 )
  %bop2826 = add i32 %ret2825, 3
  ret i32 %bop2826
}


define %C* @_C_ctor (%C* %_this1){
__fresh590:
  %mem_ptr2815 = call i32* @oat_malloc ( i32 8 )
  %obj2816 = bitcast i32* %mem_ptr2815 to %B* 
  %new_obj2817 = call %B* @_B_ctor ( %B* %obj2816 )
  %_this1 = bitcast %B* %new_obj2817 to %C 
  %_name2818 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str537, i8** %_name2818
  %this_vtable2819 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable531, %_C_vtable** %this_vtable2819
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh589:
  call void @print_string( i8* @_const_str536 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh588:
  %vtable_ptr2808 = getelementptr %B* %_this1, i32 0
  %vtable2809 = load %_B_vtable** %vtable_ptr2808
  %six2811 = getelementptr %_B_vtable* %vtable2809, i32 0, i32 2
  %six2810 = load i32 (%B*)** %six2811
  %cast_op2812 = bitcast %B %_this1 to %B* 
  %ret2813 = call i32 %six2810 ( %B* %cast_op2812 )
  %bop2814 = add i32 %ret2813, 2
  ret i32 %bop2814
}


define %B* @_B_ctor (%B* %_this1){
__fresh587:
  %mem_ptr2803 = call i32* @oat_malloc ( i32 8 )
  %obj2804 = bitcast i32* %mem_ptr2803 to %A* 
  %new_obj2805 = call %A* @_A_ctor ( %A* %obj2804 )
  %_this1 = bitcast %A* %new_obj2805 to %B 
  %_name2806 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str535, i8** %_name2806
  %this_vtable2807 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable530, %_B_vtable** %this_vtable2807
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
  %mem_ptr2798 = call i32* @oat_malloc ( i32 8 )
  %obj2799 = bitcast i32* %mem_ptr2798 to %Object* 
  %new_obj2800 = call %Object* @_Object_ctor ( %Object* %obj2799 )
  %_this1 = bitcast %Object* %new_obj2800 to %A 
  %_name2801 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str533, i8** %_name2801
  %this_vtable2802 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable529, %_A_vtable** %this_vtable2802
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh583:
  %_name2796 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2797 = load i8** %_name2796
  ret i8* %lhs_or_call2797
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh582:
  %_name2794 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str532, i8** %_name2794
  %this_vtable2795 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable528, %_Object_vtable** %this_vtable2795
  ret %Object* %_this1
}


