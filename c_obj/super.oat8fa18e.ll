%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str547.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str547 = alias bitcast([ 2 x i8 ]* @_const_str547.str. to i8*)@_const_str546.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str546 = alias bitcast([ 2 x i8 ]* @_const_str546.str. to i8*)@_const_str545.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str545 = alias bitcast([ 2 x i8 ]* @_const_str545.str. to i8*)@_const_str544.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str544 = alias bitcast([ 7 x i8 ]* @_const_str544.str. to i8*)@_C_vtable543 = private constant %_C_vtable {%_B_vtable* @_B_vtable542, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six}, align 4
@_B_vtable542 = private constant %_B_vtable {%_A_vtable* @_A_vtable541, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six}, align 4
@_A_vtable541 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable540, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six}, align 4
@_Object_vtable540 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh606:
  ret void
}


define i32 @program (i32 %argc2827, { i32, [ 0 x i8* ] }* %argv2825){
__fresh605:
  %argc_slot2828 = alloca i32
  store i32 %argc2827, i32* %argc_slot2828
  %argv_slot2826 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2825, { i32, [ 0 x i8* ] }** %argv_slot2826
  %mem_ptr2829 = call i32* @oat_malloc ( i32 8 )
  %obj2830 = bitcast i32* %mem_ptr2829 to %C* 
  %new_obj2831 = call %C* @_C_ctor ( %C* %obj2830 )
  %vdecl_slot2832 = alloca %C*
  store %C* %new_obj2831, %C** %vdecl_slot2832
  %lhs_or_call2833 = load %C** %vdecl_slot2832
  %six2835 = getelementptr %_C_vtable* @_C_vtable543, i32 0, i32 2
  %six2834 = load i32 (%C*)** %six2835
  %cast_op2836 = bitcast %C %lhs_or_call2833 to %C* 
  %ret2837 = call i32 %six2834 ( %C* %cast_op2836 )
  ret i32 %ret2837
}


define i32 @_C_six (%C* %_this1){
__fresh604:
  %six2821 = getelementptr %_C_vtable* @_C_vtable543, i32 0, i32 2
  %six2820 = load i32 (%C*)** %six2821
  %cast_op2822 = bitcast %C %_this1 to %C* 
  %ret2823 = call i32 %six2820 ( %C* %cast_op2822 )
  %bop2824 = add i32 %ret2823, 3
  ret i32 %bop2824
}


define %C* @_C_ctor (%C* %_this1){
__fresh603:
  %cast_op2814 = bitcast %C* %_this1 to %B* 
  %mem_ptr2815 = call i32* @oat_malloc ( i32 8 )
  %obj2816 = bitcast i32* %mem_ptr2815 to %C* 
  %new_obj2817 = call %B* @_B_ctor ( %C* %obj2816, %B* %cast_op2814 )
  %_this1 = bitcast %B* %new_obj2817 to %C 
  %_name2818 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str547, i8** %_name2818
  %this_vtable2819 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable543, %_C_vtable** %this_vtable2819
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh602:
  %six2810 = getelementptr %_B_vtable* @_B_vtable542, i32 0, i32 2
  %six2809 = load i32 (%B*)** %six2810
  %cast_op2811 = bitcast %B %_this1 to %B* 
  %ret2812 = call i32 %six2809 ( %B* %cast_op2811 )
  %bop2813 = add i32 %ret2812, 2
  ret i32 %bop2813
}


define %B* @_B_ctor (%B* %_this1){
__fresh601:
  %cast_op2803 = bitcast %B* %_this1 to %A* 
  %mem_ptr2804 = call i32* @oat_malloc ( i32 8 )
  %obj2805 = bitcast i32* %mem_ptr2804 to %B* 
  %new_obj2806 = call %A* @_A_ctor ( %B* %obj2805, %A* %cast_op2803 )
  %_this1 = bitcast %A* %new_obj2806 to %B 
  %_name2807 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str546, i8** %_name2807
  %this_vtable2808 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable542, %_B_vtable** %this_vtable2808
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh600:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh599:
  %cast_op2797 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2798 = call i32* @oat_malloc ( i32 8 )
  %obj2799 = bitcast i32* %mem_ptr2798 to %A* 
  %new_obj2800 = call %Object* @_Object_ctor ( %A* %obj2799, %Object* %cast_op2797 )
  %_this1 = bitcast %Object* %new_obj2800 to %A 
  %_name2801 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str545, i8** %_name2801
  %this_vtable2802 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable541, %_A_vtable** %this_vtable2802
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh598:
  %_name2795 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2796 = load i8** %_name2795
  ret i8* %lhs_or_call2796
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh597:
  %_name2793 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %_name2793
  %this_vtable2794 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable540, %_Object_vtable** %this_vtable2794
  ret %Object* %_this1
}


