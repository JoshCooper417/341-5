%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%C*, i32)*, i32 (%C*)* }
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
@_const_str466.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str466 = alias bitcast([ 2 x i8 ]* @_const_str466.str. to i8*)@_const_str465.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str465 = alias bitcast([ 2 x i8 ]* @_const_str465.str. to i8*)@_const_str464.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str464 = alias bitcast([ 2 x i8 ]* @_const_str464.str. to i8*)@_const_str463.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str463 = alias bitcast([ 7 x i8 ]* @_const_str463.str. to i8*)@_C_vtable462 = private constant %_C_vtable {%_B_vtable* @_B_vtable461, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable461 = private constant %_B_vtable {%_A_vtable* @_A_vtable460, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable460 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable459, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable459 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh508:
  ret void
}


define i32 @program (i32 %argc2383, { i32, [ 0 x i8* ] }* %argv2381){
__fresh507:
  %argc_slot2384 = alloca i32
  store i32 %argc2383, i32* %argc_slot2384
  %argv_slot2382 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2381, { i32, [ 0 x i8* ] }** %argv_slot2382
  %mem_ptr2385 = call i32* @oat_malloc ( i32 8 )
  %obj2386 = bitcast i32* %mem_ptr2385 to %C* 
  %new_obj2387 = call %C* @_C_ctor ( %C* %obj2386 )
  %vdecl_slot2388 = alloca %C*
  store %C* %new_obj2387, %C** %vdecl_slot2388
  %lhs_or_call2389 = load %C** %vdecl_slot2388
  %call2391 = getelementptr %_C_vtable* @_C_vtable462, i32 0, i32 4
  %call2390 = load i32 (%C*)** %call2391
  %cast_op2392 = bitcast %C %lhs_or_call2389 to %C* 
  %ret2393 = call i32 %call2390 ( %C* %cast_op2392 )
  ret i32 %ret2393
}


define i32 @_C_call (%C* %_this1){
__fresh506:
  %over2378 = getelementptr %_C_vtable* @_C_vtable462, i32 0, i32 2
  %over2377 = load i32 (%B*, i32)** %over2378
  %cast_op2379 = bitcast %C %_this1 to %B* 
  %ret2380 = call i32 %over2377 ( %B* %cast_op2379, i32 3 )
  ret i32 %ret2380
}


define i32 @_C_notover (%C* %_this1, i32 %x2373){
__fresh505:
  %x_slot2374 = alloca i32
  store i32 %x2373, i32* %x_slot2374
  %lhs_or_call2375 = load i32* %x_slot2374
  %bop2376 = add i32 %lhs_or_call2375, 1
  ret i32 %bop2376
}


define %C* @_C_ctor (%C* %_this1){
__fresh504:
  %cast_op2367 = bitcast %C* %_this1 to %B* 
  %mem_ptr2368 = call i32* @oat_malloc ( i32 8 )
  %obj2369 = bitcast i32* %mem_ptr2368 to %C* 
  %new_obj2370 = call %B* @_B_ctor ( %C* %obj2369, %B* %cast_op2367 )
  %_this1 = bitcast %B* %new_obj2370 to %C 
  %_name2371 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str466, i8** %_name2371
  %this_vtable2372 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable462, %_C_vtable** %this_vtable2372
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2363){
__fresh503:
  %x_slot2364 = alloca i32
  store i32 %x2363, i32* %x_slot2364
  %lhs_or_call2365 = load i32* %x_slot2364
  %bop2366 = add i32 %lhs_or_call2365, 2
  ret i32 %bop2366
}


define %B* @_B_ctor (%B* %_this1){
__fresh502:
  %cast_op2357 = bitcast %B* %_this1 to %A* 
  %mem_ptr2358 = call i32* @oat_malloc ( i32 8 )
  %obj2359 = bitcast i32* %mem_ptr2358 to %B* 
  %new_obj2360 = call %A* @_A_ctor ( %B* %obj2359, %A* %cast_op2357 )
  %_this1 = bitcast %A* %new_obj2360 to %B 
  %_name2361 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str465, i8** %_name2361
  %this_vtable2362 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable461, %_B_vtable** %this_vtable2362
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2353){
__fresh501:
  %x_slot2354 = alloca i32
  store i32 %x2353, i32* %x_slot2354
  %lhs_or_call2355 = load i32* %x_slot2354
  %bop2356 = add i32 %lhs_or_call2355, 1
  ret i32 %bop2356
}


define %A* @_A_ctor (%A* %_this1){
__fresh500:
  %cast_op2347 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2348 = call i32* @oat_malloc ( i32 8 )
  %obj2349 = bitcast i32* %mem_ptr2348 to %A* 
  %new_obj2350 = call %Object* @_Object_ctor ( %A* %obj2349, %Object* %cast_op2347 )
  %_this1 = bitcast %Object* %new_obj2350 to %A 
  %_name2351 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str464, i8** %_name2351
  %this_vtable2352 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable460, %_A_vtable** %this_vtable2352
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh499:
  %_name2345 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2346 = load i8** %_name2345
  ret i8* %lhs_or_call2346
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh498:
  %_name2343 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2343
  %this_vtable2344 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable459, %_Object_vtable** %this_vtable2344
  ret %Object* %_this1
}


