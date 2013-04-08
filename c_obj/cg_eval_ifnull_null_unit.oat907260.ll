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
@_const_str412.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str412 = alias bitcast([ 2 x i8 ]* @_const_str412.str. to i8*)@_const_str411.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str411 = alias bitcast([ 7 x i8 ]* @_const_str411.str. to i8*)@_A_vtable410 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable409, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable409 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh730:
  ret void
}


define i32 @program (i32 %argc2432, { i32, [ 0 x i8* ] }* %argv2430){
__fresh729:
  %argc_slot2433 = alloca i32
  store i32 %argc2432, i32* %argc_slot2433
  %argv_slot2431 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2430, { i32, [ 0 x i8* ] }** %argv_slot2431
  %cast_op2434 = bitcast i8* null to %A* 
  %ret2435 = call i32 @try_ifnull ( %A* %cast_op2434 )
  ret i32 %ret2435
}


define i32 @try_ifnull (%A* %a2420){
__fresh726:
  %a_slot2421 = alloca %A*
  store %A* %a2420, %A** %a_slot2421
  %vdecl_slot2422 = alloca i32
  store i32 0, i32* %vdecl_slot2422
  %lhs_or_call2423 = load %A** %a_slot2421
  %ifnull_slot2424 = alloca %A*
  store %A* %lhs_or_call2423, %A** %ifnull_slot2424
  %ifnull_guard2425 = icmp ne %A* %lhs_or_call2423, null
  br i1 %ifnull_guard2425, label %__then725, label %__else724

__fresh727:
  br label %__then725

__then725:
  %lhs_or_call2426 = load %A** %ifnull_slot2424
  %x2427 = getelementptr %A* %lhs_or_call2426, i32 0, i32 2
  %lhs_or_call2428 = load i32* %x2427
  store i32 %lhs_or_call2428, i32* %vdecl_slot2422
  br label %__merge723

__fresh728:
  br label %__else724

__else724:
  store i32 12, i32* %vdecl_slot2422
  br label %__merge723

__merge723:
  %lhs_or_call2429 = load i32* %vdecl_slot2422
  ret i32 %lhs_or_call2429
}


define %A* @_A_ctor (%A* %_this1, i32 %x2411){
__fresh722:
  %x_slot2412 = alloca i32
  store i32 %x2411, i32* %x_slot2412
  %mem_ptr2415 = call i32* @oat_malloc ( i32 8 )
  %obj2416 = bitcast i32* %mem_ptr2415 to %Object* 
  %new_obj2417 = call %Object* @_Object_ctor ( %Object* %obj2416 )
  %_this1 = bitcast %Object* %new_obj2417 to %A 
  %_name2418 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str412, i8** %_name2418
  %this_vtable2419 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable410, %_A_vtable** %this_vtable2419
  %x2413 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2414 = load i32* %x_slot2412
  store i32 %lhs_or_call2414, i32* %x2413
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh721:
  %_name2409 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2410 = load i8** %_name2409
  ret i8* %lhs_or_call2410
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh720:
  %_name2407 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str411, i8** %_name2407
  %this_vtable2408 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable409, %_Object_vtable** %this_vtable2408
  ret %Object* %_this1
}


