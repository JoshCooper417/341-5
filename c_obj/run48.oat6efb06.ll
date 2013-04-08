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
__fresh57:
  call void @o26.init27(  )
  ret void
}


define i32 @program (i32 %argc186, { i32, [ 0 x i8* ] }* %argv184){
__fresh56:
  %argc_slot187 = alloca i32
  store i32 %argc186, i32* %argc_slot187
  %argv_slot185 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv184, { i32, [ 0 x i8* ] }** %argv_slot185
  %mem_ptr188 = call i32* @oat_malloc ( i32 8 )
  %obj189 = bitcast i32* %mem_ptr188 to %Object* 
  %new_obj190 = call %Object* @_Object_ctor ( %Object* %obj189 )
  %vdecl_slot191 = alloca %Object*
  store %Object* %new_obj190, %Object** %vdecl_slot191
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh55:
  %mem_ptr180 = call i32* @oat_malloc ( i32 8 )
  %obj181 = bitcast i32* %mem_ptr180 to %Object* 
  %new_obj182 = call %Object* @_Object_ctor ( %Object* %obj181 )
  %vdecl_slot183 = alloca %Object*
  store %Object* %new_obj182, %Object** %vdecl_slot183
  ret void
}


define void @o26.init27 (){
__fresh54:
  %mem_ptr177 = call i32* @oat_malloc ( i32 8 )
  %obj178 = bitcast i32* %mem_ptr177 to %Object* 
  %new_obj179 = call %Object* @_Object_ctor ( %Object* %obj178 )
  store %Object* %new_obj179, %Object** @o26
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh53:
  %_name175 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call176 = load i8** %_name175
  ret i8* %lhs_or_call176
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh52:
  %_name173 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str25, i8** %_name173
  %this_vtable174 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable24, %_Object_vtable** %this_vtable174
  ret %Object* %_this1
}


