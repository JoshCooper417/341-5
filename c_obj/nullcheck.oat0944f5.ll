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
@s3518 = global i8* zeroinitializer, align 4		; initialized by @s3518.init519
@_const_str517.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str517 = alias bitcast([ 8 x i8 ]* @_const_str517.str. to i8*)@s2515 = global i8* zeroinitializer, align 4		; initialized by @s2515.init516
@s1513 = global i8* zeroinitializer, align 4		; initialized by @s1513.init514
@_const_str512.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str512 = alias bitcast([ 6 x i8 ]* @_const_str512.str. to i8*)@_const_str511.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str511 = alias bitcast([ 7 x i8 ]* @_const_str511.str. to i8*)@_Object_vtable510 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh862:
  call void @s1513.init514(  )
  call void @s2515.init516(  )
  call void @s3518.init519(  )
  ret void
}


define i32 @program (i32 %argc3015, { i32, [ 0 x i8* ] }* %argv3013){
__fresh855:
  %argc_slot3016 = alloca i32
  store i32 %argc3015, i32* %argc_slot3016
  %argv_slot3014 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3013, { i32, [ 0 x i8* ] }** %argv_slot3014
  %vdecl_slot3017 = alloca i32
  store i32 0, i32* %vdecl_slot3017
  %lhs_or_call3018 = load i8** @s1513
  %ifnull_slot3019 = alloca i8*
  store i8* %lhs_or_call3018, i8** %ifnull_slot3019
  %ifnull_guard3020 = icmp ne i8* %lhs_or_call3018, null
  br i1 %ifnull_guard3020, label %__then848, label %__else847

__fresh856:
  br label %__then848

__then848:
  %lhs_or_call3021 = load i8** %ifnull_slot3019
  %ret3022 = call i32 @length_of_string ( i8* %lhs_or_call3021 )
  store i32 %ret3022, i32* %vdecl_slot3017
  br label %__merge846

__fresh857:
  br label %__else847

__else847:
  store i32 0, i32* %vdecl_slot3017
  br label %__merge846

__merge846:
  %lhs_or_call3023 = load i8** @s2515
  %ifnull_slot3024 = alloca i8*
  store i8* %lhs_or_call3023, i8** %ifnull_slot3024
  %ifnull_guard3025 = icmp ne i8* %lhs_or_call3023, null
  br i1 %ifnull_guard3025, label %__then851, label %__else850

__fresh858:
  br label %__then851

__then851:
  %lhs_or_call3026 = load i32* %vdecl_slot3017
  %lhs_or_call3027 = load i8** %ifnull_slot3024
  %ret3028 = call i32 @length_of_string ( i8* %lhs_or_call3027 )
  %bop3029 = add i32 %lhs_or_call3026, %ret3028
  store i32 %bop3029, i32* %vdecl_slot3017
  br label %__merge849

__fresh859:
  br label %__else850

__else850:
  %lhs_or_call3030 = load i32* %vdecl_slot3017
  %bop3031 = add i32 %lhs_or_call3030, 30
  store i32 %bop3031, i32* %vdecl_slot3017
  br label %__merge849

__merge849:
  %lhs_or_call3032 = load i8** @s3518
  %ifnull_slot3033 = alloca i8*
  store i8* %lhs_or_call3032, i8** %ifnull_slot3033
  %ifnull_guard3034 = icmp ne i8* %lhs_or_call3032, null
  br i1 %ifnull_guard3034, label %__then854, label %__else853

__fresh860:
  br label %__then854

__then854:
  %lhs_or_call3035 = load i32* %vdecl_slot3017
  %lhs_or_call3036 = load i8** %ifnull_slot3033
  %ret3037 = call i32 @length_of_string ( i8* %lhs_or_call3036 )
  %bop3038 = add i32 %lhs_or_call3035, %ret3037
  store i32 %bop3038, i32* %vdecl_slot3017
  br label %__merge852

__fresh861:
  br label %__else853

__else853:
  %lhs_or_call3039 = load i32* %vdecl_slot3017
  %bop3040 = add i32 %lhs_or_call3039, 41
  store i32 %bop3040, i32* %vdecl_slot3017
  br label %__merge852

__merge852:
  %lhs_or_call3041 = load i32* %vdecl_slot3017
  ret i32 %lhs_or_call3041
}


define void @s3518.init519 (){
__fresh845:
  store i8* @_const_str517, i8** @s3518
  ret void
}


define void @s2515.init516 (){
__fresh844:
  store i8* null, i8** @s2515
  ret void
}


define void @s1513.init514 (){
__fresh843:
  store i8* @_const_str512, i8** @s1513
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh842:
  %_name3011 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3012 = load i8** %_name3011
  ret i8* %lhs_or_call3012
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh841:
  %_name3009 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str511, i8** %_name3009
  %this_vtable3010 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable510, %_Object_vtable** %this_vtable3010
  ret %Object* %_this1
}


