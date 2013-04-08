%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%B*)* }
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
@_const_str447.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str447 = alias bitcast([ 2 x i8 ]* @_const_str447.str. to i8*)@_const_str446.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str446 = alias bitcast([ 2 x i8 ]* @_const_str446.str. to i8*)@_const_str445.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str445 = alias bitcast([ 7 x i8 ]* @_const_str445.str. to i8*)@_B_vtable444 = private constant %_B_vtable {%_A_vtable* @_A_vtable443, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%B*)* @_B_call}, align 4
@_A_vtable443 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable442, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable442 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh552:
  ret void
}


define i32 @program (i32 %argc2443, { i32, [ 0 x i8* ] }* %argv2441){
__fresh551:
  %argc_slot2444 = alloca i32
  store i32 %argc2443, i32* %argc_slot2444
  %argv_slot2442 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2441, { i32, [ 0 x i8* ] }** %argv_slot2442
  %mem_ptr2445 = call i32* @oat_malloc ( i32 8 )
  %obj2446 = bitcast i32* %mem_ptr2445 to %B* 
  %new_obj2447 = call %B* @_B_ctor ( %B* %obj2446 )
  %vdecl_slot2448 = alloca %B*
  store %B* %new_obj2447, %B** %vdecl_slot2448
  %lhs_or_call2449 = load %B** %vdecl_slot2448
  %vtable_ptr2450 = getelementptr %B* %lhs_or_call2449, i32 0
  %vtable2451 = load %_B_vtable** %vtable_ptr2450
  %call2453 = getelementptr %_B_vtable* %vtable2451, i32 0, i32 3
  %call2452 = load i32 (%B*)** %call2453
  %cast_op2454 = bitcast %B %lhs_or_call2449 to %B* 
  %ret2455 = call i32 %call2452 ( %B* %cast_op2454 )
  ret i32 %ret2455
}


define i32 @_B_call (%B* %_this1){
__fresh550:
  %vtable_ptr2435 = getelementptr %B* %_this1, i32 0
  %vtable2436 = load %_B_vtable** %vtable_ptr2435
  %over2438 = getelementptr %_B_vtable* %vtable2436, i32 0, i32 2
  %over2437 = load i32 (%B*, i32)** %over2438
  %cast_op2439 = bitcast %B %_this1 to %B* 
  %ret2440 = call i32 %over2437 ( %B* %cast_op2439, i32 3 )
  ret i32 %ret2440
}


define i32 @_B_over (%B* %_this1, i32 %x2431){
__fresh549:
  %x_slot2432 = alloca i32
  store i32 %x2431, i32* %x_slot2432
  %lhs_or_call2433 = load i32* %x_slot2432
  %bop2434 = add i32 %lhs_or_call2433, 2
  ret i32 %bop2434
}


define %B* @_B_ctor (%B* %_this1){
__fresh548:
  %mem_ptr2426 = call i32* @oat_malloc ( i32 8 )
  %obj2427 = bitcast i32* %mem_ptr2426 to %A* 
  %new_obj2428 = call %A* @_A_ctor ( %A* %obj2427 )
  %_this1 = bitcast %A* %new_obj2428 to %B 
  %_name2429 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str447, i8** %_name2429
  %this_vtable2430 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable444, %_B_vtable** %this_vtable2430
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2422){
__fresh547:
  %x_slot2423 = alloca i32
  store i32 %x2422, i32* %x_slot2423
  %lhs_or_call2424 = load i32* %x_slot2423
  %bop2425 = add i32 %lhs_or_call2424, 1
  ret i32 %bop2425
}


define %A* @_A_ctor (%A* %_this1){
__fresh546:
  %mem_ptr2417 = call i32* @oat_malloc ( i32 8 )
  %obj2418 = bitcast i32* %mem_ptr2417 to %Object* 
  %new_obj2419 = call %Object* @_Object_ctor ( %Object* %obj2418 )
  %_this1 = bitcast %Object* %new_obj2419 to %A 
  %_name2420 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str446, i8** %_name2420
  %this_vtable2421 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable443, %_A_vtable** %this_vtable2421
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh545:
  %_name2415 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2416 = load i8** %_name2415
  ret i8* %lhs_or_call2416
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh544:
  %_name2413 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str445, i8** %_name2413
  %this_vtable2414 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable442, %_Object_vtable** %this_vtable2414
  ret %Object* %_this1
}


