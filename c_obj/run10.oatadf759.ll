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


define i32 @program (i32 %argc466, { i32, [ 0 x i8* ] }* %argv464){
__fresh122:
  %argc_slot467 = alloca i32
  store i32 %argc466, i32* %argc_slot467
  %argv_slot465 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv464, { i32, [ 0 x i8* ] }** %argv_slot465
  %mem_ptr468 = call i32* @oat_malloc ( i32 12 )
  %obj469 = bitcast i32* %mem_ptr468 to %A* 
  %new_obj470 = call %A* @_A_ctor ( %A* %obj469 )
  %vdecl_slot471 = alloca %A*
  store %A* %new_obj470, %A** %vdecl_slot471
  %lhs_or_call472 = load %A** %vdecl_slot471
  %vtable_ptr473 = getelementptr %A* %lhs_or_call472, i32 0
  %vtable474 = load %_A_vtable** %vtable_ptr473
  %f476 = getelementptr %_A_vtable* %vtable474, i32 0, i32 2
  %f475 = load { i32, [ 0 x i32 ] }* (%A*)** %f476
  %cast_op477 = bitcast %A %lhs_or_call472 to %A* 
  %ret478 = call { i32, [ 0 x i32 ] }* %f475 ( %A* %cast_op477 )
  %ifnull_slot479 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret478, { i32, [ 0 x i32 ] }** %ifnull_slot479
  %ifnull_guard480 = icmp ne { i32, [ 0 x i32 ] }* %ret478, null
  br i1 %ifnull_guard480, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %lhs_or_call481 = load { i32, [ 0 x i32 ] }** %ifnull_slot479
  %ret482 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call481 )
  call void @print_string( i8* %ret482 )
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
  %arr446 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr447 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array448 = bitcast { i32, [ 0 x i32 ] }* %array_ptr447 to { i32, [ 0 x i32 ] }* 
  %_tmp75449 = alloca i32
  store i32 5, i32* %_tmp75449
  %_tmp76450 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array448, { i32, [ 0 x i32 ] }** %_tmp76450
  %vdecl_slot451 = alloca i32
  store i32 0, i32* %vdecl_slot451
  br label %__cond115

__cond115:
  %lhs_or_call452 = load i32* %vdecl_slot451
  %lhs_or_call453 = load i32* %_tmp75449
  %bop454 = icmp slt i32 %lhs_or_call452, %lhs_or_call453
  br i1 %bop454, label %__body114, label %__post113

__fresh117:
  br label %__body114

__body114:
  %lhs_or_call455 = load { i32, [ 0 x i32 ] }** %_tmp76450
  %lhs_or_call456 = load i32* %vdecl_slot451
  %bound_ptr458 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call455, i32 0, i32 0
  %bound459 = load i32* %bound_ptr458
  call void @oat_array_bounds_check( i32 %bound459, i32 %lhs_or_call456 )
  %elt457 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call455, i32 0, i32 1, i32 %lhs_or_call456
  store i32 110, i32* %elt457
  %lhs_or_call460 = load i32* %vdecl_slot451
  %bop461 = add i32 %lhs_or_call460, 1
  store i32 %bop461, i32* %vdecl_slot451
  br label %__cond115

__fresh118:
  br label %__post113

__post113:
  store { i32, [ 0 x i32 ] }* %array448, { i32, [ 0 x i32 ] }** %arr446
  %arr462 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call463 = load { i32, [ 0 x i32 ] }** %arr462
  ret { i32, [ 0 x i32 ] }* %lhs_or_call463
}


define %A* @_A_ctor (%A* %_this1){
__fresh112:
  %mem_ptr441 = call i32* @oat_malloc ( i32 8 )
  %obj442 = bitcast i32* %mem_ptr441 to %Object* 
  %new_obj443 = call %Object* @_Object_ctor ( %Object* %obj442 )
  %_this1 = bitcast %Object* %new_obj443 to %A 
  %_name444 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str77, i8** %_name444
  %this_vtable445 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable75, %_A_vtable** %this_vtable445
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh111:
  %_name439 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call440 = load i8** %_name439
  ret i8* %lhs_or_call440
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh110:
  %_name437 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str76, i8** %_name437
  %this_vtable438 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable74, %_Object_vtable** %this_vtable438
  ret %Object* %_this1
}


