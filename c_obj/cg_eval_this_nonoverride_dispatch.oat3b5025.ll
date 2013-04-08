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


define i32 @program (i32 %argc2389, { i32, [ 0 x i8* ] }* %argv2387){
__fresh502:
  %argc_slot2390 = alloca i32
  store i32 %argc2389, i32* %argc_slot2390
  %argv_slot2388 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2387, { i32, [ 0 x i8* ] }** %argv_slot2388
  %lhs_or_call2391 = load %A** @a455
  %vtable_ptr2392 = getelementptr %A* %lhs_or_call2391, i32 0
  %vtable2393 = load %_A_vtable** %vtable_ptr2392
  %call2395 = getelementptr %_A_vtable* %vtable2393, i32 0, i32 4
  %call2394 = load i32 (%A*)** %call2395
  %cast_op2396 = bitcast %A %lhs_or_call2391 to %A* 
  %ret2397 = call i32 %call2394 ( %A* %cast_op2396 )
  ret i32 %ret2397
}


define void @a455.init456 (){
__fresh501:
  %mem_ptr2383 = call i32* @oat_malloc ( i32 8 )
  %obj2384 = bitcast i32* %mem_ptr2383 to %C* 
  %new_obj2385 = call %C* @_C_ctor ( %C* %obj2384 )
  %cast_op2386 = bitcast %C* %new_obj2385 to %A* 
  store %A* %cast_op2386, %A** @a455
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh500:
  %vtable_ptr2377 = getelementptr %C* %_this1, i32 0
  %vtable2378 = load %_C_vtable** %vtable_ptr2377
  %foo2380 = getelementptr %_C_vtable* %vtable2378, i32 0, i32 3
  %foo2379 = load i32 (%A*, i32)** %foo2380
  %cast_op2381 = bitcast %C %_this1 to %A* 
  %ret2382 = call i32 %foo2379 ( %A* %cast_op2381, i32 3 )
  ret i32 %ret2382
}


define i32 @_C_notover (%C* %_this1, i32 %x2373){
__fresh499:
  %x_slot2374 = alloca i32
  store i32 %x2373, i32* %x_slot2374
  %lhs_or_call2375 = load i32* %x_slot2374
  %bop2376 = add i32 %lhs_or_call2375, 1
  ret i32 %bop2376
}


define %C* @_C_ctor (%C* %_this1){
__fresh498:
  %mem_ptr2368 = call i32* @oat_malloc ( i32 8 )
  %obj2369 = bitcast i32* %mem_ptr2368 to %B* 
  %new_obj2370 = call %B* @_B_ctor ( %B* %obj2369 )
  %_this1 = bitcast %B* %new_obj2370 to %C 
  %_name2371 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %_name2371
  %this_vtable2372 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable450, %_C_vtable** %this_vtable2372
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh497:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2364){
__fresh496:
  %x_slot2365 = alloca i32
  store i32 %x2364, i32* %x_slot2365
  %lhs_or_call2366 = load i32* %x_slot2365
  %bop2367 = add i32 %lhs_or_call2366, 2
  ret i32 %bop2367
}


define %B* @_B_ctor (%B* %_this1){
__fresh495:
  %mem_ptr2359 = call i32* @oat_malloc ( i32 8 )
  %obj2360 = bitcast i32* %mem_ptr2359 to %A* 
  %new_obj2361 = call %A* @_A_ctor ( %A* %obj2360 )
  %_this1 = bitcast %A* %new_obj2361 to %B 
  %_name2362 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str453, i8** %_name2362
  %this_vtable2363 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable449, %_B_vtable** %this_vtable2363
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh494:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2355){
__fresh493:
  %x_slot2356 = alloca i32
  store i32 %x2355, i32* %x_slot2356
  %lhs_or_call2357 = load i32* %x_slot2356
  %bop2358 = add i32 %lhs_or_call2357, 8
  ret i32 %bop2358
}


define i32 @_A_over (%A* %_this1, i32 %x2351){
__fresh492:
  %x_slot2352 = alloca i32
  store i32 %x2351, i32* %x_slot2352
  %lhs_or_call2353 = load i32* %x_slot2352
  %bop2354 = add i32 %lhs_or_call2353, 1
  ret i32 %bop2354
}


define %A* @_A_ctor (%A* %_this1){
__fresh491:
  %mem_ptr2346 = call i32* @oat_malloc ( i32 8 )
  %obj2347 = bitcast i32* %mem_ptr2346 to %Object* 
  %new_obj2348 = call %Object* @_Object_ctor ( %Object* %obj2347 )
  %_this1 = bitcast %Object* %new_obj2348 to %A 
  %_name2349 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str452, i8** %_name2349
  %this_vtable2350 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable448, %_A_vtable** %this_vtable2350
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh490:
  %_name2344 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2345 = load i8** %_name2344
  ret i8* %lhs_or_call2345
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh489:
  %_name2342 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str451, i8** %_name2342
  %this_vtable2343 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable447, %_Object_vtable** %this_vtable2343
  ret %Object* %_this1
}


