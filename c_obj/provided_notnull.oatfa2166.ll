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
@_const_str562.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str562 = alias bitcast([ 6 x i8 ]* @_const_str562.str. to i8*)@_const_str561.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str561 = alias bitcast([ 7 x i8 ]* @_const_str561.str. to i8*)@_Object_vtable560 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh624:
  ret void
}


define i32 @program (i32 %argc2933, { i32, [ 0 x i8* ] }* %argv2931){
__fresh619:
  %argc_slot2934 = alloca i32
  store i32 %argc2933, i32* %argc_slot2934
  %argv_slot2932 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2931, { i32, [ 0 x i8* ] }** %argv_slot2932
  %vdecl_slot2935 = alloca i8*
  store i8* null, i8** %vdecl_slot2935
  %vdecl_slot2936 = alloca i8*
  store i8* @_const_str562, i8** %vdecl_slot2936
  %vdecl_slot2937 = alloca i8*
  store i8* null, i8** %vdecl_slot2937
  %vdecl_slot2938 = alloca i32
  store i32 0, i32* %vdecl_slot2938
  %lhs_or_call2939 = load i8** %vdecl_slot2935
  %ifnull_slot2940 = alloca i8*
  store i8* %lhs_or_call2939, i8** %ifnull_slot2940
  %ifnull_guard2941 = icmp ne i8* %lhs_or_call2939, null
  br i1 %ifnull_guard2941, label %__then615, label %__else614

__fresh620:
  br label %__then615

__then615:
  %lhs_or_call2942 = load i8** %ifnull_slot2940
  call void @print_string( i8* %lhs_or_call2942 )
  %lhs_or_call2943 = load i32* %vdecl_slot2938
  %bop2944 = add i32 %lhs_or_call2943, 2
  store i32 %bop2944, i32* %vdecl_slot2938
  %lhs_or_call2945 = load i8** %vdecl_slot2935
  store i8* %lhs_or_call2945, i8** %vdecl_slot2937
  br label %__merge613

__fresh621:
  br label %__else614

__else614:
  br label %__merge613

__merge613:
  %lhs_or_call2946 = load i8** %vdecl_slot2936
  %ifnull_slot2947 = alloca i8*
  store i8* %lhs_or_call2946, i8** %ifnull_slot2947
  %ifnull_guard2948 = icmp ne i8* %lhs_or_call2946, null
  br i1 %ifnull_guard2948, label %__then618, label %__else617

__fresh622:
  br label %__then618

__then618:
  %lhs_or_call2949 = load i8** %ifnull_slot2947
  call void @print_string( i8* %lhs_or_call2949 )
  %lhs_or_call2950 = load i32* %vdecl_slot2938
  %bop2951 = add i32 %lhs_or_call2950, 40
  store i32 %bop2951, i32* %vdecl_slot2938
  %lhs_or_call2952 = load i8** %vdecl_slot2935
  store i8* %lhs_or_call2952, i8** %vdecl_slot2937
  br label %__merge616

__fresh623:
  br label %__else617

__else617:
  br label %__merge616

__merge616:
  %lhs_or_call2953 = load i32* %vdecl_slot2938
  ret i32 %lhs_or_call2953
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh612:
  %_name2929 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2930 = load i8** %_name2929
  ret i8* %lhs_or_call2930
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh611:
  %_name2927 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str561, i8** %_name2927
  %this_vtable2928 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable560, %_Object_vtable** %this_vtable2928
  ret %Object* %_this1
}


