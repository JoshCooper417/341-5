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
@x509 = global i32 0, align 4
@a507 = global %A* zeroinitializer, align 4		; initialized by @a507.init508
@_const_str506.str. = private unnamed_addr constant [ 6 x i8 ] c "C: w=\00", align 4
@_const_str506 = alias bitcast([ 6 x i8 ]* @_const_str506.str. to i8*)@_const_str505.str. = private unnamed_addr constant [ 6 x i8 ] c "C: z=\00", align 4
@_const_str505 = alias bitcast([ 6 x i8 ]* @_const_str505.str. to i8*)@_const_str504.str. = private unnamed_addr constant [ 6 x i8 ] c "C: y=\00", align 4
@_const_str504 = alias bitcast([ 6 x i8 ]* @_const_str504.str. to i8*)@_const_str503.str. = private unnamed_addr constant [ 6 x i8 ] c "C: x=\00", align 4
@_const_str503 = alias bitcast([ 6 x i8 ]* @_const_str503.str. to i8*)@_const_str502.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: b=\00", align 4
@_const_str502 = alias bitcast([ 10 x i8 ]* @_const_str502.str. to i8*)@_const_str501.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: a=\00", align 4
@_const_str501 = alias bitcast([ 10 x i8 ]* @_const_str501.str. to i8*)@_const_str500.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str500 = alias bitcast([ 2 x i8 ]* @_const_str500.str. to i8*)@_const_str499.str. = private unnamed_addr constant [ 6 x i8 ] c "B: z=\00", align 4
@_const_str499 = alias bitcast([ 6 x i8 ]* @_const_str499.str. to i8*)@_const_str498.str. = private unnamed_addr constant [ 6 x i8 ] c "B: y=\00", align 4
@_const_str498 = alias bitcast([ 6 x i8 ]* @_const_str498.str. to i8*)@_const_str497.str. = private unnamed_addr constant [ 6 x i8 ] c "B: x=\00", align 4
@_const_str497 = alias bitcast([ 6 x i8 ]* @_const_str497.str. to i8*)@_const_str496.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str496 = alias bitcast([ 2 x i8 ]* @_const_str496.str. to i8*)@_const_str495.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str495 = alias bitcast([ 6 x i8 ]* @_const_str495.str. to i8*)@_const_str494.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str494 = alias bitcast([ 2 x i8 ]* @_const_str494.str. to i8*)@_const_str493.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str493 = alias bitcast([ 7 x i8 ]* @_const_str493.str. to i8*)@_C_vtable492 = private constant %_C_vtable {%_B_vtable* @_B_vtable491, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print, void (%C*, i32, i32)* @_C_foo}, align 4
@_B_vtable491 = private constant %_B_vtable {%_A_vtable* @_A_vtable490, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_print}, align 4
@_A_vtable490 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable489, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable489 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh840:
  call void @a507.init508(  )
  ret void
}


