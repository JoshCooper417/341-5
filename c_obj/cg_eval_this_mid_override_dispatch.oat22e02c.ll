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
@_const_str457.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str457 = alias bitcast([ 2 x i8 ]* @_const_str457.str. to i8*)@_const_str456.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str456 = alias bitcast([ 2 x i8 ]* @_const_str456.str. to i8*)@_const_str455.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str455 = alias bitcast([ 2 x i8 ]* @_const_str455.str. to i8*)@_const_str454.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str454 = alias bitcast([ 7 x i8 ]* @_const_str454.str. to i8*)@_C_vtable453 = private constant %_C_vtable {%_B_vtable* @_B_vtable452, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable452 = private constant %_B_vtable {%_A_vtable* @_A_vtable451, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable451 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable450, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable450 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh488:
  ret void
}


define i32 @program (i32 %argc2348, { i32, [ 0 x i8* ] }* %argv2346){
__fresh487:
  %argc_slot2349 = alloca i32
  store i32 %argc2348, i32* %argc_slot2349
  %argv_slot2347 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2346, { i32, [ 0 x i8* ] }** %argv_slot2347
  %mem_ptr2350 = call i32* @oat_malloc ( i32 8 )
  %obj2351 = bitcast i32* %mem_ptr2350 to %C* 
  %new_obj2352 = call %C* @_C_ctor ( %C* %obj2351 )
  %vdecl_slot2353 = alloca %C*
  store %C* %new_obj2352, %C** %vdecl_slot2353
  %lhs_or_call2354 = load %C** %vdecl_slot2353
  %call2356 = getelementptr %_C_vtable* @_C_vtable453, i32 0, i32 4
  %call2355 = load i32 (%C*)** %call2356
  %cast_op2357 = bitcast %C %lhs_or_call2354 to %C* 
  %ret2358 = call i32 %call2355 ( %C* %cast_op2357 )
  ret i32 %ret2358
}


define i32 @_C_call (%C* %_this1){
__fresh486:
  %over2343 = getelementptr %_C_vtable* @_C_vtable453, i32 0, i32 2
  %over2342 = load i32 (%B*, i32)** %over2343
  %cast_op2344 = bitcast %C %_this1 to %B* 
  %ret2345 = call i32 %over2342 ( %B* %cast_op2344, i32 3 )
  ret i32 %ret2345
}


define i32 @_C_notover (%C* %_this1, i32 %x2338){
__fresh485:
  %x_slot2339 = alloca i32
  store i32 %x2338, i32* %x_slot2339
  %lhs_or_call2340 = load i32* %x_slot2339
  %bop2341 = add i32 %lhs_or_call2340, 1
  ret i32 %bop2341
}


define %C* @_C_ctor (%C* %_this1){
__fresh484:
  %cast_op2332 = bitcast %C* %_this1 to %B* 
  %mem_ptr2333 = call i32* @oat_malloc ( i32 8 )
  %obj2334 = bitcast i32* %mem_ptr2333 to %C* 
  %new_obj2335 = call %B* @_B_ctor ( %C* %obj2334, %B* %cast_op2332 )
  %_this1 = bitcast %B* %new_obj2335 to %C 
  %_name2336 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str457, i8** %_name2336
  %this_vtable2337 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable453, %_C_vtable** %this_vtable2337
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2328){
__fresh483:
  %x_slot2329 = alloca i32
  store i32 %x2328, i32* %x_slot2329
  %lhs_or_call2330 = load i32* %x_slot2329
  %bop2331 = add i32 %lhs_or_call2330, 2
  ret i32 %bop2331
}


define %B* @_B_ctor (%B* %_this1){
__fresh482:
  %cast_op2322 = bitcast %B* %_this1 to %A* 
  %mem_ptr2323 = call i32* @oat_malloc ( i32 8 )
  %obj2324 = bitcast i32* %mem_ptr2323 to %B* 
  %new_obj2325 = call %A* @_A_ctor ( %B* %obj2324, %A* %cast_op2322 )
  %_this1 = bitcast %A* %new_obj2325 to %B 
  %_name2326 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str456, i8** %_name2326
  %this_vtable2327 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable452, %_B_vtable** %this_vtable2327
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2318){
__fresh481:
  %x_slot2319 = alloca i32
  store i32 %x2318, i32* %x_slot2319
  %lhs_or_call2320 = load i32* %x_slot2319
  %bop2321 = add i32 %lhs_or_call2320, 1
  ret i32 %bop2321
}


define %A* @_A_ctor (%A* %_this1){
__fresh480:
  %cast_op2312 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2313 = call i32* @oat_malloc ( i32 8 )
  %obj2314 = bitcast i32* %mem_ptr2313 to %A* 
  %new_obj2315 = call %Object* @_Object_ctor ( %A* %obj2314, %Object* %cast_op2312 )
  %_this1 = bitcast %Object* %new_obj2315 to %A 
  %_name2316 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str455, i8** %_name2316
  %this_vtable2317 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable451, %_A_vtable** %this_vtable2317
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh479:
  %_name2310 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2311 = load i8** %_name2310
  ret i8* %lhs_or_call2311
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh478:
  %_name2308 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %_name2308
  %this_vtable2309 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable450, %_Object_vtable** %this_vtable2309
  ret %Object* %_this1
}


