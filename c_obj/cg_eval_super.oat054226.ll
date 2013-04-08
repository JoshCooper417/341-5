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


define i32 @program (i32 %argc2404, { i32, [ 0 x i8* ] }* %argv2402){
__fresh542:
  %argc_slot2405 = alloca i32
  store i32 %argc2404, i32* %argc_slot2405
  %argv_slot2403 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2402, { i32, [ 0 x i8* ] }** %argv_slot2403
  %lhs_or_call2406 = load %A** @a440
  %vtable_ptr2407 = getelementptr %A* %lhs_or_call2406, i32 0
  %vtable2408 = load %_A_vtable** %vtable_ptr2407
  %over2410 = getelementptr %_A_vtable* %vtable2408, i32 0, i32 2
  %over2409 = load i32 (%A*, i32)** %over2410
  %cast_op2411 = bitcast %A %lhs_or_call2406 to %A* 
  %ret2412 = call i32 %over2409 ( %A* %cast_op2411, i32 3 )
  ret i32 %ret2412
}


define void @a440.init441 (){
__fresh541:
  %mem_ptr2398 = call i32* @oat_malloc ( i32 8 )
  %obj2399 = bitcast i32* %mem_ptr2398 to %C* 
  %new_obj2400 = call %C* @_C_ctor ( %C* %obj2399 )
  %cast_op2401 = bitcast %C* %new_obj2400 to %A* 
  store %A* %cast_op2401, %A** @a440
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2386){
__fresh540:
  %x_slot2387 = alloca i32
  store i32 %x2386, i32* %x_slot2387
  %lhs_or_call2388 = load i32* %x_slot2387
  %bop2389 = add i32 %lhs_or_call2388, 1
  %lhs_or_call2390 = load i32* %x_slot2387
  %vtable_ptr2391 = getelementptr %C* %_this1, i32 0
  %vtable2392 = load %_C_vtable** %vtable_ptr2391
  %over2394 = getelementptr %_C_vtable* %vtable2392, i32 0, i32 2
  %over2393 = load i32 (%C*, i32)** %over2394
  %cast_op2395 = bitcast %C %_this1 to %C* 
  %ret2396 = call i32 %over2393 ( %C* %cast_op2395, i32 %lhs_or_call2390 )
  %bop2397 = add i32 %bop2389, %ret2396
  ret i32 %bop2397
}


define %C* @_C_ctor (%C* %_this1){
__fresh539:
  %mem_ptr2381 = call i32* @oat_malloc ( i32 8 )
  %obj2382 = bitcast i32* %mem_ptr2381 to %B* 
  %new_obj2383 = call %B* @_B_ctor ( %B* %obj2382 )
  %_this1 = bitcast %B* %new_obj2383 to %C 
  %_name2384 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str439, i8** %_name2384
  %this_vtable2385 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable435, %_C_vtable** %this_vtable2385
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2377){
__fresh538:
  %x_slot2378 = alloca i32
  store i32 %x2377, i32* %x_slot2378
  %lhs_or_call2379 = load i32* %x_slot2378
  %bop2380 = add i32 %lhs_or_call2379, 2
  ret i32 %bop2380
}


define %B* @_B_ctor (%B* %_this1){
__fresh537:
  %mem_ptr2372 = call i32* @oat_malloc ( i32 8 )
  %obj2373 = bitcast i32* %mem_ptr2372 to %A* 
  %new_obj2374 = call %A* @_A_ctor ( %A* %obj2373 )
  %_this1 = bitcast %A* %new_obj2374 to %B 
  %_name2375 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str438, i8** %_name2375
  %this_vtable2376 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable434, %_B_vtable** %this_vtable2376
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2368){
__fresh536:
  %x_slot2369 = alloca i32
  store i32 %x2368, i32* %x_slot2369
  %lhs_or_call2370 = load i32* %x_slot2369
  %bop2371 = add i32 %lhs_or_call2370, 1
  ret i32 %bop2371
}


define %A* @_A_ctor (%A* %_this1){
__fresh535:
  %mem_ptr2363 = call i32* @oat_malloc ( i32 8 )
  %obj2364 = bitcast i32* %mem_ptr2363 to %Object* 
  %new_obj2365 = call %Object* @_Object_ctor ( %Object* %obj2364 )
  %_this1 = bitcast %Object* %new_obj2365 to %A 
  %_name2366 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str437, i8** %_name2366
  %this_vtable2367 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable433, %_A_vtable** %this_vtable2367
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh534:
  %_name2361 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2362 = load i8** %_name2361
  ret i8* %lhs_or_call2362
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh533:
  %_name2359 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str436, i8** %_name2359
  %this_vtable2360 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable432, %_Object_vtable** %this_vtable2360
  ret %Object* %_this1
}


