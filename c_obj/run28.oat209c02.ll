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
@_const_str72.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str72 = alias bitcast([ 5 x i8 ]* @_const_str72.str. to i8*)@_const_str71.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str71 = alias bitcast([ 9 x i8 ]* @_const_str71.str. to i8*)@_Object_vtable70 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh73:
  ret void
}


define i32 @program (i32 %argc153, { i32, [ 0 x i8* ] }* %argv151){
__fresh70:
  %argc_slot154 = alloca i32
  store i32 %argc153, i32* %argc_slot154
  %argv_slot152 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv151, { i32, [ 0 x i8* ] }** %argv_slot152
  %vdecl_slot155 = alloca i8*
  store i8* @_const_str71, i8** %vdecl_slot155
  %lhs_or_call156 = load i8** %vdecl_slot155
  %ifnull_slot157 = alloca i8*
  store i8* %lhs_or_call156, i8** %ifnull_slot157
  %ifnull_guard158 = icmp ne i8* %lhs_or_call156, null
  br i1 %ifnull_guard158, label %__then69, label %__else68

__fresh71:
  br label %__then69

__then69:
  %lhs_or_call159 = load i8** %ifnull_slot157
  call void @print_string( i8* %lhs_or_call159 )
  br label %__merge67

__fresh72:
  br label %__else68

__else68:
  call void @print_string( i8* @_const_str72 )
  br label %__merge67

__merge67:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh66:
  %_name148 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call149 = load i8* %_name148
  %cast_op150 = bitcast i8 %lhs_or_call149 to i8* 
  ret i8* %cast_op150
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh65:
  ret %Object* %_this1
}


