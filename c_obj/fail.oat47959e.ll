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
@_const_str135.str. = private unnamed_addr constant [ 12 x i8 ] c "X is three!\00", align 4
@_const_str135 = alias bitcast([ 12 x i8 ]* @_const_str135.str. to i8*)@x134 = global i32 3, align 4
@_Object_vtable133 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh290:
  ret void
}


define i32 @program (i32 %argc1459, { i32, [ 0 x i8* ] }* %argv1457){
__fresh287:
  %argc_slot1460 = alloca i32
  store i32 %argc1459, i32* %argc_slot1460
  %argv_slot1458 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1457, { i32, [ 0 x i8* ] }** %argv_slot1458
  %lhs_or_call1461 = load i32* @x134
  %bop1462 = icmp eq i32 %lhs_or_call1461, 3
  br i1 %bop1462, label %__then286, label %__else285

__fresh288:
  br label %__then286

__then286:
  call void @print_string( i8* @_const_str135 )
  call void @oat_abort( i32 -1 )
  br label %__merge284

__fresh289:
  br label %__else285

__else285:
  store i32 4, i32* @x134
  br label %__merge284

__merge284:
  %lhs_or_call1463 = load i32* @x134
  ret i32 %lhs_or_call1463
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh283:
  %_name1455 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1456 = load i8** %_name1455
  ret i8* %lhs_or_call1456
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh282:
  %_name1451 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1452 = load %Object* %_this1
  %cast_op1453 = bitcast %Object %lhs_or_call1452 to i8* 
  store i8* %cast_op1453, i8** %_name1451
  %this_vtable1454 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1454
  ret %Object* %_this1
}


