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
@_const_str470.str. = private unnamed_addr constant [ 7 x i8 ] c "Fields\00", align 4
@_const_str470 = alias bitcast([ 7 x i8 ]* @_const_str470.str. to i8*)@_const_str469.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str469 = alias bitcast([ 7 x i8 ]* @_const_str469.str. to i8*)@_Fields_vtable468 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable467, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable467 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh523:
  ret void
}


define i32 @program (i32 %argc2478, { i32, [ 0 x i8* ] }* %argv2476){
__fresh522:
  %argc_slot2479 = alloca i32
  store i32 %argc2478, i32* %argc_slot2479
  %argv_slot2477 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2476, { i32, [ 0 x i8* ] }** %argv_slot2477
  %mem_ptr2480 = call i32* @oat_malloc ( i32 20 )
  %obj2481 = bitcast i32* %mem_ptr2480 to %Fields* 
  %new_obj2482 = call %Fields* @_Fields_ctor ( %Fields* %obj2481 )
  %vdecl_slot2483 = alloca %Fields*
  store %Fields* %new_obj2482, %Fields** %vdecl_slot2483
  %lhs_or_call2484 = load %Fields** %vdecl_slot2483
  %vtable_ptr2485 = getelementptr %Fields* %lhs_or_call2484, i32 0
  %vtable2486 = load %_Fields_vtable** %vtable_ptr2485
  %sumab2488 = getelementptr %_Fields_vtable* %vtable2486, i32 0, i32 2
  %sumab2487 = load %Fields* (%Fields*)** %sumab2488
  %cast_op2489 = bitcast %Fields %lhs_or_call2484 to %Fields* 
  %ret2490 = call %Fields* %sumab2487 ( %Fields* %cast_op2489 )
  %vdecl_slot2491 = alloca %Fields*
  store %Fields* %ret2490, %Fields** %vdecl_slot2491
  %lhs_or_call2492 = load %Fields** %vdecl_slot2491
  %bfield2493 = getelementptr %Fields* %lhs_or_call2492, i32 0, i32 3
  %lhs_or_call2494 = load i32* %bfield2493
  ret i32 %lhs_or_call2494
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh521:
  %bfield2472 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2473 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2474 = load i32* %afield2473
  %bop2475 = add i32 1, %lhs_or_call2474
  store i32 %bop2475, i32* %bfield2472
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh520:
  %mem_ptr2467 = call i32* @oat_malloc ( i32 8 )
  %obj2468 = bitcast i32* %mem_ptr2467 to %Object* 
  %new_obj2469 = call %Object* @_Object_ctor ( %Object* %obj2468 )
  %_this1 = bitcast %Object* %new_obj2469 to %Fields 
  %_name2470 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str470, i8** %_name2470
  %this_vtable2471 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable468, %_Fields_vtable** %this_vtable2471
  %afield2466 = getelementptr %Fields* %_this1, i32 0, i32 2
  store i32 12, i32* %afield2466
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh519:
  %_name2464 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2465 = load i8** %_name2464
  ret i8* %lhs_or_call2465
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh518:
  %_name2462 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str469, i8** %_name2462
  %this_vtable2463 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable467, %_Object_vtable** %this_vtable2463
  ret %Object* %_this1
}


