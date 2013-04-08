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


define i32 @program (i32 %argc2471, { i32, [ 0 x i8* ] }* %argv2469){
__fresh522:
  %argc_slot2472 = alloca i32
  store i32 %argc2471, i32* %argc_slot2472
  %argv_slot2470 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2469, { i32, [ 0 x i8* ] }** %argv_slot2470
  %mem_ptr2473 = call i32* @oat_malloc ( i32 20 )
  %obj2474 = bitcast i32* %mem_ptr2473 to %Fields* 
  %new_obj2475 = call %Fields* @_Fields_ctor ( %Fields* %obj2474 )
  %vdecl_slot2476 = alloca %Fields*
  store %Fields* %new_obj2475, %Fields** %vdecl_slot2476
  %lhs_or_call2477 = load %Fields** %vdecl_slot2476
  %vtable_ptr2478 = getelementptr %Fields* %lhs_or_call2477, i32 0
  %vtable2479 = load %_Fields_vtable** %vtable_ptr2478
  %sumab2481 = getelementptr %_Fields_vtable* %vtable2479, i32 0, i32 2
  %sumab2480 = load %Fields* (%Fields*)** %sumab2481
  %cast_op2482 = bitcast %Fields %lhs_or_call2477 to %Fields* 
  %ret2483 = call %Fields* %sumab2480 ( %Fields* %cast_op2482 )
  %vdecl_slot2484 = alloca %Fields*
  store %Fields* %ret2483, %Fields** %vdecl_slot2484
  %lhs_or_call2485 = load %Fields** %vdecl_slot2484
  %bfield2486 = getelementptr %Fields* %lhs_or_call2485, i32 0, i32 3
  %lhs_or_call2487 = load i32* %bfield2486
  ret i32 %lhs_or_call2487
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh521:
  %bfield2465 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2466 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2467 = load i32* %afield2466
  %bop2468 = add i32 1, %lhs_or_call2467
  store i32 %bop2468, i32* %bfield2465
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh520:
  %mem_ptr2460 = call i32* @oat_malloc ( i32 8 )
  %obj2461 = bitcast i32* %mem_ptr2460 to %Object* 
  %new_obj2462 = call %Object* @_Object_ctor ( %Object* %obj2461 )
  %_this1 = bitcast %Object* %new_obj2462 to %Fields 
  %_name2463 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str470, i8** %_name2463
  %this_vtable2464 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable468, %_Fields_vtable** %this_vtable2464
  %afield2459 = getelementptr %Fields* %_this1, i32 0, i32 2
  store i32 12, i32* %afield2459
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh519:
  %_name2457 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2458 = load i8** %_name2457
  ret i8* %lhs_or_call2458
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh518:
  %_name2455 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str469, i8** %_name2455
  %this_vtable2456 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable467, %_Object_vtable** %this_vtable2456
  ret %Object* %_this1
}