define i32 @program (i32 %argc2965, { i32, [ 0 x i8* ] }* %argv2963){
__fresh839:
  %argc_slot2966 = alloca i32
  store i32 %argc2965, i32* %argc_slot2966
  %argv_slot2964 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2963, { i32, [ 0 x i8* ] }** %argv_slot2964
  %lhs_or_call2967 = load i32* @x509
  %bop2968 = add i32 %lhs_or_call2967, 3
  %lhs_or_call2969 = load i32* @x509
  %bop2970 = add i32 %lhs_or_call2969, 2
  %lhs_or_call2971 = load i32* @x509
  %bop2972 = add i32 %lhs_or_call2971, 1
  %mem_ptr2973 = call i32* @oat_malloc ( i32 20 )
  %obj2974 = bitcast i32* %mem_ptr2973 to %B* 
  %new_obj2975 = call %B* @_B_ctor ( %B* %obj2974, i32 %bop2972, i32 %bop2970, i32 %bop2968 )
  %vdecl_slot2976 = alloca %B*
  store %B* %new_obj2975, %B** %vdecl_slot2976
  %mem_ptr2977 = call i32* @oat_malloc ( i32 24 )
  %obj2978 = bitcast i32* %mem_ptr2977 to %C* 
  %new_obj2979 = call %C* @_C_ctor ( %C* %obj2978, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2980 = alloca %C*
  store %C* %new_obj2979, %C** %vdecl_slot2980
  %lhs_or_call2981 = load %A** @a507
  %vtable_ptr2982 = getelementptr %A* %lhs_or_call2981, i32 0
  %vtable2983 = load %_A_vtable** %vtable_ptr2982
  %print2985 = getelementptr %_A_vtable* %vtable2983, i32 0, i32 2
  %print2984 = load void (%A*)** %print2985
  %cast_op2986 = bitcast %A %lhs_or_call2981 to %A* 
  call void %print2984( %A* %cast_op2986 )
  %lhs_or_call2987 = load %B** %vdecl_slot2976
  %vtable_ptr2988 = getelementptr %B* %lhs_or_call2987, i32 0
  %vtable2989 = load %_B_vtable** %vtable_ptr2988
  %print2991 = getelementptr %_B_vtable* %vtable2989, i32 0, i32 2
  %print2990 = load void (%B*)** %print2991
  %cast_op2992 = bitcast %B %lhs_or_call2987 to %B* 
  call void %print2990( %B* %cast_op2992 )
  %lhs_or_call2993 = load %C** %vdecl_slot2980
  %vtable_ptr2994 = getelementptr %C* %lhs_or_call2993, i32 0
  %vtable2995 = load %_C_vtable** %vtable_ptr2994
  %print2997 = getelementptr %_C_vtable* %vtable2995, i32 0, i32 2
  %print2996 = load void (%C*)** %print2997
  %cast_op2998 = bitcast %C %lhs_or_call2993 to %C* 
  call void %print2996( %C* %cast_op2998 )
  %lhs_or_call2999 = load i32* @x509
  %bop3000 = add i32 %lhs_or_call2999, 2
  %lhs_or_call3001 = load i32* @x509
  %bop3002 = add i32 %lhs_or_call3001, 1
  %lhs_or_call3003 = load %C** %vdecl_slot2980
  %vtable_ptr3004 = getelementptr %C* %lhs_or_call3003, i32 0
  %vtable3005 = load %_C_vtable** %vtable_ptr3004
  %foo3007 = getelementptr %_C_vtable* %vtable3005, i32 0, i32 3
  %foo3006 = load void (%C*, i32, i32)** %foo3007
  %cast_op3008 = bitcast %C %lhs_or_call3003 to %C* 
  call void %foo3006( %C* %cast_op3008, i32 %bop3002, i32 %bop3000 )
  ret i32 0
}


define void @a507.init508 (){
__fresh838:
  %mem_ptr2960 = call i32* @oat_malloc ( i32 12 )
  %obj2961 = bitcast i32* %mem_ptr2960 to %A* 
  %new_obj2962 = call %A* @_A_ctor ( %A* %obj2961, i32 3 )
  store %A* %new_obj2962, %A** @a507
  ret void
}


define void @_C_print (%C* %_this1){
__fresh837:
  %x2944 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2945 = load i32* %x2944
  %ret2946 = call i8* @string_of_int ( i32 %lhs_or_call2945 )
  %ret2947 = call i8* @string_cat ( i8* @_const_str503, i8* %ret2946 )
  call void @print_string( i8* %ret2947 )
  %y2948 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2949 = load i32* %y2948
  %ret2950 = call i8* @string_of_int ( i32 %lhs_or_call2949 )
  %ret2951 = call i8* @string_cat ( i8* @_const_str504, i8* %ret2950 )
  call void @print_string( i8* %ret2951 )
  %z2952 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2953 = load i32* %z2952
  %ret2954 = call i8* @string_of_int ( i32 %lhs_or_call2953 )
  %ret2955 = call i8* @string_cat ( i8* @_const_str505, i8* %ret2954 )
  call void @print_string( i8* %ret2955 )
  %w2956 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2957 = load i32* %w2956
  %ret2958 = call i8* @string_of_int ( i32 %lhs_or_call2957 )
  %ret2959 = call i8* @string_cat ( i8* @_const_str506, i8* %ret2958 )
  call void @print_string( i8* %ret2959 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2936, i32 %b2934){
__fresh836:
  %a_slot2937 = alloca i32
  store i32 %a2936, i32* %a_slot2937
  %b_slot2935 = alloca i32
  store i32 %b2934, i32* %b_slot2935
  %lhs_or_call2938 = load i32* %a_slot2937
  %ret2939 = call i8* @string_of_int ( i32 %lhs_or_call2938 )
  %ret2940 = call i8* @string_cat ( i8* @_const_str501, i8* %ret2939 )
  call void @print_string( i8* %ret2940 )
  %lhs_or_call2941 = load i32* %b_slot2935
  %ret2942 = call i8* @string_of_int ( i32 %lhs_or_call2941 )
  %ret2943 = call i8* @string_cat ( i8* @_const_str502, i8* %ret2942 )
  call void @print_string( i8* %ret2943 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2922, i32 %y2920, i32 %z2918, i32 %w2916){
__fresh835:
  %x_slot2923 = alloca i32
  store i32 %x2922, i32* %x_slot2923
  %y_slot2921 = alloca i32
  store i32 %y2920, i32* %y_slot2921
  %z_slot2919 = alloca i32
  store i32 %z2918, i32* %z_slot2919
  %w_slot2917 = alloca i32
  store i32 %w2916, i32* %w_slot2917
  %lhs_or_call2926 = load i32* %x_slot2923
  %lhs_or_call2927 = load i32* %y_slot2921
  %lhs_or_call2928 = load i32* %z_slot2919
  %mem_ptr2929 = call i32* @oat_malloc ( i32 20 )
  %obj2930 = bitcast i32* %mem_ptr2929 to %B* 
  %new_obj2931 = call %B* @_B_ctor ( %B* %obj2930, i32 %lhs_or_call2928, i32 %lhs_or_call2927, i32 %lhs_or_call2926 )
  %_this1 = bitcast %B* %new_obj2931 to %C 
  %_name2932 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str500, i8** %_name2932
  %this_vtable2933 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable492, %_C_vtable** %this_vtable2933
  %w2924 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2925 = load i32* %w_slot2917
  store i32 %lhs_or_call2925, i32* %w2924
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh834:
  %x2904 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2905 = load i32* %x2904
  %ret2906 = call i8* @string_of_int ( i32 %lhs_or_call2905 )
  %ret2907 = call i8* @string_cat ( i8* @_const_str497, i8* %ret2906 )
  call void @print_string( i8* %ret2907 )
  %y2908 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2909 = load i32* %y2908
  %ret2910 = call i8* @string_of_int ( i32 %lhs_or_call2909 )
  %ret2911 = call i8* @string_cat ( i8* @_const_str498, i8* %ret2910 )
  call void @print_string( i8* %ret2911 )
  %z2912 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2913 = load i32* %z2912
  %ret2914 = call i8* @string_of_int ( i32 %lhs_or_call2913 )
  %ret2915 = call i8* @string_cat ( i8* @_const_str499, i8* %ret2914 )
  call void @print_string( i8* %ret2915 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2892, i32 %y2890, i32 %z2888){
__fresh833:
  %x_slot2893 = alloca i32
  store i32 %x2892, i32* %x_slot2893
  %y_slot2891 = alloca i32
  store i32 %y2890, i32* %y_slot2891
  %z_slot2889 = alloca i32
  store i32 %z2888, i32* %z_slot2889
  %lhs_or_call2898 = load i32* %x_slot2893
  %mem_ptr2899 = call i32* @oat_malloc ( i32 12 )
  %obj2900 = bitcast i32* %mem_ptr2899 to %A* 
  %new_obj2901 = call %A* @_A_ctor ( %A* %obj2900, i32 %lhs_or_call2898 )
  %_this1 = bitcast %A* %new_obj2901 to %B 
  %_name2902 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str496, i8** %_name2902
  %this_vtable2903 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable491, %_B_vtable** %this_vtable2903
  %y2894 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2895 = load i32* %y_slot2891
  store i32 %lhs_or_call2895, i32* %y2894
  %z2896 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2897 = load i32* %z_slot2889
  store i32 %lhs_or_call2897, i32* %z2896
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh832:
  %x2884 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2885 = load i32* %x2884
  %ret2886 = call i8* @string_of_int ( i32 %lhs_or_call2885 )
  %ret2887 = call i8* @string_cat ( i8* @_const_str495, i8* %ret2886 )
  call void @print_string( i8* %ret2887 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2875){
__fresh831:
  %x_slot2876 = alloca i32
  store i32 %x2875, i32* %x_slot2876
  %mem_ptr2879 = call i32* @oat_malloc ( i32 8 )
  %obj2880 = bitcast i32* %mem_ptr2879 to %Object* 
  %new_obj2881 = call %Object* @_Object_ctor ( %Object* %obj2880 )
  %_this1 = bitcast %Object* %new_obj2881 to %A 
  %_name2882 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str494, i8** %_name2882
  %this_vtable2883 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable490, %_A_vtable** %this_vtable2883
  %x2877 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2878 = load i32* %x_slot2876
  store i32 %lhs_or_call2878, i32* %x2877
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh830:
  %_name2873 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2874 = load i8** %_name2873
  ret i8* %lhs_or_call2874
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh829:
  %_name2871 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str493, i8** %_name2871
  %this_vtable2872 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable489, %_Object_vtable** %this_vtable2872
  ret %Object* %_this1
}


