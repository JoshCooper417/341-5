%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str22.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str22 = alias bitcast([ 4 x i8 ]* @_const_str22.str. to i8*)@_A_vtable21 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable20, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable20 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh59:
  ret void
}


define i32 @program (i32 %argc267, { i32, [ 0 x i8* ] }* %argv265){
__fresh58:
  %argc_slot268 = alloca i32
  store i32 %argc267, i32* %argc_slot268
  %argv_slot266 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv265, { i32, [ 0 x i8* ] }** %argv_slot266
  %mem_ptr269 = call i32* @oat_malloc ( i32 12 )
  %obj270 = bitcast i32* %mem_ptr269 to %A* 
  %new_obj271 = call %A* @_A_ctor ( %A* %obj270 )
  %vdecl_slot272 = alloca %A*
  store %A* %new_obj271, %A** %vdecl_slot272
  %lhs_or_call273 = load %A** %vdecl_slot272
  %str274 = getelementptr %A* %lhs_or_call273, i32 0, i32 2
  %lhs_or_call275 = load i8** %str274
  call void @print_string( i8* %lhs_or_call275 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh57:
  %lhs_or_call255 = load %A* %_this1
  %cast_op256 = bitcast %A %lhs_or_call255 to %Object* 
  %mem_ptr257 = call i32* @oat_malloc ( i32 8 )
  %obj258 = bitcast i32* %mem_ptr257 to %Object* 
  %new_obj259 = call %Object* @_Object_ctor ( %Object* %obj258, %Object* %cast_op256 )
  %_name260 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call261 = load %A* %_this1
  %cast_op262 = bitcast %A %lhs_or_call261 to i8* 
  store i8* %cast_op262, i8** %_name260
  %str263 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str22, i8** %str263
  %this_vtable264 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable264
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh56:
  %_name253 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call254 = load i8** %_name253
  ret i8* %lhs_or_call254
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh55:
  %_name249 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call250 = load %Object* %_this1
  %cast_op251 = bitcast %Object %lhs_or_call250 to i8* 
  store i8* %cast_op251, i8** %_name249
  %this_vtable252 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable252
  ret %Object* %_this1
}


