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
@_const_str247.str. = private unnamed_addr constant [ 7 x i8 ] c "failed\00", align 4
@_const_str247 = alias bitcast([ 7 x i8 ]* @_const_str247.str. to i8*)@_const_str246.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str246 = alias bitcast([ 7 x i8 ]* @_const_str246.str. to i8*)@_Object_vtable245 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh242:
  ret void
}


define i32 @program (i32 %argc1077, { i32, [ 0 x i8* ] }* %argv1075){
__fresh241:
  %argc_slot1078 = alloca i32
  store i32 %argc1077, i32* %argc_slot1078
  %argv_slot1076 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1075, { i32, [ 0 x i8* ] }** %argv_slot1076
  call void @print_string( i8* @_const_str247 )
  call void @oat_abort( i32 -1 )
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh240:
  %_name1073 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1074 = load i8** %_name1073
  ret i8* %lhs_or_call1074
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh239:
  %_name1071 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str246, i8** %_name1071
  %this_vtable1072 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable245, %_Object_vtable** %this_vtable1072
  ret %Object* %_this1
}


