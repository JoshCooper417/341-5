%C = type { %_C_vtable*, i8*, %B* }
%_C_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8*, %A* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str142.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str142 = alias bitcast([ 2 x i8 ]* @_const_str142.str. to i8*)@_const_str141.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str141 = alias bitcast([ 2 x i8 ]* @_const_str141.str. to i8*)@_const_str140.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str140 = alias bitcast([ 2 x i8 ]* @_const_str140.str. to i8*)@_C_vtable139 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable136, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable138 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable136, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable137 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable136, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable136 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh300:
  ret void
}


define i32 @program (i32 %argc1507, { i32, [ 0 x i8* ] }* %argv1505){
__fresh299:
  %argc_slot1508 = alloca i32
  store i32 %argc1507, i32* %argc_slot1508
  %argv_slot1506 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1505, { i32, [ 0 x i8* ] }** %argv_slot1506
  %mem_ptr1509 = call i32* @oat_malloc ( i32 12 )
  %obj1510 = bitcast i32* %mem_ptr1509 to %C* 
  %new_obj1511 = call %C* @_C_ctor ( %C* %obj1510 )
  %vdecl_slot1512 = alloca %C*
  store %C* %new_obj1511, %C** %vdecl_slot1512
  %lhs_or_call1513 = load %C** %vdecl_slot1512
  %f1515 = getelementptr %_C_vtable* @_C_vtable139, i32 0, i32 2
  %f1514 = load void (%C*)** %f1515
  %cast_op1516 = bitcast %C %lhs_or_call1513 to %C* 
  call void %f1514( %C* %cast_op1516 )
  %lhs_or_call1517 = load %C** %vdecl_slot1512
  %b1518 = getelementptr %C* %lhs_or_call1517, i32 0, i32 2
  %lhs_or_call1519 = load %B** %b1518
  %f1521 = getelementptr %_B_vtable* @_B_vtable138, i32 0, i32 2
  %f1520 = load void (%B*)** %f1521
  %cast_op1522 = bitcast %B %lhs_or_call1519 to %B* 
  call void %f1520( %B* %cast_op1522 )
  %lhs_or_call1523 = load %C** %vdecl_slot1512
  %b1524 = getelementptr %C* %lhs_or_call1523, i32 0, i32 2
  %lhs_or_call1525 = load %B** %b1524
  %a1526 = getelementptr %B* %lhs_or_call1525, i32 0, i32 2
  %lhs_or_call1527 = load %A** %a1526
  %f1529 = getelementptr %_A_vtable* @_A_vtable137, i32 0, i32 2
  %f1528 = load void (%A*)** %f1529
  %cast_op1530 = bitcast %A %lhs_or_call1527 to %A* 
  call void %f1528( %A* %cast_op1530 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str142 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %lhs_or_call1492 = load %C* %_this1
  %cast_op1493 = bitcast %C %lhs_or_call1492 to %Object* 
  %mem_ptr1494 = call i32* @oat_malloc ( i32 8 )
  %obj1495 = bitcast i32* %mem_ptr1494 to %Object* 
  %new_obj1496 = call %Object* @_Object_ctor ( %Object* %obj1495, %Object* %cast_op1493 )
  %_name1497 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call1498 = load %C* %_this1
  %cast_op1499 = bitcast %C %lhs_or_call1498 to i8* 
  store i8* %cast_op1499, i8** %_name1497
  %b1500 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1501 = call i32* @oat_malloc ( i32 12 )
  %obj1502 = bitcast i32* %mem_ptr1501 to %B* 
  %new_obj1503 = call %B* @_B_ctor ( %B* %obj1502 )
  store %B* %new_obj1503, %B** %b1500
  %this_vtable1504 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable1504
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str141 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %lhs_or_call1479 = load %B* %_this1
  %cast_op1480 = bitcast %B %lhs_or_call1479 to %Object* 
  %mem_ptr1481 = call i32* @oat_malloc ( i32 8 )
  %obj1482 = bitcast i32* %mem_ptr1481 to %Object* 
  %new_obj1483 = call %Object* @_Object_ctor ( %Object* %obj1482, %Object* %cast_op1480 )
  %_name1484 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call1485 = load %B* %_this1
  %cast_op1486 = bitcast %B %lhs_or_call1485 to i8* 
  store i8* %cast_op1486, i8** %_name1484
  %a1487 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1488 = call i32* @oat_malloc ( i32 8 )
  %obj1489 = bitcast i32* %mem_ptr1488 to %A* 
  %new_obj1490 = call %A* @_A_ctor ( %A* %obj1489 )
  store %A* %new_obj1490, %A** %a1487
  %this_vtable1491 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable1491
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str140 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %lhs_or_call1470 = load %A* %_this1
  %cast_op1471 = bitcast %A %lhs_or_call1470 to %Object* 
  %mem_ptr1472 = call i32* @oat_malloc ( i32 8 )
  %obj1473 = bitcast i32* %mem_ptr1472 to %Object* 
  %new_obj1474 = call %Object* @_Object_ctor ( %Object* %obj1473, %Object* %cast_op1471 )
  %_name1475 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call1476 = load %A* %_this1
  %cast_op1477 = bitcast %A %lhs_or_call1476 to i8* 
  store i8* %cast_op1477, i8** %_name1475
  %this_vtable1478 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable1478
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1468 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1469 = load i8** %_name1468
  ret i8* %lhs_or_call1469
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1464 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1465 = load %Object* %_this1
  %cast_op1466 = bitcast %Object %lhs_or_call1465 to i8* 
  store i8* %cast_op1466, i8** %_name1464
  %this_vtable1467 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1467
  ret %Object* %_this1
}


