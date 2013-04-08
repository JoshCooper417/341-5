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


define i32 @program (i32 %argc389, { i32, [ 0 x i8* ] }* %argv387){
__fresh91:
  %argc_slot390 = alloca i32
  store i32 %argc389, i32* %argc_slot390
  %argv_slot388 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv387, { i32, [ 0 x i8* ] }** %argv_slot388
  %mem_ptr391 = call i32* @oat_malloc ( i32 12 )
  %obj392 = bitcast i32* %mem_ptr391 to %A* 
  %new_obj393 = call %A* @_A_ctor ( %A* %obj392, i8* @_const_str75 )
  %vdecl_slot394 = alloca %A*
  store %A* %new_obj393, %A** %vdecl_slot394
  %lhs_or_call395 = load %A** %vdecl_slot394
  %str396 = getelementptr %A* %lhs_or_call395, i32 0, i32 2
  %lhs_or_call397 = load i8** %str396
  call void @print_string( i8* %lhs_or_call397 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str378){
__fresh90:
  %str_slot379 = alloca i8*
  store i8* %str378, i8** %str_slot379
  %mem_ptr380 = call i32* @oat_malloc ( i32 8 )
  %obj381 = bitcast i32* %mem_ptr380 to %Object* 
  %new_obj382 = call %Object* @_Object_ctor ( %Object* %obj381 )
  %_this1 = bitcast %Object* %new_obj382 to %A 
  %_name383 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str74, i8** %_name383
  %str384 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call385 = load i8** %str_slot379
  store i8* %lhs_or_call385, i8** %str384
  %this_vtable386 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable72, %_A_vtable** %this_vtable386
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh89:
  %_name376 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call377 = load i8** %_name376
  ret i8* %lhs_or_call377
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh88:
  %_name374 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str73, i8** %_name374
  %this_vtable375 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable71, %_Object_vtable** %this_vtable375
  ret %Object* %_this1
}


