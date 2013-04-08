%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*, i32)* }
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
@a440 = global %A* zeroinitializer, align 4		; initialized by @a440.init441
@_const_str439.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str439 = alias bitcast([ 2 x i8 ]* @_const_str439.str. to i8*)@_const_str438.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str438 = alias bitcast([ 2 x i8 ]* @_const_str438.str. to i8*)@_const_str437.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str437 = alias bitcast([ 2 x i8 ]* @_const_str437.str. to i8*)@_const_str436.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str436 = alias bitcast([ 7 x i8 ]* @_const_str436.str. to i8*)@_C_vtable435 = private constant %_C_vtable {%_B_vtable* @_B_vtable434, i8* (%Object*)* @_Object_get_name, i32 (%C*, i32)* @_C_over}, align 4
@_B_vtable434 = private constant %_B_vtable {%_A_vtable* @_A_vtable433, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable433 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable432, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable432 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh543:
  call void @a440.init441(  )
  ret void
}


define i32 @program (i32 %argc2415, { i32, [ 0 x i8* ] }* %argv2413){
__fresh542:
  %argc_slot2416 = alloca i32
  store i32 %argc2415, i32* %argc_slot2416
  %argv_slot2414 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2413, { i32, [ 0 x i8* ] }** %argv_slot2414
  %lhs_or_call2417 = load %A** @a440
  %vtable_ptr2418 = getelementptr %A* %lhs_or_call2417, i32 0
  %vtable2419 = load %_A_vtable** %vtable_ptr2418
  %over2421 = getelementptr %_A_vtable* %vtable2419, i32 0, i32 2
  %over2420 = load i32 (%A*, i32)** %over2421
  %cast_op2422 = bitcast %A %lhs_or_call2417 to %A* 
  %ret2423 = call i32 %over2420 ( %A* %cast_op2422, i32 3 )
  ret i32 %ret2423
}


define void @a440.init441 (){
__fresh541:
  %mem_ptr2409 = call i32* @oat_malloc ( i32 8 )
  %obj2410 = bitcast i32* %mem_ptr2409 to %C* 
  %new_obj2411 = call %C* @_C_ctor ( %C* %obj2410 )
  %cast_op2412 = bitcast %C* %new_obj2411 to %A* 
  store %A* %cast_op2412, %A** @a440
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2397){
__fresh540:
  %x_slot2398 = alloca i32
  store i32 %x2397, i32* %x_slot2398
  %lhs_or_call2399 = load i32* %x_slot2398
  %bop2400 = add i32 %lhs_or_call2399, 1
  %lhs_or_call2401 = load i32* %x_slot2398
  %vtable_ptr2402 = getelementptr %C* %_this1, i32 0
  %vtable2403 = load %_C_vtable** %vtable_ptr2402
  %over2405 = getelementptr %_C_vtable* %vtable2403, i32 0, i32 2
  %over2404 = load i32 (%C*, i32)** %over2405
  %cast_op2406 = bitcast %C %_this1 to %C* 
  %ret2407 = call i32 %over2404 ( %C* %cast_op2406, i32 %lhs_or_call2401 )
  %bop2408 = add i32 %bop2400, %ret2407
  ret i32 %bop2408
}


define %C* @_C_ctor (%C* %_this1){
__fresh539:
  %mem_ptr2392 = call i32* @oat_malloc ( i32 8 )
  %obj2393 = bitcast i32* %mem_ptr2392 to %B* 
  %new_obj2394 = call %B* @_B_ctor ( %B* %obj2393 )
  %_this1 = bitcast %B* %new_obj2394 to %C 
  %_name2395 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str439, i8** %_name2395
  %this_vtable2396 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable435, %_C_vtable** %this_vtable2396
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2388){
__fresh538:
  %x_slot2389 = alloca i32
  store i32 %x2388, i32* %x_slot2389
  %lhs_or_call2390 = load i32* %x_slot2389
  %bop2391 = add i32 %lhs_or_call2390, 2
  ret i32 %bop2391
}


define %B* @_B_ctor (%B* %_this1){
__fresh537:
  %mem_ptr2383 = call i32* @oat_malloc ( i32 8 )
  %obj2384 = bitcast i32* %mem_ptr2383 to %A* 
  %new_obj2385 = call %A* @_A_ctor ( %A* %obj2384 )
  %_this1 = bitcast %A* %new_obj2385 to %B 
  %_name2386 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str438, i8** %_name2386
  %this_vtable2387 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable434, %_B_vtable** %this_vtable2387
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2379){
__fresh536:
  %x_slot2380 = alloca i32
  store i32 %x2379, i32* %x_slot2380
  %lhs_or_call2381 = load i32* %x_slot2380
  %bop2382 = add i32 %lhs_or_call2381, 1
  ret i32 %bop2382
}


define %A* @_A_ctor (%A* %_this1){
__fresh535:
  %mem_ptr2374 = call i32* @oat_malloc ( i32 8 )
  %obj2375 = bitcast i32* %mem_ptr2374 to %Object* 
  %new_obj2376 = call %Object* @_Object_ctor ( %Object* %obj2375 )
  %_this1 = bitcast %Object* %new_obj2376 to %A 
  %_name2377 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str437, i8** %_name2377
  %this_vtable2378 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable433, %_A_vtable** %this_vtable2378
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh534:
  %_name2372 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2373 = load i8** %_name2372
  ret i8* %lhs_or_call2373
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh533:
  %_name2370 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str436, i8** %_name2370
  %this_vtable2371 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable432, %_Object_vtable** %this_vtable2371
  ret %Object* %_this1
}


