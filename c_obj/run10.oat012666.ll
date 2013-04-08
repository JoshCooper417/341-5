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
__fresh143:
  ret void
}


define i32 @program (i32 %argc494, { i32, [ 0 x i8* ] }* %argv492){
__fresh140:
  %argc_slot495 = alloca i32
  store i32 %argc494, i32* %argc_slot495
  %argv_slot493 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv492, { i32, [ 0 x i8* ] }** %argv_slot493
  %mem_ptr496 = call i32* @oat_malloc ( i32 12 )
  %obj497 = bitcast i32* %mem_ptr496 to %A* 
  %new_obj498 = call %A* @_A_ctor ( %A* %obj497 )
  %vdecl_slot499 = alloca %A*
  store %A* %new_obj498, %A** %vdecl_slot499
  %lhs_or_call500 = load %A** %vdecl_slot499
  %vtable_ptr501 = getelementptr %A* %lhs_or_call500, i32 0
  %vtable502 = load %_A_vtable** %vtable_ptr501
  %f504 = getelementptr %_A_vtable* %vtable502, i32 0, i32 2
  %f503 = load { i32, [ 0 x i32 ] }* (%A*)** %f504
  %cast_op505 = bitcast %A %lhs_or_call500 to %A* 
  %ret506 = call { i32, [ 0 x i32 ] }* %f503 ( %A* %cast_op505 )
  %ifnull_slot507 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret506, { i32, [ 0 x i32 ] }** %ifnull_slot507
  %ifnull_guard508 = icmp ne { i32, [ 0 x i32 ] }* %ret506, null
  br i1 %ifnull_guard508, label %__then139, label %__else138

__fresh141:
  br label %__then139

__then139:
  %lhs_or_call509 = load { i32, [ 0 x i32 ] }** %ifnull_slot507
  %ret510 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call509 )
  call void @print_string( i8* %ret510 )
  br label %__merge137

__fresh142:
  br label %__else138

__else138:
  br label %__merge137

__merge137:
  ret i32 0
}


define { i32, [ 0 x i32 ] }* @_A_f (%A* %_this1){
__fresh134:
  %arr474 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr475 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array476 = bitcast { i32, [ 0 x i32 ] }* %array_ptr475 to { i32, [ 0 x i32 ] }* 
  %_tmp75477 = alloca i32
  store i32 5, i32* %_tmp75477
  %_tmp76478 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array476, { i32, [ 0 x i32 ] }** %_tmp76478
  %vdecl_slot479 = alloca i32
  store i32 0, i32* %vdecl_slot479
  br label %__cond133

__cond133:
  %lhs_or_call480 = load i32* %vdecl_slot479
  %lhs_or_call481 = load i32* %_tmp75477
  %bop482 = icmp slt i32 %lhs_or_call480, %lhs_or_call481
  br i1 %bop482, label %__body132, label %__post131

__fresh135:
  br label %__body132

__body132:
  %lhs_or_call483 = load { i32, [ 0 x i32 ] }** %_tmp76478
  %lhs_or_call484 = load i32* %vdecl_slot479
  %bound_ptr486 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call483, i32 0, i32 0
  %bound487 = load i32* %bound_ptr486
  call void @oat_array_bounds_check( i32 %bound487, i32 %lhs_or_call484 )
  %elt485 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call483, i32 0, i32 1, i32 %lhs_or_call484
  store i32 110, i32* %elt485
  %lhs_or_call488 = load i32* %vdecl_slot479
  %bop489 = add i32 %lhs_or_call488, 1
  store i32 %bop489, i32* %vdecl_slot479
  br label %__cond133

__fresh136:
  br label %__post131

__post131:
  store { i32, [ 0 x i32 ] }* %array476, { i32, [ 0 x i32 ] }** %arr474
  %arr490 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call491 = load { i32, [ 0 x i32 ] }** %arr490
  ret { i32, [ 0 x i32 ] }* %lhs_or_call491
}


define %A* @_A_ctor (%A* %_this1){
__fresh130:
  %mem_ptr469 = call i32* @oat_malloc ( i32 8 )
  %obj470 = bitcast i32* %mem_ptr469 to %Object* 
  %new_obj471 = call %Object* @_Object_ctor ( %Object* %obj470 )
  %_this1 = bitcast %Object* %new_obj471 to %A 
  %_name472 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str77, i8** %_name472
  %this_vtable473 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable75, %_A_vtable** %this_vtable473
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh129:
  %_name467 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call468 = load i8** %_name467
  ret i8* %lhs_or_call468
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh128:
  %_name465 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str76, i8** %_name465
  %this_vtable466 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable74, %_Object_vtable** %this_vtable466
  ret %Object* %_this1
}


