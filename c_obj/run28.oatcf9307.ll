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
@_const_str164.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str164 = alias bitcast([ 5 x i8 ]* @_const_str164.str. to i8*)@_const_str163.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str163 = alias bitcast([ 9 x i8 ]* @_const_str163.str. to i8*)@_const_str162.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str162 = alias bitcast([ 7 x i8 ]* @_const_str162.str. to i8*)@_Object_vtable161 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh224:
  ret void
}


define i32 @program (i32 %argc859, { i32, [ 0 x i8* ] }* %argv857){
__fresh221:
  %argc_slot860 = alloca i32
  store i32 %argc859, i32* %argc_slot860
  %argv_slot858 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv857, { i32, [ 0 x i8* ] }** %argv_slot858
  %vdecl_slot861 = alloca i8*
  store i8* @_const_str163, i8** %vdecl_slot861
  %lhs_or_call862 = load i8** %vdecl_slot861
  %ifnull_slot863 = alloca i8*
  store i8* %lhs_or_call862, i8** %ifnull_slot863
  %ifnull_guard864 = icmp ne i8* %lhs_or_call862, null
  br i1 %ifnull_guard864, label %__then220, label %__else219

__fresh222:
  br label %__then220

__then220:
  %lhs_or_call865 = load i8** %ifnull_slot863
  call void @print_string( i8* %lhs_or_call865 )
  br label %__merge218

__fresh223:
  br label %__else219

__else219:
  call void @print_string( i8* @_const_str164 )
  br label %__merge218

__merge218:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh217:
  %_name855 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call856 = load i8** %_name855
  ret i8* %lhs_or_call856
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh216:
  %_name853 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str162, i8** %_name853
  %this_vtable854 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable161, %_Object_vtable** %this_vtable854
  ret %Object* %_this1
}


