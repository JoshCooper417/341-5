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
@a466 = global %A* zeroinitializer, align 4		; initialized by @a466.init467
@_const_str465.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str465 = alias bitcast([ 2 x i8 ]* @_const_str465.str. to i8*)@_const_str464.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str464 = alias bitcast([ 2 x i8 ]* @_const_str464.str. to i8*)@_const_str463.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str463 = alias bitcast([ 2 x i8 ]* @_const_str463.str. to i8*)@_const_str462.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str462 = alias bitcast([ 7 x i8 ]* @_const_str462.str. to i8*)@_C_vtable461 = private constant %_C_vtable {%_B_vtable* @_B_vtable460, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*)* @_C_call, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable460 = private constant %_B_vtable {%_A_vtable* @_A_vtable459, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%B*)* @_B_call}, align 4
@_A_vtable459 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable458, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo, i32 (%A*)* @_A_call}, align 4
@_Object_vtable458 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh503:
  call void @a466.init467(  )
  ret void
}


define i32 @program (i32 %argc2401, { i32, [ 0 x i8* ] }* %argv2399){
__fresh502:
  %argc_slot2402 = alloca i32
  store i32 %argc2401, i32* %argc_slot2402
  %argv_slot2400 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2399, { i32, [ 0 x i8* ] }** %argv_slot2400
  %lhs_or_call2403 = load %A** @a466
  %vtable_ptr2404 = getelementptr %A* %lhs_or_call2403, i32 0
  %vtable2405 = load %_A_vtable** %vtable_ptr2404
  %call2407 = getelementptr %_A_vtable* %vtable2405, i32 0, i32 4
  %call2406 = load i32 (%A*)** %call2407
  %cast_op2408 = bitcast %A %lhs_or_call2403 to %A* 
  %ret2409 = call i32 %call2406 ( %A* %cast_op2408 )
  ret i32 %ret2409
}


define void @a466.init467 (){
__fresh501:
  %mem_ptr2395 = call i32* @oat_malloc ( i32 8 )
  %obj2396 = bitcast i32* %mem_ptr2395 to %C* 
  %new_obj2397 = call %C* @_C_ctor ( %C* %obj2396 )
  %cast_op2398 = bitcast %C* %new_obj2397 to %A* 
  store %A* %cast_op2398, %A** @a466
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh500:
  %vtable_ptr2389 = getelementptr %C* %_this1, i32 0
  %vtable2390 = load %_C_vtable** %vtable_ptr2389
  %foo2392 = getelementptr %_C_vtable* %vtable2390, i32 0, i32 3
  %foo2391 = load i32 (%A*, i32)** %foo2392
  %cast_op2393 = bitcast %C %_this1 to %A* 
  %ret2394 = call i32 %foo2391 ( %A* %cast_op2393, i32 3 )
  ret i32 %ret2394
}


define i32 @_C_notover (%C* %_this1, i32 %x2385){
__fresh499:
  %x_slot2386 = alloca i32
  store i32 %x2385, i32* %x_slot2386
  %lhs_or_call2387 = load i32* %x_slot2386
  %bop2388 = add i32 %lhs_or_call2387, 1
  ret i32 %bop2388
}


define %C* @_C_ctor (%C* %_this1){
__fresh498:
  %mem_ptr2380 = call i32* @oat_malloc ( i32 8 )
  %obj2381 = bitcast i32* %mem_ptr2380 to %B* 
  %new_obj2382 = call %B* @_B_ctor ( %B* %obj2381 )
  %_this1 = bitcast %B* %new_obj2382 to %C 
  %_name2383 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str465, i8** %_name2383
  %this_vtable2384 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable461, %_C_vtable** %this_vtable2384
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh497:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2376){
__fresh496:
  %x_slot2377 = alloca i32
  store i32 %x2376, i32* %x_slot2377
  %lhs_or_call2378 = load i32* %x_slot2377
  %bop2379 = add i32 %lhs_or_call2378, 2
  ret i32 %bop2379
}


define %B* @_B_ctor (%B* %_this1){
__fresh495:
  %mem_ptr2371 = call i32* @oat_malloc ( i32 8 )
  %obj2372 = bitcast i32* %mem_ptr2371 to %A* 
  %new_obj2373 = call %A* @_A_ctor ( %A* %obj2372 )
  %_this1 = bitcast %A* %new_obj2373 to %B 
  %_name2374 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str464, i8** %_name2374
  %this_vtable2375 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable460, %_B_vtable** %this_vtable2375
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh494:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2367){
__fresh493:
  %x_slot2368 = alloca i32
  store i32 %x2367, i32* %x_slot2368
  %lhs_or_call2369 = load i32* %x_slot2368
  %bop2370 = add i32 %lhs_or_call2369, 8
  ret i32 %bop2370
}


define i32 @_A_over (%A* %_this1, i32 %x2363){
__fresh492:
  %x_slot2364 = alloca i32
  store i32 %x2363, i32* %x_slot2364
  %lhs_or_call2365 = load i32* %x_slot2364
  %bop2366 = add i32 %lhs_or_call2365, 1
  ret i32 %bop2366
}


define %A* @_A_ctor (%A* %_this1){
__fresh491:
  %mem_ptr2358 = call i32* @oat_malloc ( i32 8 )
  %obj2359 = bitcast i32* %mem_ptr2358 to %Object* 
  %new_obj2360 = call %Object* @_Object_ctor ( %Object* %obj2359 )
  %_this1 = bitcast %Object* %new_obj2360 to %A 
  %_name2361 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2361
  %this_vtable2362 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable459, %_A_vtable** %this_vtable2362
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh490:
  %_name2356 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2357 = load i8** %_name2356
  ret i8* %lhs_or_call2357
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh489:
  %_name2354 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str462, i8** %_name2354
  %this_vtable2355 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable458, %_Object_vtable** %this_vtable2355
  ret %Object* %_this1
}


