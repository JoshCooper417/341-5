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
@_A_vtable38 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable37, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f}, align 4
@_Object_vtable37 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh98:
  ret void
}


define i32 @program (i32 %argc468, { i32, [ 0 x i8* ] }* %argv466){
__fresh97:
  %argc_slot469 = alloca i32
  store i32 %argc468, i32* %argc_slot469
  %argv_slot467 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv466, { i32, [ 0 x i8* ] }** %argv_slot467
  %mem_ptr470 = call i32* @oat_malloc ( i32 12 )
  %obj471 = bitcast i32* %mem_ptr470 to %A* 
  %new_obj472 = call %A* @_A_ctor ( %A* %obj471 )
  %vdecl_slot473 = alloca %A*
  store %A* %new_obj472, %A** %vdecl_slot473
  %lhs_or_call474 = load %A** %vdecl_slot473
  %f476 = getelementptr %_A_vtable* @_A_vtable38, i32 0, i32 2
  %f475 = load i32 (%A*)** %f476
  %cast_op477 = bitcast %A %lhs_or_call474 to %A* 
  %ret478 = call i32 %f475 ( %A* %cast_op477 )
  ret i32 %ret478
}


define i32 @_A_f (%A* %_this1){
__fresh96:
  %i463 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call464 = load i32* %i463
  %bop465 = add i32 %lhs_or_call464, 1
  ret i32 %bop465
}


define %A* @_A_ctor (%A* %_this1){
__fresh95:
  %lhs_or_call454 = load %A* %_this1
  %cast_op455 = bitcast %A %lhs_or_call454 to %Object* 
  %mem_ptr456 = call i32* @oat_malloc ( i32 8 )
  %obj457 = bitcast i32* %mem_ptr456 to %Object* 
  %new_obj458 = call %Object* @_Object_ctor ( %Object* %obj457, %Object* %cast_op455 )
  %_name459 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call460 = load %A* %_this1
  %cast_op461 = bitcast %A %lhs_or_call460 to i8* 
  store i8* %cast_op461, i8** %_name459
  %this_vtable462 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable462
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh94:
  %_name452 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call453 = load i8** %_name452
  ret i8* %lhs_or_call453
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh93:
  %_name448 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call449 = load %Object* %_this1
  %cast_op450 = bitcast %Object %lhs_or_call449 to i8* 
  store i8* %cast_op450, i8** %_name448
  %this_vtable451 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable451
  ret %Object* %_this1
}


