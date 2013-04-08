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
@a455 = global %A* zeroinitializer, align 4		; initialized by @a455.init456
@_const_str454.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str454 = alias bitcast([ 2 x i8 ]* @_const_str454.str. to i8*)@_const_str453.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str453 = alias bitcast([ 2 x i8 ]* @_const_str453.str. to i8*)@_const_str452.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str452 = alias bitcast([ 2 x i8 ]* @_const_str452.str. to i8*)@_const_str451.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str451 = alias bitcast([ 7 x i8 ]* @_const_str451.str. to i8*)@_C_vtable450 = private constant %_C_vtable {%_B_vtable* @_B_vtable449, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*)* @_C_call, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable449 = private constant %_B_vtable {%_A_vtable* @_A_vtable448, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%B*)* @_B_call}, align 4
@_A_vtable448 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable447, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo, i32 (%A*)* @_A_call}, align 4
@_Object_vtable447 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh503:
  call void @a455.init456(  )
  ret void
}


define i32 @program (i32 %argc2382, { i32, [ 0 x i8* ] }* %argv2380){
__fresh502:
  %argc_slot2383 = alloca i32
  store i32 %argc2382, i32* %argc_slot2383
  %argv_slot2381 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2380, { i32, [ 0 x i8* ] }** %argv_slot2381
  %lhs_or_call2384 = load %A** @a455
  %vtable_ptr2385 = getelementptr %A* %lhs_or_call2384, i32 0
  %vtable2386 = load %_A_vtable** %vtable_ptr2385
  %call2388 = getelementptr %_A_vtable* %vtable2386, i32 0, i32 4
  %call2387 = load i32 (%A*)** %call2388
  %cast_op2389 = bitcast %A %lhs_or_call2384 to %A* 
  %ret2390 = call i32 %call2387 ( %A* %cast_op2389 )
  ret i32 %ret2390
}


define void @a455.init456 (){
__fresh501:
  %mem_ptr2376 = call i32* @oat_malloc ( i32 8 )
  %obj2377 = bitcast i32* %mem_ptr2376 to %C* 
  %new_obj2378 = call %C* @_C_ctor ( %C* %obj2377 )
  %cast_op2379 = bitcast %C* %new_obj2378 to %A* 
  store %A* %cast_op2379, %A** @a455
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh500:
  %vtable_ptr2370 = getelementptr %C* %_this1, i32 0
  %vtable2371 = load %_C_vtable** %vtable_ptr2370
  %foo2373 = getelementptr %_C_vtable* %vtable2371, i32 0, i32 3
  %foo2372 = load i32 (%A*, i32)** %foo2373
  %cast_op2374 = bitcast %C %_this1 to %A* 
  %ret2375 = call i32 %foo2372 ( %A* %cast_op2374, i32 3 )
  ret i32 %ret2375
}


define i32 @_C_notover (%C* %_this1, i32 %x2366){
__fresh499:
  %x_slot2367 = alloca i32
  store i32 %x2366, i32* %x_slot2367
  %lhs_or_call2368 = load i32* %x_slot2367
  %bop2369 = add i32 %lhs_or_call2368, 1
  ret i32 %bop2369
}


define %C* @_C_ctor (%C* %_this1){
__fresh498:
  %mem_ptr2361 = call i32* @oat_malloc ( i32 8 )
  %obj2362 = bitcast i32* %mem_ptr2361 to %B* 
  %new_obj2363 = call %B* @_B_ctor ( %B* %obj2362 )
  %_this1 = bitcast %B* %new_obj2363 to %C 
  %_name2364 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %_name2364
  %this_vtable2365 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable450, %_C_vtable** %this_vtable2365
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh497:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2357){
__fresh496:
  %x_slot2358 = alloca i32
  store i32 %x2357, i32* %x_slot2358
  %lhs_or_call2359 = load i32* %x_slot2358
  %bop2360 = add i32 %lhs_or_call2359, 2
  ret i32 %bop2360
}


define %B* @_B_ctor (%B* %_this1){
__fresh495:
  %mem_ptr2352 = call i32* @oat_malloc ( i32 8 )
  %obj2353 = bitcast i32* %mem_ptr2352 to %A* 
  %new_obj2354 = call %A* @_A_ctor ( %A* %obj2353 )
  %_this1 = bitcast %A* %new_obj2354 to %B 
  %_name2355 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str453, i8** %_name2355
  %this_vtable2356 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable449, %_B_vtable** %this_vtable2356
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh494:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2348){
__fresh493:
  %x_slot2349 = alloca i32
  store i32 %x2348, i32* %x_slot2349
  %lhs_or_call2350 = load i32* %x_slot2349
  %bop2351 = add i32 %lhs_or_call2350, 8
  ret i32 %bop2351
}


define i32 @_A_over (%A* %_this1, i32 %x2344){
__fresh492:
  %x_slot2345 = alloca i32
  store i32 %x2344, i32* %x_slot2345
  %lhs_or_call2346 = load i32* %x_slot2345
  %bop2347 = add i32 %lhs_or_call2346, 1
  ret i32 %bop2347
}


define %A* @_A_ctor (%A* %_this1){
__fresh491:
  %mem_ptr2339 = call i32* @oat_malloc ( i32 8 )
  %obj2340 = bitcast i32* %mem_ptr2339 to %Object* 
  %new_obj2341 = call %Object* @_Object_ctor ( %Object* %obj2340 )
  %_this1 = bitcast %Object* %new_obj2341 to %A 
  %_name2342 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str452, i8** %_name2342
  %this_vtable2343 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable448, %_A_vtable** %this_vtable2343
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh490:
  %_name2337 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2338 = load i8** %_name2337
  ret i8* %lhs_or_call2338
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh489:
  %_name2335 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str451, i8** %_name2335
  %this_vtable2336 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable447, %_Object_vtable** %this_vtable2336
  ret %Object* %_this1
}


