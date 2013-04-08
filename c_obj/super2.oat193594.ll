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
@_const_str558.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str558 = alias bitcast([ 2 x i8 ]* @_const_str558.str. to i8*)@_const_str557.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str557 = alias bitcast([ 2 x i8 ]* @_const_str557.str. to i8*)@_const_str556.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str556 = alias bitcast([ 2 x i8 ]* @_const_str556.str. to i8*)@_const_str555.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str555 = alias bitcast([ 2 x i8 ]* @_const_str555.str. to i8*)@_const_str554.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str554 = alias bitcast([ 2 x i8 ]* @_const_str554.str. to i8*)@_const_str553.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str553 = alias bitcast([ 2 x i8 ]* @_const_str553.str. to i8*)@_const_str552.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str552 = alias bitcast([ 7 x i8 ]* @_const_str552.str. to i8*)@_C_vtable551 = private constant %_C_vtable {%_B_vtable* @_B_vtable550, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six, void (%C*)* @_C_f}, align 4
@_B_vtable550 = private constant %_B_vtable {%_A_vtable* @_A_vtable549, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six, void (%B*)* @_B_f}, align 4
@_A_vtable549 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable548, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six, void (%A*)* @_A_f}, align 4
@_Object_vtable548 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh619:
  ret void
}


define i32 @program (i32 %argc2872, { i32, [ 0 x i8* ] }* %argv2870){
__fresh618:
  %argc_slot2873 = alloca i32
  store i32 %argc2872, i32* %argc_slot2873
  %argv_slot2871 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2870, { i32, [ 0 x i8* ] }** %argv_slot2871
  %mem_ptr2874 = call i32* @oat_malloc ( i32 8 )
  %obj2875 = bitcast i32* %mem_ptr2874 to %C* 
  %new_obj2876 = call %C* @_C_ctor ( %C* %obj2875 )
  %vdecl_slot2877 = alloca %C*
  store %C* %new_obj2876, %C** %vdecl_slot2877
  %lhs_or_call2878 = load %C** %vdecl_slot2877
  %six2880 = getelementptr %_C_vtable* @_C_vtable551, i32 0, i32 2
  %six2879 = load i32 (%C*)** %six2880
  %cast_op2881 = bitcast %C %lhs_or_call2878 to %C* 
  %ret2882 = call i32 %six2879 ( %C* %cast_op2881 )
  %vdecl_slot2883 = alloca i32
  store i32 %ret2882, i32* %vdecl_slot2883
  %lhs_or_call2884 = load %C** %vdecl_slot2877
  %f2886 = getelementptr %_C_vtable* @_C_vtable551, i32 0, i32 3
  %f2885 = load void (%C*)** %f2886
  %cast_op2887 = bitcast %C %lhs_or_call2884 to %C* 
  call void %f2885( %C* %cast_op2887 )
  %lhs_or_call2888 = load i32* %vdecl_slot2883
  ret i32 %lhs_or_call2888
}


define void @_C_f (%C* %_this1){
__fresh617:
  call void @print_string( i8* @_const_str558 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh616:
  %six2866 = getelementptr %_C_vtable* @_C_vtable551, i32 0, i32 2
  %six2865 = load i32 (%C*)** %six2866
  %cast_op2867 = bitcast %C %_this1 to %C* 
  %ret2868 = call i32 %six2865 ( %C* %cast_op2867 )
  %bop2869 = add i32 %ret2868, 3
  ret i32 %bop2869
}


define %C* @_C_ctor (%C* %_this1){
__fresh615:
  %cast_op2859 = bitcast %C* %_this1 to %B* 
  %mem_ptr2860 = call i32* @oat_malloc ( i32 8 )
  %obj2861 = bitcast i32* %mem_ptr2860 to %C* 
  %new_obj2862 = call %B* @_B_ctor ( %C* %obj2861, %B* %cast_op2859 )
  %_this1 = bitcast %B* %new_obj2862 to %C 
  %_name2863 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str557, i8** %_name2863
  %this_vtable2864 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable551, %_C_vtable** %this_vtable2864
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh614:
  call void @print_string( i8* @_const_str556 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh613:
  %six2855 = getelementptr %_B_vtable* @_B_vtable550, i32 0, i32 2
  %six2854 = load i32 (%B*)** %six2855
  %cast_op2856 = bitcast %B %_this1 to %B* 
  %ret2857 = call i32 %six2854 ( %B* %cast_op2856 )
  %bop2858 = add i32 %ret2857, 2
  ret i32 %bop2858
}


define %B* @_B_ctor (%B* %_this1){
__fresh612:
  %cast_op2848 = bitcast %B* %_this1 to %A* 
  %mem_ptr2849 = call i32* @oat_malloc ( i32 8 )
  %obj2850 = bitcast i32* %mem_ptr2849 to %B* 
  %new_obj2851 = call %A* @_A_ctor ( %B* %obj2850, %A* %cast_op2848 )
  %_this1 = bitcast %A* %new_obj2851 to %B 
  %_name2852 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str555, i8** %_name2852
  %this_vtable2853 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable550, %_B_vtable** %this_vtable2853
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh611:
  call void @print_string( i8* @_const_str554 )
  ret void
}


define i32 @_A_six (%A* %_this1){
__fresh610:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh609:
  %cast_op2842 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2843 = call i32* @oat_malloc ( i32 8 )
  %obj2844 = bitcast i32* %mem_ptr2843 to %A* 
  %new_obj2845 = call %Object* @_Object_ctor ( %A* %obj2844, %Object* %cast_op2842 )
  %_this1 = bitcast %Object* %new_obj2845 to %A 
  %_name2846 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str553, i8** %_name2846
  %this_vtable2847 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable549, %_A_vtable** %this_vtable2847
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh608:
  %_name2840 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2841 = load i8** %_name2840
  ret i8* %lhs_or_call2841
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh607:
  %_name2838 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str552, i8** %_name2838
  %this_vtable2839 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable548, %_Object_vtable** %this_vtable2839
  ret %Object* %_this1
}


