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
@_const_str257.str. = private unnamed_addr constant [ 7 x i8 ] c "failed\00", align 4
@_const_str257 = alias bitcast([ 7 x i8 ]* @_const_str257.str. to i8*)@_const_str256.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str256 = alias bitcast([ 7 x i8 ]* @_const_str256.str. to i8*)@_Object_vtable255 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh452:
  ret void
}


define i32 @program (i32 %argc1381, { i32, [ 0 x i8* ] }* %argv1379){
__fresh451:
  %argc_slot1382 = alloca i32
  store i32 %argc1381, i32* %argc_slot1382
  %argv_slot1380 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1379, { i32, [ 0 x i8* ] }** %argv_slot1380
  call void @print_string( i8* @_const_str257 )
  call void @oat_abort( i32 -1 )
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh450:
  %_name1377 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1378 = load i8** %_name1377
  ret i8* %lhs_or_call1378
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh449:
  %_name1375 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str256, i8** %_name1375
  %this_vtable1376 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable255, %_Object_vtable** %this_vtable1376
  ret %Object* %_this1
}


