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
@_const_str573.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str573 = alias bitcast([ 6 x i8 ]* @_const_str573.str. to i8*)@_const_str572.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str572 = alias bitcast([ 7 x i8 ]* @_const_str572.str. to i8*)@_Object_vtable571 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh624:
  ret void
}


define i32 @program (i32 %argc2952, { i32, [ 0 x i8* ] }* %argv2950){
__fresh619:
  %argc_slot2953 = alloca i32
  store i32 %argc2952, i32* %argc_slot2953
  %argv_slot2951 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2950, { i32, [ 0 x i8* ] }** %argv_slot2951
  %vdecl_slot2954 = alloca i8*
  store i8* null, i8** %vdecl_slot2954
  %vdecl_slot2955 = alloca i8*
  store i8* @_const_str573, i8** %vdecl_slot2955
  %vdecl_slot2956 = alloca i8*
  store i8* null, i8** %vdecl_slot2956
  %vdecl_slot2957 = alloca i32
  store i32 0, i32* %vdecl_slot2957
  %lhs_or_call2958 = load i8** %vdecl_slot2954
  %ifnull_slot2959 = alloca i8*
  store i8* %lhs_or_call2958, i8** %ifnull_slot2959
  %ifnull_guard2960 = icmp ne i8* %lhs_or_call2958, null
  br i1 %ifnull_guard2960, label %__then615, label %__else614

__fresh620:
  br label %__then615

__then615:
  %lhs_or_call2961 = load i8** %ifnull_slot2959
  call void @print_string( i8* %lhs_or_call2961 )
  %lhs_or_call2962 = load i32* %vdecl_slot2957
  %bop2963 = add i32 %lhs_or_call2962, 2
  store i32 %bop2963, i32* %vdecl_slot2957
  %lhs_or_call2964 = load i8** %vdecl_slot2954
  store i8* %lhs_or_call2964, i8** %vdecl_slot2956
  br label %__merge613

__fresh621:
  br label %__else614

__else614:
  br label %__merge613

__merge613:
  %lhs_or_call2965 = load i8** %vdecl_slot2955
  %ifnull_slot2966 = alloca i8*
  store i8* %lhs_or_call2965, i8** %ifnull_slot2966
  %ifnull_guard2967 = icmp ne i8* %lhs_or_call2965, null
  br i1 %ifnull_guard2967, label %__then618, label %__else617

__fresh622:
  br label %__then618

__then618:
  %lhs_or_call2968 = load i8** %ifnull_slot2966
  call void @print_string( i8* %lhs_or_call2968 )
  %lhs_or_call2969 = load i32* %vdecl_slot2957
  %bop2970 = add i32 %lhs_or_call2969, 40
  store i32 %bop2970, i32* %vdecl_slot2957
  %lhs_or_call2971 = load i8** %vdecl_slot2954
  store i8* %lhs_or_call2971, i8** %vdecl_slot2956
  br label %__merge616

__fresh623:
  br label %__else617

__else617:
  br label %__merge616

__merge616:
  %lhs_or_call2972 = load i32* %vdecl_slot2957
  ret i32 %lhs_or_call2972
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh612:
  %_name2948 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2949 = load i8** %_name2948
  ret i8* %lhs_or_call2949
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh611:
  %_name2946 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str572, i8** %_name2946
  %this_vtable2947 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable571, %_Object_vtable** %this_vtable2947
  ret %Object* %_this1
}


