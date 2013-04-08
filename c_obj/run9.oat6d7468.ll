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
@_const_str41.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str41 = alias bitcast([ 6 x i8 ]* @_const_str41.str. to i8*)@_A_vtable40 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable39, i8* (%Object*)* @_Object_get_name, i8* (%A*)* @_A_f}, align 4
@_Object_vtable39 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh109:
  ret void
}


define i32 @program (i32 %argc499, { i32, [ 0 x i8* ] }* %argv497){
__fresh106:
  %argc_slot500 = alloca i32
  store i32 %argc499, i32* %argc_slot500
  %argv_slot498 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv497, { i32, [ 0 x i8* ] }** %argv_slot498
  %mem_ptr501 = call i32* @oat_malloc ( i32 12 )
  %obj502 = bitcast i32* %mem_ptr501 to %A* 
  %new_obj503 = call %A* @_A_ctor ( %A* %obj502 )
  %vdecl_slot504 = alloca %A*
  store %A* %new_obj503, %A** %vdecl_slot504
  %lhs_or_call505 = load %A** %vdecl_slot504
  %f507 = getelementptr %_A_vtable* @_A_vtable40, i32 0, i32 2
  %f506 = load i8* (%A*)** %f507
  %cast_op508 = bitcast %A %lhs_or_call505 to %A* 
  %ret509 = call i8* %f506 ( %A* %cast_op508 )
  %ifnull_slot510 = alloca i8*
  store i8* %ret509, i8** %ifnull_slot510
  %ifnull_guard511 = icmp ne i8* %ret509, null
  br i1 %ifnull_guard511, label %__then105, label %__else104

__fresh107:
  br label %__then105

__then105:
  %lhs_or_call512 = load i8** %ifnull_slot510
  call void @print_string( i8* %lhs_or_call512 )
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
  %str494 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str41, i8** %str494
  %str495 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call496 = load i8** %str495
  ret i8* %lhs_or_call496
}


define %A* @_A_ctor (%A* %_this1){
__fresh101:
  %lhs_or_call485 = load %A* %_this1
  %cast_op486 = bitcast %A %lhs_or_call485 to %Object* 
  %mem_ptr487 = call i32* @oat_malloc ( i32 8 )
  %obj488 = bitcast i32* %mem_ptr487 to %Object* 
  %new_obj489 = call %Object* @_Object_ctor ( %Object* %obj488, %Object* %cast_op486 )
  %_name490 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call491 = load %A* %_this1
  %cast_op492 = bitcast %A %lhs_or_call491 to i8* 
  store i8* %cast_op492, i8** %_name490
  %this_vtable493 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable493
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh100:
  %_name483 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call484 = load i8** %_name483
  ret i8* %lhs_or_call484
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh99:
  %_name479 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call480 = load %Object* %_this1
  %cast_op481 = bitcast %Object %lhs_or_call480 to i8* 
  store i8* %cast_op481, i8** %_name479
  %this_vtable482 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable482
  ret %Object* %_this1
}


