%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)*, %A* (%B*)* }
%A = type { %_A_vtable*, i8*, i32, %S* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, %A* (%A*)* }
%S = type { %_S_vtable*, i8*, i32 }
%_S_vtable = type { %_Object_vtable*, i8* (%Object*)*, { i32, [ 0 x i32 ] }* (%S*)*, %S* (%S*)* }
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
@_const_str308.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str308 = alias bitcast([ 2 x i8 ]* @_const_str308.str. to i8*)@_const_str307.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str307 = alias bitcast([ 2 x i8 ]* @_const_str307.str. to i8*)@_const_str306.str. = private unnamed_addr constant [ 2 x i8 ] c "S\00", align 4
@_const_str306 = alias bitcast([ 2 x i8 ]* @_const_str306.str. to i8*)@arr304 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by @arr304.init305
@_const_str303.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str303 = alias bitcast([ 7 x i8 ]* @_const_str303.str. to i8*)@_B_vtable302 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable299, i8* (%Object*)* @_Object_get_name, %A* (%B*)* @_B_f}, align 4
@_A_vtable301 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable299, i8* (%Object*)* @_Object_get_name, %A* (%A*)* @_A_g}, align 4
@_S_vtable300 = private constant %_S_vtable {%_Object_vtable* @_Object_vtable299, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%S*)* @_S_g, %S* (%S*)* @_S_f}, align 4
@_Object_vtable299 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh346:
  call void @arr304.init305(  )
  ret void
}


