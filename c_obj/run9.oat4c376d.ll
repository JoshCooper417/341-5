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


define i32 @program (i32 %argc421, { i32, [ 0 x i8* ] }* %argv419){
__fresh106:
  %argc_slot422 = alloca i32
  store i32 %argc421, i32* %argc_slot422
  %argv_slot420 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv419, { i32, [ 0 x i8* ] }** %argv_slot420
  %mem_ptr423 = call i32* @oat_malloc ( i32 12 )
  %obj424 = bitcast i32* %mem_ptr423 to %A* 
  %new_obj425 = call %A* @_A_ctor ( %A* %obj424 )
  %vdecl_slot426 = alloca %A*
  store %A* %new_obj425, %A** %vdecl_slot426
  %lhs_or_call427 = load %A** %vdecl_slot426
  %vtable_ptr428 = getelementptr %A* %lhs_or_call427, i32 0
  %vtable429 = load %_A_vtable** %vtable_ptr428
  %f431 = getelementptr %_A_vtable* %vtable429, i32 0, i32 2
  %f430 = load i8* (%A*)** %f431
  %cast_op432 = bitcast %A %lhs_or_call427 to %A* 
  %ret433 = call i8* %f430 ( %A* %cast_op432 )
  %ifnull_slot434 = alloca i8*
  store i8* %ret433, i8** %ifnull_slot434
  %ifnull_guard435 = icmp ne i8* %ret433, null
  br i1 %ifnull_guard435, label %__then105, label %__else104

__fresh107:
  br label %__then105

__then105:
  %lhs_or_call436 = load i8** %ifnull_slot434
  call void @print_string( i8* %lhs_or_call436 )
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
  %str416 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str73, i8** %str416
  %str417 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call418 = load i8** %str417
  ret i8* %lhs_or_call418
}


define %A* @_A_ctor (%A* %_this1){
__fresh101:
  %mem_ptr411 = call i32* @oat_malloc ( i32 8 )
  %obj412 = bitcast i32* %mem_ptr411 to %Object* 
  %new_obj413 = call %Object* @_Object_ctor ( %Object* %obj412 )
  %_this1 = bitcast %Object* %new_obj413 to %A 
  %_name414 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str72, i8** %_name414
  %this_vtable415 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable70, %_A_vtable** %this_vtable415
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh100:
  %_name409 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call410 = load i8** %_name409
  ret i8* %lhs_or_call410
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh99:
  %_name407 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str71, i8** %_name407
  %this_vtable408 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable69, %_Object_vtable** %this_vtable408
  ret %Object* %_this1
}


