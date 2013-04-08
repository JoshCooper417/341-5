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


define i32 @program (i32 %argc474, { i32, [ 0 x i8* ] }* %argv472){
__fresh122:
  %argc_slot475 = alloca i32
  store i32 %argc474, i32* %argc_slot475
  %argv_slot473 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv472, { i32, [ 0 x i8* ] }** %argv_slot473
  %mem_ptr476 = call i32* @oat_malloc ( i32 12 )
  %obj477 = bitcast i32* %mem_ptr476 to %A* 
  %new_obj478 = call %A* @_A_ctor ( %A* %obj477 )
  %vdecl_slot479 = alloca %A*
  store %A* %new_obj478, %A** %vdecl_slot479
  %lhs_or_call480 = load %A** %vdecl_slot479
  %vtable_ptr481 = getelementptr %A* %lhs_or_call480, i32 0
  %vtable482 = load %_A_vtable** %vtable_ptr481
  %f484 = getelementptr %_A_vtable* %vtable482, i32 0, i32 2
  %f483 = load { i32, [ 0 x i32 ] }* (%A*)** %f484
  %cast_op485 = bitcast %A %lhs_or_call480 to %A* 
  %ret486 = call { i32, [ 0 x i32 ] }* %f483 ( %A* %cast_op485 )
  %ifnull_slot487 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret486, { i32, [ 0 x i32 ] }** %ifnull_slot487
  %ifnull_guard488 = icmp ne { i32, [ 0 x i32 ] }* %ret486, null
  br i1 %ifnull_guard488, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call489 = load { i32, [ 0 x i32 ] }** %ifnull_slot487
  %ret490 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call489 )
  call void @print_string( i8* %ret490 )
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
  %arr454 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %array_ptr455 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array456 = bitcast { i32, [ 0 x i32 ] }* %array_ptr455 to { i32, [ 0 x i32 ] }* 
  %_tmp75457 = alloca i32
  store i32 5, i32* %_tmp75457
  %_tmp76458 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array456, { i32, [ 0 x i32 ] }** %_tmp76458
  %vdecl_slot459 = alloca i32
  store i32 0, i32* %vdecl_slot459
  br label %__cond115

__cond115:
  %lhs_or_call460 = load i32* %vdecl_slot459
  %lhs_or_call461 = load i32* %_tmp75457
  %bop462 = icmp slt i32 %lhs_or_call460, %lhs_or_call461
  br i1 %bop462, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call463 = load { i32, [ 0 x i32 ] }** %_tmp76458
  %lhs_or_call464 = load i32* %vdecl_slot459
  %bound_ptr466 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call463, i32 0, i32 0
  %bound467 = load i32* %bound_ptr466
  call void @oat_array_bounds_check( i32 %bound467, i32 %lhs_or_call464 )
  %elt465 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call463, i32 0, i32 1, i32 %lhs_or_call464
  store i32 110, i32* %elt465
  %lhs_or_call468 = load i32* %vdecl_slot459
  %bop469 = add i32 %lhs_or_call468, 1
  store i32 %bop469, i32* %vdecl_slot459
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array456, { i32, [ 0 x i32 ] }** %arr454
  %arr470 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call471 = load { i32, [ 0 x i32 ] }** %arr470
  ret { i32, [ 0 x i32 ] }* %lhs_or_call471
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %mem_ptr449 = call i32* @oat_malloc ( i32 8 )
  %obj450 = bitcast i32* %mem_ptr449 to %Object* 
  %new_obj451 = call %Object* @_Object_ctor ( %Object* %obj450 )
  %_this1 = bitcast %Object* %new_obj451 to %A 
  %_name452 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str77, i8** %_name452
  %this_vtable453 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable75, %_A_vtable** %this_vtable453
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name447 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call448 = load i8** %_name447
  ret i8* %lhs_or_call448
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name445 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str76, i8** %_name445
  %this_vtable446 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable74, %_Object_vtable** %this_vtable446
  ret %Object* %_this1
}


