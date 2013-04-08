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
  %six2837 = getelementptr %_C_vtable* @_C_vtable542, i32 0, i32 2
  %six2836 = load i32 (%C*)** %six2837
  %cast_op2838 = bitcast %C %lhs_or_call2835 to %C* 
  %ret2839 = call i32 %six2836 ( %C* %cast_op2838 )
  %vdecl_slot2840 = alloca i32
  store i32 %ret2839, i32* %vdecl_slot2840
  %lhs_or_call2841 = load %C** %vdecl_slot2834
  %f2843 = getelementptr %_C_vtable* @_C_vtable542, i32 0, i32 3
  %f2842 = load void (%C*)** %f2843
  %cast_op2844 = bitcast %C %lhs_or_call2841 to %C* 
  call void %f2842( %C* %cast_op2844 )
  %lhs_or_call2845 = load i32* %vdecl_slot2840
  ret i32 %lhs_or_call2845
}


define void @_C_f (%C* %_this1){
__fresh592:
  call void @print_string( i8* @_const_str549 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh591:
  %six2823 = getelementptr %_C_vtable* @_C_vtable542, i32 0, i32 2
  %six2822 = load i32 (%C*)** %six2823
  %cast_op2824 = bitcast %C %_this1 to %C* 
  %ret2825 = call i32 %six2822 ( %C* %cast_op2824 )
  %bop2826 = add i32 %ret2825, 3
  ret i32 %bop2826
}


define %C* @_C_ctor (%C* %_this1){
__fresh590:
  %cast_op2816 = bitcast %C* %_this1 to %B* 
  %mem_ptr2817 = call i32* @oat_malloc ( i32 8 )
  %obj2818 = bitcast i32* %mem_ptr2817 to %C* 
  %new_obj2819 = call %B* @_B_ctor ( %C* %obj2818, %B* %cast_op2816 )
  %_this1 = bitcast %B* %new_obj2819 to %C 
  %_name2820 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str548, i8** %_name2820
  %this_vtable2821 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable542, %_C_vtable** %this_vtable2821
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh589:
  call void @print_string( i8* @_const_str547 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh588:
  %six2812 = getelementptr %_B_vtable* @_B_vtable541, i32 0, i32 2
  %six2811 = load i32 (%B*)** %six2812
  %cast_op2813 = bitcast %B %_this1 to %B* 
  %ret2814 = call i32 %six2811 ( %B* %cast_op2813 )
  %bop2815 = add i32 %ret2814, 2
  ret i32 %bop2815
}


define %B* @_B_ctor (%B* %_this1){
__fresh587:
  %cast_op2805 = bitcast %B* %_this1 to %A* 
  %mem_ptr2806 = call i32* @oat_malloc ( i32 8 )
  %obj2807 = bitcast i32* %mem_ptr2806 to %B* 
  %new_obj2808 = call %A* @_A_ctor ( %B* %obj2807, %A* %cast_op2805 )
  %_this1 = bitcast %A* %new_obj2808 to %B 
  %_name2809 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str546, i8** %_name2809
  %this_vtable2810 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable541, %_B_vtable** %this_vtable2810
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
  %cast_op2799 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2800 = call i32* @oat_malloc ( i32 8 )
  %obj2801 = bitcast i32* %mem_ptr2800 to %A* 
  %new_obj2802 = call %Object* @_Object_ctor ( %A* %obj2801, %Object* %cast_op2799 )
  %_this1 = bitcast %Object* %new_obj2802 to %A 
  %_name2803 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %_name2803
  %this_vtable2804 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable540, %_A_vtable** %this_vtable2804
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh583:
  %_name2797 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2798 = load i8** %_name2797
  ret i8* %lhs_or_call2798
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh582:
  %_name2795 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str543, i8** %_name2795
  %this_vtable2796 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable539, %_Object_vtable** %this_vtable2796
  ret %Object* %_this1
}


