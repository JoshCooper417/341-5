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
@_const_str307.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str307 = alias bitcast([ 2 x i8 ]* @_const_str307.str. to i8*)@_const_str306.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str306 = alias bitcast([ 2 x i8 ]* @_const_str306.str. to i8*)@_const_str305.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str305 = alias bitcast([ 2 x i8 ]* @_const_str305.str. to i8*)@_const_str304.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str304 = alias bitcast([ 2 x i8 ]* @_const_str304.str. to i8*)@_const_str303.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str303 = alias bitcast([ 2 x i8 ]* @_const_str303.str. to i8*)@_const_str302.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str302 = alias bitcast([ 2 x i8 ]* @_const_str302.str. to i8*)@_const_str301.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str301 = alias bitcast([ 7 x i8 ]* @_const_str301.str. to i8*)@_C_vtable300 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable297, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print}, align 4
@_B_vtable299 = private constant %_B_vtable {%_A_vtable* @_A_vtable298, i8* (%Object*)* @_Object_get_name, %C* (%B*)* @_B_f, void (%B*)* @_B_print}, align 4
@_A_vtable298 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable297, i8* (%Object*)* @_Object_get_name, %Object* (%A*)* @_A_f, void (%A*)* @_A_print}, align 4
@_Object_vtable297 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh339:
  ret void
}


define i32 @program (i32 %argc1450, { i32, [ 0 x i8* ] }* %argv1448){
__fresh338:
  %argc_slot1451 = alloca i32
  store i32 %argc1450, i32* %argc_slot1451
  %argv_slot1449 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1448, { i32, [ 0 x i8* ] }** %argv_slot1449
  %mem_ptr1452 = call i32* @oat_malloc ( i32 8 )
  %obj1453 = bitcast i32* %mem_ptr1452 to %A* 
  %new_obj1454 = call %A* @_A_ctor ( %A* %obj1453 )
  %vdecl_slot1455 = alloca %A*
  store %A* %new_obj1454, %A** %vdecl_slot1455
  %mem_ptr1456 = call i32* @oat_malloc ( i32 8 )
  %obj1457 = bitcast i32* %mem_ptr1456 to %B* 
  %new_obj1458 = call %B* @_B_ctor ( %B* %obj1457 )
  %vdecl_slot1459 = alloca %B*
  store %B* %new_obj1458, %B** %vdecl_slot1459
  %mem_ptr1460 = call i32* @oat_malloc ( i32 8 )
  %obj1461 = bitcast i32* %mem_ptr1460 to %C* 
  %new_obj1462 = call %C* @_C_ctor ( %C* %obj1461 )
  %vdecl_slot1463 = alloca %C*
  store %C* %new_obj1462, %C** %vdecl_slot1463
  %lhs_or_call1464 = load %A** %vdecl_slot1455
  %print1466 = getelementptr %_A_vtable* @_A_vtable298, i32 0, i32 3
  %print1465 = load void (%A*)** %print1466
  %cast_op1467 = bitcast %A %lhs_or_call1464 to %A* 
  call void %print1465( %A* %cast_op1467 )
  %lhs_or_call1468 = load %B** %vdecl_slot1459
  %print1470 = getelementptr %_B_vtable* @_B_vtable299, i32 0, i32 3
  %print1469 = load void (%B*)** %print1470
  %cast_op1471 = bitcast %B %lhs_or_call1468 to %B* 
  call void %print1469( %B* %cast_op1471 )
  %lhs_or_call1472 = load %B** %vdecl_slot1459
  %f1474 = getelementptr %_B_vtable* @_B_vtable299, i32 0, i32 2
  %f1473 = load %C* (%B*)** %f1474
  %cast_op1475 = bitcast %B %lhs_or_call1472 to %B* 
  %ret1476 = call %C* %f1473 ( %B* %cast_op1475 )
  %print1478 = getelementptr %_C_vtable* @_C_vtable300, i32 0, i32 2
  %print1477 = load void (%C*)** %print1478
  %cast_op1479 = bitcast %C %ret1476 to %C* 
  call void %print1477( %C* %cast_op1479 )
  %lhs_or_call1480 = load %C** %vdecl_slot1463
  %print1482 = getelementptr %_C_vtable* @_C_vtable300, i32 0, i32 2
  %print1481 = load void (%C*)** %print1482
  %cast_op1483 = bitcast %C %lhs_or_call1480 to %C* 
  call void %print1481( %C* %cast_op1483 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh337:
  call void @print_string( i8* @_const_str307 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh336:
  %cast_op1442 = bitcast %C* %_this1 to %Object* 
  %mem_ptr1443 = call i32* @oat_malloc ( i32 8 )
  %obj1444 = bitcast i32* %mem_ptr1443 to %C* 
  %new_obj1445 = call %Object* @_Object_ctor ( %C* %obj1444, %Object* %cast_op1442 )
  %_this1 = bitcast %Object* %new_obj1445 to %C 
  %_name1446 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str306, i8** %_name1446
  %this_vtable1447 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable300, %_C_vtable** %this_vtable1447
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh335:
  call void @print_string( i8* @_const_str305 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh334:
  %mem_ptr1439 = call i32* @oat_malloc ( i32 8 )
  %obj1440 = bitcast i32* %mem_ptr1439 to %C* 
  %new_obj1441 = call %C* @_C_ctor ( %C* %obj1440 )
  ret %C* %new_obj1441
}


define %B* @_B_ctor (%B* %_this1){
__fresh333:
  %cast_op1433 = bitcast %B* %_this1 to %A* 
  %mem_ptr1434 = call i32* @oat_malloc ( i32 8 )
  %obj1435 = bitcast i32* %mem_ptr1434 to %B* 
  %new_obj1436 = call %A* @_A_ctor ( %B* %obj1435, %A* %cast_op1433 )
  %_this1 = bitcast %A* %new_obj1436 to %B 
  %_name1437 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str304, i8** %_name1437
  %this_vtable1438 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable299, %_B_vtable** %this_vtable1438
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh332:
  call void @print_string( i8* @_const_str303 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh331:
  %mem_ptr1429 = call i32* @oat_malloc ( i32 8 )
  %obj1430 = bitcast i32* %mem_ptr1429 to %B* 
  %new_obj1431 = call %B* @_B_ctor ( %B* %obj1430 )
  %cast_op1432 = bitcast %B* %new_obj1431 to %Object* 
  ret %Object* %cast_op1432
}


define %A* @_A_ctor (%A* %_this1){
__fresh330:
  %cast_op1423 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1424 = call i32* @oat_malloc ( i32 8 )
  %obj1425 = bitcast i32* %mem_ptr1424 to %A* 
  %new_obj1426 = call %Object* @_Object_ctor ( %A* %obj1425, %Object* %cast_op1423 )
  %_this1 = bitcast %Object* %new_obj1426 to %A 
  %_name1427 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str302, i8** %_name1427
  %this_vtable1428 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable298, %_A_vtable** %this_vtable1428
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh329:
  %_name1421 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1422 = load i8** %_name1421
  ret i8* %lhs_or_call1422
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh328:
  %_name1419 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str301, i8** %_name1419
  %this_vtable1420 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable297, %_Object_vtable** %this_vtable1420
  ret %Object* %_this1
}


