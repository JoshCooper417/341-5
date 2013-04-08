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
@_const_str490.str. = private unnamed_addr constant [ 7 x i8 ] c "Fields\00", align 4
@_const_str490 = alias bitcast([ 7 x i8 ]* @_const_str490.str. to i8*)@_const_str489.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str489 = alias bitcast([ 7 x i8 ]* @_const_str489.str. to i8*)@_Fields_vtable488 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable487, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable487 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh543:
  ret void
}


define i32 @program (i32 %argc2522, { i32, [ 0 x i8* ] }* %argv2520){
__fresh542:
  %argc_slot2523 = alloca i32
  store i32 %argc2522, i32* %argc_slot2523
  %argv_slot2521 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2520, { i32, [ 0 x i8* ] }** %argv_slot2521
  %mem_ptr2524 = call i32* @oat_malloc ( i32 20 )
  %obj2525 = bitcast i32* %mem_ptr2524 to %Fields* 
  %new_obj2526 = call %Fields* @_Fields_ctor ( %Fields* %obj2525 )
  %vdecl_slot2527 = alloca %Fields*
  store %Fields* %new_obj2526, %Fields** %vdecl_slot2527
  %lhs_or_call2528 = load %Fields** %vdecl_slot2527
  %sumab2530 = getelementptr %_Fields_vtable* @_Fields_vtable488, i32 0, i32 2
  %sumab2529 = load %Fields* (%Fields*)** %sumab2530
  %cast_op2531 = bitcast %Fields %lhs_or_call2528 to %Fields* 
  %ret2532 = call %Fields* %sumab2529 ( %Fields* %cast_op2531 )
  %vdecl_slot2533 = alloca %Fields*
  store %Fields* %ret2532, %Fields** %vdecl_slot2533
  %lhs_or_call2534 = load %Fields** %vdecl_slot2533
  %bfield2535 = getelementptr %Fields* %lhs_or_call2534, i32 0, i32 3
  %lhs_or_call2536 = load i32* %bfield2535
  ret i32 %lhs_or_call2536
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh541:
  %bfield2516 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2517 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2518 = load i32* %afield2517
  %bop2519 = add i32 1, %lhs_or_call2518
  store i32 %bop2519, i32* %bfield2516
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh540:
  %cast_op2510 = bitcast %Fields* %_this1 to %Object* 
  %mem_ptr2511 = call i32* @oat_malloc ( i32 20 )
  %obj2512 = bitcast i32* %mem_ptr2511 to %Fields* 
  %new_obj2513 = call %Object* @_Object_ctor ( %Fields* %obj2512, %Object* %cast_op2510 )
  %_this1 = bitcast %Object* %new_obj2513 to %Fields 
  %_name2514 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str490, i8** %_name2514
  %this_vtable2515 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable488, %_Fields_vtable** %this_vtable2515
  %afield2509 = getelementptr %Fields* %_this1, i32 0, i32 2
  store i32 12, i32* %afield2509
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh539:
  %_name2507 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2508 = load i8** %_name2507
  ret i8* %lhs_or_call2508
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh538:
  %_name2505 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str489, i8** %_name2505
  %this_vtable2506 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable487, %_Object_vtable** %this_vtable2506
  ret %Object* %_this1
}


