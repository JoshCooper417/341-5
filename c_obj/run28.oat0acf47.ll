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
__fresh245:
  ret void
}


define i32 @program (i32 %argc861, { i32, [ 0 x i8* ] }* %argv859){
__fresh242:
  %argc_slot862 = alloca i32
  store i32 %argc861, i32* %argc_slot862
  %argv_slot860 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv859, { i32, [ 0 x i8* ] }** %argv_slot860
  %vdecl_slot863 = alloca i8*
  store i8* @_const_str152, i8** %vdecl_slot863
  %lhs_or_call864 = load i8** %vdecl_slot863
  %ifnull_slot865 = alloca i8*
  store i8* %lhs_or_call864, i8** %ifnull_slot865
  %ifnull_guard866 = icmp ne i8* %lhs_or_call864, null
  br i1 %ifnull_guard866, label %__then241, label %__else240

__fresh243:
  br label %__then241

__then241:
  %lhs_or_call867 = load i8** %ifnull_slot865
  call void @print_string( i8* %lhs_or_call867 )
  br label %__merge239

__fresh244:
  br label %__else240

__else240:
  call void @print_string( i8* @_const_str153 )
  br label %__merge239

__merge239:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh238:
  %_name857 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call858 = load i8** %_name857
  ret i8* %lhs_or_call858
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh237:
  %_name855 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str151, i8** %_name855
  %this_vtable856 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable150, %_Object_vtable** %this_vtable856
  ret %Object* %_this1
}


