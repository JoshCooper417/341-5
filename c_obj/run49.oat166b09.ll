%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, %B* }
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
@_const_str284.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str284 = alias bitcast([ 2 x i8 ]* @_const_str284.str. to i8*)@_const_str285.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str285 = alias bitcast([ 2 x i8 ]* @_const_str285.str. to i8*)@_const_str282.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str282 = alias bitcast([ 2 x i8 ]* @_const_str282.str. to i8*)@_const_str283.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str283 = alias bitcast([ 2 x i8 ]* @_const_str283.str. to i8*)@_const_str281.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str281 = alias bitcast([ 7 x i8 ]* @_const_str281.str. to i8*)@_B_vtable280 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable278, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable279 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable278, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable278 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh361:
  ret void
}


define i32 @program (i32 %argc1462, { i32, [ 0 x i8* ] }* %argv1460){
__fresh360:
  %argc_slot1463 = alloca i32
  store i32 %argc1462, i32* %argc_slot1463
  %argv_slot1461 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1460, { i32, [ 0 x i8* ] }** %argv_slot1461
  %mem_ptr1464 = call i32* @oat_malloc ( i32 12 )
  %obj1465 = bitcast i32* %mem_ptr1464 to %A* 
  %new_obj1466 = call %A* @_A_ctor ( %A* %obj1465 )
  %vdecl_slot1467 = alloca %A*
  store %A* %new_obj1466, %A** %vdecl_slot1467
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh359:
  %mem_ptr1455 = call i32* @oat_malloc ( i32 8 )
  %obj1456 = bitcast i32* %mem_ptr1455 to %Object* 
  %new_obj1457 = call %Object* @_Object_ctor ( %Object* %obj1456 )
  %_this1 = bitcast %Object* %new_obj1457 to %B 
  %_name1458 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str285, i8** %_name1458
  %this_vtable1459 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable280, %_B_vtable** %this_vtable1459
  call void @print_string( i8* @_const_str284 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh358:
  %mem_ptr1446 = call i32* @oat_malloc ( i32 8 )
  %obj1447 = bitcast i32* %mem_ptr1446 to %Object* 
  %new_obj1448 = call %Object* @_Object_ctor ( %Object* %obj1447 )
  %_this1 = bitcast %Object* %new_obj1448 to %A 
  %_name1449 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str283, i8** %_name1449
  %b1450 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %mem_ptr1451 = call i32* @oat_malloc ( i32 8 )
  %obj1452 = bitcast i32* %mem_ptr1451 to %B* 
  %new_obj1453 = call %B* @_B_ctor ( %B* %obj1452 )
  store %B* %new_obj1453, %B** %b1450
  %this_vtable1454 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable279, %_A_vtable** %this_vtable1454
  call void @print_string( i8* @_const_str282 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh357:
  %_name1444 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call1445 = load i8** %_name1444
  ret i8* %lhs_or_call1445
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh356:
  %_name1442 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str281, i8** %_name1442
  %this_vtable1443 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable278, %_Object_vtable** %this_vtable1443
  ret %Object* %_this1
}


