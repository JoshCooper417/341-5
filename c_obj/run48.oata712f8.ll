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
@o37 = global %Object* zeroinitializer, align 4		; initialized by @o37.init38
@_const_str36.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str36 = alias bitcast([ 7 x i8 ]* @_const_str36.str. to i8*)@_Object_vtable35 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh39:
  call void @o37.init38(  )
  ret void
}


define i32 @program (i32 %argc177, { i32, [ 0 x i8* ] }* %argv175){
__fresh38:
  %argc_slot178 = alloca i32
  store i32 %argc177, i32* %argc_slot178
  %argv_slot176 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv175, { i32, [ 0 x i8* ] }** %argv_slot176
  %mem_ptr179 = call i32* @oat_malloc ( i32 8 )
  %obj180 = bitcast i32* %mem_ptr179 to %Object* 
  %new_obj181 = call %Object* @_Object_ctor ( %Object* %obj180 )
  %vdecl_slot182 = alloca %Object*
  store %Object* %new_obj181, %Object** %vdecl_slot182
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh37:
  %mem_ptr171 = call i32* @oat_malloc ( i32 8 )
  %obj172 = bitcast i32* %mem_ptr171 to %Object* 
  %new_obj173 = call %Object* @_Object_ctor ( %Object* %obj172 )
  %vdecl_slot174 = alloca %Object*
  store %Object* %new_obj173, %Object** %vdecl_slot174
  ret void
}


define void @o37.init38 (){
__fresh36:
  %mem_ptr168 = call i32* @oat_malloc ( i32 8 )
  %obj169 = bitcast i32* %mem_ptr168 to %Object* 
  %new_obj170 = call %Object* @_Object_ctor ( %Object* %obj169 )
  store %Object* %new_obj170, %Object** @o37
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh35:
  %_name166 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call167 = load i8** %_name166
  ret i8* %lhs_or_call167
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh34:
  %_name164 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str36, i8** %_name164
  %this_vtable165 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable35, %_Object_vtable** %this_vtable165
  ret %Object* %_this1
}


