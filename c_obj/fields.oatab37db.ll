%Fields = type { %_Fields_vtable*, i8*, i32, i32, i32 }
%_Fields_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Fields* (%Fields*)* }
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
@_const_str481.str. = private unnamed_addr constant [ 7 x i8 ] c "Fields\00", align 4
@_const_str481 = alias bitcast([ 7 x i8 ]* @_const_str481.str. to i8*)@_const_str480.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str480 = alias bitcast([ 7 x i8 ]* @_const_str480.str. to i8*)@_Fields_vtable479 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable478, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable478 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh523:
  ret void
}


define i32 @program (i32 %argc2490, { i32, [ 0 x i8* ] }* %argv2488){
__fresh522:
  %argc_slot2491 = alloca i32
  store i32 %argc2490, i32* %argc_slot2491
  %argv_slot2489 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2488, { i32, [ 0 x i8* ] }** %argv_slot2489
  %mem_ptr2492 = call i32* @oat_malloc ( i32 20 )
  %obj2493 = bitcast i32* %mem_ptr2492 to %Fields* 
  %new_obj2494 = call %Fields* @_Fields_ctor ( %Fields* %obj2493 )
  %vdecl_slot2495 = alloca %Fields*
  store %Fields* %new_obj2494, %Fields** %vdecl_slot2495
  %lhs_or_call2496 = load %Fields** %vdecl_slot2495
  %vtable_ptr2497 = getelementptr %Fields* %lhs_or_call2496, i32 0
  %vtable2498 = load %_Fields_vtable** %vtable_ptr2497
  %sumab2500 = getelementptr %_Fields_vtable* %vtable2498, i32 0, i32 2
  %sumab2499 = load %Fields* (%Fields*)** %sumab2500
  %cast_op2501 = bitcast %Fields %lhs_or_call2496 to %Fields* 
  %ret2502 = call %Fields* %sumab2499 ( %Fields* %cast_op2501 )
  %vdecl_slot2503 = alloca %Fields*
  store %Fields* %ret2502, %Fields** %vdecl_slot2503
  %lhs_or_call2504 = load %Fields** %vdecl_slot2503
  %bfield2505 = getelementptr %Fields* %lhs_or_call2504, i32 0, i32 3
  %lhs_or_call2506 = load i32* %bfield2505
  ret i32 %lhs_or_call2506
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh521:
  %bfield2484 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2485 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2486 = load i32* %afield2485
  %bop2487 = add i32 1, %lhs_or_call2486
  store i32 %bop2487, i32* %bfield2484
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh520:
  %mem_ptr2479 = call i32* @oat_malloc ( i32 8 )
  %obj2480 = bitcast i32* %mem_ptr2479 to %Object* 
  %new_obj2481 = call %Object* @_Object_ctor ( %Object* %obj2480 )
  %_this1 = bitcast %Object* %new_obj2481 to %Fields 
  %_name2482 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str481, i8** %_name2482
  %this_vtable2483 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable479, %_Fields_vtable** %this_vtable2483
  %afield2478 = getelementptr %Fields* %_this1, i32 0, i32 2
  store i32 12, i32* %afield2478
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh519:
  %_name2476 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2477 = load i8** %_name2476
  ret i8* %lhs_or_call2477
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh518:
  %_name2474 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str480, i8** %_name2474
  %this_vtable2475 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable478, %_Object_vtable** %this_vtable2475
  ret %Object* %_this1
}


