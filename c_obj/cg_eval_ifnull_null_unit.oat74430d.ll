%A = type { %_A_vtable*, i8*, i32 }
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
@_A_vtable217 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable216, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable216 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh425:
  ret void
}


define i32 @program (i32 %argc2487, { i32, [ 0 x i8* ] }* %argv2485){
__fresh424:
  %argc_slot2488 = alloca i32
  store i32 %argc2487, i32* %argc_slot2488
  %argv_slot2486 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2485, { i32, [ 0 x i8* ] }** %argv_slot2486
  %cast_op2489 = bitcast i8* null to %A* 
  %ret2490 = call i32 @try_ifnull ( %A* %cast_op2489 )
  ret i32 %ret2490
}


define i32 @try_ifnull (%A* %a2475){
__fresh421:
  %a_slot2476 = alloca %A*
  store %A* %a2475, %A** %a_slot2476
  %vdecl_slot2477 = alloca i32
  store i32 0, i32* %vdecl_slot2477
  %lhs_or_call2478 = load %A** %a_slot2476
  %ifnull_slot2479 = alloca %A*
  store %A* %lhs_or_call2478, %A** %ifnull_slot2479
  %ifnull_guard2480 = icmp ne %A* %lhs_or_call2478, null
  br i1 %ifnull_guard2480, label %__then420, label %__else419

__fresh422:
  br label %__then420

__then420:
  %lhs_or_call2481 = load %A** %ifnull_slot2479
  %x2482 = getelementptr %A* %lhs_or_call2481, i32 0, i32 2
  %lhs_or_call2483 = load i32* %x2482
  store i32 %lhs_or_call2483, i32* %vdecl_slot2477
  br label %__merge418

__fresh423:
  br label %__else419

__else419:
  store i32 12, i32* %vdecl_slot2477
  br label %__merge418

__merge418:
  %lhs_or_call2484 = load i32* %vdecl_slot2477
  ret i32 %lhs_or_call2484
}


define %A* @_A_ctor (%A* %_this1, i32 %x2464){
__fresh417:
  %x_slot2465 = alloca i32
  store i32 %x2464, i32* %x_slot2465
  %lhs_or_call2466 = load %A* %_this1
  %cast_op2467 = bitcast %A %lhs_or_call2466 to %Object* 
  %mem_ptr2468 = call i32* @oat_malloc ( i32 8 )
  %obj2469 = bitcast i32* %mem_ptr2468 to %Object* 
  %new_obj2470 = call %Object* @_Object_ctor ( %Object* %obj2469, %Object* %cast_op2467 )
  %_name2471 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2472 = load %A* %_this1
  %cast_op2473 = bitcast %A %lhs_or_call2472 to i8* 
  store i8* %cast_op2473, i8** %_name2471
  %this_vtable2474 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2474
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh416:
  %_name2462 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2463 = load i8** %_name2462
  ret i8* %lhs_or_call2463
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh415:
  %_name2458 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2459 = load %Object* %_this1
  %cast_op2460 = bitcast %Object %lhs_or_call2459 to i8* 
  store i8* %cast_op2460, i8** %_name2458
  %this_vtable2461 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2461
  ret %Object* %_this1
}


