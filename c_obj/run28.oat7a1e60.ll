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
@_const_str87.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str87 = alias bitcast([ 5 x i8 ]* @_const_str87.str. to i8*)@_const_str86.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str86 = alias bitcast([ 9 x i8 ]* @_const_str86.str. to i8*)@_Object_vtable85 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh224:
  ret void
}


define i32 @program (i32 %argc1006, { i32, [ 0 x i8* ] }* %argv1004){
__fresh221:
  %argc_slot1007 = alloca i32
  store i32 %argc1006, i32* %argc_slot1007
  %argv_slot1005 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1004, { i32, [ 0 x i8* ] }** %argv_slot1005
  %vdecl_slot1008 = alloca i8*
  store i8* @_const_str86, i8** %vdecl_slot1008
  %lhs_or_call1009 = load i8** %vdecl_slot1008
  %ifnull_slot1010 = alloca i8*
  store i8* %lhs_or_call1009, i8** %ifnull_slot1010
  %ifnull_guard1011 = icmp ne i8* %lhs_or_call1009, null
  br i1 %ifnull_guard1011, label %__then220, label %__else219

__fresh222:
  br label %__then220

__then220:
  %lhs_or_call1012 = load i8** %ifnull_slot1010
  call void @print_string( i8* %lhs_or_call1012 )
  br label %__merge218

__fresh223:
  br label %__else219

__else219:
  call void @print_string( i8* @_const_str87 )
  br label %__merge218

__merge218:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh217:
  %_name1002 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1003 = load i8** %_name1002
  ret i8* %lhs_or_call1003
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh216:
  %_name998 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call999 = load %Object* %_this1
  %cast_op1000 = bitcast %Object %lhs_or_call999 to i8* 
  store i8* %cast_op1000, i8** %_name998
  %this_vtable1001 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1001
  ret %Object* %_this1
}


