%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)*, i32 (%A*)* }
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
@a252 = global %A* zeroinitializer, align 4		; initialized by @a252.init253
@_C_vtable251 = private constant %_C_vtable {%_B_vtable* @_B_vtable250, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*)* @_C_call, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable250 = private constant %_B_vtable {%_A_vtable* @_A_vtable249, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%B*)* @_B_call}, align 4
@_A_vtable249 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable248, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo, i32 (%A*)* @_A_call}, align 4
@_Object_vtable248 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh503:
  call void @a252.init253(  )
  ret void
}


define i32 @program (i32 %argc2890, { i32, [ 0 x i8* ] }* %argv2888){
__fresh502:
  %argc_slot2891 = alloca i32
  store i32 %argc2890, i32* %argc_slot2891
  %argv_slot2889 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2888, { i32, [ 0 x i8* ] }** %argv_slot2889
  %lhs_or_call2892 = load %A** @a252
  %call2894 = getelementptr %_A_vtable* @_A_vtable249, i32 0, i32 4
  %call2893 = load i32 (%A*)** %call2894
  %cast_op2895 = bitcast %A %lhs_or_call2892 to %A* 
  %ret2896 = call i32 %call2893 ( %A* %cast_op2895 )
  ret i32 %ret2896
}


define void @a252.init253 (){
__fresh501:
  %mem_ptr2884 = call i32* @oat_malloc ( i32 8 )
  %obj2885 = bitcast i32* %mem_ptr2884 to %C* 
  %new_obj2886 = call %C* @_C_ctor ( %C* %obj2885 )
  %cast_op2887 = bitcast %C* %new_obj2886 to %A* 
  store %A* %cast_op2887, %A** @a252
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh500:
  %foo2881 = getelementptr %_C_vtable* @_C_vtable251, i32 0, i32 3
  %foo2880 = load i32 (%A*, i32)** %foo2881
  %cast_op2882 = bitcast %C %_this1 to %A* 
  %ret2883 = call i32 %foo2880 ( %A* %cast_op2882, i32 3 )
  ret i32 %ret2883
}


define i32 @_C_notover (%C* %_this1, i32 %x2876){
__fresh499:
  %x_slot2877 = alloca i32
  store i32 %x2876, i32* %x_slot2877
  %lhs_or_call2878 = load i32* %x_slot2877
  %bop2879 = add i32 %lhs_or_call2878, 1
  ret i32 %bop2879
}


define %C* @_C_ctor (%C* %_this1){
__fresh498:
  %lhs_or_call2867 = load %C* %_this1
  %cast_op2868 = bitcast %C %lhs_or_call2867 to %B* 
  %mem_ptr2869 = call i32* @oat_malloc ( i32 8 )
  %obj2870 = bitcast i32* %mem_ptr2869 to %B* 
  %new_obj2871 = call %B* @_B_ctor ( %B* %obj2870, %B* %cast_op2868 )
  %_name2872 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call2873 = load %C* %_this1
  %cast_op2874 = bitcast %C %lhs_or_call2873 to i8* 
  store i8* %cast_op2874, i8** %_name2872
  %this_vtable2875 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable2875
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh497:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2863){
__fresh496:
  %x_slot2864 = alloca i32
  store i32 %x2863, i32* %x_slot2864
  %lhs_or_call2865 = load i32* %x_slot2864
  %bop2866 = add i32 %lhs_or_call2865, 2
  ret i32 %bop2866
}


define %B* @_B_ctor (%B* %_this1){
__fresh495:
  %lhs_or_call2854 = load %B* %_this1
  %cast_op2855 = bitcast %B %lhs_or_call2854 to %A* 
  %mem_ptr2856 = call i32* @oat_malloc ( i32 8 )
  %obj2857 = bitcast i32* %mem_ptr2856 to %A* 
  %new_obj2858 = call %A* @_A_ctor ( %A* %obj2857, %A* %cast_op2855 )
  %_name2859 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call2860 = load %B* %_this1
  %cast_op2861 = bitcast %B %lhs_or_call2860 to i8* 
  store i8* %cast_op2861, i8** %_name2859
  %this_vtable2862 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2862
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh494:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2850){
__fresh493:
  %x_slot2851 = alloca i32
  store i32 %x2850, i32* %x_slot2851
  %lhs_or_call2852 = load i32* %x_slot2851
  %bop2853 = add i32 %lhs_or_call2852, 8
  ret i32 %bop2853
}


define i32 @_A_over (%A* %_this1, i32 %x2846){
__fresh492:
  %x_slot2847 = alloca i32
  store i32 %x2846, i32* %x_slot2847
  %lhs_or_call2848 = load i32* %x_slot2847
  %bop2849 = add i32 %lhs_or_call2848, 1
  ret i32 %bop2849
}


define %A* @_A_ctor (%A* %_this1){
__fresh491:
  %lhs_or_call2837 = load %A* %_this1
  %cast_op2838 = bitcast %A %lhs_or_call2837 to %Object* 
  %mem_ptr2839 = call i32* @oat_malloc ( i32 8 )
  %obj2840 = bitcast i32* %mem_ptr2839 to %Object* 
  %new_obj2841 = call %Object* @_Object_ctor ( %Object* %obj2840, %Object* %cast_op2838 )
  %_name2842 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2843 = load %A* %_this1
  %cast_op2844 = bitcast %A %lhs_or_call2843 to i8* 
  store i8* %cast_op2844, i8** %_name2842
  %this_vtable2845 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2845
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh490:
  %_name2835 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2836 = load i8** %_name2835
  ret i8* %lhs_or_call2836
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh489:
  %_name2831 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2832 = load %Object* %_this1
  %cast_op2833 = bitcast %Object %lhs_or_call2832 to i8* 
  store i8* %cast_op2833, i8** %_name2831
  %this_vtable2834 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2834
  ret %Object* %_this1
}


