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


define i32 @program (i32 %argc46, { i32, [ 0 x i8* ] }* %argv44){
__fresh12:
  %argc_slot47 = alloca i32
  store i32 %argc46, i32* %argc_slot47
  %argv_slot45 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv44, { i32, [ 0 x i8* ] }** %argv_slot45
  %mem_ptr48 = call i32* @oat_malloc ( i32 8 )
  %obj49 = bitcast i32* %mem_ptr48 to %Object* 
  %new_obj50 = call %Object* @_Object_ctor ( %Object* %obj49 )
  %vdecl_slot51 = alloca %Object*
  store %Object* %new_obj50, %Object** %vdecl_slot51
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh11:
  %mem_ptr40 = call i32* @oat_malloc ( i32 8 )
  %obj41 = bitcast i32* %mem_ptr40 to %Object* 
  %new_obj42 = call %Object* @_Object_ctor ( %Object* %obj41 )
  %vdecl_slot43 = alloca %Object*
  store %Object* %new_obj42, %Object** %vdecl_slot43
  ret void
}


define void @o13.init14 (){
__fresh10:
  %mem_ptr37 = call i32* @oat_malloc ( i32 8 )
  %obj38 = bitcast i32* %mem_ptr37 to %Object* 
  %new_obj39 = call %Object* @_Object_ctor ( %Object* %obj38 )
  store %Object* %new_obj39, %Object** @o13
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh9:
  %_name34 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call35 = load i8* %_name34
  %cast_op36 = bitcast i8 %lhs_or_call35 to i8* 
  ret i8* %cast_op36
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh8:
  ret %Object* %_this1
}


