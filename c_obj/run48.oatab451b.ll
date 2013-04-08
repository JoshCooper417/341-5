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


define i32 @program (i32 %argc158, { i32, [ 0 x i8* ] }* %argv156){
__fresh38:
  %argc_slot159 = alloca i32
  store i32 %argc158, i32* %argc_slot159
  %argv_slot157 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv156, { i32, [ 0 x i8* ] }** %argv_slot157
  %mem_ptr160 = call i32* @oat_malloc ( i32 8 )
  %obj161 = bitcast i32* %mem_ptr160 to %Object* 
  %new_obj162 = call %Object* @_Object_ctor ( %Object* %obj161 )
  %vdecl_slot163 = alloca %Object*
  store %Object* %new_obj162, %Object** %vdecl_slot163
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh37:
  %mem_ptr152 = call i32* @oat_malloc ( i32 8 )
  %obj153 = bitcast i32* %mem_ptr152 to %Object* 
  %new_obj154 = call %Object* @_Object_ctor ( %Object* %obj153 )
  %vdecl_slot155 = alloca %Object*
  store %Object* %new_obj154, %Object** %vdecl_slot155
  ret void
}


define void @o26.init27 (){
__fresh36:
  %mem_ptr149 = call i32* @oat_malloc ( i32 8 )
  %obj150 = bitcast i32* %mem_ptr149 to %Object* 
  %new_obj151 = call %Object* @_Object_ctor ( %Object* %obj150 )
  store %Object* %new_obj151, %Object** @o26
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh35:
  %_name147 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call148 = load i8** %_name147
  ret i8* %lhs_or_call148
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh34:
  %_name145 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str25, i8** %_name145
  %this_vtable146 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable24, %_Object_vtable** %this_vtable146
  ret %Object* %_this1
}


