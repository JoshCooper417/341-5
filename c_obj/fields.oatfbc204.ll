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


define i32 @program (i32 %argc2487, { i32, [ 0 x i8* ] }* %argv2485){
__fresh522:
  %argc_slot2488 = alloca i32
  store i32 %argc2487, i32* %argc_slot2488
  %argv_slot2486 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2485, { i32, [ 0 x i8* ] }** %argv_slot2486
  %mem_ptr2489 = call i32* @oat_malloc ( i32 20 )
  %obj2490 = bitcast i32* %mem_ptr2489 to %Fields* 
  %new_obj2491 = call %Fields* @_Fields_ctor ( %Fields* %obj2490 )
  %vdecl_slot2492 = alloca %Fields*
  store %Fields* %new_obj2491, %Fields** %vdecl_slot2492
  %lhs_or_call2493 = load %Fields** %vdecl_slot2492
  %sumab2495 = getelementptr %_Fields_vtable* @_Fields_vtable479, i32 0, i32 2
  %sumab2494 = load %Fields* (%Fields*)** %sumab2495
  %cast_op2496 = bitcast %Fields %lhs_or_call2493 to %Fields* 
  %ret2497 = call %Fields* %sumab2494 ( %Fields* %cast_op2496 )
  %vdecl_slot2498 = alloca %Fields*
  store %Fields* %ret2497, %Fields** %vdecl_slot2498
  %lhs_or_call2499 = load %Fields** %vdecl_slot2498
  %bfield2500 = getelementptr %Fields* %lhs_or_call2499, i32 0, i32 3
  %lhs_or_call2501 = load i32* %bfield2500
  ret i32 %lhs_or_call2501
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh521:
  %bfield2481 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2482 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2483 = load i32* %afield2482
  %bop2484 = add i32 1, %lhs_or_call2483
  store i32 %bop2484, i32* %bfield2481
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh520:
  %cast_op2475 = bitcast %Fields* %_this1 to %Object* 
  %mem_ptr2476 = call i32* @oat_malloc ( i32 20 )
  %obj2477 = bitcast i32* %mem_ptr2476 to %Fields* 
  %new_obj2478 = call %Object* @_Object_ctor ( %Fields* %obj2477, %Object* %cast_op2475 )
  %_this1 = bitcast %Object* %new_obj2478 to %Fields 
  %_name2479 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str481, i8** %_name2479
  %this_vtable2480 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable479, %_Fields_vtable** %this_vtable2480
  %afield2474 = getelementptr %Fields* %_this1, i32 0, i32 2
  store i32 12, i32* %afield2474
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh519:
  %_name2472 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2473 = load i8** %_name2472
  ret i8* %lhs_or_call2473
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh518:
  %_name2470 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str480, i8** %_name2470
  %this_vtable2471 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable478, %_Object_vtable** %this_vtable2471
  ret %Object* %_this1
}


