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
@_const_str69.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str69 = alias bitcast([ 5 x i8 ]* @_const_str69.str. to i8*)@_const_str68.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str68 = alias bitcast([ 9 x i8 ]* @_const_str68.str. to i8*)@_Object_vtable67 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh64:
  ret void
}


define i32 @program (i32 %argc141, { i32, [ 0 x i8* ] }* %argv139){
__fresh61:
  %argc_slot142 = alloca i32
  store i32 %argc141, i32* %argc_slot142
  %argv_slot140 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv139, { i32, [ 0 x i8* ] }** %argv_slot140
  %vdecl_slot143 = alloca i8*
  store i8* null, i8** %vdecl_slot143
  %lhs_or_call144 = load i8** %vdecl_slot143
  %ifnull_slot145 = alloca i8*
  store i8* %lhs_or_call144, i8** %ifnull_slot145
  %ifnull_guard146 = icmp ne i8* %lhs_or_call144, null
  br i1 %ifnull_guard146, label %__then60, label %__else59

__fresh62:
  br label %__then60

__then60:
  call void @print_string( i8* @_const_str68 )
  br label %__merge58

__fresh63:
  br label %__else59

__else59:
  call void @print_string( i8* @_const_str69 )
  br label %__merge58

__merge58:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh57:
  %_name136 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call137 = load i8* %_name136
  %cast_op138 = bitcast i8 %lhs_or_call137 to i8* 
  ret i8* %cast_op138
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh56:
  ret %Object* %_this1
}


