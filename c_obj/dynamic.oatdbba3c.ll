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
@o476 = global %Owl* zeroinitializer, align 4		; initialized by @o476.init477
@_const_str475.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str475 = alias bitcast([ 6 x i8 ]* @_const_str475.str. to i8*)@_const_str474.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str474 = alias bitcast([ 4 x i8 ]* @_const_str474.str. to i8*)@_const_str473.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str473 = alias bitcast([ 5 x i8 ]* @_const_str473.str. to i8*)@_const_str472.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str472 = alias bitcast([ 3 x i8 ]* @_const_str472.str. to i8*)@_const_str471.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str471 = alias bitcast([ 7 x i8 ]* @_const_str471.str. to i8*)@_Owl_vtable470 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable469, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable469 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable468, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable468 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh517:
  call void @o476.init477(  )
  ret void
}


define i32 @program (i32 %argc2448, { i32, [ 0 x i8* ] }* %argv2446){
__fresh516:
  %argc_slot2449 = alloca i32
  store i32 %argc2448, i32* %argc_slot2449
  %argv_slot2447 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2446, { i32, [ 0 x i8* ] }** %argv_slot2447
  %lhs_or_call2450 = load %Owl** @o476
  %cast_op2451 = bitcast %Owl* %lhs_or_call2450 to %Wl* 
  %ret2452 = call i8* @getNoise ( %Wl* %cast_op2451 )
  call void @print_string( i8* %ret2452 )
  %lhs_or_call2453 = load %Owl** @o476
  %childmethod2455 = getelementptr %_Owl_vtable* @_Owl_vtable470, i32 0, i32 5
  %childmethod2454 = load i32 (%Owl*)** %childmethod2455
  %cast_op2456 = bitcast %Owl %lhs_or_call2453 to %Owl* 
  %ret2457 = call i32 %childmethod2454 ( %Owl* %cast_op2456 )
  %lhs_or_call2458 = load %Owl** @o476
  %parentmethod2460 = getelementptr %_Owl_vtable* @_Owl_vtable470, i32 0, i32 3
  %parentmethod2459 = load i32 (%Wl*)** %parentmethod2460
  %cast_op2461 = bitcast %Owl %lhs_or_call2458 to %Wl* 
  %ret2462 = call i32 %parentmethod2459 ( %Wl* %cast_op2461 )
  %bop2463 = add i32 %ret2457, %ret2462
  %lhs_or_call2464 = load %Owl** @o476
  %secondoverride2466 = getelementptr %_Owl_vtable* @_Owl_vtable470, i32 0, i32 4
  %secondoverride2465 = load i32 (%Owl*)** %secondoverride2466
  %cast_op2467 = bitcast %Owl %lhs_or_call2464 to %Owl* 
  %ret2468 = call i32 %secondoverride2465 ( %Owl* %cast_op2467 )
  %bop2469 = add i32 %bop2463, %ret2468
  ret i32 %bop2469
}


define void @o476.init477 (){
__fresh515:
  %mem_ptr2443 = call i32* @oat_malloc ( i32 8 )
  %obj2444 = bitcast i32* %mem_ptr2443 to %Owl* 
  %new_obj2445 = call %Owl* @_Owl_ctor ( %Owl* %obj2444 )
  store %Owl* %new_obj2445, %Owl** @o476
  ret void
}


define i8* @getNoise (%Wl* %thing2436){
__fresh514:
  %thing_slot2437 = alloca %Wl*
  store %Wl* %thing2436, %Wl** %thing_slot2437
  %lhs_or_call2438 = load %Wl** %thing_slot2437
  %noise2440 = getelementptr %_Wl_vtable* @_Wl_vtable469, i32 0, i32 2
  %noise2439 = load i8* (%Wl*)** %noise2440
  %cast_op2441 = bitcast %Wl %lhs_or_call2438 to %Wl* 
  %ret2442 = call i8* %noise2439 ( %Wl* %cast_op2441 )
  ret i8* %ret2442
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh513:
  %secondoverride2432 = getelementptr %_Owl_vtable* @_Owl_vtable470, i32 0, i32 4
  %secondoverride2431 = load i32 (%Owl*)** %secondoverride2432
  %cast_op2433 = bitcast %Owl %_this1 to %Owl* 
  %ret2434 = call i32 %secondoverride2431 ( %Owl* %cast_op2433 )
  %bop2435 = add i32 %ret2434, 1
  ret i32 %bop2435
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh512:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh511:
  ret i8* @_const_str475
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh510:
  %cast_op2425 = bitcast %Owl* %_this1 to %Wl* 
  %mem_ptr2426 = call i32* @oat_malloc ( i32 8 )
  %obj2427 = bitcast i32* %mem_ptr2426 to %Owl* 
  %new_obj2428 = call %Wl* @_Wl_ctor ( %Owl* %obj2427, %Wl* %cast_op2425 )
  %_this1 = bitcast %Wl* %new_obj2428 to %Owl 
  %_name2429 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str474, i8** %_name2429
  %this_vtable2430 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable470, %_Owl_vtable** %this_vtable2430
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh509:
  %unop2424 = sub i32 0, 2
  ret i32 %unop2424
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh508:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh507:
  ret i8* @_const_str473
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh506:
  %cast_op2418 = bitcast %Wl* %_this1 to %Object* 
  %mem_ptr2419 = call i32* @oat_malloc ( i32 8 )
  %obj2420 = bitcast i32* %mem_ptr2419 to %Wl* 
  %new_obj2421 = call %Object* @_Object_ctor ( %Wl* %obj2420, %Object* %cast_op2418 )
  %_this1 = bitcast %Object* %new_obj2421 to %Wl 
  %_name2422 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str472, i8** %_name2422
  %this_vtable2423 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable469, %_Wl_vtable** %this_vtable2423
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh505:
  %_name2416 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2417 = load i8** %_name2416
  ret i8* %lhs_or_call2417
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh504:
  %_name2414 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str471, i8** %_name2414
  %this_vtable2415 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable468, %_Object_vtable** %this_vtable2415
  ret %Object* %_this1
}