define i32 @program (i32 %argc1512, { i32, [ 0 x i8* ] }* %argv1510){
__fresh345:
  %argc_slot1513 = alloca i32
  store i32 %argc1512, i32* %argc_slot1513
  %argv_slot1511 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1510, { i32, [ 0 x i8* ] }** %argv_slot1511
  %mem_ptr1514 = call i32* @oat_malloc ( i32 8 )
  %obj1515 = bitcast i32* %mem_ptr1514 to %B* 
  %new_obj1516 = call %B* @_B_ctor ( %B* %obj1515 )
  %vdecl_slot1517 = alloca %B*
  store %B* %new_obj1516, %B** %vdecl_slot1517
  %lhs_or_call1518 = load %B** %vdecl_slot1517
  %f1520 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1519 = load %A* (%B*)** %f1520
  %cast_op1521 = bitcast %B %lhs_or_call1518 to %B* 
  %ret1522 = call %A* %f1519 ( %B* %cast_op1521 )
  %s1523 = getelementptr %A* %ret1522, i32 0, i32 3
  %lhs_or_call1524 = load %S** %s1523
  %g1526 = getelementptr %_S_vtable* @_S_vtable300, i32 0, i32 2
  %g1525 = load { i32, [ 0 x i32 ] }* (%S*)** %g1526
  %cast_op1527 = bitcast %S %lhs_or_call1524 to %S* 
  %ret1528 = call { i32, [ 0 x i32 ] }* %g1525 ( %S* %cast_op1527 )
  %bound_ptr1530 = getelementptr { i32, [ 0 x i32 ] }* %ret1528, i32 0, i32 0
  %bound1531 = load i32* %bound_ptr1530
  call void @oat_array_bounds_check( i32 %bound1531, i32 1 )
  %elt1529 = getelementptr { i32, [ 0 x i32 ] }* %ret1528, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1529
  %lhs_or_call1532 = load %B** %vdecl_slot1517
  %f1534 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1533 = load %A* (%B*)** %f1534
  %cast_op1535 = bitcast %B %lhs_or_call1532 to %B* 
  %ret1536 = call %A* %f1533 ( %B* %cast_op1535 )
  %i1537 = getelementptr %A* %ret1536, i32 0, i32 2
  %lhs_or_call1538 = load i32* %i1537
  %lhs_or_call1539 = load %B** %vdecl_slot1517
  %f1541 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1540 = load %A* (%B*)** %f1541
  %cast_op1542 = bitcast %B %lhs_or_call1539 to %B* 
  %ret1543 = call %A* %f1540 ( %B* %cast_op1542 )
  %g1545 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1544 = load %A* (%A*)** %g1545
  %cast_op1546 = bitcast %A %ret1543 to %A* 
  %ret1547 = call %A* %g1544 ( %A* %cast_op1546 )
  %g1549 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1548 = load %A* (%A*)** %g1549
  %cast_op1550 = bitcast %A %ret1547 to %A* 
  %ret1551 = call %A* %g1548 ( %A* %cast_op1550 )
  %g1553 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1552 = load %A* (%A*)** %g1553
  %cast_op1554 = bitcast %A %ret1551 to %A* 
  %ret1555 = call %A* %g1552 ( %A* %cast_op1554 )
  %i1556 = getelementptr %A* %ret1555, i32 0, i32 2
  %lhs_or_call1557 = load i32* %i1556
  %bop1558 = add i32 %lhs_or_call1538, %lhs_or_call1557
  %lhs_or_call1559 = load %B** %vdecl_slot1517
  %f1561 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1560 = load %A* (%B*)** %f1561
  %cast_op1562 = bitcast %B %lhs_or_call1559 to %B* 
  %ret1563 = call %A* %f1560 ( %B* %cast_op1562 )
  %g1565 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1564 = load %A* (%A*)** %g1565
  %cast_op1566 = bitcast %A %ret1563 to %A* 
  %ret1567 = call %A* %g1564 ( %A* %cast_op1566 )
  %g1569 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1568 = load %A* (%A*)** %g1569
  %cast_op1570 = bitcast %A %ret1567 to %A* 
  %ret1571 = call %A* %g1568 ( %A* %cast_op1570 )
  %g1573 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1572 = load %A* (%A*)** %g1573
  %cast_op1574 = bitcast %A %ret1571 to %A* 
  %ret1575 = call %A* %g1572 ( %A* %cast_op1574 )
  %g1577 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1576 = load %A* (%A*)** %g1577
  %cast_op1578 = bitcast %A %ret1575 to %A* 
  %ret1579 = call %A* %g1576 ( %A* %cast_op1578 )
  %g1581 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1580 = load %A* (%A*)** %g1581
  %cast_op1582 = bitcast %A %ret1579 to %A* 
  %ret1583 = call %A* %g1580 ( %A* %cast_op1582 )
  %g1585 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1584 = load %A* (%A*)** %g1585
  %cast_op1586 = bitcast %A %ret1583 to %A* 
  %ret1587 = call %A* %g1584 ( %A* %cast_op1586 )
  %g1589 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1588 = load %A* (%A*)** %g1589
  %cast_op1590 = bitcast %A %ret1587 to %A* 
  %ret1591 = call %A* %g1588 ( %A* %cast_op1590 )
  %g1593 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1592 = load %A* (%A*)** %g1593
  %cast_op1594 = bitcast %A %ret1591 to %A* 
  %ret1595 = call %A* %g1592 ( %A* %cast_op1594 )
  %g1597 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1596 = load %A* (%A*)** %g1597
  %cast_op1598 = bitcast %A %ret1595 to %A* 
  %ret1599 = call %A* %g1596 ( %A* %cast_op1598 )
  %i1600 = getelementptr %A* %ret1599, i32 0, i32 2
  %lhs_or_call1601 = load i32* %i1600
  %bop1602 = add i32 %bop1558, %lhs_or_call1601
  %lhs_or_call1603 = load %B** %vdecl_slot1517
  %f1605 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1604 = load %A* (%B*)** %f1605
  %cast_op1606 = bitcast %B %lhs_or_call1603 to %B* 
  %ret1607 = call %A* %f1604 ( %B* %cast_op1606 )
  %s1608 = getelementptr %A* %ret1607, i32 0, i32 3
  %lhs_or_call1609 = load %S** %s1608
  %f1611 = getelementptr %_S_vtable* @_S_vtable300, i32 0, i32 3
  %f1610 = load %S* (%S*)** %f1611
  %cast_op1612 = bitcast %S %lhs_or_call1609 to %S* 
  %ret1613 = call %S* %f1610 ( %S* %cast_op1612 )
  %i1614 = getelementptr %S* %ret1613, i32 0, i32 2
  %lhs_or_call1615 = load i32* %i1614
  %bop1616 = add i32 %bop1602, %lhs_or_call1615
  %lhs_or_call1617 = load { i32, [ 0 x i32 ] }** @arr304
  %bound_ptr1619 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1617, i32 0, i32 0
  %bound1620 = load i32* %bound_ptr1619
  call void @oat_array_bounds_check( i32 %bound1620, i32 1 )
  %elt1618 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1617, i32 0, i32 1, i32 1
  %lhs_or_call1621 = load i32* %elt1618
  %bop1622 = add i32 %bop1616, %lhs_or_call1621
  %lhs_or_call1623 = load %B** %vdecl_slot1517
  %f1625 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1624 = load %A* (%B*)** %f1625
  %cast_op1626 = bitcast %B %lhs_or_call1623 to %B* 
  %ret1627 = call %A* %f1624 ( %B* %cast_op1626 )
  %s1628 = getelementptr %A* %ret1627, i32 0, i32 3
  %lhs_or_call1629 = load %S** %s1628
  %g1631 = getelementptr %_S_vtable* @_S_vtable300, i32 0, i32 2
  %g1630 = load { i32, [ 0 x i32 ] }* (%S*)** %g1631
  %cast_op1632 = bitcast %S %lhs_or_call1629 to %S* 
  %ret1633 = call { i32, [ 0 x i32 ] }* %g1630 ( %S* %cast_op1632 )
  %bound_ptr1635 = getelementptr { i32, [ 0 x i32 ] }* %ret1633, i32 0, i32 0
  %bound1636 = load i32* %bound_ptr1635
  call void @oat_array_bounds_check( i32 %bound1636, i32 1 )
  %elt1634 = getelementptr { i32, [ 0 x i32 ] }* %ret1633, i32 0, i32 1, i32 1
  %lhs_or_call1637 = load i32* %elt1634
  %bop1638 = add i32 %bop1622, %lhs_or_call1637
  ret i32 %bop1638
}


