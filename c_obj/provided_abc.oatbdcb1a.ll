%C2 = type { %_C2_vtable*, i8* }
%_C2_vtable = type { %_B_vtable*, i8* (%Object*)* }
%C1 = type { %_C1_vtable*, i8* }
%_C1_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str546.str. = private unnamed_addr constant [ 3 x i8 ] c "C2\00", align 4
@_const_str546 = alias bitcast([ 3 x i8 ]* @_const_str546.str. to i8*)@_const_str545.str. = private unnamed_addr constant [ 3 x i8 ] c "C1\00", align 4
@_const_str545 = alias bitcast([ 3 x i8 ]* @_const_str545.str. to i8*)@_const_str544.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str544 = alias bitcast([ 2 x i8 ]* @_const_str544.str. to i8*)@_const_str543.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str543 = alias bitcast([ 2 x i8 ]* @_const_str543.str. to i8*)@_const_str542.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str542 = alias bitcast([ 7 x i8 ]* @_const_str542.str. to i8*)@_C2_vtable541 = private constant %_C2_vtable {%_B_vtable* @_B_vtable539, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable540 = private constant %_C1_vtable {%_B_vtable* @_B_vtable539, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable539 = private constant %_B_vtable {%_A_vtable* @_A_vtable538, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable538 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable537, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable537 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh653:
  ret void
}


define i32 @program (i32 %argc2465, { i32, [ 0 x i8* ] }* %argv2463){
__fresh652:
  %argc_slot2466 = alloca i32
  store i32 %argc2465, i32* %argc_slot2466
  %argv_slot2464 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2463, { i32, [ 0 x i8* ] }** %argv_slot2464
  %mem_ptr2467 = call i32* @oat_malloc ( i32 8 )
  %obj2468 = bitcast i32* %mem_ptr2467 to %A* 
  %new_obj2469 = call %A* @_A_ctor ( %A* %obj2468 )
  %vdecl_slot2470 = alloca %A*
  store %A* %new_obj2469, %A** %vdecl_slot2470
  %mem_ptr2471 = call i32* @oat_malloc ( i32 8 )
  %obj2472 = bitcast i32* %mem_ptr2471 to %B* 
  %new_obj2473 = call %B* @_B_ctor ( %B* %obj2472 )
  %vdecl_slot2474 = alloca %B*
  store %B* %new_obj2473, %B** %vdecl_slot2474
  %mem_ptr2475 = call i32* @oat_malloc ( i32 8 )
  %obj2476 = bitcast i32* %mem_ptr2475 to %C1* 
  %new_obj2477 = call %C1* @_C1_ctor ( %C1* %obj2476 )
  %vdecl_slot2478 = alloca %C1*
  store %C1* %new_obj2477, %C1** %vdecl_slot2478
  %mem_ptr2479 = call i32* @oat_malloc ( i32 8 )
  %obj2480 = bitcast i32* %mem_ptr2479 to %C2* 
  %new_obj2481 = call %C2* @_C2_ctor ( %C2* %obj2480 )
  %vdecl_slot2482 = alloca %C2*
  store %C2* %new_obj2481, %C2** %vdecl_slot2482
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh651:
  %mem_ptr2458 = call i32* @oat_malloc ( i32 8 )
  %obj2459 = bitcast i32* %mem_ptr2458 to %B* 
  %new_obj2460 = call %B* @_B_ctor ( %B* %obj2459 )
  %_this1 = bitcast %B* %new_obj2460 to %C2 
  %_name2461 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str546, i8** %_name2461
  %this_vtable2462 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable541, %_C2_vtable** %this_vtable2462
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh650:
  %mem_ptr2453 = call i32* @oat_malloc ( i32 8 )
  %obj2454 = bitcast i32* %mem_ptr2453 to %B* 
  %new_obj2455 = call %B* @_B_ctor ( %B* %obj2454 )
  %_this1 = bitcast %B* %new_obj2455 to %C1 
  %_name2456 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str545, i8** %_name2456
  %this_vtable2457 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable540, %_C1_vtable** %this_vtable2457
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh649:
  %mem_ptr2448 = call i32* @oat_malloc ( i32 8 )
  %obj2449 = bitcast i32* %mem_ptr2448 to %A* 
  %new_obj2450 = call %A* @_A_ctor ( %A* %obj2449 )
  %_this1 = bitcast %A* %new_obj2450 to %B 
  %_name2451 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %_name2451
  %this_vtable2452 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable539, %_B_vtable** %this_vtable2452
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh648:
  %mem_ptr2443 = call i32* @oat_malloc ( i32 8 )
  %obj2444 = bitcast i32* %mem_ptr2443 to %Object* 
  %new_obj2445 = call %Object* @_Object_ctor ( %Object* %obj2444 )
  %_this1 = bitcast %Object* %new_obj2445 to %A 
  %_name2446 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str543, i8** %_name2446
  %this_vtable2447 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable538, %_A_vtable** %this_vtable2447
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh647:
  %_name2441 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2442 = load i8** %_name2441
  ret i8* %lhs_or_call2442
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh646:
  %_name2439 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str542, i8** %_name2439
  %this_vtable2440 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable537, %_Object_vtable** %this_vtable2440
  ret %Object* %_this1
}


