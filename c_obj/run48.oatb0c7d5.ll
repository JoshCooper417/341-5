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
@o25 = global %Object* zeroinitializer, align 4		; initialized by @o25.init26
@_const_str24.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str24 = alias bitcast([ 7 x i8 ]* @_const_str24.str. to i8*)@_Object_vtable23 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh29:
  call void @o25.init26(  )
  ret void
}


define i32 @program (i32 %argc98, { i32, [ 0 x i8* ] }* %argv96){
__fresh28:
  %argc_slot99 = alloca i32
  store i32 %argc98, i32* %argc_slot99
  %argv_slot97 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv96, { i32, [ 0 x i8* ] }** %argv_slot97
  %mem_ptr100 = call i32* @oat_malloc ( i32 8 )
  %obj101 = bitcast i32* %mem_ptr100 to %Object* 
  %new_obj102 = call %Object* @_Object_ctor ( %Object* %obj101 )
  %vdecl_slot103 = alloca %Object*
  store %Object* %new_obj102, %Object** %vdecl_slot103
  call void @f(  )
  ret i32 0
}


define void @f (){
__fresh27:
  %mem_ptr92 = call i32* @oat_malloc ( i32 8 )
  %obj93 = bitcast i32* %mem_ptr92 to %Object* 
  %new_obj94 = call %Object* @_Object_ctor ( %Object* %obj93 )
  %vdecl_slot95 = alloca %Object*
  store %Object* %new_obj94, %Object** %vdecl_slot95
  ret void
}


define void @o25.init26 (){
__fresh26:
  %mem_ptr89 = call i32* @oat_malloc ( i32 8 )
  %obj90 = bitcast i32* %mem_ptr89 to %Object* 
  %new_obj91 = call %Object* @_Object_ctor ( %Object* %obj90 )
  store %Object* %new_obj91, %Object** @o25
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh25:
  %_name87 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call88 = load i8** %_name87
  ret i8* %lhs_or_call88
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh24:
  %_name85 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str24, i8** %_name85
  %this_vtable86 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable23, %_Object_vtable** %this_vtable86
  ret %Object* %_this1
}


