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
@_const_str77.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str77 = alias bitcast([ 2 x i8 ]* @_const_str77.str. to i8*)@_const_str76.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str76 = alias bitcast([ 7 x i8 ]* @_const_str76.str. to i8*)@_A_vtable75 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable74, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%A*)* @_A_f}, align 4
@_Object_vtable74 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh125:
  ret void
}


define i32 @program (i32 %argc475, { i32, [ 0 x i8* ] }* %argv473){
__fresh122:
  %argc_slot476 = alloca i32
  store i32 %argc475, i32* %argc_slot476
  %argv_slot474 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv473, { i32, [ 0 x i8* ] }** %argv_slot474
  %mem_ptr477 = call i32* @oat_malloc ( i32 12 )
  %obj478 = bitcast i32* %mem_ptr477 to %A* 
  %new_obj479 = call %A* @_A_ctor ( %A* %obj478 )
  %vdecl_slot480 = alloca %A*
  store %A* %new_obj479, %A** %vdecl_slot480
  %lhs_or_call481 = load %A** %vdecl_slot480
  %vtable_ptr482 = getelementptr %A* %lhs_or_call481, i32 0
  %vtable483 = load %_A_vtable** %vtable_ptr482
  %f485 = getelementptr %_A_vtable* %vtable483, i32 0, i32 2
  %f484 = load { i32, [ 0 x i32 ] }* (%A*)** %f485
  %cast_op486 = bitcast %A %lhs_or_call481 to %A* 
  %ret487 = call { i32, [ 0 x i32 ] }* %f484 ( %A* %cast_op486 )
  %ifnull_slot488 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret487, { i32, [ 0 x i32 ] }** %ifnull_slot488
  %ifnull_guard489 = icmp ne { i32, [ 0 x i32 ] }* %ret487, null
  br i1 %ifnull_guard489, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call490 = load { i32, [ 0 x i32 ] }** %ifnull_slot488
  %ret491 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call490 )
  call void @print_string( i8* %ret491 )
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
  %arr455 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr456 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array457 = bitcast { i32, [ 0 x i32 ] }* %array_ptr456 to { i32, [ 0 x i32 ] }* 
  %_tmp75458 = alloca i32
  store i32 5, i32* %_tmp75458
  %_tmp76459 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array457, { i32, [ 0 x i32 ] }** %_tmp76459
  %vdecl_slot460 = alloca i32
  store i32 0, i32* %vdecl_slot460
  br label %__cond115

__cond115:
  %lhs_or_call461 = load i32* %vdecl_slot460
  %lhs_or_call462 = load i32* %_tmp75458
  %bop463 = icmp slt i32 %lhs_or_call461, %lhs_or_call462
  br i1 %bop463, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call464 = load { i32, [ 0 x i32 ] }** %_tmp76459
  %lhs_or_call465 = load i32* %vdecl_slot460
  %bound_ptr467 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call464, i32 0, i32 0
  %bound468 = load i32* %bound_ptr467
  call void @oat_array_bounds_check( i32 %bound468, i32 %lhs_or_call465 )
  %elt466 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call464, i32 0, i32 1, i32 %lhs_or_call465
  store i32 110, i32* %elt466
  %lhs_or_call469 = load i32* %vdecl_slot460
  %bop470 = add i32 %lhs_or_call469, 1
  store i32 %bop470, i32* %vdecl_slot460
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array457, { i32, [ 0 x i32 ] }** %arr455
  %arr471 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call472 = load { i32, [ 0 x i32 ] }** %arr471
  ret { i32, [ 0 x i32 ] }* %lhs_or_call472
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %mem_ptr450 = call i32* @oat_malloc ( i32 8 )
  %obj451 = bitcast i32* %mem_ptr450 to %Object* 
  %new_obj452 = call %Object* @_Object_ctor ( %Object* %obj451 )
  %_this1 = bitcast %Object* %new_obj452 to %A 
  %_name453 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str77, i8** %_name453
  %this_vtable454 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable75, %_A_vtable** %this_vtable454
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name448 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call449 = load i8** %_name448
  ret i8* %lhs_or_call449
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name446 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str76, i8** %_name446
  %this_vtable447 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable74, %_Object_vtable** %this_vtable447
  ret %Object* %_this1
}


