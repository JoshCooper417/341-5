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
@_const_str75.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str75 = alias bitcast([ 7 x i8 ]* @_const_str75.str. to i8*)@_const_str74.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str74 = alias bitcast([ 2 x i8 ]* @_const_str74.str. to i8*)@_const_str73.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str73 = alias bitcast([ 7 x i8 ]* @_const_str73.str. to i8*)@_A_vtable72 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable71, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable71 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh92:
  ret void
}


define i32 @program (i32 %argc388, { i32, [ 0 x i8* ] }* %argv386){
__fresh91:
  %argc_slot389 = alloca i32
  store i32 %argc388, i32* %argc_slot389
  %argv_slot387 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv386, { i32, [ 0 x i8* ] }** %argv_slot387
  %mem_ptr390 = call i32* @oat_malloc ( i32 12 )
  %obj391 = bitcast i32* %mem_ptr390 to %A* 
  %new_obj392 = call %A* @_A_ctor ( %A* %obj391, i8* @_const_str75 )
  %vdecl_slot393 = alloca %A*
  store %A* %new_obj392, %A** %vdecl_slot393
  %lhs_or_call394 = load %A** %vdecl_slot393
  %str395 = getelementptr %A* %lhs_or_call394, i32 0, i32 2
  %lhs_or_call396 = load i8** %str395
  call void @print_string( i8* %lhs_or_call396 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str376){
__fresh90:
  %str_slot377 = alloca i8*
  store i8* %str376, i8** %str_slot377
  %cast_op378 = bitcast %A* %_this1 to %Object* 
  %mem_ptr379 = call i32* @oat_malloc ( i32 12 )
  %obj380 = bitcast i32* %mem_ptr379 to %A* 
  %new_obj381 = call %Object* @_Object_ctor ( %A* %obj380, %Object* %cast_op378 )
  %_this1 = bitcast %Object* %new_obj381 to %A 
  %_name382 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str74, i8** %_name382
  %str383 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call384 = load i8** %str_slot377
  store i8* %lhs_or_call384, i8** %str383
  %this_vtable385 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable72, %_A_vtable** %this_vtable385
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh89:
  %_name374 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call375 = load i8** %_name374
  ret i8* %lhs_or_call375
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh88:
  %_name372 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str73, i8** %_name372
  %this_vtable373 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable71, %_Object_vtable** %this_vtable373
  ret %Object* %_this1
}


