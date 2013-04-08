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


define i32 @program (i32 %argc2454, { i32, [ 0 x i8* ] }* %argv2452){
__fresh551:
  %argc_slot2455 = alloca i32
  store i32 %argc2454, i32* %argc_slot2455
  %argv_slot2453 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2452, { i32, [ 0 x i8* ] }** %argv_slot2453
  %mem_ptr2456 = call i32* @oat_malloc ( i32 8 )
  %obj2457 = bitcast i32* %mem_ptr2456 to %B* 
  %new_obj2458 = call %B* @_B_ctor ( %B* %obj2457 )
  %vdecl_slot2459 = alloca %B*
  store %B* %new_obj2458, %B** %vdecl_slot2459
  %lhs_or_call2460 = load %B** %vdecl_slot2459
  %vtable_ptr2461 = getelementptr %B* %lhs_or_call2460, i32 0
  %vtable2462 = load %_B_vtable** %vtable_ptr2461
  %call2464 = getelementptr %_B_vtable* %vtable2462, i32 0, i32 3
  %call2463 = load i32 (%B*)** %call2464
  %cast_op2465 = bitcast %B %lhs_or_call2460 to %B* 
  %ret2466 = call i32 %call2463 ( %B* %cast_op2465 )
  ret i32 %ret2466
}


define i32 @_B_call (%B* %_this1){
__fresh550:
  %vtable_ptr2446 = getelementptr %B* %_this1, i32 0
  %vtable2447 = load %_B_vtable** %vtable_ptr2446
  %over2449 = getelementptr %_B_vtable* %vtable2447, i32 0, i32 2
  %over2448 = load i32 (%B*, i32)** %over2449
  %cast_op2450 = bitcast %B %_this1 to %B* 
  %ret2451 = call i32 %over2448 ( %B* %cast_op2450, i32 3 )
  ret i32 %ret2451
}


define i32 @_B_over (%B* %_this1, i32 %x2442){
__fresh549:
  %x_slot2443 = alloca i32
  store i32 %x2442, i32* %x_slot2443
  %lhs_or_call2444 = load i32* %x_slot2443
  %bop2445 = add i32 %lhs_or_call2444, 2
  ret i32 %bop2445
}


define %B* @_B_ctor (%B* %_this1){
__fresh548:
  %mem_ptr2437 = call i32* @oat_malloc ( i32 8 )
  %obj2438 = bitcast i32* %mem_ptr2437 to %A* 
  %new_obj2439 = call %A* @_A_ctor ( %A* %obj2438 )
  %_this1 = bitcast %A* %new_obj2439 to %B 
  %_name2440 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str447, i8** %_name2440
  %this_vtable2441 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable444, %_B_vtable** %this_vtable2441
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2433){
__fresh547:
  %x_slot2434 = alloca i32
  store i32 %x2433, i32* %x_slot2434
  %lhs_or_call2435 = load i32* %x_slot2434
  %bop2436 = add i32 %lhs_or_call2435, 1
  ret i32 %bop2436
}


define %A* @_A_ctor (%A* %_this1){
__fresh546:
  %mem_ptr2428 = call i32* @oat_malloc ( i32 8 )
  %obj2429 = bitcast i32* %mem_ptr2428 to %Object* 
  %new_obj2430 = call %Object* @_Object_ctor ( %Object* %obj2429 )
  %_this1 = bitcast %Object* %new_obj2430 to %A 
  %_name2431 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str446, i8** %_name2431
  %this_vtable2432 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable443, %_A_vtable** %this_vtable2432
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh545:
  %_name2426 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2427 = load i8** %_name2426
  ret i8* %lhs_or_call2427
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh544:
  %_name2424 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str445, i8** %_name2424
  %this_vtable2425 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable442, %_Object_vtable** %this_vtable2425
  ret %Object* %_this1
}


