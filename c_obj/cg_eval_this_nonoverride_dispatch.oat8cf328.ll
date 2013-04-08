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


define i32 @program (i32 %argc2407, { i32, [ 0 x i8* ] }* %argv2405){
__fresh502:
  %argc_slot2408 = alloca i32
  store i32 %argc2407, i32* %argc_slot2408
  %argv_slot2406 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2405, { i32, [ 0 x i8* ] }** %argv_slot2406
  %lhs_or_call2409 = load %A** @a466
  %call2411 = getelementptr %_A_vtable* @_A_vtable459, i32 0, i32 4
  %call2410 = load i32 (%A*)** %call2411
  %cast_op2412 = bitcast %A %lhs_or_call2409 to %A* 
  %ret2413 = call i32 %call2410 ( %A* %cast_op2412 )
  ret i32 %ret2413
}


define void @a466.init467 (){
__fresh501:
  %mem_ptr2401 = call i32* @oat_malloc ( i32 8 )
  %obj2402 = bitcast i32* %mem_ptr2401 to %C* 
  %new_obj2403 = call %C* @_C_ctor ( %C* %obj2402 )
  %cast_op2404 = bitcast %C* %new_obj2403 to %A* 
  store %A* %cast_op2404, %A** @a466
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh500:
  %foo2398 = getelementptr %_C_vtable* @_C_vtable461, i32 0, i32 3
  %foo2397 = load i32 (%A*, i32)** %foo2398
  %cast_op2399 = bitcast %C %_this1 to %A* 
  %ret2400 = call i32 %foo2397 ( %A* %cast_op2399, i32 3 )
  ret i32 %ret2400
}


define i32 @_C_notover (%C* %_this1, i32 %x2393){
__fresh499:
  %x_slot2394 = alloca i32
  store i32 %x2393, i32* %x_slot2394
  %lhs_or_call2395 = load i32* %x_slot2394
  %bop2396 = add i32 %lhs_or_call2395, 1
  ret i32 %bop2396
}


define %C* @_C_ctor (%C* %_this1){
__fresh498:
  %cast_op2387 = bitcast %C* %_this1 to %B* 
  %mem_ptr2388 = call i32* @oat_malloc ( i32 8 )
  %obj2389 = bitcast i32* %mem_ptr2388 to %C* 
  %new_obj2390 = call %B* @_B_ctor ( %C* %obj2389, %B* %cast_op2387 )
  %_this1 = bitcast %B* %new_obj2390 to %C 
  %_name2391 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str465, i8** %_name2391
  %this_vtable2392 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable461, %_C_vtable** %this_vtable2392
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh497:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2383){
__fresh496:
  %x_slot2384 = alloca i32
  store i32 %x2383, i32* %x_slot2384
  %lhs_or_call2385 = load i32* %x_slot2384
  %bop2386 = add i32 %lhs_or_call2385, 2
  ret i32 %bop2386
}


define %B* @_B_ctor (%B* %_this1){
__fresh495:
  %cast_op2377 = bitcast %B* %_this1 to %A* 
  %mem_ptr2378 = call i32* @oat_malloc ( i32 8 )
  %obj2379 = bitcast i32* %mem_ptr2378 to %B* 
  %new_obj2380 = call %A* @_A_ctor ( %B* %obj2379, %A* %cast_op2377 )
  %_this1 = bitcast %A* %new_obj2380 to %B 
  %_name2381 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str464, i8** %_name2381
  %this_vtable2382 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable460, %_B_vtable** %this_vtable2382
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh494:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2373){
__fresh493:
  %x_slot2374 = alloca i32
  store i32 %x2373, i32* %x_slot2374
  %lhs_or_call2375 = load i32* %x_slot2374
  %bop2376 = add i32 %lhs_or_call2375, 8
  ret i32 %bop2376
}


define i32 @_A_over (%A* %_this1, i32 %x2369){
__fresh492:
  %x_slot2370 = alloca i32
  store i32 %x2369, i32* %x_slot2370
  %lhs_or_call2371 = load i32* %x_slot2370
  %bop2372 = add i32 %lhs_or_call2371, 1
  ret i32 %bop2372
}


define %A* @_A_ctor (%A* %_this1){
__fresh491:
  %cast_op2363 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2364 = call i32* @oat_malloc ( i32 8 )
  %obj2365 = bitcast i32* %mem_ptr2364 to %A* 
  %new_obj2366 = call %Object* @_Object_ctor ( %A* %obj2365, %Object* %cast_op2363 )
  %_this1 = bitcast %Object* %new_obj2366 to %A 
  %_name2367 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2367
  %this_vtable2368 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable459, %_A_vtable** %this_vtable2368
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh490:
  %_name2361 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2362 = load i8** %_name2361
  ret i8* %lhs_or_call2362
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh489:
  %_name2359 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str462, i8** %_name2359
  %this_vtable2360 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable458, %_Object_vtable** %this_vtable2360
  ret %Object* %_this1
}


