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
@_const_str148.str. = private unnamed_addr constant [ 5 x i8 ] c "null\00", align 4
@_const_str148 = alias bitcast([ 5 x i8 ]* @_const_str148.str. to i8*)@_const_str147.str. = private unnamed_addr constant [ 9 x i8 ] c "non-null\00", align 4
@_const_str147 = alias bitcast([ 9 x i8 ]* @_const_str147.str. to i8*)@_const_str146.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str146 = alias bitcast([ 7 x i8 ]* @_const_str146.str. to i8*)@_Object_vtable145 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh176:
  ret void
}


define i32 @program (i32 %argc727, { i32, [ 0 x i8* ] }* %argv725){
__fresh173:
  %argc_slot728 = alloca i32
  store i32 %argc727, i32* %argc_slot728
  %argv_slot726 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv725, { i32, [ 0 x i8* ] }** %argv_slot726
  %vdecl_slot729 = alloca i8*
  store i8* null, i8** %vdecl_slot729
  %lhs_or_call730 = load i8** %vdecl_slot729
  %ifnull_slot731 = alloca i8*
  store i8* %lhs_or_call730, i8** %ifnull_slot731
  %ifnull_guard732 = icmp ne i8* %lhs_or_call730, null
  br i1 %ifnull_guard732, label %__then172, label %__else171

__fresh174:
  br label %__then172

__then172:
  call void @print_string( i8* @_const_str147 )
  br label %__merge170

__fresh175:
  br label %__else171

__else171:
  call void @print_string( i8* @_const_str148 )
  br label %__merge170

__merge170:
  ret i32 0
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh169:
  %_name723 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call724 = load i8** %_name723
  ret i8* %lhs_or_call724
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh168:
  %_name721 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str146, i8** %_name721
  %this_vtable722 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable145, %_Object_vtable** %this_vtable722
  ret %Object* %_this1
}


