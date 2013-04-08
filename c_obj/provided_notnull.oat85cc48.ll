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


define i32 @program (i32 %argc2943, { i32, [ 0 x i8* ] }* %argv2941){
__fresh619:
  %argc_slot2944 = alloca i32
  store i32 %argc2943, i32* %argc_slot2944
  %argv_slot2942 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2941, { i32, [ 0 x i8* ] }** %argv_slot2942
  %vdecl_slot2945 = alloca i8*
  store i8* null, i8** %vdecl_slot2945
  %vdecl_slot2946 = alloca i8*
  store i8* @_const_str573, i8** %vdecl_slot2946
  %vdecl_slot2947 = alloca i8*
  store i8* null, i8** %vdecl_slot2947
  %vdecl_slot2948 = alloca i32
  store i32 0, i32* %vdecl_slot2948
  %lhs_or_call2949 = load i8** %vdecl_slot2945
  %ifnull_slot2950 = alloca i8*
  store i8* %lhs_or_call2949, i8** %ifnull_slot2950
  %ifnull_guard2951 = icmp ne i8* %lhs_or_call2949, null
  br i1 %ifnull_guard2951, label %__then615, label %__else614

__fresh620:
  br label %__then615

__then615:
  %lhs_or_call2952 = load i8** %ifnull_slot2950
  call void @print_string( i8* %lhs_or_call2952 )
  %lhs_or_call2953 = load i32* %vdecl_slot2948
  %bop2954 = add i32 %lhs_or_call2953, 2
  store i32 %bop2954, i32* %vdecl_slot2948
  %lhs_or_call2955 = load i8** %vdecl_slot2945
  store i8* %lhs_or_call2955, i8** %vdecl_slot2947
  br label %__merge613

__fresh621:
  br label %__else614

__else614:
  br label %__merge613

__merge613:
  %lhs_or_call2956 = load i8** %vdecl_slot2946
  %ifnull_slot2957 = alloca i8*
  store i8* %lhs_or_call2956, i8** %ifnull_slot2957
  %ifnull_guard2958 = icmp ne i8* %lhs_or_call2956, null
  br i1 %ifnull_guard2958, label %__then618, label %__else617

__fresh622:
  br label %__then618

__then618:
  %lhs_or_call2959 = load i8** %ifnull_slot2957
  call void @print_string( i8* %lhs_or_call2959 )
  %lhs_or_call2960 = load i32* %vdecl_slot2948
  %bop2961 = add i32 %lhs_or_call2960, 40
  store i32 %bop2961, i32* %vdecl_slot2948
  %lhs_or_call2962 = load i8** %vdecl_slot2945
  store i8* %lhs_or_call2962, i8** %vdecl_slot2947
  br label %__merge616

__fresh623:
  br label %__else617

__else617:
  br label %__merge616

__merge616:
  %lhs_or_call2963 = load i32* %vdecl_slot2948
  ret i32 %lhs_or_call2963
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh612:
  %_name2939 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2940 = load i8** %_name2939
  ret i8* %lhs_or_call2940
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh611:
  %_name2937 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str572, i8** %_name2937
  %this_vtable2938 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable571, %_Object_vtable** %this_vtable2938
  ret %Object* %_this1
}


