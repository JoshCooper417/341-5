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
@_const_str160.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str160 = alias bitcast([ 5 x i8 ]* @_const_str160.str. to i8*)@_const_str159.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str159 = alias bitcast([ 9 x i8 ]* @_const_str159.str. to i8*)@_const_str158.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str158 = alias bitcast([ 7 x i8 ]* @_const_str158.str. to i8*)@_Object_vtable157 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh215:
  ret void
}


define i32 @program (i32 %argc840, { i32, [ 0 x i8* ] }* %argv838){
__fresh212:
  %argc_slot841 = alloca i32
  store i32 %argc840, i32* %argc_slot841
  %argv_slot839 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv838, { i32, [ 0 x i8* ] }** %argv_slot839
  %vdecl_slot842 = alloca i8*
  store i8* null, i8** %vdecl_slot842
  %lhs_or_call843 = load i8** %vdecl_slot842
  %ifnull_slot844 = alloca i8*
  store i8* %lhs_or_call843, i8** %ifnull_slot844
  %ifnull_guard845 = icmp ne i8* %lhs_or_call843, null
  br i1 %ifnull_guard845, label %__then211, label %__else210

__fresh213:
  br label %__then211

__then211:
  call void @print_string( i8* @_const_str159 )
  br label %__merge209

__fresh214:
  br label %__else210

__else210:
  call void @print_string( i8* @_const_str160 )
  br label %__merge209

__merge209:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh208:
  %_name836 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call837 = load i8** %_name836
  ret i8* %lhs_or_call837
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh207:
  %_name834 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str158, i8** %_name834
  %this_vtable835 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable157, %_Object_vtable** %this_vtable835
  ret %Object* %_this1
}


