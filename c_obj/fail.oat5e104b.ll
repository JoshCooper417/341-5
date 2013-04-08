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
@_const_str261.str. = private unnamed_addr constant [ 12 x i8 ] c "X is three!\00", align 4
@_const_str261 = alias bitcast([ 12 x i8 ]* @_const_str261.str. to i8*)@x260 = global i32 3, align 4
@_const_str259.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str259 = alias bitcast([ 7 x i8 ]* @_const_str259.str. to i8*)@_Object_vtable258 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh461:
  ret void
}


define i32 @program (i32 %argc1389, { i32, [ 0 x i8* ] }* %argv1387){
__fresh458:
  %argc_slot1390 = alloca i32
  store i32 %argc1389, i32* %argc_slot1390
  %argv_slot1388 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1387, { i32, [ 0 x i8* ] }** %argv_slot1388
  %lhs_or_call1391 = load i32* @x260
  %bop1392 = icmp eq i32 %lhs_or_call1391, 3
  br i1 %bop1392, label %__then457, label %__else456

__fresh459:
  br label %__then457

__then457:
  call void @print_string( i8* @_const_str261 )
  call void @oat_abort( i32 -1 )
  br label %__merge455

__fresh460:
  br label %__else456

__else456:
  store i32 4, i32* @x260
  br label %__merge455

__merge455:
  %lhs_or_call1393 = load i32* @x260
  ret i32 %lhs_or_call1393
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh454:
  %_name1385 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1386 = load i8** %_name1385
  ret i8* %lhs_or_call1386
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh453:
  %_name1383 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str259, i8** %_name1383
  %this_vtable1384 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable258, %_Object_vtable** %this_vtable1384
  ret %Object* %_this1
}


