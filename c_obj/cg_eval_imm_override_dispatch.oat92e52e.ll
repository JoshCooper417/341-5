%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@a221 = global %A* zeroinitializer, align 4		; initialized by @a221.init222
@_B_vtable220 = private constant %_B_vtable {%_A_vtable* @_A_vtable219, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable219 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable218, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable218 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh434:
  call void @a221.init222(  )
  ret void
}


define i32 @program (i32 %argc2529, { i32, [ 0 x i8* ] }* %argv2527){
__fresh433:
  %argc_slot2530 = alloca i32
  store i32 %argc2529, i32* %argc_slot2530
  %argv_slot2528 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2527, { i32, [ 0 x i8* ] }** %argv_slot2528
  %lhs_or_call2531 = load %A** @a221
  %over2533 = getelementptr %_A_vtable* @_A_vtable219, i32 0, i32 2
  %over2532 = load i32 (%A*, i32)** %over2533
  %cast_op2534 = bitcast %A %lhs_or_call2531 to %A* 
  %ret2535 = call i32 %over2532 ( %A* %cast_op2534, i32 3 )
  ret i32 %ret2535
}


define void @a221.init222 (){
__fresh432:
  %mem_ptr2523 = call i32* @oat_malloc ( i32 8 )
  %obj2524 = bitcast i32* %mem_ptr2523 to %B* 
  %new_obj2525 = call %B* @_B_ctor ( %B* %obj2524 )
  %cast_op2526 = bitcast %B* %new_obj2525 to %A* 
  store %A* %cast_op2526, %A** @a221
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x2519){
__fresh431:
  %x_slot2520 = alloca i32
  store i32 %x2519, i32* %x_slot2520
  %lhs_or_call2521 = load i32* %x_slot2520
  %bop2522 = add i32 %lhs_or_call2521, 2
  ret i32 %bop2522
}


define %B* @_B_ctor (%B* %_this1){
__fresh430:
  %lhs_or_call2510 = load %B* %_this1
  %cast_op2511 = bitcast %B %lhs_or_call2510 to %A* 
  %mem_ptr2512 = call i32* @oat_malloc ( i32 8 )
  %obj2513 = bitcast i32* %mem_ptr2512 to %A* 
  %new_obj2514 = call %A* @_A_ctor ( %A* %obj2513, %A* %cast_op2511 )
  %_name2515 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call2516 = load %B* %_this1
  %cast_op2517 = bitcast %B %lhs_or_call2516 to i8* 
  store i8* %cast_op2517, i8** %_name2515
  %this_vtable2518 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2518
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2506){
__fresh429:
  %x_slot2507 = alloca i32
  store i32 %x2506, i32* %x_slot2507
  %lhs_or_call2508 = load i32* %x_slot2507
  %bop2509 = add i32 %lhs_or_call2508, 1
  ret i32 %bop2509
}


define %A* @_A_ctor (%A* %_this1){
__fresh428:
  %lhs_or_call2497 = load %A* %_this1
  %cast_op2498 = bitcast %A %lhs_or_call2497 to %Object* 
  %mem_ptr2499 = call i32* @oat_malloc ( i32 8 )
  %obj2500 = bitcast i32* %mem_ptr2499 to %Object* 
  %new_obj2501 = call %Object* @_Object_ctor ( %Object* %obj2500, %Object* %cast_op2498 )
  %_name2502 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2503 = load %A* %_this1
  %cast_op2504 = bitcast %A %lhs_or_call2503 to i8* 
  store i8* %cast_op2504, i8** %_name2502
  %this_vtable2505 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2505
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh427:
  %_name2495 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2496 = load i8** %_name2495
  ret i8* %lhs_or_call2496
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh426:
  %_name2491 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2492 = load %Object* %_this1
  %cast_op2493 = bitcast %Object %lhs_or_call2492 to i8* 
  store i8* %cast_op2493, i8** %_name2491
  %this_vtable2494 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2494
  ret %Object* %_this1
}


