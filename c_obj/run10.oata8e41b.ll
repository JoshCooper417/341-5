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


define i32 @program (i32 %argc484, { i32, [ 0 x i8* ] }* %argv482){
__fresh122:
  %argc_slot485 = alloca i32
  store i32 %argc484, i32* %argc_slot485
  %argv_slot483 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv482, { i32, [ 0 x i8* ] }** %argv_slot483
  %mem_ptr486 = call i32* @oat_malloc ( i32 12 )
  %obj487 = bitcast i32* %mem_ptr486 to %A* 
  %new_obj488 = call %A* @_A_ctor ( %A* %obj487 )
  %vdecl_slot489 = alloca %A*
  store %A* %new_obj488, %A** %vdecl_slot489
  %lhs_or_call490 = load %A** %vdecl_slot489
  %f492 = getelementptr %_A_vtable* @_A_vtable86, i32 0, i32 2
  %f491 = load { i32, [ 0 x i32 ] }* (%A*)** %f492
  %cast_op493 = bitcast %A %lhs_or_call490 to %A* 
  %ret494 = call { i32, [ 0 x i32 ] }* %f491 ( %A* %cast_op493 )
  %ifnull_slot495 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret494, { i32, [ 0 x i32 ] }** %ifnull_slot495
  %ifnull_guard496 = icmp ne { i32, [ 0 x i32 ] }* %ret494, null
  br i1 %ifnull_guard496, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call497 = load { i32, [ 0 x i32 ] }** %ifnull_slot495
  %ret498 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call497 )
  call void @print_string( i8* %ret498 )
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
  %arr464 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr465 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array466 = bitcast { i32, [ 0 x i32 ] }* %array_ptr465 to { i32, [ 0 x i32 ] }* 
  %_tmp86467 = alloca i32
  store i32 5, i32* %_tmp86467
  %_tmp87468 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array466, { i32, [ 0 x i32 ] }** %_tmp87468
  %vdecl_slot469 = alloca i32
  store i32 0, i32* %vdecl_slot469
  br label %__cond115

__cond115:
  %lhs_or_call470 = load i32* %vdecl_slot469
  %lhs_or_call471 = load i32* %_tmp86467
  %bop472 = icmp slt i32 %lhs_or_call470, %lhs_or_call471
  br i1 %bop472, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call473 = load { i32, [ 0 x i32 ] }** %_tmp87468
  %lhs_or_call474 = load i32* %vdecl_slot469
  %bound_ptr476 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call473, i32 0, i32 0
  %bound477 = load i32* %bound_ptr476
  call void @oat_array_bounds_check( i32 %bound477, i32 %lhs_or_call474 )
  %elt475 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call473, i32 0, i32 1, i32 %lhs_or_call474
  store i32 110, i32* %elt475
  %lhs_or_call478 = load i32* %vdecl_slot469
  %bop479 = add i32 %lhs_or_call478, 1
  store i32 %bop479, i32* %vdecl_slot469
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array466, { i32, [ 0 x i32 ] }** %arr464
  %arr480 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call481 = load { i32, [ 0 x i32 ] }** %arr480
  ret { i32, [ 0 x i32 ] }* %lhs_or_call481
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %cast_op458 = bitcast %A* %_this1 to %Object* 
  %mem_ptr459 = call i32* @oat_malloc ( i32 12 )
  %obj460 = bitcast i32* %mem_ptr459 to %A* 
  %new_obj461 = call %Object* @_Object_ctor ( %A* %obj460, %Object* %cast_op458 )
  %_this1 = bitcast %Object* %new_obj461 to %A 
  %_name462 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str88, i8** %_name462
  %this_vtable463 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable86, %_A_vtable** %this_vtable463
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name456 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call457 = load i8** %_name456
  ret i8* %lhs_or_call457
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name454 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str87, i8** %_name454
  %this_vtable455 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable85, %_Object_vtable** %this_vtable455
  ret %Object* %_this1
}


