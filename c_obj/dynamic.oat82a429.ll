%Owl = type { %_Owl_vtable*, i8* }
%_Owl_vtable = type { %_Wl_vtable*, i8* (%Object*)*, i8* (%Owl*)*, i32 (%Wl*)*, i32 (%Owl*)*, i32 (%Owl*)* }
%Wl = type { %_Wl_vtable*, i8* }
%_Wl_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Wl*)*, i32 (%Wl*)*, i32 (%Wl*)* }
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
@o465 = global %Owl* zeroinitializer, align 4		; initialized by @o465.init466
@_const_str464.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str464 = alias bitcast([ 6 x i8 ]* @_const_str464.str. to i8*)@_const_str463.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str463 = alias bitcast([ 4 x i8 ]* @_const_str463.str. to i8*)@_const_str462.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str462 = alias bitcast([ 5 x i8 ]* @_const_str462.str. to i8*)@_const_str461.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str461 = alias bitcast([ 3 x i8 ]* @_const_str461.str. to i8*)@_const_str460.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str460 = alias bitcast([ 7 x i8 ]* @_const_str460.str. to i8*)@_Owl_vtable459 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable458, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable458 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable457, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable457 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh517:
  call void @o465.init466(  )
  ret void
}


define i32 @program (i32 %argc2427, { i32, [ 0 x i8* ] }* %argv2425){
__fresh516:
  %argc_slot2428 = alloca i32
  store i32 %argc2427, i32* %argc_slot2428
  %argv_slot2426 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2425, { i32, [ 0 x i8* ] }** %argv_slot2426
  %lhs_or_call2429 = load %Owl** @o465
  %cast_op2430 = bitcast %Owl* %lhs_or_call2429 to %Wl* 
  %ret2431 = call i8* @getNoise ( %Wl* %cast_op2430 )
  call void @print_string( i8* %ret2431 )
  %lhs_or_call2432 = load %Owl** @o465
  %vtable_ptr2433 = getelementptr %Owl* %lhs_or_call2432, i32 0
  %vtable2434 = load %_Owl_vtable** %vtable_ptr2433
  %childmethod2436 = getelementptr %_Owl_vtable* %vtable2434, i32 0, i32 5
  %childmethod2435 = load i32 (%Owl*)** %childmethod2436
  %cast_op2437 = bitcast %Owl %lhs_or_call2432 to %Owl* 
  %ret2438 = call i32 %childmethod2435 ( %Owl* %cast_op2437 )
  %lhs_or_call2439 = load %Owl** @o465
  %vtable_ptr2440 = getelementptr %Owl* %lhs_or_call2439, i32 0
  %vtable2441 = load %_Owl_vtable** %vtable_ptr2440
  %parentmethod2443 = getelementptr %_Owl_vtable* %vtable2441, i32 0, i32 3
  %parentmethod2442 = load i32 (%Wl*)** %parentmethod2443
  %cast_op2444 = bitcast %Owl %lhs_or_call2439 to %Wl* 
  %ret2445 = call i32 %parentmethod2442 ( %Wl* %cast_op2444 )
  %bop2446 = add i32 %ret2438, %ret2445
  %lhs_or_call2447 = load %Owl** @o465
  %vtable_ptr2448 = getelementptr %Owl* %lhs_or_call2447, i32 0
  %vtable2449 = load %_Owl_vtable** %vtable_ptr2448
  %secondoverride2451 = getelementptr %_Owl_vtable* %vtable2449, i32 0, i32 4
  %secondoverride2450 = load i32 (%Owl*)** %secondoverride2451
  %cast_op2452 = bitcast %Owl %lhs_or_call2447 to %Owl* 
  %ret2453 = call i32 %secondoverride2450 ( %Owl* %cast_op2452 )
  %bop2454 = add i32 %bop2446, %ret2453
  ret i32 %bop2454
}


define void @o465.init466 (){
__fresh515:
  %mem_ptr2422 = call i32* @oat_malloc ( i32 8 )
  %obj2423 = bitcast i32* %mem_ptr2422 to %Owl* 
  %new_obj2424 = call %Owl* @_Owl_ctor ( %Owl* %obj2423 )
  store %Owl* %new_obj2424, %Owl** @o465
  ret void
}


define i8* @getNoise (%Wl* %thing2413){
__fresh514:
  %thing_slot2414 = alloca %Wl*
  store %Wl* %thing2413, %Wl** %thing_slot2414
  %lhs_or_call2415 = load %Wl** %thing_slot2414
  %vtable_ptr2416 = getelementptr %Wl* %lhs_or_call2415, i32 0
  %vtable2417 = load %_Wl_vtable** %vtable_ptr2416
  %noise2419 = getelementptr %_Wl_vtable* %vtable2417, i32 0, i32 2
  %noise2418 = load i8* (%Wl*)** %noise2419
  %cast_op2420 = bitcast %Wl %lhs_or_call2415 to %Wl* 
  %ret2421 = call i8* %noise2418 ( %Wl* %cast_op2420 )
  ret i8* %ret2421
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh513:
  %vtable_ptr2406 = getelementptr %Owl* %_this1, i32 0
  %vtable2407 = load %_Owl_vtable** %vtable_ptr2406
  %secondoverride2409 = getelementptr %_Owl_vtable* %vtable2407, i32 0, i32 4
  %secondoverride2408 = load i32 (%Owl*)** %secondoverride2409
  %cast_op2410 = bitcast %Owl %_this1 to %Owl* 
  %ret2411 = call i32 %secondoverride2408 ( %Owl* %cast_op2410 )
  %bop2412 = add i32 %ret2411, 1
  ret i32 %bop2412
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh512:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh511:
  ret i8* @_const_str464
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh510:
  %mem_ptr2401 = call i32* @oat_malloc ( i32 8 )
  %obj2402 = bitcast i32* %mem_ptr2401 to %Wl* 
  %new_obj2403 = call %Wl* @_Wl_ctor ( %Wl* %obj2402 )
  %_this1 = bitcast %Wl* %new_obj2403 to %Owl 
  %_name2404 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2404
  %this_vtable2405 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable459, %_Owl_vtable** %this_vtable2405
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh509:
  %unop2400 = sub i32 0, 2
  ret i32 %unop2400
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh508:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh507:
  ret i8* @_const_str462
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh506:
  %mem_ptr2395 = call i32* @oat_malloc ( i32 8 )
  %obj2396 = bitcast i32* %mem_ptr2395 to %Object* 
  %new_obj2397 = call %Object* @_Object_ctor ( %Object* %obj2396 )
  %_this1 = bitcast %Object* %new_obj2397 to %Wl 
  %_name2398 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str461, i8** %_name2398
  %this_vtable2399 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable458, %_Wl_vtable** %this_vtable2399
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh505:
  %_name2393 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2394 = load i8** %_name2393
  ret i8* %lhs_or_call2394
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh504:
  %_name2391 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str460, i8** %_name2391
  %this_vtable2392 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable457, %_Object_vtable** %this_vtable2392
  ret %Object* %_this1
}


