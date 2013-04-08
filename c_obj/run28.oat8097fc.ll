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
@_const_str153.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str153 = alias bitcast([ 5 x i8 ]* @_const_str153.str. to i8*)@_const_str152.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str152 = alias bitcast([ 9 x i8 ]* @_const_str152.str. to i8*)@_const_str151.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str151 = alias bitcast([ 7 x i8 ]* @_const_str151.str. to i8*)@_Object_vtable150 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh224:
  ret void
}


define i32 @program (i32 %argc842, { i32, [ 0 x i8* ] }* %argv840){
__fresh221:
  %argc_slot843 = alloca i32
  store i32 %argc842, i32* %argc_slot843
  %argv_slot841 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv840, { i32, [ 0 x i8* ] }** %argv_slot841
  %vdecl_slot844 = alloca i8*
  store i8* @_const_str152, i8** %vdecl_slot844
  %lhs_or_call845 = load i8** %vdecl_slot844
  %ifnull_slot846 = alloca i8*
  store i8* %lhs_or_call845, i8** %ifnull_slot846
  %ifnull_guard847 = icmp ne i8* %lhs_or_call845, null
  br i1 %ifnull_guard847, label %__then220, label %__else219

__fresh222:
  br label %__then220

__then220:
  %lhs_or_call848 = load i8** %ifnull_slot846
  call void @print_string( i8* %lhs_or_call848 )
  br label %__merge218

__fresh223:
  br label %__else219

__else219:
  call void @print_string( i8* @_const_str153 )
  br label %__merge218

__merge218:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh217:
  %_name838 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call839 = load i8** %_name838
  ret i8* %lhs_or_call839
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh216:
  %_name836 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str151, i8** %_name836
  %this_vtable837 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable150, %_Object_vtable** %this_vtable837
  ret %Object* %_this1
}


