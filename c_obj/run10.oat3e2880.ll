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


define i32 @program (i32 %argc465, { i32, [ 0 x i8* ] }* %argv463){
__fresh122:
  %argc_slot466 = alloca i32
  store i32 %argc465, i32* %argc_slot466
  %argv_slot464 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv463, { i32, [ 0 x i8* ] }** %argv_slot464
  %mem_ptr467 = call i32* @oat_malloc ( i32 12 )
  %obj468 = bitcast i32* %mem_ptr467 to %A* 
  %new_obj469 = call %A* @_A_ctor ( %A* %obj468 )
  %vdecl_slot470 = alloca %A*
  store %A* %new_obj469, %A** %vdecl_slot470
  %lhs_or_call471 = load %A** %vdecl_slot470
  %f473 = getelementptr %_A_vtable* @_A_vtable86, i32 0, i32 2
  %f472 = load { i32, [ 0 x i32 ] }* (%A*)** %f473
  %cast_op474 = bitcast %A %lhs_or_call471 to %A* 
  %ret475 = call { i32, [ 0 x i32 ] }* %f472 ( %A* %cast_op474 )
  %ifnull_slot476 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret475, { i32, [ 0 x i32 ] }** %ifnull_slot476
  %ifnull_guard477 = icmp ne { i32, [ 0 x i32 ] }* %ret475, null
  br i1 %ifnull_guard477, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call478 = load { i32, [ 0 x i32 ] }** %ifnull_slot476
  %ret479 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call478 )
  call void @print_string( i8* %ret479 )
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
  %arr445 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr446 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array447 = bitcast { i32, [ 0 x i32 ] }* %array_ptr446 to { i32, [ 0 x i32 ] }* 
  %_tmp86448 = alloca i32
  store i32 5, i32* %_tmp86448
  %_tmp87449 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array447, { i32, [ 0 x i32 ] }** %_tmp87449
  %vdecl_slot450 = alloca i32
  store i32 0, i32* %vdecl_slot450
  br label %__cond115

__cond115:
  %lhs_or_call451 = load i32* %vdecl_slot450
  %lhs_or_call452 = load i32* %_tmp86448
  %bop453 = icmp slt i32 %lhs_or_call451, %lhs_or_call452
  br i1 %bop453, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call454 = load { i32, [ 0 x i32 ] }** %_tmp87449
  %lhs_or_call455 = load i32* %vdecl_slot450
  %bound_ptr457 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call454, i32 0, i32 0
  %bound458 = load i32* %bound_ptr457
  call void @oat_array_bounds_check( i32 %bound458, i32 %lhs_or_call455 )
  %elt456 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call454, i32 0, i32 1, i32 %lhs_or_call455
  store i32 110, i32* %elt456
  %lhs_or_call459 = load i32* %vdecl_slot450
  %bop460 = add i32 %lhs_or_call459, 1
  store i32 %bop460, i32* %vdecl_slot450
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array447, { i32, [ 0 x i32 ] }** %arr445
  %arr461 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call462 = load { i32, [ 0 x i32 ] }** %arr461
  ret { i32, [ 0 x i32 ] }* %lhs_or_call462
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %mem_ptr440 = call i32* @oat_malloc ( i32 8 )
  %obj441 = bitcast i32* %mem_ptr440 to %Object* 
  %new_obj442 = call %Object* @_Object_ctor ( %Object* %obj441 )
  %_this1 = bitcast %Object* %new_obj442 to %A 
  %_name443 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str88, i8** %_name443
  %this_vtable444 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable86, %_A_vtable** %this_vtable444
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name438 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call439 = load i8** %_name438
  ret i8* %lhs_or_call439
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name436 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str87, i8** %_name436
  %this_vtable437 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable85, %_Object_vtable** %this_vtable437
  ret %Object* %_this1
}


