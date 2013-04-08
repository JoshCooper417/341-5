%A = type { %_A_vtable*, i8*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%A*)* }
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
@_const_str73.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str73 = alias bitcast([ 6 x i8 ]* @_const_str73.str. to i8*)@_const_str72.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str72 = alias bitcast([ 2 x i8 ]* @_const_str72.str. to i8*)@_const_str71.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str71 = alias bitcast([ 7 x i8 ]* @_const_str71.str. to i8*)@_A_vtable70 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable69, i8* (%Object*)* @_Object_get_name, i8* (%A*)* @_A_f}, align 4
@_Object_vtable69 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh109:
  ret void
}


define i32 @program (i32 %argc429, { i32, [ 0 x i8* ] }* %argv427){
__fresh106:
  %argc_slot430 = alloca i32
  store i32 %argc429, i32* %argc_slot430
  %argv_slot428 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv427, { i32, [ 0 x i8* ] }** %argv_slot428
  %mem_ptr431 = call i32* @oat_malloc ( i32 12 )
  %obj432 = bitcast i32* %mem_ptr431 to %A* 
  %new_obj433 = call %A* @_A_ctor ( %A* %obj432 )
  %vdecl_slot434 = alloca %A*
  store %A* %new_obj433, %A** %vdecl_slot434
  %lhs_or_call435 = load %A** %vdecl_slot434
  %vtable_ptr436 = getelementptr %A* %lhs_or_call435, i32 0
  %vtable437 = load %_A_vtable** %vtable_ptr436
  %f439 = getelementptr %_A_vtable* %vtable437, i32 0, i32 2
  %f438 = load i8* (%A*)** %f439
  %cast_op440 = bitcast %A %lhs_or_call435 to %A* 
  %ret441 = call i8* %f438 ( %A* %cast_op440 )
  %ifnull_slot442 = alloca i8*
  store i8* %ret441, i8** %ifnull_slot442
  %ifnull_guard443 = icmp ne i8* %ret441, null
  br i1 %ifnull_guard443, label %__then105, label %__else104

__fresh107:
  br label %__then105

__then105:
  %lhs_or_call444 = load i8** %ifnull_slot442
  call void @print_string( i8* %lhs_or_call444 )
  br label %__merge103

__fresh108:
  br label %__else104

__else104:
  br label %__merge103

__merge103:
  ret i32 0
}


define i8* @_A_f (%A* %_this1){
__fresh102:
  %str424 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  store i8* @_const_str73, i8** %str424
  %str425 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call426 = load i8** %str425
  ret i8* %lhs_or_call426
}


define %A* @_A_ctor (%A* %_this1){
__fresh101:
  %mem_ptr419 = call i32* @oat_malloc ( i32 8 )
  %obj420 = bitcast i32* %mem_ptr419 to %Object* 
  %new_obj421 = call %Object* @_Object_ctor ( %Object* %obj420 )
  %_this1 = bitcast %Object* %new_obj421 to %A 
  %_name422 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str72, i8** %_name422
  %this_vtable423 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable70, %_A_vtable** %this_vtable423
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh100:
  %_name417 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call418 = load i8** %_name417
  ret i8* %lhs_or_call418
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh99:
  %_name415 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str71, i8** %_name415
  %this_vtable416 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable69, %_Object_vtable** %this_vtable416
  ret %Object* %_this1
}


