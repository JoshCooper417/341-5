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


define i32 @program (i32 %argc483, { i32, [ 0 x i8* ] }* %argv481){
__fresh122:
  %argc_slot484 = alloca i32
  store i32 %argc483, i32* %argc_slot484
  %argv_slot482 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv481, { i32, [ 0 x i8* ] }** %argv_slot482
  %mem_ptr485 = call i32* @oat_malloc ( i32 12 )
  %obj486 = bitcast i32* %mem_ptr485 to %A* 
  %new_obj487 = call %A* @_A_ctor ( %A* %obj486 )
  %vdecl_slot488 = alloca %A*
  store %A* %new_obj487, %A** %vdecl_slot488
  %lhs_or_call489 = load %A** %vdecl_slot488
  %f491 = getelementptr %_A_vtable* @_A_vtable86, i32 0, i32 2
  %f490 = load { i32, [ 0 x i32 ] }* (%A*)** %f491
  %cast_op492 = bitcast %A %lhs_or_call489 to %A* 
  %ret493 = call { i32, [ 0 x i32 ] }* %f490 ( %A* %cast_op492 )
  %ifnull_slot494 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret493, { i32, [ 0 x i32 ] }** %ifnull_slot494
  %ifnull_guard495 = icmp ne { i32, [ 0 x i32 ] }* %ret493, null
  br i1 %ifnull_guard495, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call496 = load { i32, [ 0 x i32 ] }** %ifnull_slot494
  %ret497 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call496 )
  call void @print_string( i8* %ret497 )
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
  %arr463 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr464 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array465 = bitcast { i32, [ 0 x i32 ] }* %array_ptr464 to { i32, [ 0 x i32 ] }* 
  %_tmp86466 = alloca i32
  store i32 5, i32* %_tmp86466
  %_tmp87467 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array465, { i32, [ 0 x i32 ] }** %_tmp87467
  %vdecl_slot468 = alloca i32
  store i32 0, i32* %vdecl_slot468
  br label %__cond115

__cond115:
  %lhs_or_call469 = load i32* %vdecl_slot468
  %lhs_or_call470 = load i32* %_tmp86466
  %bop471 = icmp slt i32 %lhs_or_call469, %lhs_or_call470
  br i1 %bop471, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call472 = load { i32, [ 0 x i32 ] }** %_tmp87467
  %lhs_or_call473 = load i32* %vdecl_slot468
  %bound_ptr475 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call472, i32 0, i32 0
  %bound476 = load i32* %bound_ptr475
  call void @oat_array_bounds_check( i32 %bound476, i32 %lhs_or_call473 )
  %elt474 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call472, i32 0, i32 1, i32 %lhs_or_call473
  store i32 110, i32* %elt474
  %lhs_or_call477 = load i32* %vdecl_slot468
  %bop478 = add i32 %lhs_or_call477, 1
  store i32 %bop478, i32* %vdecl_slot468
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array465, { i32, [ 0 x i32 ] }** %arr463
  %arr479 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call480 = load { i32, [ 0 x i32 ] }** %arr479
  ret { i32, [ 0 x i32 ] }* %lhs_or_call480
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %cast_op457 = bitcast %A* %_this1 to %Object* 
  %mem_ptr458 = call i32* @oat_malloc ( i32 12 )
  %obj459 = bitcast i32* %mem_ptr458 to %A* 
  %new_obj460 = call %Object* @_Object_ctor ( %A* %obj459, %Object* %cast_op457 )
  %_this1 = bitcast %Object* %new_obj460 to %A 
  %_name461 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str88, i8** %_name461
  %this_vtable462 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable86, %_A_vtable** %this_vtable462
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name455 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call456 = load i8** %_name455
  ret i8* %lhs_or_call456
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name453 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str87, i8** %_name453
  %this_vtable454 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable85, %_Object_vtable** %this_vtable454
  ret %Object* %_this1
}


