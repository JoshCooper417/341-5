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


define i32 @program (i32 %argc473, { i32, [ 0 x i8* ] }* %argv471){
__fresh122:
  %argc_slot474 = alloca i32
  store i32 %argc473, i32* %argc_slot474
  %argv_slot472 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv471, { i32, [ 0 x i8* ] }** %argv_slot472
  %mem_ptr475 = call i32* @oat_malloc ( i32 12 )
  %obj476 = bitcast i32* %mem_ptr475 to %A* 
  %new_obj477 = call %A* @_A_ctor ( %A* %obj476 )
  %vdecl_slot478 = alloca %A*
  store %A* %new_obj477, %A** %vdecl_slot478
  %lhs_or_call479 = load %A** %vdecl_slot478
  %vtable_ptr480 = getelementptr %A* %lhs_or_call479, i32 0
  %vtable481 = load %_A_vtable** %vtable_ptr480
  %f483 = getelementptr %_A_vtable* %vtable481, i32 0, i32 2
  %f482 = load { i32, [ 0 x i32 ] }* (%A*)** %f483
  %cast_op484 = bitcast %A %lhs_or_call479 to %A* 
  %ret485 = call { i32, [ 0 x i32 ] }* %f482 ( %A* %cast_op484 )
  %ifnull_slot486 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret485, { i32, [ 0 x i32 ] }** %ifnull_slot486
  %ifnull_guard487 = icmp ne { i32, [ 0 x i32 ] }* %ret485, null
  br i1 %ifnull_guard487, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call488 = load { i32, [ 0 x i32 ] }** %ifnull_slot486
  %ret489 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call488 )
  call void @print_string( i8* %ret489 )
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
  %arr453 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr454 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array455 = bitcast { i32, [ 0 x i32 ] }* %array_ptr454 to { i32, [ 0 x i32 ] }* 
  %_tmp75456 = alloca i32
  store i32 5, i32* %_tmp75456
  %_tmp76457 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array455, { i32, [ 0 x i32 ] }** %_tmp76457
  %vdecl_slot458 = alloca i32
  store i32 0, i32* %vdecl_slot458
  br label %__cond115

__cond115:
  %lhs_or_call459 = load i32* %vdecl_slot458
  %lhs_or_call460 = load i32* %_tmp75456
  %bop461 = icmp slt i32 %lhs_or_call459, %lhs_or_call460
  br i1 %bop461, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call462 = load { i32, [ 0 x i32 ] }** %_tmp76457
  %lhs_or_call463 = load i32* %vdecl_slot458
  %bound_ptr465 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call462, i32 0, i32 0
  %bound466 = load i32* %bound_ptr465
  call void @oat_array_bounds_check( i32 %bound466, i32 %lhs_or_call463 )
  %elt464 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call462, i32 0, i32 1, i32 %lhs_or_call463
  store i32 110, i32* %elt464
  %lhs_or_call467 = load i32* %vdecl_slot458
  %bop468 = add i32 %lhs_or_call467, 1
  store i32 %bop468, i32* %vdecl_slot458
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array455, { i32, [ 0 x i32 ] }** %arr453
  %arr469 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call470 = load { i32, [ 0 x i32 ] }** %arr469
  ret { i32, [ 0 x i32 ] }* %lhs_or_call470
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %mem_ptr448 = call i32* @oat_malloc ( i32 8 )
  %obj449 = bitcast i32* %mem_ptr448 to %Object* 
  %new_obj450 = call %Object* @_Object_ctor ( %Object* %obj449 )
  %_this1 = bitcast %Object* %new_obj450 to %A 
  %_name451 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str77, i8** %_name451
  %this_vtable452 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable75, %_A_vtable** %this_vtable452
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name446 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call447 = load i8** %_name446
  ret i8* %lhs_or_call447
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name444 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str76, i8** %_name444
  %this_vtable445 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable74, %_Object_vtable** %this_vtable445
  ret %Object* %_this1
}


