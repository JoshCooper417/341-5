%B = type { %_B_vtable*, i8*, { i32, [ 0 x i32 ] }* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, { i32, [ 0 x i32 ] }* }
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
@_const_str101.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str101 = alias bitcast([ 2 x i8 ]* @_const_str101.str. to i8*)@_const_str100.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str100 = alias bitcast([ 2 x i8 ]* @_const_str100.str. to i8*)@_const_str99.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str99 = alias bitcast([ 7 x i8 ]* @_const_str99.str. to i8*)@_B_vtable98 = private constant %_B_vtable {%_A_vtable* @_A_vtable97, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable97 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable96, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable96 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh129:
  ret void
}


define i32 @program (i32 %argc520, { i32, [ 0 x i8* ] }* %argv518){
__fresh128:
  %argc_slot521 = alloca i32
  store i32 %argc520, i32* %argc_slot521
  %argv_slot519 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv518, { i32, [ 0 x i8* ] }** %argv_slot519
  %mem_ptr522 = call i32* @oat_malloc ( i32 12 )
  %obj523 = bitcast i32* %mem_ptr522 to %B* 
  %new_obj524 = call %B* @_B_ctor ( %B* %obj523 )
  %vdecl_slot525 = alloca %B*
  store %B* %new_obj524, %B** %vdecl_slot525
  %lhs_or_call526 = load %B** %vdecl_slot525
  %arr527 = getelementptr %B* %lhs_or_call526, i32 0, i32 2
  %lhs_or_call528 = load { i32, [ 0 x i32 ] }** %arr527
  %ret529 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call528 )
  call void @print_string( i8* %ret529 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh127:
  %mem_ptr513 = call i32* @oat_malloc ( i32 12 )
  %obj514 = bitcast i32* %mem_ptr513 to %A* 
  %new_obj515 = call %A* @_A_ctor ( %A* %obj514 )
  %_this1 = bitcast %A* %new_obj515 to %B 
  %_name516 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str101, i8** %_name516
  %this_vtable517 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable98, %_B_vtable** %this_vtable517
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh124:
  %mem_ptr492 = call i32* @oat_malloc ( i32 8 )
  %obj493 = bitcast i32* %mem_ptr492 to %Object* 
  %new_obj494 = call %Object* @_Object_ctor ( %Object* %obj493 )
  %_this1 = bitcast %Object* %new_obj494 to %A 
  %_name495 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str100, i8** %_name495
  %arr496 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr497 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array498 = bitcast { i32, [ 0 x i32 ] }* %array_ptr497 to { i32, [ 0 x i32 ] }* 
  %_tmp99499 = alloca i32
  store i32 10, i32* %_tmp99499
  %_tmp100500 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array498, { i32, [ 0 x i32 ] }** %_tmp100500
  %vdecl_slot501 = alloca i32
  store i32 0, i32* %vdecl_slot501
  br label %__cond123

__cond123:
  %lhs_or_call502 = load i32* %vdecl_slot501
  %lhs_or_call503 = load i32* %_tmp99499
  %bop504 = icmp slt i32 %lhs_or_call502, %lhs_or_call503
  br i1 %bop504, label %__body122, label %__post121

__fresh125:
  br label %__body122

__body122:
  %lhs_or_call505 = load { i32, [ 0 x i32 ] }** %_tmp100500
  %lhs_or_call506 = load i32* %vdecl_slot501
  %bound_ptr508 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call505, i32 0, i32 0
  %bound509 = load i32* %bound_ptr508
  call void @oat_array_bounds_check( i32 %bound509, i32 %lhs_or_call506 )
  %elt507 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call505, i32 0, i32 1, i32 %lhs_or_call506
  store i32 110, i32* %elt507
  %lhs_or_call510 = load i32* %vdecl_slot501
  %bop511 = add i32 %lhs_or_call510, 1
  store i32 %bop511, i32* %vdecl_slot501
  br label %__cond123

__fresh126:
  br label %__post121

__post121:
  store { i32, [ 0 x i32 ] }* %array498, { i32, [ 0 x i32 ] }** %arr496
  %this_vtable512 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable97, %_A_vtable** %this_vtable512
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh120:
  %_name490 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call491 = load i8** %_name490
  ret i8* %lhs_or_call491
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh119:
  %_name488 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str99, i8** %_name488
  %this_vtable489 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable96, %_Object_vtable** %this_vtable489
  ret %Object* %_this1
}


