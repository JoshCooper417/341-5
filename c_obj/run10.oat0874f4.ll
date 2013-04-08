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
@_const_str88.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str88 = alias bitcast([ 2 x i8 ]* @_const_str88.str. to i8*)@_const_str87.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str87 = alias bitcast([ 7 x i8 ]* @_const_str87.str. to i8*)@_A_vtable86 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable85, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%A*)* @_A_f}, align 4
@_Object_vtable85 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh125:
  ret void
}


define i32 @program (i32 %argc485, { i32, [ 0 x i8* ] }* %argv483){
__fresh122:
  %argc_slot486 = alloca i32
  store i32 %argc485, i32* %argc_slot486
  %argv_slot484 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv483, { i32, [ 0 x i8* ] }** %argv_slot484
  %mem_ptr487 = call i32* @oat_malloc ( i32 12 )
  %obj488 = bitcast i32* %mem_ptr487 to %A* 
  %new_obj489 = call %A* @_A_ctor ( %A* %obj488 )
  %vdecl_slot490 = alloca %A*
  store %A* %new_obj489, %A** %vdecl_slot490
  %lhs_or_call491 = load %A** %vdecl_slot490
  %vtable_ptr492 = getelementptr %A* %lhs_or_call491, i32 0
  %vtable493 = load %_A_vtable** %vtable_ptr492
  %f495 = getelementptr %_A_vtable* %vtable493, i32 0, i32 2
  %f494 = load { i32, [ 0 x i32 ] }* (%A*)** %f495
  %cast_op496 = bitcast %A %lhs_or_call491 to %A* 
  %ret497 = call { i32, [ 0 x i32 ] }* %f494 ( %A* %cast_op496 )
  %ifnull_slot498 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret497, { i32, [ 0 x i32 ] }** %ifnull_slot498
  %ifnull_guard499 = icmp ne { i32, [ 0 x i32 ] }* %ret497, null
  br i1 %ifnull_guard499, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call500 = load { i32, [ 0 x i32 ] }** %ifnull_slot498
  %ret501 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call500 )
  call void @print_string( i8* %ret501 )
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
  %arr465 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr466 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array467 = bitcast { i32, [ 0 x i32 ] }* %array_ptr466 to { i32, [ 0 x i32 ] }* 
  %_tmp86468 = alloca i32
  store i32 5, i32* %_tmp86468
  %_tmp87469 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array467, { i32, [ 0 x i32 ] }** %_tmp87469
  %vdecl_slot470 = alloca i32
  store i32 0, i32* %vdecl_slot470
  br label %__cond115

__cond115:
  %lhs_or_call471 = load i32* %vdecl_slot470
  %lhs_or_call472 = load i32* %_tmp86468
  %bop473 = icmp slt i32 %lhs_or_call471, %lhs_or_call472
  br i1 %bop473, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call474 = load { i32, [ 0 x i32 ] }** %_tmp87469
  %lhs_or_call475 = load i32* %vdecl_slot470
  %bound_ptr477 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call474, i32 0, i32 0
  %bound478 = load i32* %bound_ptr477
  call void @oat_array_bounds_check( i32 %bound478, i32 %lhs_or_call475 )
  %elt476 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call474, i32 0, i32 1, i32 %lhs_or_call475
  store i32 110, i32* %elt476
  %lhs_or_call479 = load i32* %vdecl_slot470
  %bop480 = add i32 %lhs_or_call479, 1
  store i32 %bop480, i32* %vdecl_slot470
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array467, { i32, [ 0 x i32 ] }** %arr465
  %arr481 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call482 = load { i32, [ 0 x i32 ] }** %arr481
  ret { i32, [ 0 x i32 ] }* %lhs_or_call482
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %mem_ptr460 = call i32* @oat_malloc ( i32 8 )
  %obj461 = bitcast i32* %mem_ptr460 to %Object* 
  %new_obj462 = call %Object* @_Object_ctor ( %Object* %obj461 )
  %_this1 = bitcast %Object* %new_obj462 to %A 
  %_name463 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str88, i8** %_name463
  %this_vtable464 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable86, %_A_vtable** %this_vtable464
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name458 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call459 = load i8** %_name458
  ret i8* %lhs_or_call459
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name456 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str87, i8** %_name456
  %this_vtable457 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable85, %_Object_vtable** %this_vtable457
  ret %Object* %_this1
}


