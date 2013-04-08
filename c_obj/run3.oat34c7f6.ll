%B = type { %_B_vtable*, i8*, i32, i32, i32 }
%_B_vtable = type { %_C_vtable*, i8* (%Object*)* }
%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_B_vtable3 = private constant %_B_vtable {%_C_vtable* @_C_vtable2, i8* (%Object*)* @_Object_get_name}, align 4
@_C_vtable2 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh5:
  ret void
}


define i32 @program (i32 %argc28, { i32, [ 0 x i8* ] }* %argv26){
__fresh4:
  %argc_slot29 = alloca i32
  store i32 %argc28, i32* %argc_slot29
  %argv_slot27 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv26, { i32, [ 0 x i8* ] }** %argv_slot27
  %mem_ptr30 = call i32* @oat_malloc ( i32 20 )
  %obj31 = bitcast i32* %mem_ptr30 to %B* 
  %new_obj32 = call %B* @_B_ctor ( %B* %obj31 )
  %vdecl_slot33 = alloca %B*
  store %B* %new_obj32, %B** %vdecl_slot33
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh3:
  %lhs_or_call17 = load %B* %_this1
  %cast_op18 = bitcast %B %lhs_or_call17 to %C* 
  %mem_ptr19 = call i32* @oat_malloc ( i32 12 )
  %obj20 = bitcast i32* %mem_ptr19 to %C* 
  %new_obj21 = call %C* @_C_ctor ( %C* %obj20, %C* %cast_op18 )
  ret %B* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh2:
  %lhs_or_call8 = load %C* %_this1
  %cast_op9 = bitcast %C %lhs_or_call8 to %Object* 
  %mem_ptr10 = call i32* @oat_malloc ( i32 8 )
  %obj11 = bitcast i32* %mem_ptr10 to %Object* 
  %new_obj12 = call %Object* @_Object_ctor ( %Object* %obj11, %Object* %cast_op9 )
  ret %C* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %_name6 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call7 = load i8** %_name6
  ret i8* %lhs_or_call7
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  ret %Object* %_this1
}


