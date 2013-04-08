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
@_const_str84.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str84 = alias bitcast([ 6 x i8 ]* @_const_str84.str. to i8*)@_const_str83.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str83 = alias bitcast([ 2 x i8 ]* @_const_str83.str. to i8*)@_const_str82.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str82 = alias bitcast([ 7 x i8 ]* @_const_str82.str. to i8*)@_A_vtable81 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable80, i8* (%Object*)* @_Object_get_name, i8* (%A*)* @_A_f}, align 4
@_Object_vtable80 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh109:
  ret void
}


define i32 @program (i32 %argc422, { i32, [ 0 x i8* ] }* %argv420){
__fresh106:
  %argc_slot423 = alloca i32
  store i32 %argc422, i32* %argc_slot423
  %argv_slot421 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv420, { i32, [ 0 x i8* ] }** %argv_slot421
  %mem_ptr424 = call i32* @oat_malloc ( i32 12 )
  %obj425 = bitcast i32* %mem_ptr424 to %A* 
  %new_obj426 = call %A* @_A_ctor ( %A* %obj425 )
  %vdecl_slot427 = alloca %A*
  store %A* %new_obj426, %A** %vdecl_slot427
  %lhs_or_call428 = load %A** %vdecl_slot427
  %f430 = getelementptr %_A_vtable* @_A_vtable81, i32 0, i32 2
  %f429 = load i8* (%A*)** %f430
  %cast_op431 = bitcast %A %lhs_or_call428 to %A* 
  %ret432 = call i8* %f429 ( %A* %cast_op431 )
  %ifnull_slot433 = alloca i8*
  store i8* %ret432, i8** %ifnull_slot433
  %ifnull_guard434 = icmp ne i8* %ret432, null
  br i1 %ifnull_guard434, label %__then105, label %__else104

__fresh107:
  br label %__then105

__then105:
  %lhs_or_call435 = load i8** %ifnull_slot433
  call void @print_string( i8* %lhs_or_call435 )
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
  %str417 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str84, i8** %str417
  %str418 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call419 = load i8** %str418
  ret i8* %lhs_or_call419
}


define %A* @_A_ctor (%A* %_this1){
__fresh101:
  %mem_ptr412 = call i32* @oat_malloc ( i32 8 )
  %obj413 = bitcast i32* %mem_ptr412 to %Object* 
  %new_obj414 = call %Object* @_Object_ctor ( %Object* %obj413 )
  %_this1 = bitcast %Object* %new_obj414 to %A 
  %_name415 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str83, i8** %_name415
  %this_vtable416 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable81, %_A_vtable** %this_vtable416
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh100:
  %_name410 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call411 = load i8** %_name410
  ret i8* %lhs_or_call411
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh99:
  %_name408 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str82, i8** %_name408
  %this_vtable409 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable80, %_Object_vtable** %this_vtable409
  ret %Object* %_this1
}


