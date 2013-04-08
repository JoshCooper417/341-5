%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)* }
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
@a430 = global %A* zeroinitializer, align 4		; initialized by @a430.init431
@_const_str429.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str429 = alias bitcast([ 2 x i8 ]* @_const_str429.str. to i8*)@_const_str428.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str428 = alias bitcast([ 2 x i8 ]* @_const_str428.str. to i8*)@_const_str427.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str427 = alias bitcast([ 2 x i8 ]* @_const_str427.str. to i8*)@_const_str426.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str426 = alias bitcast([ 7 x i8 ]* @_const_str426.str. to i8*)@_C_vtable425 = private constant %_C_vtable {%_B_vtable* @_B_vtable424, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable424 = private constant %_B_vtable {%_A_vtable* @_A_vtable423, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo}, align 4
@_A_vtable423 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable422, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo}, align 4
@_Object_vtable422 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh532:
  call void @a430.init431(  )
  ret void
}


define i32 @program (i32 %argc2361, { i32, [ 0 x i8* ] }* %argv2359){
__fresh531:
  %argc_slot2362 = alloca i32
  store i32 %argc2361, i32* %argc_slot2362
  %argv_slot2360 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2359, { i32, [ 0 x i8* ] }** %argv_slot2360
  %lhs_or_call2363 = load %A** @a430
  %vtable_ptr2364 = getelementptr %A* %lhs_or_call2363, i32 0
  %vtable2365 = load %_A_vtable** %vtable_ptr2364
  %foo2367 = getelementptr %_A_vtable* %vtable2365, i32 0, i32 3
  %foo2366 = load i32 (%A*, i32)** %foo2367
  %cast_op2368 = bitcast %A %lhs_or_call2363 to %A* 
  %ret2369 = call i32 %foo2366 ( %A* %cast_op2368, i32 3 )
  ret i32 %ret2369
}


define void @a430.init431 (){
__fresh530:
  %mem_ptr2355 = call i32* @oat_malloc ( i32 8 )
  %obj2356 = bitcast i32* %mem_ptr2355 to %C* 
  %new_obj2357 = call %C* @_C_ctor ( %C* %obj2356 )
  %cast_op2358 = bitcast %C* %new_obj2357 to %A* 
  store %A* %cast_op2358, %A** @a430
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2351){
__fresh529:
  %x_slot2352 = alloca i32
  store i32 %x2351, i32* %x_slot2352
  %lhs_or_call2353 = load i32* %x_slot2352
  %bop2354 = add i32 %lhs_or_call2353, 1
  ret i32 %bop2354
}


define %C* @_C_ctor (%C* %_this1){
__fresh528:
  %mem_ptr2346 = call i32* @oat_malloc ( i32 8 )
  %obj2347 = bitcast i32* %mem_ptr2346 to %B* 
  %new_obj2348 = call %B* @_B_ctor ( %B* %obj2347 )
  %_this1 = bitcast %B* %new_obj2348 to %C 
  %_name2349 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str429, i8** %_name2349
  %this_vtable2350 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable425, %_C_vtable** %this_vtable2350
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2342){
__fresh527:
  %x_slot2343 = alloca i32
  store i32 %x2342, i32* %x_slot2343
  %lhs_or_call2344 = load i32* %x_slot2343
  %bop2345 = add i32 %lhs_or_call2344, 2
  ret i32 %bop2345
}


define %B* @_B_ctor (%B* %_this1){
__fresh526:
  %mem_ptr2337 = call i32* @oat_malloc ( i32 8 )
  %obj2338 = bitcast i32* %mem_ptr2337 to %A* 
  %new_obj2339 = call %A* @_A_ctor ( %A* %obj2338 )
  %_this1 = bitcast %A* %new_obj2339 to %B 
  %_name2340 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2340
  %this_vtable2341 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable424, %_B_vtable** %this_vtable2341
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2333){
__fresh525:
  %x_slot2334 = alloca i32
  store i32 %x2333, i32* %x_slot2334
  %lhs_or_call2335 = load i32* %x_slot2334
  %bop2336 = add i32 %lhs_or_call2335, 8
  ret i32 %bop2336
}


define i32 @_A_over (%A* %_this1, i32 %x2329){
__fresh524:
  %x_slot2330 = alloca i32
  store i32 %x2329, i32* %x_slot2330
  %lhs_or_call2331 = load i32* %x_slot2330
  %bop2332 = add i32 %lhs_or_call2331, 1
  ret i32 %bop2332
}


define %A* @_A_ctor (%A* %_this1){
__fresh523:
  %mem_ptr2324 = call i32* @oat_malloc ( i32 8 )
  %obj2325 = bitcast i32* %mem_ptr2324 to %Object* 
  %new_obj2326 = call %Object* @_Object_ctor ( %Object* %obj2325 )
  %_this1 = bitcast %Object* %new_obj2326 to %A 
  %_name2327 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str427, i8** %_name2327
  %this_vtable2328 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable423, %_A_vtable** %this_vtable2328
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh522:
  %_name2322 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2323 = load i8** %_name2322
  ret i8* %lhs_or_call2323
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh521:
  %_name2320 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str426, i8** %_name2320
  %this_vtable2321 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable422, %_Object_vtable** %this_vtable2321
  ret %Object* %_this1
}


