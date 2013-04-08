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
@_const_str248.str. = private unnamed_addr constant [ 7 x i8 ] c "failed\00", align 4
@_const_str248 = alias bitcast([ 7 x i8 ]* @_const_str248.str. to i8*)@_const_str247.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str247 = alias bitcast([ 7 x i8 ]* @_const_str247.str. to i8*)@_Object_vtable246 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh281:
  ret void
}


define i32 @program (i32 %argc1179, { i32, [ 0 x i8* ] }* %argv1177){
__fresh280:
  %argc_slot1180 = alloca i32
  store i32 %argc1179, i32* %argc_slot1180
  %argv_slot1178 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1177, { i32, [ 0 x i8* ] }** %argv_slot1178
  call void @print_string( i8* @_const_str248 )
  call void @oat_abort( i32 -1 )
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh279:
  %_name1175 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call1176 = load i8** %_name1175
  ret i8* %lhs_or_call1176
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh278:
  %_name1173 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str247, i8** %_name1173
  %this_vtable1174 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable246, %_Object_vtable** %this_vtable1174
  ret %Object* %_this1
}


