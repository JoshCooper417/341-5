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
@o14 = global %Object* zeroinitializer, align 4		; initialized by @o14.init15
@_Object_vtable13 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh39:
  call void @o14.init15(  )
  ret void
}


define i32 @program (i32 %argc189, { i32, [ 0 x i8* ] }* %argv187){
__fresh38:
  %argc_slot190 = alloca i32
  store i32 %argc189, i32* %argc_slot190
  %argv_slot188 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv187, { i32, [ 0 x i8* ] }** %argv_slot188
  %mem_ptr191 = call i32* @oat_malloc ( i32 8 )
  %obj192 = bitcast i32* %mem_ptr191 to %Object* 
  %new_obj193 = call %Object* @_Object_ctor ( %Object* %obj192 )
  %vdecl_slot194 = alloca %Object*
  store %Object* %new_obj193, %Object** %vdecl_slot194
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh37:
  %mem_ptr183 = call i32* @oat_malloc ( i32 8 )
  %obj184 = bitcast i32* %mem_ptr183 to %Object* 
  %new_obj185 = call %Object* @_Object_ctor ( %Object* %obj184 )
  %vdecl_slot186 = alloca %Object*
  store %Object* %new_obj185, %Object** %vdecl_slot186
  ret void
}


define void @o14.init15 (){
__fresh36:
  %mem_ptr180 = call i32* @oat_malloc ( i32 8 )
  %obj181 = bitcast i32* %mem_ptr180 to %Object* 
  %new_obj182 = call %Object* @_Object_ctor ( %Object* %obj181 )
  store %Object* %new_obj182, %Object** @o14
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh35:
  %_name178 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call179 = load i8** %_name178
  ret i8* %lhs_or_call179
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh34:
  %_name174 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call175 = load %Object* %_this1
  %cast_op176 = bitcast %Object %lhs_or_call175 to i8* 
  store i8* %cast_op176, i8** %_name174
  %this_vtable177 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable177
  ret %Object* %_this1
}


