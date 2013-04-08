%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)*, i32 (%A*)* }
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
@a475 = global %A* zeroinitializer, align 4		; initialized by @a475.init476
@_const_str474.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str474 = alias bitcast([ 2 x i8 ]* @_const_str474.str. to i8*)@_const_str473.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str473 = alias bitcast([ 2 x i8 ]* @_const_str473.str. to i8*)@_const_str472.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str472 = alias bitcast([ 2 x i8 ]* @_const_str472.str. to i8*)@_const_str471.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str471 = alias bitcast([ 7 x i8 ]* @_const_str471.str. to i8*)@_C_vtable470 = private constant %_C_vtable {%_B_vtable* @_B_vtable469, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*)* @_C_call, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable469 = private constant %_B_vtable {%_A_vtable* @_A_vtable468, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%B*)* @_B_call}, align 4
@_A_vtable468 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable467, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo, i32 (%A*)* @_A_call}, align 4
@_Object_vtable467 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh523:
  call void @a475.init476(  )
  ret void
}


define i32 @program (i32 %argc2442, { i32, [ 0 x i8* ] }* %argv2440){
__fresh522:
  %argc_slot2443 = alloca i32
  store i32 %argc2442, i32* %argc_slot2443
  %argv_slot2441 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2440, { i32, [ 0 x i8* ] }** %argv_slot2441
  %lhs_or_call2444 = load %A** @a475
  %call2446 = getelementptr %_A_vtable* @_A_vtable468, i32 0, i32 4
  %call2445 = load i32 (%A*)** %call2446
  %cast_op2447 = bitcast %A %lhs_or_call2444 to %A* 
  %ret2448 = call i32 %call2445 ( %A* %cast_op2447 )
  ret i32 %ret2448
}


define void @a475.init476 (){
__fresh521:
  %mem_ptr2436 = call i32* @oat_malloc ( i32 8 )
  %obj2437 = bitcast i32* %mem_ptr2436 to %C* 
  %new_obj2438 = call %C* @_C_ctor ( %C* %obj2437 )
  %cast_op2439 = bitcast %C* %new_obj2438 to %A* 
  store %A* %cast_op2439, %A** @a475
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh520:
  %foo2433 = getelementptr %_C_vtable* @_C_vtable470, i32 0, i32 3
  %foo2432 = load i32 (%A*, i32)** %foo2433
  %cast_op2434 = bitcast %C %_this1 to %A* 
  %ret2435 = call i32 %foo2432 ( %A* %cast_op2434, i32 3 )
  ret i32 %ret2435
}


define i32 @_C_notover (%C* %_this1, i32 %x2428){
__fresh519:
  %x_slot2429 = alloca i32
  store i32 %x2428, i32* %x_slot2429
  %lhs_or_call2430 = load i32* %x_slot2429
  %bop2431 = add i32 %lhs_or_call2430, 1
  ret i32 %bop2431
}


define %C* @_C_ctor (%C* %_this1){
__fresh518:
  %cast_op2422 = bitcast %C* %_this1 to %B* 
  %mem_ptr2423 = call i32* @oat_malloc ( i32 8 )
  %obj2424 = bitcast i32* %mem_ptr2423 to %C* 
  %new_obj2425 = call %B* @_B_ctor ( %C* %obj2424, %B* %cast_op2422 )
  %_this1 = bitcast %B* %new_obj2425 to %C 
  %_name2426 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str474, i8** %_name2426
  %this_vtable2427 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable470, %_C_vtable** %this_vtable2427
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh517:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2418){
__fresh516:
  %x_slot2419 = alloca i32
  store i32 %x2418, i32* %x_slot2419
  %lhs_or_call2420 = load i32* %x_slot2419
  %bop2421 = add i32 %lhs_or_call2420, 2
  ret i32 %bop2421
}


define %B* @_B_ctor (%B* %_this1){
__fresh515:
  %cast_op2412 = bitcast %B* %_this1 to %A* 
  %mem_ptr2413 = call i32* @oat_malloc ( i32 8 )
  %obj2414 = bitcast i32* %mem_ptr2413 to %B* 
  %new_obj2415 = call %A* @_A_ctor ( %B* %obj2414, %A* %cast_op2412 )
  %_this1 = bitcast %A* %new_obj2415 to %B 
  %_name2416 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str473, i8** %_name2416
  %this_vtable2417 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable469, %_B_vtable** %this_vtable2417
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh514:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2408){
__fresh513:
  %x_slot2409 = alloca i32
  store i32 %x2408, i32* %x_slot2409
  %lhs_or_call2410 = load i32* %x_slot2409
  %bop2411 = add i32 %lhs_or_call2410, 8
  ret i32 %bop2411
}


define i32 @_A_over (%A* %_this1, i32 %x2404){
__fresh512:
  %x_slot2405 = alloca i32
  store i32 %x2404, i32* %x_slot2405
  %lhs_or_call2406 = load i32* %x_slot2405
  %bop2407 = add i32 %lhs_or_call2406, 1
  ret i32 %bop2407
}


define %A* @_A_ctor (%A* %_this1){
__fresh511:
  %cast_op2398 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2399 = call i32* @oat_malloc ( i32 8 )
  %obj2400 = bitcast i32* %mem_ptr2399 to %A* 
  %new_obj2401 = call %Object* @_Object_ctor ( %A* %obj2400, %Object* %cast_op2398 )
  %_this1 = bitcast %Object* %new_obj2401 to %A 
  %_name2402 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str472, i8** %_name2402
  %this_vtable2403 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable468, %_A_vtable** %this_vtable2403
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh510:
  %_name2396 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2397 = load i8** %_name2396
  ret i8* %lhs_or_call2397
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh509:
  %_name2394 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str471, i8** %_name2394
  %this_vtable2395 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable467, %_Object_vtable** %this_vtable2395
  ret %Object* %_this1
}


