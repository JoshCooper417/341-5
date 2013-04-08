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
@a419 = global %A* zeroinitializer, align 4		; initialized by @a419.init420
@_const_str418.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str418 = alias bitcast([ 2 x i8 ]* @_const_str418.str. to i8*)@_const_str417.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str417 = alias bitcast([ 2 x i8 ]* @_const_str417.str. to i8*)@_const_str416.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str416 = alias bitcast([ 7 x i8 ]* @_const_str416.str. to i8*)@_B_vtable415 = private constant %_B_vtable {%_A_vtable* @_A_vtable414, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable414 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable413, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable413 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh688:
  call void @a419.init420(  )
  ret void
}


define i32 @program (i32 %argc2464, { i32, [ 0 x i8* ] }* %argv2462){
__fresh687:
  %argc_slot2465 = alloca i32
  store i32 %argc2464, i32* %argc_slot2465
  %argv_slot2463 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2462, { i32, [ 0 x i8* ] }** %argv_slot2463
  %lhs_or_call2466 = load %A** @a419
  %vtable_ptr2467 = getelementptr %A* %lhs_or_call2466, i32 0
  %vtable2468 = load %_A_vtable** %vtable_ptr2467
  %over2470 = getelementptr %_A_vtable* %vtable2468, i32 0, i32 2
  %over2469 = load i32 (%A*, i32)** %over2470
  %cast_op2471 = bitcast %A %lhs_or_call2466 to %A* 
  %ret2472 = call i32 %over2469 ( %A* %cast_op2471, i32 3 )
  ret i32 %ret2472
}


define void @a419.init420 (){
__fresh686:
  %mem_ptr2458 = call i32* @oat_malloc ( i32 8 )
  %obj2459 = bitcast i32* %mem_ptr2458 to %B* 
  %new_obj2460 = call %B* @_B_ctor ( %B* %obj2459 )
  %cast_op2461 = bitcast %B* %new_obj2460 to %A* 
  store %A* %cast_op2461, %A** @a419
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x2454){
__fresh685:
  %x_slot2455 = alloca i32
  store i32 %x2454, i32* %x_slot2455
  %lhs_or_call2456 = load i32* %x_slot2455
  %bop2457 = add i32 %lhs_or_call2456, 2
  ret i32 %bop2457
}


define %B* @_B_ctor (%B* %_this1){
__fresh684:
  %mem_ptr2449 = call i32* @oat_malloc ( i32 8 )
  %obj2450 = bitcast i32* %mem_ptr2449 to %A* 
  %new_obj2451 = call %A* @_A_ctor ( %A* %obj2450 )
  %_this1 = bitcast %A* %new_obj2451 to %B 
  %_name2452 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str418, i8** %_name2452
  %this_vtable2453 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable415, %_B_vtable** %this_vtable2453
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2445){
__fresh683:
  %x_slot2446 = alloca i32
  store i32 %x2445, i32* %x_slot2446
  %lhs_or_call2447 = load i32* %x_slot2446
  %bop2448 = add i32 %lhs_or_call2447, 1
  ret i32 %bop2448
}


define %A* @_A_ctor (%A* %_this1){
__fresh682:
  %mem_ptr2440 = call i32* @oat_malloc ( i32 8 )
  %obj2441 = bitcast i32* %mem_ptr2440 to %Object* 
  %new_obj2442 = call %Object* @_Object_ctor ( %Object* %obj2441 )
  %_this1 = bitcast %Object* %new_obj2442 to %A 
  %_name2443 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str417, i8** %_name2443
  %this_vtable2444 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable414, %_A_vtable** %this_vtable2444
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh681:
  %_name2438 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2439 = load i8** %_name2438
  ret i8* %lhs_or_call2439
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh680:
  %_name2436 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str416, i8** %_name2436
  %this_vtable2437 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable413, %_Object_vtable** %this_vtable2437
  ret %Object* %_this1
}


