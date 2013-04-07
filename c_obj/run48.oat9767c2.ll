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
__fresh22:
  call void @o14.init15(  )
  ret void
}


define i32 @program (i32 %argc78, { i32, [ 0 x i8* ] }* %argv76){
__fresh21:
  %argc_slot79 = alloca i32
  store i32 %argc78, i32* %argc_slot79
  %argv_slot77 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv76, { i32, [ 0 x i8* ] }** %argv_slot77
  %mem_ptr80 = call i32* @oat_malloc ( i32 8 )
  %obj81 = bitcast i32* %mem_ptr80 to %Object* 
  %new_obj82 = call %Object* @_Object_ctor ( %Object* %obj81 )
  %vdecl_slot83 = alloca %Object*
  store %Object* %new_obj82, %Object** %vdecl_slot83
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh20:
  %mem_ptr72 = call i32* @oat_malloc ( i32 8 )
  %obj73 = bitcast i32* %mem_ptr72 to %Object* 
  %new_obj74 = call %Object* @_Object_ctor ( %Object* %obj73 )
  %vdecl_slot75 = alloca %Object*
  store %Object* %new_obj74, %Object** %vdecl_slot75
  ret void
}


define void @o14.init15 (){
__fresh19:
  %mem_ptr69 = call i32* @oat_malloc ( i32 8 )
  %obj70 = bitcast i32* %mem_ptr69 to %Object* 
  %new_obj71 = call %Object* @_Object_ctor ( %Object* %obj70 )
  store %Object* %new_obj71, %Object** @o14
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh18:
  %_name66 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call67 = load i8* %_name66
  %cast_op68 = bitcast i8 %lhs_or_call67 to i8* 
  ret i8* %cast_op68
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh17:
  ret %Object* %_this1
}


