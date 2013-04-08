%C2 = type { %_C2_vtable*, i8* }
%_C2_vtable = type { %_B_vtable*, i8* (%Object*)* }
%C1 = type { %_C1_vtable*, i8* }
%_C1_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str568.str. = private unnamed_addr constant [ 3 x i8 ] c "C2\00", align 4
@_const_str568 = alias bitcast([ 3 x i8 ]* @_const_str568.str. to i8*)@_const_str567.str. = private unnamed_addr constant [ 3 x i8 ] c "C1\00", align 4
@_const_str567 = alias bitcast([ 3 x i8 ]* @_const_str567.str. to i8*)@_const_str566.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str566 = alias bitcast([ 2 x i8 ]* @_const_str566.str. to i8*)@_const_str565.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str565 = alias bitcast([ 2 x i8 ]* @_const_str565.str. to i8*)@_const_str564.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str564 = alias bitcast([ 7 x i8 ]* @_const_str564.str. to i8*)@_C2_vtable563 = private constant %_C2_vtable {%_B_vtable* @_B_vtable561, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable562 = private constant %_C1_vtable {%_B_vtable* @_B_vtable561, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable561 = private constant %_B_vtable {%_A_vtable* @_A_vtable560, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable560 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable559, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable559 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh627:
  ret void
}


define i32 @program (i32 %argc2919, { i32, [ 0 x i8* ] }* %argv2917){
__fresh626:
  %argc_slot2920 = alloca i32
  store i32 %argc2919, i32* %argc_slot2920
  %argv_slot2918 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2917, { i32, [ 0 x i8* ] }** %argv_slot2918
  %mem_ptr2921 = call i32* @oat_malloc ( i32 8 )
  %obj2922 = bitcast i32* %mem_ptr2921 to %A* 
  %new_obj2923 = call %A* @_A_ctor ( %A* %obj2922 )
  %vdecl_slot2924 = alloca %A*
  store %A* %new_obj2923, %A** %vdecl_slot2924
  %mem_ptr2925 = call i32* @oat_malloc ( i32 8 )
  %obj2926 = bitcast i32* %mem_ptr2925 to %B* 
  %new_obj2927 = call %B* @_B_ctor ( %B* %obj2926 )
  %vdecl_slot2928 = alloca %B*
  store %B* %new_obj2927, %B** %vdecl_slot2928
  %mem_ptr2929 = call i32* @oat_malloc ( i32 8 )
  %obj2930 = bitcast i32* %mem_ptr2929 to %C1* 
  %new_obj2931 = call %C1* @_C1_ctor ( %C1* %obj2930 )
  %vdecl_slot2932 = alloca %C1*
  store %C1* %new_obj2931, %C1** %vdecl_slot2932
  %mem_ptr2933 = call i32* @oat_malloc ( i32 8 )
  %obj2934 = bitcast i32* %mem_ptr2933 to %C2* 
  %new_obj2935 = call %C2* @_C2_ctor ( %C2* %obj2934 )
  %vdecl_slot2936 = alloca %C2*
  store %C2* %new_obj2935, %C2** %vdecl_slot2936
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh625:
  %cast_op2911 = bitcast %C2* %_this1 to %B* 
  %mem_ptr2912 = call i32* @oat_malloc ( i32 8 )
  %obj2913 = bitcast i32* %mem_ptr2912 to %C2* 
  %new_obj2914 = call %B* @_B_ctor ( %C2* %obj2913, %B* %cast_op2911 )
  %_this1 = bitcast %B* %new_obj2914 to %C2 
  %_name2915 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str568, i8** %_name2915
  %this_vtable2916 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable563, %_C2_vtable** %this_vtable2916
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh624:
  %cast_op2905 = bitcast %C1* %_this1 to %B* 
  %mem_ptr2906 = call i32* @oat_malloc ( i32 8 )
  %obj2907 = bitcast i32* %mem_ptr2906 to %C1* 
  %new_obj2908 = call %B* @_B_ctor ( %C1* %obj2907, %B* %cast_op2905 )
  %_this1 = bitcast %B* %new_obj2908 to %C1 
  %_name2909 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str567, i8** %_name2909
  %this_vtable2910 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable562, %_C1_vtable** %this_vtable2910
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh623:
  %cast_op2899 = bitcast %B* %_this1 to %A* 
  %mem_ptr2900 = call i32* @oat_malloc ( i32 8 )
  %obj2901 = bitcast i32* %mem_ptr2900 to %B* 
  %new_obj2902 = call %A* @_A_ctor ( %B* %obj2901, %A* %cast_op2899 )
  %_this1 = bitcast %A* %new_obj2902 to %B 
  %_name2903 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str566, i8** %_name2903
  %this_vtable2904 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable561, %_B_vtable** %this_vtable2904
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh622:
  %cast_op2893 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2894 = call i32* @oat_malloc ( i32 8 )
  %obj2895 = bitcast i32* %mem_ptr2894 to %A* 
  %new_obj2896 = call %Object* @_Object_ctor ( %A* %obj2895, %Object* %cast_op2893 )
  %_this1 = bitcast %Object* %new_obj2896 to %A 
  %_name2897 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str565, i8** %_name2897
  %this_vtable2898 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable560, %_A_vtable** %this_vtable2898
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh621:
  %_name2891 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2892 = load i8** %_name2891
  ret i8* %lhs_or_call2892
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh620:
  %_name2889 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str564, i8** %_name2889
  %this_vtable2890 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable559, %_Object_vtable** %this_vtable2890
  ret %Object* %_this1
}


