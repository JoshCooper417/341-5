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
@_const_str130.str. = private unnamed_addr constant [ 7 x i8 ] c "failed\00", align 4
@_const_str130 = alias bitcast([ 7 x i8 ]* @_const_str130.str. to i8*)@_Object_vtable129 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh199:
  ret void
}


define i32 @program (i32 %argc964, { i32, [ 0 x i8* ] }* %argv962){
__fresh198:
  %argc_slot965 = alloca i32
  store i32 %argc964, i32* %argc_slot965
  %argv_slot963 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv962, { i32, [ 0 x i8* ] }** %argv_slot963
  call void @print_string( i8* @_const_str130 )
  call void @oat_abort( i32 -1 )
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh197:
  %_name959 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call960 = load i8* %_name959
  %cast_op961 = bitcast i8 %lhs_or_call960 to i8* 
  ret i8* %cast_op961
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh196:
  ret %Object* %_this1
}


