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
@o13 = global %Object* zeroinitializer, align 4		; initialized by @o13.init14
@_Object_vtable12 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh13:
  call void @o13.init14(  )
  ret void
}


define i32 @program (i32 %argc31, { i32, [ 0 x i8* ] }* %argv29){
__fresh12:
  %argc_slot32 = alloca i32
  store i32 %argc31, i32* %argc_slot32
  %argv_slot30 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv29, { i32, [ 0 x i8* ] }** %argv_slot30
  %mem_ptr33 = call i32* @oat_malloc ( i32 8 )
  %obj34 = bitcast i32* %mem_ptr33 to %Object* 
  %new_obj35 = call %Object* @_Object_ctor ( %Object* %obj34 )
  %vdecl_slot36 = alloca %Object*
  store %Object* %new_obj35, %Object** %vdecl_slot36
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh11:
  %mem_ptr25 = call i32* @oat_malloc ( i32 8 )
  %obj26 = bitcast i32* %mem_ptr25 to %Object* 
  %new_obj27 = call %Object* @_Object_ctor ( %Object* %obj26 )
  %vdecl_slot28 = alloca %Object*
  store %Object* %new_obj27, %Object** %vdecl_slot28
  ret void
}


define void @o13.init14 (){
__fresh10:
  %mem_ptr22 = call i32* @oat_malloc ( i32 8 )
  %obj23 = bitcast i32* %mem_ptr22 to %Object* 
  %new_obj24 = call %Object* @_Object_ctor ( %Object* %obj23 )
  store %Object* %new_obj24, %Object** @o13
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh9:
  %_name19 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call20 = load i8* %_name19
  %cast_op21 = bitcast i8 %lhs_or_call20 to i8* 
  ret i8* %cast_op21
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh8:
  ret %Object* %_this1
}


