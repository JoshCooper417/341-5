%A = type { %_A_vtable*, i8*, { i32, [ 0 x i32 ] }* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, { i32, [ 0 x i32 ] }* (%A*)* }
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
@_A_vtable43 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable42, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%A*)* @_A_f}, align 4
@_Object_vtable42 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh125:
  ret void
}


define i32 @program (i32 %argc548, { i32, [ 0 x i8* ] }* %argv546){
__fresh122:
  %argc_slot549 = alloca i32
  store i32 %argc548, i32* %argc_slot549
  %argv_slot547 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv546, { i32, [ 0 x i8* ] }** %argv_slot547
  %mem_ptr550 = call i32* @oat_malloc ( i32 12 )
  %obj551 = bitcast i32* %mem_ptr550 to %A* 
  %new_obj552 = call %A* @_A_ctor ( %A* %obj551 )
  %vdecl_slot553 = alloca %A*
  store %A* %new_obj552, %A** %vdecl_slot553
  %lhs_or_call554 = load %A** %vdecl_slot553
  %f556 = getelementptr %_A_vtable* @_A_vtable43, i32 0, i32 2
  %f555 = load { i32, [ 0 x i32 ] }* (%A*)** %f556
  %cast_op557 = bitcast %A %lhs_or_call554 to %A* 
  %ret558 = call { i32, [ 0 x i32 ] }* %f555 ( %A* %cast_op557 )
  %ifnull_slot559 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret558, { i32, [ 0 x i32 ] }** %ifnull_slot559
  %ifnull_guard560 = icmp ne { i32, [ 0 x i32 ] }* %ret558, null
  br i1 %ifnull_guard560, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call561 = load { i32, [ 0 x i32 ] }** %ifnull_slot559
  %ret562 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call561 )
  call void @print_string( i8* %ret562 )
  br label %__merge119

__fresh124:
  br label %__else120

__else120:
  br label %__merge119

__merge119:
  ret i32 0
}


define { i32, [ 0 x i32 ] }* @_A_f (%A* %_this1){
__fresh116:
  %arr528 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr529 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array530 = bitcast { i32, [ 0 x i32 ] }* %array_ptr529 to { i32, [ 0 x i32 ] }* 
  %_tmp41531 = alloca i32
  store i32 5, i32* %_tmp41531
  %_tmp42532 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array530, { i32, [ 0 x i32 ] }** %_tmp42532
  %vdecl_slot533 = alloca i32
  store i32 0, i32* %vdecl_slot533
  br label %__cond115

__cond115:
  %lhs_or_call534 = load i32* %vdecl_slot533
  %lhs_or_call535 = load i32* %_tmp41531
  %bop536 = icmp slt i32 %lhs_or_call534, %lhs_or_call535
  br i1 %bop536, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call537 = load { i32, [ 0 x i32 ] }** %_tmp42532
  %lhs_or_call538 = load i32* %vdecl_slot533
  %bound_ptr540 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call537, i32 0, i32 0
  %bound541 = load i32* %bound_ptr540
  call void @oat_array_bounds_check( i32 %bound541, i32 %lhs_or_call538 )
  %elt539 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call537, i32 0, i32 1, i32 %lhs_or_call538
  store i32 110, i32* %elt539
  %lhs_or_call542 = load i32* %vdecl_slot533
  %bop543 = add i32 %lhs_or_call542, 1
  store i32 %bop543, i32* %vdecl_slot533
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array530, { i32, [ 0 x i32 ] }** %arr528
  %arr544 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call545 = load { i32, [ 0 x i32 ] }** %arr544
  ret { i32, [ 0 x i32 ] }* %lhs_or_call545
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %lhs_or_call519 = load %A* %_this1
  %cast_op520 = bitcast %A %lhs_or_call519 to %Object* 
  %mem_ptr521 = call i32* @oat_malloc ( i32 8 )
  %obj522 = bitcast i32* %mem_ptr521 to %Object* 
  %new_obj523 = call %Object* @_Object_ctor ( %Object* %obj522, %Object* %cast_op520 )
  %_name524 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call525 = load %A* %_this1
  %cast_op526 = bitcast %A %lhs_or_call525 to i8* 
  store i8* %cast_op526, i8** %_name524
  %this_vtable527 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable527
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name517 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call518 = load i8** %_name517
  ret i8* %lhs_or_call518
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name513 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call514 = load %Object* %_this1
  %cast_op515 = bitcast %Object %lhs_or_call514 to i8* 
  store i8* %cast_op515, i8** %_name513
  %this_vtable516 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable516
  ret %Object* %_this1
}


