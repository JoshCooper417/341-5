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
@o26 = global %Object* zeroinitializer, align 4		; initialized by @o26.init27
@_const_str25.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str25 = alias bitcast([ 7 x i8 ]* @_const_str25.str. to i8*)@_Object_vtable24 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh39:
  call void @o26.init27(  )
  ret void
}


define i32 @program (i32 %argc166, { i32, [ 0 x i8* ] }* %argv164){
__fresh38:
  %argc_slot167 = alloca i32
  store i32 %argc166, i32* %argc_slot167
  %argv_slot165 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv164, { i32, [ 0 x i8* ] }** %argv_slot165
  %mem_ptr168 = call i32* @oat_malloc ( i32 8 )
  %obj169 = bitcast i32* %mem_ptr168 to %Object* 
  %new_obj170 = call %Object* @_Object_ctor ( %Object* %obj169 )
  %vdecl_slot171 = alloca %Object*
  store %Object* %new_obj170, %Object** %vdecl_slot171
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh37:
  %mem_ptr160 = call i32* @oat_malloc ( i32 8 )
  %obj161 = bitcast i32* %mem_ptr160 to %Object* 
  %new_obj162 = call %Object* @_Object_ctor ( %Object* %obj161 )
  %vdecl_slot163 = alloca %Object*
  store %Object* %new_obj162, %Object** %vdecl_slot163
  ret void
}


define void @o26.init27 (){
__fresh36:
  %mem_ptr157 = call i32* @oat_malloc ( i32 8 )
  %obj158 = bitcast i32* %mem_ptr157 to %Object* 
  %new_obj159 = call %Object* @_Object_ctor ( %Object* %obj158 )
  store %Object* %new_obj159, %Object** @o26
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh35:
  %_name155 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call156 = load i8** %_name155
  ret i8* %lhs_or_call156
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh34:
  %_name153 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str25, i8** %_name153
  %this_vtable154 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable24, %_Object_vtable** %this_vtable154
  ret %Object* %_this1
}


