%Owl = type { %_Owl_vtable*, i8* }
%_Owl_vtable = type { %_Wl_vtable*, i8* (%Object*)*, i8* (%Owl*)*, i32 (%Wl*)*, i32 (%Owl*)*, i32 (%Owl*)* }
%Wl = type { %_Wl_vtable*, i8* }
%_Wl_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Wl*)*, i32 (%Wl*)*, i32 (%Wl*)* }
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
@o259 = global %Owl* zeroinitializer, align 4		; initialized by @o259.init260
@_const_str258.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str258 = alias bitcast([ 6 x i8 ]* @_const_str258.str. to i8*)@_const_str257.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str257 = alias bitcast([ 5 x i8 ]* @_const_str257.str. to i8*)@_Owl_vtable256 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable255, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable255 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable254, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable254 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh517:
  call void @o259.init260(  )
  ret void
}


define i32 @program (i32 %argc2939, { i32, [ 0 x i8* ] }* %argv2937){
__fresh516:
  %argc_slot2940 = alloca i32
  store i32 %argc2939, i32* %argc_slot2940
  %argv_slot2938 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2937, { i32, [ 0 x i8* ] }** %argv_slot2938
  %lhs_or_call2941 = load %Owl** @o259
  %cast_op2942 = bitcast %Owl* %lhs_or_call2941 to %Wl* 
  %ret2943 = call i8* @getNoise ( %Wl* %cast_op2942 )
  call void @print_string( i8* %ret2943 )
  %lhs_or_call2944 = load %Owl** @o259
  %childmethod2946 = getelementptr %_Owl_vtable* @_Owl_vtable256, i32 0, i32 5
  %childmethod2945 = load i32 (%Owl*)** %childmethod2946
  %cast_op2947 = bitcast %Owl %lhs_or_call2944 to %Owl* 
  %ret2948 = call i32 %childmethod2945 ( %Owl* %cast_op2947 )
  %lhs_or_call2949 = load %Owl** @o259
  %parentmethod2951 = getelementptr %_Owl_vtable* @_Owl_vtable256, i32 0, i32 3
  %parentmethod2950 = load i32 (%Wl*)** %parentmethod2951
  %cast_op2952 = bitcast %Owl %lhs_or_call2949 to %Wl* 
  %ret2953 = call i32 %parentmethod2950 ( %Wl* %cast_op2952 )
  %bop2954 = add i32 %ret2948, %ret2953
  %lhs_or_call2955 = load %Owl** @o259
  %secondoverride2957 = getelementptr %_Owl_vtable* @_Owl_vtable256, i32 0, i32 4
  %secondoverride2956 = load i32 (%Owl*)** %secondoverride2957
  %cast_op2958 = bitcast %Owl %lhs_or_call2955 to %Owl* 
  %ret2959 = call i32 %secondoverride2956 ( %Owl* %cast_op2958 )
  %bop2960 = add i32 %bop2954, %ret2959
  ret i32 %bop2960
}


define void @o259.init260 (){
__fresh515:
  %mem_ptr2934 = call i32* @oat_malloc ( i32 8 )
  %obj2935 = bitcast i32* %mem_ptr2934 to %Owl* 
  %new_obj2936 = call %Owl* @_Owl_ctor ( %Owl* %obj2935 )
  store %Owl* %new_obj2936, %Owl** @o259
  ret void
}


define i8* @getNoise (%Wl* %thing2927){
__fresh514:
  %thing_slot2928 = alloca %Wl*
  store %Wl* %thing2927, %Wl** %thing_slot2928
  %lhs_or_call2929 = load %Wl** %thing_slot2928
  %noise2931 = getelementptr %_Wl_vtable* @_Wl_vtable255, i32 0, i32 2
  %noise2930 = load i8* (%Wl*)** %noise2931
  %cast_op2932 = bitcast %Wl %lhs_or_call2929 to %Wl* 
  %ret2933 = call i8* %noise2930 ( %Wl* %cast_op2932 )
  ret i8* %ret2933
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh513:
  %secondoverride2923 = getelementptr %_Owl_vtable* @_Owl_vtable256, i32 0, i32 4
  %secondoverride2922 = load i32 (%Owl*)** %secondoverride2923
  %cast_op2924 = bitcast %Owl %_this1 to %Owl* 
  %ret2925 = call i32 %secondoverride2922 ( %Owl* %cast_op2924 )
  %bop2926 = add i32 %ret2925, 1
  ret i32 %bop2926
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh512:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh511:
  ret i8* @_const_str258
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh510:
  %lhs_or_call2913 = load %Owl* %_this1
  %cast_op2914 = bitcast %Owl %lhs_or_call2913 to %Wl* 
  %mem_ptr2915 = call i32* @oat_malloc ( i32 8 )
  %obj2916 = bitcast i32* %mem_ptr2915 to %Wl* 
  %new_obj2917 = call %Wl* @_Wl_ctor ( %Wl* %obj2916, %Wl* %cast_op2914 )
  %_name2918 = getelementptr %Owl* %_this1, i32 0, i32 1
  %lhs_or_call2919 = load %Owl* %_this1
  %cast_op2920 = bitcast %Owl %lhs_or_call2919 to i8* 
  store i8* %cast_op2920, i8** %_name2918
  %this_vtable2921 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %Owl* %_this1, %_Owl_vtable* %this_vtable2921
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh509:
  %unop2912 = sub i32 0, 2
  ret i32 %unop2912
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh508:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh507:
  ret i8* @_const_str257
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh506:
  %lhs_or_call2903 = load %Wl* %_this1
  %cast_op2904 = bitcast %Wl %lhs_or_call2903 to %Object* 
  %mem_ptr2905 = call i32* @oat_malloc ( i32 8 )
  %obj2906 = bitcast i32* %mem_ptr2905 to %Object* 
  %new_obj2907 = call %Object* @_Object_ctor ( %Object* %obj2906, %Object* %cast_op2904 )
  %_name2908 = getelementptr %Wl* %_this1, i32 0, i32 1
  %lhs_or_call2909 = load %Wl* %_this1
  %cast_op2910 = bitcast %Wl %lhs_or_call2909 to i8* 
  store i8* %cast_op2910, i8** %_name2908
  %this_vtable2911 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %Wl* %_this1, %_Wl_vtable* %this_vtable2911
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh505:
  %_name2901 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2902 = load i8** %_name2901
  ret i8* %lhs_or_call2902
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh504:
  %_name2897 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2898 = load %Object* %_this1
  %cast_op2899 = bitcast %Object %lhs_or_call2898 to i8* 
  store i8* %cast_op2899, i8** %_name2897
  %this_vtable2900 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2900
  ret %Object* %_this1
}


