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


define i32 @program (i32 %argc24, { i32, [ 0 x i8* ] }* %argv22){
__fresh4:
  %argc_slot25 = alloca i32
  store i32 %argc24, i32* %argc_slot25
  %argv_slot23 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv22, { i32, [ 0 x i8* ] }** %argv_slot23
  %mem_ptr26 = call i32* @oat_malloc ( i32 20 )
  %obj27 = bitcast i32* %mem_ptr26 to %B* 
  %new_obj28 = call %B* @_B_ctor ( %B* %obj27 )
  %vdecl_slot29 = alloca %B*
  store %B* %new_obj28, %B** %vdecl_slot29
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh3:
  %lhs_or_call15 = load %B* %_this1
  %super_ctor20 = call %C* @_C_ctor ( %C* %cast_op16 )
  %_name17 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call18 = load %B* %_this1
  %cast_op19 = bitcast %B %lhs_or_call18 to i8* 
  store i8** %_name17, i8* %cast_op19
  %this_vtable21 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* %this_vtable21, %B* %_this1
  ret %B* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh2:
  %lhs_or_call8 = load %C* %_this1
  %super_ctor13 = call %Object* @_Object_ctor ( %Object* %cast_op9 )
  %_name10 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call11 = load %C* %_this1
  %cast_op12 = bitcast %C %lhs_or_call11 to i8* 
  store i8** %_name10, i8* %cast_op12
  %this_vtable14 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* %this_vtable14, %C* %_this1
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
  %_name2 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3 = load %Object* %_this1
  %cast_op4 = bitcast %Object %lhs_or_call3 to i8* 
  store i8** %_name2, i8* %cast_op4
  %this_vtable5 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* %this_vtable5, %Object* %_this1
  ret %Object* %_this1
}


