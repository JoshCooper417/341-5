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
@_const_str82.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str82 = alias bitcast([ 5 x i8 ]* @_const_str82.str. to i8*)@_const_str81.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str81 = alias bitcast([ 9 x i8 ]* @_const_str81.str. to i8*)@_Object_vtable80 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh133:
  ret void
}


define i32 @program (i32 %argc645, { i32, [ 0 x i8* ] }* %argv643){
__fresh130:
  %argc_slot646 = alloca i32
  store i32 %argc645, i32* %argc_slot646
  %argv_slot644 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv643, { i32, [ 0 x i8* ] }** %argv_slot644
  %vdecl_slot647 = alloca i8*
  store i8* null, i8** %vdecl_slot647
  %lhs_or_call648 = load i8** %vdecl_slot647
  %ifnull_slot649 = alloca i8*
  store i8* %lhs_or_call648, i8** %ifnull_slot649
  %ifnull_guard650 = icmp ne i8* %lhs_or_call648, null
  br i1 %ifnull_guard650, label %__then129, label %__else128

__fresh131:
  br label %__then129

__then129:
  call void @print_string( i8* @_const_str81 )
  br label %__merge127

__fresh132:
  br label %__else128

__else128:
  call void @print_string( i8* @_const_str82 )
  br label %__merge127

__merge127:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh126:
  %_name640 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call641 = load i8* %_name640
  %cast_op642 = bitcast i8 %lhs_or_call641 to i8* 
  ret i8* %cast_op642
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh125:
  ret %Object* %_this1
}


