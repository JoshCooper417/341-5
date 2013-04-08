%A = type { %_A_vtable*, i8*, i32 }
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
@_A_vtable17 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable16, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable16 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh44:
  ret void
}


define i32 @program (i32 %argc212, { i32, [ 0 x i8* ] }* %argv210){
__fresh43:
  %argc_slot213 = alloca i32
  store i32 %argc212, i32* %argc_slot213
  %argv_slot211 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv210, { i32, [ 0 x i8* ] }** %argv_slot211
  %mem_ptr214 = call i32* @oat_malloc ( i32 12 )
  %obj215 = bitcast i32* %mem_ptr214 to %A* 
  %new_obj216 = call %A* @_A_ctor ( %A* %obj215 )
  %vdecl_slot217 = alloca %A*
  store %A* %new_obj216, %A** %vdecl_slot217
  %lhs_or_call218 = load %A** %vdecl_slot217
  %i219 = getelementptr %A* %lhs_or_call218, i32 0, i32 2
  %lhs_or_call220 = load i32* %i219
  ret i32 %lhs_or_call220
}


define %A* @_A_ctor (%A* %_this1){
__fresh42:
  %lhs_or_call201 = load %A* %_this1
  %cast_op202 = bitcast %A %lhs_or_call201 to %Object* 
  %mem_ptr203 = call i32* @oat_malloc ( i32 8 )
  %obj204 = bitcast i32* %mem_ptr203 to %Object* 
  %new_obj205 = call %Object* @_Object_ctor ( %Object* %obj204, %Object* %cast_op202 )
  %_name206 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call207 = load %A* %_this1
  %cast_op208 = bitcast %A %lhs_or_call207 to i8* 
  store i8* %cast_op208, i8** %_name206
  %this_vtable209 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable209
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh41:
  %_name199 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call200 = load i8** %_name199
  ret i8* %lhs_or_call200
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh40:
  %_name195 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call196 = load %Object* %_this1
  %cast_op197 = bitcast %Object %lhs_or_call196 to i8* 
  store i8* %cast_op197, i8** %_name195
  %this_vtable198 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable198
  ret %Object* %_this1
}


