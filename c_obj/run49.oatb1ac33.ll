%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, %B* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_B_vtable150 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable148, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable149 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable148, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable148 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh233:
  ret void
}


define i32 @program (i32 %argc1107, { i32, [ 0 x i8* ] }* %argv1105){
__fresh232:
  %argc_slot1108 = alloca i32
  store i32 %argc1107, i32* %argc_slot1108
  %argv_slot1106 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1105, { i32, [ 0 x i8* ] }** %argv_slot1106
  %mem_ptr1109 = call i32* @oat_malloc ( i32 12 )
  %obj1110 = bitcast i32* %mem_ptr1109 to %A* 
  %new_obj1111 = call %A* @_A_ctor ( %A* %obj1110 )
  %vdecl_slot1112 = alloca %A*
  store %A* %new_obj1111, %A** %vdecl_slot1112
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh231:
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh230:
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh229:
  %_name1089 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1090 = load i8* %_name1089
  %cast_op1091 = bitcast i8 %lhs_or_call1090 to i8* 
  ret i8* %cast_op1091
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh228:
  ret %Object* %_this1
}


