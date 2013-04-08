%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str79.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str79 = alias bitcast([ 2 x i8 ]* @_const_str79.str. to i8*)@_const_str78.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str78 = alias bitcast([ 7 x i8 ]* @_const_str78.str. to i8*)@_A_vtable77 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable76, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f}, align 4
@_Object_vtable76 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh98:
  ret void
}


define i32 @program (i32 %argc414, { i32, [ 0 x i8* ] }* %argv412){
__fresh97:
  %argc_slot415 = alloca i32
  store i32 %argc414, i32* %argc_slot415
  %argv_slot413 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv412, { i32, [ 0 x i8* ] }** %argv_slot413
  %mem_ptr416 = call i32* @oat_malloc ( i32 12 )
  %obj417 = bitcast i32* %mem_ptr416 to %A* 
  %new_obj418 = call %A* @_A_ctor ( %A* %obj417 )
  %vdecl_slot419 = alloca %A*
  store %A* %new_obj418, %A** %vdecl_slot419
  %lhs_or_call420 = load %A** %vdecl_slot419
  %f422 = getelementptr %_A_vtable* @_A_vtable77, i32 0, i32 2
  %f421 = load i32 (%A*)** %f422
  %cast_op423 = bitcast %A %lhs_or_call420 to %A* 
  %ret424 = call i32 %f421 ( %A* %cast_op423 )
  ret i32 %ret424
}


define i32 @_A_f (%A* %_this1){
__fresh96:
  %i409 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call410 = load i32* %i409
  %bop411 = add i32 %lhs_or_call410, 1
  ret i32 %bop411
}


define %A* @_A_ctor (%A* %_this1){
__fresh95:
  %cast_op403 = bitcast %A* %_this1 to %Object* 
  %mem_ptr404 = call i32* @oat_malloc ( i32 12 )
  %obj405 = bitcast i32* %mem_ptr404 to %A* 
  %new_obj406 = call %Object* @_Object_ctor ( %A* %obj405, %Object* %cast_op403 )
  %_this1 = bitcast %Object* %new_obj406 to %A 
  %_name407 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str79, i8** %_name407
  %this_vtable408 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable77, %_A_vtable** %this_vtable408
  %i402 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i402
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh94:
  %_name400 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call401 = load i8** %_name400
  ret i8* %lhs_or_call401
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh93:
  %_name398 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str78, i8** %_name398
  %this_vtable399 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable76, %_Object_vtable** %this_vtable399
  ret %Object* %_this1
}


