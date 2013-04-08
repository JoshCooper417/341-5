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
@_const_str582.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str582 = alias bitcast([ 6 x i8 ]* @_const_str582.str. to i8*)@_const_str581.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str581 = alias bitcast([ 7 x i8 ]* @_const_str581.str. to i8*)@_Object_vtable580 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh649:
  ret void
}


define i32 @program (i32 %argc2988, { i32, [ 0 x i8* ] }* %argv2986){
__fresh644:
  %argc_slot2989 = alloca i32
  store i32 %argc2988, i32* %argc_slot2989
  %argv_slot2987 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2986, { i32, [ 0 x i8* ] }** %argv_slot2987
  %vdecl_slot2990 = alloca i8*
  store i8* null, i8** %vdecl_slot2990
  %vdecl_slot2991 = alloca i8*
  store i8* @_const_str582, i8** %vdecl_slot2991
  %vdecl_slot2992 = alloca i8*
  store i8* null, i8** %vdecl_slot2992
  %vdecl_slot2993 = alloca i32
  store i32 0, i32* %vdecl_slot2993
  %lhs_or_call2994 = load i8** %vdecl_slot2990
  %ifnull_slot2995 = alloca i8*
  store i8* %lhs_or_call2994, i8** %ifnull_slot2995
  %ifnull_guard2996 = icmp ne i8* %lhs_or_call2994, null
  br i1 %ifnull_guard2996, label %__then640, label %__else639

__fresh645:
  br label %__then640

__then640:
  %lhs_or_call2997 = load i8** %ifnull_slot2995
  call void @print_string( i8* %lhs_or_call2997 )
  %lhs_or_call2998 = load i32* %vdecl_slot2993
  %bop2999 = add i32 %lhs_or_call2998, 2
  store i32 %bop2999, i32* %vdecl_slot2993
  %lhs_or_call3000 = load i8** %vdecl_slot2990
  store i8* %lhs_or_call3000, i8** %vdecl_slot2992
  br label %__merge638

__fresh646:
  br label %__else639

__else639:
  br label %__merge638

__merge638:
  %lhs_or_call3001 = load i8** %vdecl_slot2991
  %ifnull_slot3002 = alloca i8*
  store i8* %lhs_or_call3001, i8** %ifnull_slot3002
  %ifnull_guard3003 = icmp ne i8* %lhs_or_call3001, null
  br i1 %ifnull_guard3003, label %__then643, label %__else642

__fresh647:
  br label %__then643

__then643:
  %lhs_or_call3004 = load i8** %ifnull_slot3002
  call void @print_string( i8* %lhs_or_call3004 )
  %lhs_or_call3005 = load i32* %vdecl_slot2993
  %bop3006 = add i32 %lhs_or_call3005, 40
  store i32 %bop3006, i32* %vdecl_slot2993
  %lhs_or_call3007 = load i8** %vdecl_slot2990
  store i8* %lhs_or_call3007, i8** %vdecl_slot2992
  br label %__merge641

__fresh648:
  br label %__else642

__else642:
  br label %__merge641

__merge641:
  %lhs_or_call3008 = load i32* %vdecl_slot2993
  ret i32 %lhs_or_call3008
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh637:
  %_name2984 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2985 = load i8** %_name2984
  ret i8* %lhs_or_call2985
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh636:
  %_name2982 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str581, i8** %_name2982
  %this_vtable2983 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable580, %_Object_vtable** %this_vtable2983
  ret %Object* %_this1
}


