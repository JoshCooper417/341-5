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


define i32 @program (i32 %argc2350, { i32, [ 0 x i8* ] }* %argv2348){
__fresh531:
  %argc_slot2351 = alloca i32
  store i32 %argc2350, i32* %argc_slot2351
  %argv_slot2349 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2348, { i32, [ 0 x i8* ] }** %argv_slot2349
  %lhs_or_call2352 = load %A** @a430
  %vtable_ptr2353 = getelementptr %A* %lhs_or_call2352, i32 0
  %vtable2354 = load %_A_vtable** %vtable_ptr2353
  %foo2356 = getelementptr %_A_vtable* %vtable2354, i32 0, i32 3
  %foo2355 = load i32 (%A*, i32)** %foo2356
  %cast_op2357 = bitcast %A %lhs_or_call2352 to %A* 
  %ret2358 = call i32 %foo2355 ( %A* %cast_op2357, i32 3 )
  ret i32 %ret2358
}


define void @a430.init431 (){
__fresh530:
  %mem_ptr2344 = call i32* @oat_malloc ( i32 8 )
  %obj2345 = bitcast i32* %mem_ptr2344 to %C* 
  %new_obj2346 = call %C* @_C_ctor ( %C* %obj2345 )
  %cast_op2347 = bitcast %C* %new_obj2346 to %A* 
  store %A* %cast_op2347, %A** @a430
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2340){
__fresh529:
  %x_slot2341 = alloca i32
  store i32 %x2340, i32* %x_slot2341
  %lhs_or_call2342 = load i32* %x_slot2341
  %bop2343 = add i32 %lhs_or_call2342, 1
  ret i32 %bop2343
}


define %C* @_C_ctor (%C* %_this1){
__fresh528:
  %mem_ptr2335 = call i32* @oat_malloc ( i32 8 )
  %obj2336 = bitcast i32* %mem_ptr2335 to %B* 
  %new_obj2337 = call %B* @_B_ctor ( %B* %obj2336 )
  %_this1 = bitcast %B* %new_obj2337 to %C 
  %_name2338 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str429, i8** %_name2338
  %this_vtable2339 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable425, %_C_vtable** %this_vtable2339
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2331){
__fresh527:
  %x_slot2332 = alloca i32
  store i32 %x2331, i32* %x_slot2332
  %lhs_or_call2333 = load i32* %x_slot2332
  %bop2334 = add i32 %lhs_or_call2333, 2
  ret i32 %bop2334
}


define %B* @_B_ctor (%B* %_this1){
__fresh526:
  %mem_ptr2326 = call i32* @oat_malloc ( i32 8 )
  %obj2327 = bitcast i32* %mem_ptr2326 to %A* 
  %new_obj2328 = call %A* @_A_ctor ( %A* %obj2327 )
  %_this1 = bitcast %A* %new_obj2328 to %B 
  %_name2329 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2329
  %this_vtable2330 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable424, %_B_vtable** %this_vtable2330
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2322){
__fresh525:
  %x_slot2323 = alloca i32
  store i32 %x2322, i32* %x_slot2323
  %lhs_or_call2324 = load i32* %x_slot2323
  %bop2325 = add i32 %lhs_or_call2324, 8
  ret i32 %bop2325
}


define i32 @_A_over (%A* %_this1, i32 %x2318){
__fresh524:
  %x_slot2319 = alloca i32
  store i32 %x2318, i32* %x_slot2319
  %lhs_or_call2320 = load i32* %x_slot2319
  %bop2321 = add i32 %lhs_or_call2320, 1
  ret i32 %bop2321
}


define %A* @_A_ctor (%A* %_this1){
__fresh523:
  %mem_ptr2313 = call i32* @oat_malloc ( i32 8 )
  %obj2314 = bitcast i32* %mem_ptr2313 to %Object* 
  %new_obj2315 = call %Object* @_Object_ctor ( %Object* %obj2314 )
  %_this1 = bitcast %Object* %new_obj2315 to %A 
  %_name2316 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str427, i8** %_name2316
  %this_vtable2317 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable423, %_A_vtable** %this_vtable2317
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh522:
  %_name2311 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2312 = load i8** %_name2311
  ret i8* %lhs_or_call2312
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh521:
  %_name2309 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str426, i8** %_name2309
  %this_vtable2310 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable422, %_Object_vtable** %this_vtable2310
  ret %Object* %_this1
}


