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
@_A_vtable33 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable32, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable32 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh87:
  ret void
}


define i32 @program (i32 %argc409, { i32, [ 0 x i8* ] }* %argv407){
__fresh86:
  %argc_slot410 = alloca i32
  store i32 %argc409, i32* %argc_slot410
  %argv_slot408 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv407, { i32, [ 0 x i8* ] }** %argv_slot408
  %mem_ptr411 = call i32* @oat_malloc ( i32 12 )
  %obj412 = bitcast i32* %mem_ptr411 to %A* 
  %new_obj413 = call %A* @_A_ctor ( %A* %obj412, i32 10 )
  %vdecl_slot414 = alloca %A*
  store %A* %new_obj413, %A** %vdecl_slot414
  %lhs_or_call415 = load %A** %vdecl_slot414
  %i416 = getelementptr %A* %lhs_or_call415, i32 0, i32 2
  %lhs_or_call417 = load i32* %i416
  ret i32 %lhs_or_call417
}


define %A* @_A_ctor (%A* %_this1, i32 %i396){
__fresh85:
  %i_slot397 = alloca i32
  store i32 %i396, i32* %i_slot397
  %lhs_or_call398 = load %A* %_this1
  %cast_op399 = bitcast %A %lhs_or_call398 to %Object* 
  %mem_ptr400 = call i32* @oat_malloc ( i32 8 )
  %obj401 = bitcast i32* %mem_ptr400 to %Object* 
  %new_obj402 = call %Object* @_Object_ctor ( %Object* %obj401, %Object* %cast_op399 )
  %_name403 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call404 = load %A* %_this1
  %cast_op405 = bitcast %A %lhs_or_call404 to i8* 
  store i8* %cast_op405, i8** %_name403
  %this_vtable406 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable406
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh84:
  %_name394 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call395 = load i8** %_name394
  ret i8* %lhs_or_call395
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh83:
  %_name390 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call391 = load %Object* %_this1
  %cast_op392 = bitcast %Object %lhs_or_call391 to i8* 
  store i8* %cast_op392, i8** %_name390
  %this_vtable393 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable393
  ret %Object* %_this1
}


