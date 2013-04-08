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
@_A_vtable215 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable214, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable214 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh414:
  ret void
}


define i32 @program (i32 %argc2452, { i32, [ 0 x i8* ] }* %argv2450){
__fresh413:
  %argc_slot2453 = alloca i32
  store i32 %argc2452, i32* %argc_slot2453
  %argv_slot2451 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2450, { i32, [ 0 x i8* ] }** %argv_slot2451
  %mem_ptr2454 = call i32* @oat_malloc ( i32 12 )
  %obj2455 = bitcast i32* %mem_ptr2454 to %A* 
  %new_obj2456 = call %A* @_A_ctor ( %A* %obj2455, i32 11 )
  %ret2457 = call i32 @try_ifnull ( %A* %new_obj2456 )
  ret i32 %ret2457
}


define i32 @try_ifnull (%A* %a2440){
__fresh410:
  %a_slot2441 = alloca %A*
  store %A* %a2440, %A** %a_slot2441
  %vdecl_slot2442 = alloca i32
  store i32 0, i32* %vdecl_slot2442
  %lhs_or_call2443 = load %A** %a_slot2441
  %ifnull_slot2444 = alloca %A*
  store %A* %lhs_or_call2443, %A** %ifnull_slot2444
  %ifnull_guard2445 = icmp ne %A* %lhs_or_call2443, null
  br i1 %ifnull_guard2445, label %__then409, label %__else408

__fresh411:
  br label %__then409

__then409:
  %lhs_or_call2446 = load %A** %ifnull_slot2444
  %x2447 = getelementptr %A* %lhs_or_call2446, i32 0, i32 2
  %lhs_or_call2448 = load i32* %x2447
  store i32 %lhs_or_call2448, i32* %vdecl_slot2442
  br label %__merge407

__fresh412:
  br label %__else408

__else408:
  store i32 12, i32* %vdecl_slot2442
  br label %__merge407

__merge407:
  %lhs_or_call2449 = load i32* %vdecl_slot2442
  ret i32 %lhs_or_call2449
}


define %A* @_A_ctor (%A* %_this1, i32 %x2429){
__fresh406:
  %x_slot2430 = alloca i32
  store i32 %x2429, i32* %x_slot2430
  %lhs_or_call2431 = load %A* %_this1
  %cast_op2432 = bitcast %A %lhs_or_call2431 to %Object* 
  %mem_ptr2433 = call i32* @oat_malloc ( i32 8 )
  %obj2434 = bitcast i32* %mem_ptr2433 to %Object* 
  %new_obj2435 = call %Object* @_Object_ctor ( %Object* %obj2434, %Object* %cast_op2432 )
  %_name2436 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2437 = load %A* %_this1
  %cast_op2438 = bitcast %A %lhs_or_call2437 to i8* 
  store i8* %cast_op2438, i8** %_name2436
  %this_vtable2439 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2439
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh405:
  %_name2427 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2428 = load i8** %_name2427
  ret i8* %lhs_or_call2428
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh404:
  %_name2423 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2424 = load %Object* %_this1
  %cast_op2425 = bitcast %Object %lhs_or_call2424 to i8* 
  store i8* %cast_op2425, i8** %_name2423
  %this_vtable2426 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2426
  ret %Object* %_this1
}


