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


define i32 @program (i32 %argc167, { i32, [ 0 x i8* ] }* %argv165){
__fresh38:
  %argc_slot168 = alloca i32
  store i32 %argc167, i32* %argc_slot168
  %argv_slot166 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv165, { i32, [ 0 x i8* ] }** %argv_slot166
  %mem_ptr169 = call i32* @oat_malloc ( i32 8 )
  %obj170 = bitcast i32* %mem_ptr169 to %Object* 
  %new_obj171 = call %Object* @_Object_ctor ( %Object* %obj170 )
  %vdecl_slot172 = alloca %Object*
  store %Object* %new_obj171, %Object** %vdecl_slot172
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh37:
  %mem_ptr161 = call i32* @oat_malloc ( i32 8 )
  %obj162 = bitcast i32* %mem_ptr161 to %Object* 
  %new_obj163 = call %Object* @_Object_ctor ( %Object* %obj162 )
  %vdecl_slot164 = alloca %Object*
  store %Object* %new_obj163, %Object** %vdecl_slot164
  ret void
}


define void @o26.init27 (){
__fresh36:
  %mem_ptr158 = call i32* @oat_malloc ( i32 8 )
  %obj159 = bitcast i32* %mem_ptr158 to %Object* 
  %new_obj160 = call %Object* @_Object_ctor ( %Object* %obj159 )
  store %Object* %new_obj160, %Object** @o26
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh35:
  %_name156 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call157 = load i8** %_name156
  ret i8* %lhs_or_call157
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh34:
  %_name154 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str25, i8** %_name154
  %this_vtable155 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable24, %_Object_vtable** %this_vtable155
  ret %Object* %_this1
}


