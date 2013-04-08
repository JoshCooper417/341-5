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
@_const_str408.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str408 = alias bitcast([ 2 x i8 ]* @_const_str408.str. to i8*)@_const_str407.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str407 = alias bitcast([ 7 x i8 ]* @_const_str407.str. to i8*)@_A_vtable406 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable405, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable405 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh719:
  ret void
}


define i32 @program (i32 %argc2401, { i32, [ 0 x i8* ] }* %argv2399){
__fresh718:
  %argc_slot2402 = alloca i32
  store i32 %argc2401, i32* %argc_slot2402
  %argv_slot2400 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2399, { i32, [ 0 x i8* ] }** %argv_slot2400
  %mem_ptr2403 = call i32* @oat_malloc ( i32 12 )
  %obj2404 = bitcast i32* %mem_ptr2403 to %A* 
  %new_obj2405 = call %A* @_A_ctor ( %A* %obj2404, i32 11 )
  %ret2406 = call i32 @try_ifnull ( %A* %new_obj2405 )
  ret i32 %ret2406
}


define i32 @try_ifnull (%A* %a2389){
__fresh715:
  %a_slot2390 = alloca %A*
  store %A* %a2389, %A** %a_slot2390
  %vdecl_slot2391 = alloca i32
  store i32 0, i32* %vdecl_slot2391
  %lhs_or_call2392 = load %A** %a_slot2390
  %ifnull_slot2393 = alloca %A*
  store %A* %lhs_or_call2392, %A** %ifnull_slot2393
  %ifnull_guard2394 = icmp ne %A* %lhs_or_call2392, null
  br i1 %ifnull_guard2394, label %__then714, label %__else713

__fresh716:
  br label %__then714

__then714:
  %lhs_or_call2395 = load %A** %ifnull_slot2393
  %x2396 = getelementptr %A* %lhs_or_call2395, i32 0, i32 2
  %lhs_or_call2397 = load i32* %x2396
  store i32 %lhs_or_call2397, i32* %vdecl_slot2391
  br label %__merge712

__fresh717:
  br label %__else713

__else713:
  store i32 12, i32* %vdecl_slot2391
  br label %__merge712

__merge712:
  %lhs_or_call2398 = load i32* %vdecl_slot2391
  ret i32 %lhs_or_call2398
}


define %A* @_A_ctor (%A* %_this1, i32 %x2380){
__fresh711:
  %x_slot2381 = alloca i32
  store i32 %x2380, i32* %x_slot2381
  %mem_ptr2384 = call i32* @oat_malloc ( i32 8 )
  %obj2385 = bitcast i32* %mem_ptr2384 to %Object* 
  %new_obj2386 = call %Object* @_Object_ctor ( %Object* %obj2385 )
  %_this1 = bitcast %Object* %new_obj2386 to %A 
  %_name2387 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str408, i8** %_name2387
  %this_vtable2388 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable406, %_A_vtable** %this_vtable2388
  %x2382 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2383 = load i32* %x_slot2381
  store i32 %lhs_or_call2383, i32* %x2382
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh710:
  %_name2378 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2379 = load i8** %_name2378
  ret i8* %lhs_or_call2379
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh709:
  %_name2376 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str407, i8** %_name2376
  %this_vtable2377 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable405, %_Object_vtable** %this_vtable2377
  ret %Object* %_this1
}


