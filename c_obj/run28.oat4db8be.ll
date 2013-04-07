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
@_const_str85.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str85 = alias bitcast([ 5 x i8 ]* @_const_str85.str. to i8*)@_const_str84.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str84 = alias bitcast([ 9 x i8 ]* @_const_str84.str. to i8*)@_Object_vtable83 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh142:
  ret void
}


define i32 @program (i32 %argc660, { i32, [ 0 x i8* ] }* %argv658){
__fresh139:
  %argc_slot661 = alloca i32
  store i32 %argc660, i32* %argc_slot661
  %argv_slot659 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv658, { i32, [ 0 x i8* ] }** %argv_slot659
  %vdecl_slot662 = alloca i8*
  store i8* @_const_str84, i8** %vdecl_slot662
  %lhs_or_call663 = load i8** %vdecl_slot662
  %ifnull_slot664 = alloca i8*
  store i8* %lhs_or_call663, i8** %ifnull_slot664
  %ifnull_guard665 = icmp ne i8* %lhs_or_call663, null
  br i1 %ifnull_guard665, label %__then138, label %__else137

__fresh140:
  br label %__then138

__then138:
  %lhs_or_call666 = load i8** %ifnull_slot664
  call void @print_string( i8* %lhs_or_call666 )
  br label %__merge136

__fresh141:
  br label %__else137

__else137:
  call void @print_string( i8* @_const_str85 )
  br label %__merge136

__merge136:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh135:
  %_name655 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call656 = load i8* %_name655
  %cast_op657 = bitcast i8 %lhs_or_call656 to i8* 
  ret i8* %cast_op657
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh134:
  ret %Object* %_this1
}


