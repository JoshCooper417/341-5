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
@_const_str70.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str70 = alias bitcast([ 2 x i8 ]* @_const_str70.str. to i8*)@_const_str69.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str69 = alias bitcast([ 7 x i8 ]* @_const_str69.str. to i8*)@_A_vtable68 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable67, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable67 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh87:
  ret void
}


define i32 @program (i32 %argc365, { i32, [ 0 x i8* ] }* %argv363){
__fresh86:
  %argc_slot366 = alloca i32
  store i32 %argc365, i32* %argc_slot366
  %argv_slot364 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv363, { i32, [ 0 x i8* ] }** %argv_slot364
  %mem_ptr367 = call i32* @oat_malloc ( i32 12 )
  %obj368 = bitcast i32* %mem_ptr367 to %A* 
  %new_obj369 = call %A* @_A_ctor ( %A* %obj368, i32 10 )
  %vdecl_slot370 = alloca %A*
  store %A* %new_obj369, %A** %vdecl_slot370
  %lhs_or_call371 = load %A** %vdecl_slot370
  %i372 = getelementptr %A* %lhs_or_call371, i32 0, i32 2
  %lhs_or_call373 = load i32* %i372
  ret i32 %lhs_or_call373
}


define %A* @_A_ctor (%A* %_this1, i32 %i354){
__fresh85:
  %i_slot355 = alloca i32
  store i32 %i354, i32* %i_slot355
  %mem_ptr358 = call i32* @oat_malloc ( i32 8 )
  %obj359 = bitcast i32* %mem_ptr358 to %Object* 
  %new_obj360 = call %Object* @_Object_ctor ( %Object* %obj359 )
  %_this1 = bitcast %Object* %new_obj360 to %A 
  %_name361 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str70, i8** %_name361
  %this_vtable362 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable68, %_A_vtable** %this_vtable362
  %i356 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call357 = load i32* %i_slot355
  store i32 %lhs_or_call357, i32* %i356
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh84:
  %_name352 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call353 = load i8** %_name352
  ret i8* %lhs_or_call353
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh83:
  %_name350 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str69, i8** %_name350
  %this_vtable351 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable67, %_Object_vtable** %this_vtable351
  ret %Object* %_this1
}


