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


define i32 @program (i32 %argc2940, { i32, [ 0 x i8* ] }* %argv2938){
__fresh619:
  %argc_slot2941 = alloca i32
  store i32 %argc2940, i32* %argc_slot2941
  %argv_slot2939 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2938, { i32, [ 0 x i8* ] }** %argv_slot2939
  %vdecl_slot2942 = alloca i8*
  store i8* null, i8** %vdecl_slot2942
  %vdecl_slot2943 = alloca i8*
  store i8* @_const_str562, i8** %vdecl_slot2943
  %vdecl_slot2944 = alloca i8*
  store i8* null, i8** %vdecl_slot2944
  %vdecl_slot2945 = alloca i32
  store i32 0, i32* %vdecl_slot2945
  %lhs_or_call2946 = load i8** %vdecl_slot2942
  %ifnull_slot2947 = alloca i8*
  store i8* %lhs_or_call2946, i8** %ifnull_slot2947
  %ifnull_guard2948 = icmp ne i8* %lhs_or_call2946, null
  br i1 %ifnull_guard2948, label %__then615, label %__else614

__fresh620:
  br label %__then615

__then615:
  %lhs_or_call2949 = load i8** %ifnull_slot2947
  call void @print_string( i8* %lhs_or_call2949 )
  %lhs_or_call2950 = load i32* %vdecl_slot2945
  %bop2951 = add i32 %lhs_or_call2950, 2
  store i32 %bop2951, i32* %vdecl_slot2945
  %lhs_or_call2952 = load i8** %vdecl_slot2942
  store i8* %lhs_or_call2952, i8** %vdecl_slot2944
  br label %__merge613

__fresh621:
  br label %__else614

__else614:
  br label %__merge613

__merge613:
  %lhs_or_call2953 = load i8** %vdecl_slot2943
  %ifnull_slot2954 = alloca i8*
  store i8* %lhs_or_call2953, i8** %ifnull_slot2954
  %ifnull_guard2955 = icmp ne i8* %lhs_or_call2953, null
  br i1 %ifnull_guard2955, label %__then618, label %__else617

__fresh622:
  br label %__then618

__then618:
  %lhs_or_call2956 = load i8** %ifnull_slot2954
  call void @print_string( i8* %lhs_or_call2956 )
  %lhs_or_call2957 = load i32* %vdecl_slot2945
  %bop2958 = add i32 %lhs_or_call2957, 40
  store i32 %bop2958, i32* %vdecl_slot2945
  %lhs_or_call2959 = load i8** %vdecl_slot2942
  store i8* %lhs_or_call2959, i8** %vdecl_slot2944
  br label %__merge616

__fresh623:
  br label %__else617

__else617:
  br label %__merge616

__merge616:
  %lhs_or_call2960 = load i32* %vdecl_slot2945
  ret i32 %lhs_or_call2960
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh612:
  %_name2936 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2937 = load i8** %_name2936
  ret i8* %lhs_or_call2937
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh611:
  %_name2934 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str561, i8** %_name2934
  %this_vtable2935 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable560, %_Object_vtable** %this_vtable2935
  ret %Object* %_this1
}


