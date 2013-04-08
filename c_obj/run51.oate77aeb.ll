%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, %C* (%B*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Object* (%A*)*, void (%A*)* }
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
@_const_str298.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str298 = alias bitcast([ 2 x i8 ]* @_const_str298.str. to i8*)@_const_str297.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str297 = alias bitcast([ 2 x i8 ]* @_const_str297.str. to i8*)@_const_str296.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str296 = alias bitcast([ 2 x i8 ]* @_const_str296.str. to i8*)@_const_str295.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str295 = alias bitcast([ 2 x i8 ]* @_const_str295.str. to i8*)@_const_str294.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str294 = alias bitcast([ 2 x i8 ]* @_const_str294.str. to i8*)@_const_str293.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str293 = alias bitcast([ 2 x i8 ]* @_const_str293.str. to i8*)@_const_str292.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str292 = alias bitcast([ 7 x i8 ]* @_const_str292.str. to i8*)@_C_vtable291 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable288, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print}, align 4
@_B_vtable290 = private constant %_B_vtable {%_A_vtable* @_A_vtable289, i8* (%Object*)* @_Object_get_name, %C* (%B*)* @_B_f, void (%B*)* @_B_print}, align 4
@_A_vtable289 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable288, i8* (%Object*)* @_Object_get_name, %Object* (%A*)* @_A_f, void (%A*)* @_A_print}, align 4
@_Object_vtable288 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh334:
  ret void
}


define i32 @program (i32 %argc1433, { i32, [ 0 x i8* ] }* %argv1431){
__fresh333:
  %argc_slot1434 = alloca i32
  store i32 %argc1433, i32* %argc_slot1434
  %argv_slot1432 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1431, { i32, [ 0 x i8* ] }** %argv_slot1432
  %mem_ptr1435 = call i32* @oat_malloc ( i32 8 )
  %obj1436 = bitcast i32* %mem_ptr1435 to %A* 
  %new_obj1437 = call %A* @_A_ctor ( %A* %obj1436 )
  %vdecl_slot1438 = alloca %A*
  store %A* %new_obj1437, %A** %vdecl_slot1438
  %mem_ptr1439 = call i32* @oat_malloc ( i32 8 )
  %obj1440 = bitcast i32* %mem_ptr1439 to %B* 
  %new_obj1441 = call %B* @_B_ctor ( %B* %obj1440 )
  %vdecl_slot1442 = alloca %B*
  store %B* %new_obj1441, %B** %vdecl_slot1442
  %mem_ptr1443 = call i32* @oat_malloc ( i32 8 )
  %obj1444 = bitcast i32* %mem_ptr1443 to %C* 
  %new_obj1445 = call %C* @_C_ctor ( %C* %obj1444 )
  %vdecl_slot1446 = alloca %C*
  store %C* %new_obj1445, %C** %vdecl_slot1446
  %lhs_or_call1447 = load %A** %vdecl_slot1438
  %print1449 = getelementptr %_A_vtable* @_A_vtable289, i32 0, i32 3
  %print1448 = load void (%A*)** %print1449
  %cast_op1450 = bitcast %A %lhs_or_call1447 to %A* 
  call void %print1448( %A* %cast_op1450 )
  %lhs_or_call1451 = load %B** %vdecl_slot1442
  %print1453 = getelementptr %_B_vtable* @_B_vtable290, i32 0, i32 3
  %print1452 = load void (%B*)** %print1453
  %cast_op1454 = bitcast %B %lhs_or_call1451 to %B* 
  call void %print1452( %B* %cast_op1454 )
  %lhs_or_call1455 = load %B** %vdecl_slot1442
  %f1457 = getelementptr %_B_vtable* @_B_vtable290, i32 0, i32 2
  %f1456 = load %C* (%B*)** %f1457
  %cast_op1458 = bitcast %B %lhs_or_call1455 to %B* 
  %ret1459 = call %C* %f1456 ( %B* %cast_op1458 )
  %print1461 = getelementptr %_C_vtable* @_C_vtable291, i32 0, i32 2
  %print1460 = load void (%C*)** %print1461
  %cast_op1462 = bitcast %C %ret1459 to %C* 
  call void %print1460( %C* %cast_op1462 )
  %lhs_or_call1463 = load %C** %vdecl_slot1446
  %print1465 = getelementptr %_C_vtable* @_C_vtable291, i32 0, i32 2
  %print1464 = load void (%C*)** %print1465
  %cast_op1466 = bitcast %C %lhs_or_call1463 to %C* 
  call void %print1464( %C* %cast_op1466 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh332:
  call void @print_string( i8* @_const_str298 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh331:
  %cast_op1425 = bitcast %C* %_this1 to %Object* 
  %mem_ptr1426 = call i32* @oat_malloc ( i32 8 )
  %obj1427 = bitcast i32* %mem_ptr1426 to %C* 
  %new_obj1428 = call %Object* @_Object_ctor ( %C* %obj1427, %Object* %cast_op1425 )
  %_this1 = bitcast %Object* %new_obj1428 to %C 
  %_name1429 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str297, i8** %_name1429
  %this_vtable1430 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable291, %_C_vtable** %this_vtable1430
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh330:
  call void @print_string( i8* @_const_str296 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh329:
  %mem_ptr1422 = call i32* @oat_malloc ( i32 8 )
  %obj1423 = bitcast i32* %mem_ptr1422 to %C* 
  %new_obj1424 = call %C* @_C_ctor ( %C* %obj1423 )
  ret %C* %new_obj1424
}


define %B* @_B_ctor (%B* %_this1){
__fresh328:
  %cast_op1416 = bitcast %B* %_this1 to %A* 
  %mem_ptr1417 = call i32* @oat_malloc ( i32 8 )
  %obj1418 = bitcast i32* %mem_ptr1417 to %B* 
  %new_obj1419 = call %A* @_A_ctor ( %B* %obj1418, %A* %cast_op1416 )
  %_this1 = bitcast %A* %new_obj1419 to %B 
  %_name1420 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str295, i8** %_name1420
  %this_vtable1421 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable290, %_B_vtable** %this_vtable1421
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh327:
  call void @print_string( i8* @_const_str294 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh326:
  %mem_ptr1412 = call i32* @oat_malloc ( i32 8 )
  %obj1413 = bitcast i32* %mem_ptr1412 to %B* 
  %new_obj1414 = call %B* @_B_ctor ( %B* %obj1413 )
  %cast_op1415 = bitcast %B* %new_obj1414 to %Object* 
  ret %Object* %cast_op1415
}


define %A* @_A_ctor (%A* %_this1){
__fresh325:
  %cast_op1406 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1407 = call i32* @oat_malloc ( i32 8 )
  %obj1408 = bitcast i32* %mem_ptr1407 to %A* 
  %new_obj1409 = call %Object* @_Object_ctor ( %A* %obj1408, %Object* %cast_op1406 )
  %_this1 = bitcast %Object* %new_obj1409 to %A 
  %_name1410 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str293, i8** %_name1410
  %this_vtable1411 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable289, %_A_vtable** %this_vtable1411
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh324:
  %_name1404 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1405 = load i8** %_name1404
  ret i8* %lhs_or_call1405
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh323:
  %_name1402 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str292, i8** %_name1402
  %this_vtable1403 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable288, %_Object_vtable** %this_vtable1403
  ret %Object* %_this1
}


