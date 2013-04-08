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
@_const_str152.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str152 = alias bitcast([ 5 x i8 ]* @_const_str152.str. to i8*)@_const_str151.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str151 = alias bitcast([ 9 x i8 ]* @_const_str151.str. to i8*)@_const_str150.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str150 = alias bitcast([ 7 x i8 ]* @_const_str150.str. to i8*)@_Object_vtable149 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh185:
  ret void
}


define i32 @program (i32 %argc739, { i32, [ 0 x i8* ] }* %argv737){
__fresh182:
  %argc_slot740 = alloca i32
  store i32 %argc739, i32* %argc_slot740
  %argv_slot738 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv737, { i32, [ 0 x i8* ] }** %argv_slot738
  %vdecl_slot741 = alloca i8*
  store i8* @_const_str151, i8** %vdecl_slot741
  %lhs_or_call742 = load i8** %vdecl_slot741
  %ifnull_slot743 = alloca i8*
  store i8* %lhs_or_call742, i8** %ifnull_slot743
  %ifnull_guard744 = icmp ne i8* %lhs_or_call742, null
  br i1 %ifnull_guard744, label %__then181, label %__else180

__fresh183:
  br label %__then181

__then181:
  %lhs_or_call745 = load i8** %ifnull_slot743
  call void @print_string( i8* %lhs_or_call745 )
  br label %__merge179

__fresh184:
  br label %__else180

__else180:
  call void @print_string( i8* @_const_str152 )
  br label %__merge179

__merge179:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh178:
  %_name735 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call736 = load i8** %_name735
  ret i8* %lhs_or_call736
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh177:
  %_name733 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str150, i8** %_name733
  %this_vtable734 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable149, %_Object_vtable** %this_vtable734
  ret %Object* %_this1
}