define %A* @_B_f (%B* %_this1){
__fresh344:
  %mem_ptr1507 = call i32* @oat_malloc ( i32 16 )
  %obj1508 = bitcast i32* %mem_ptr1507 to %A* 
  %new_obj1509 = call %A* @_A_ctor ( %A* %obj1508 )
  ret %A* %new_obj1509
}


define %B* @_B_ctor (%B* %_this1){
__fresh343:
  %cast_op1501 = bitcast %B* %_this1 to %Object* 
  %mem_ptr1502 = call i32* @oat_malloc ( i32 8 )
  %obj1503 = bitcast i32* %mem_ptr1502 to %B* 
  %new_obj1504 = call %Object* @_Object_ctor ( %B* %obj1503, %Object* %cast_op1501 )
  %_this1 = bitcast %Object* %new_obj1504 to %B 
  %_name1505 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str308, i8** %_name1505
  %this_vtable1506 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable302, %_B_vtable** %this_vtable1506
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh342:
  %mem_ptr1498 = call i32* @oat_malloc ( i32 16 )
  %obj1499 = bitcast i32* %mem_ptr1498 to %A* 
  %new_obj1500 = call %A* @_A_ctor ( %A* %obj1499 )
  ret %A* %new_obj1500
}


define %A* @_A_ctor (%A* %_this1){
__fresh341:
  %cast_op1488 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1489 = call i32* @oat_malloc ( i32 16 )
  %obj1490 = bitcast i32* %mem_ptr1489 to %A* 
  %new_obj1491 = call %Object* @_Object_ctor ( %A* %obj1490, %Object* %cast_op1488 )
  %_this1 = bitcast %Object* %new_obj1491 to %A 
  %_name1492 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str307, i8** %_name1492
  %s1493 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1494 = call i32* @oat_malloc ( i32 12 )
  %obj1495 = bitcast i32* %mem_ptr1494 to %S* 
  %new_obj1496 = call %S* @_S_ctor ( %S* %obj1495 )
  store %S* %new_obj1496, %S** %s1493
  %this_vtable1497 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable301, %_A_vtable** %this_vtable1497
  %i1487 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i1487
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh340:
  %mem_ptr1484 = call i32* @oat_malloc ( i32 12 )
  %obj1485 = bitcast i32* %mem_ptr1484 to %S* 
  %new_obj1486 = call %S* @_S_ctor ( %S* %obj1485 )
  ret %S* %new_obj1486
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh339:
  %lhs_or_call1483 = load { i32, [ 0 x i32 ] }** @arr304
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1483
}


define %S* @_S_ctor (%S* %_this1){
__fresh338:
  %cast_op1477 = bitcast %S* %_this1 to %Object* 
  %mem_ptr1478 = call i32* @oat_malloc ( i32 12 )
  %obj1479 = bitcast i32* %mem_ptr1478 to %S* 
  %new_obj1480 = call %Object* @_Object_ctor ( %S* %obj1479, %Object* %cast_op1477 )
  %_this1 = bitcast %Object* %new_obj1480 to %S 
  %_name1481 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str306, i8** %_name1481
  %this_vtable1482 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable300, %_S_vtable** %this_vtable1482
  %i1476 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %i1476
  ret %S* %_this1
}


define void @arr304.init305 (){
__fresh337:
  %array_ptr1471 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1472 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1471 to { i32, [ 0 x i32 ] }* 
  %index_ptr1473 = getelementptr { i32, [ 0 x i32 ] }* %array1472, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1473
  %index_ptr1474 = getelementptr { i32, [ 0 x i32 ] }* %array1472, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1474
  %index_ptr1475 = getelementptr { i32, [ 0 x i32 ] }* %array1472, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1475
  store { i32, [ 0 x i32 ] }* %array1472, { i32, [ 0 x i32 ] }** @arr304
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh336:
  %_name1469 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1470 = load i8** %_name1469
  ret i8* %lhs_or_call1470
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh335:
  %_name1467 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str303, i8** %_name1467
  %this_vtable1468 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable299, %_Object_vtable** %this_vtable1468
  ret %Object* %_this1
}


