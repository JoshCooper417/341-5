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


define i32 @program (i32 %argc1476, { i32, [ 0 x i8* ] }* %argv1474){
__fresh345:
  %argc_slot1477 = alloca i32
  store i32 %argc1476, i32* %argc_slot1477
  %argv_slot1475 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1474, { i32, [ 0 x i8* ] }** %argv_slot1475
  %mem_ptr1478 = call i32* @oat_malloc ( i32 8 )
  %obj1479 = bitcast i32* %mem_ptr1478 to %B* 
  %new_obj1480 = call %B* @_B_ctor ( %B* %obj1479 )
  %vdecl_slot1481 = alloca %B*
  store %B* %new_obj1480, %B** %vdecl_slot1481
  %lhs_or_call1482 = load %B** %vdecl_slot1481
  %vtable_ptr1483 = getelementptr %B* %lhs_or_call1482, i32 0
  %vtable1484 = load %_B_vtable** %vtable_ptr1483
  %f1486 = getelementptr %_B_vtable* %vtable1484, i32 0, i32 2
  %f1485 = load %A* (%B*)** %f1486
  %cast_op1487 = bitcast %B %lhs_or_call1482 to %B* 
  %ret1488 = call %A* %f1485 ( %B* %cast_op1487 )
  %s1489 = getelementptr %A* %ret1488, i32 0, i32 3
  %lhs_or_call1490 = load %S** %s1489
  %vtable_ptr1491 = getelementptr %S* %lhs_or_call1490, i32 0
  %vtable1492 = load %_S_vtable** %vtable_ptr1491
  %g1494 = getelementptr %_S_vtable* %vtable1492, i32 0, i32 2
  %g1493 = load { i32, [ 0 x i32 ] }* (%S*)** %g1494
  %cast_op1495 = bitcast %S %lhs_or_call1490 to %S* 
  %ret1496 = call { i32, [ 0 x i32 ] }* %g1493 ( %S* %cast_op1495 )
  %bound_ptr1498 = getelementptr { i32, [ 0 x i32 ] }* %ret1496, i32 0, i32 0
  %bound1499 = load i32* %bound_ptr1498
  call void @oat_array_bounds_check( i32 %bound1499, i32 1 )
  %elt1497 = getelementptr { i32, [ 0 x i32 ] }* %ret1496, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1497
  %lhs_or_call1500 = load %B** %vdecl_slot1481
  %vtable_ptr1501 = getelementptr %B* %lhs_or_call1500, i32 0
  %vtable1502 = load %_B_vtable** %vtable_ptr1501
  %f1504 = getelementptr %_B_vtable* %vtable1502, i32 0, i32 2
  %f1503 = load %A* (%B*)** %f1504
  %cast_op1505 = bitcast %B %lhs_or_call1500 to %B* 
  %ret1506 = call %A* %f1503 ( %B* %cast_op1505 )
  %i1507 = getelementptr %A* %ret1506, i32 0, i32 2
  %lhs_or_call1508 = load i32* %i1507
  %lhs_or_call1509 = load %B** %vdecl_slot1481
  %vtable_ptr1510 = getelementptr %B* %lhs_or_call1509, i32 0
  %vtable1511 = load %_B_vtable** %vtable_ptr1510
  %f1513 = getelementptr %_B_vtable* %vtable1511, i32 0, i32 2
  %f1512 = load %A* (%B*)** %f1513
  %cast_op1514 = bitcast %B %lhs_or_call1509 to %B* 
  %ret1515 = call %A* %f1512 ( %B* %cast_op1514 )
  %vtable_ptr1516 = getelementptr %A* %ret1515, i32 0
  %vtable1517 = load %_A_vtable** %vtable_ptr1516
  %g1519 = getelementptr %_A_vtable* %vtable1517, i32 0, i32 2
  %g1518 = load %A* (%A*)** %g1519
  %cast_op1520 = bitcast %A %ret1515 to %A* 
  %ret1521 = call %A* %g1518 ( %A* %cast_op1520 )
  %vtable_ptr1522 = getelementptr %A* %ret1521, i32 0
  %vtable1523 = load %_A_vtable** %vtable_ptr1522
  %g1525 = getelementptr %_A_vtable* %vtable1523, i32 0, i32 2
  %g1524 = load %A* (%A*)** %g1525
  %cast_op1526 = bitcast %A %ret1521 to %A* 
  %ret1527 = call %A* %g1524 ( %A* %cast_op1526 )
  %vtable_ptr1528 = getelementptr %A* %ret1527, i32 0
  %vtable1529 = load %_A_vtable** %vtable_ptr1528
  %g1531 = getelementptr %_A_vtable* %vtable1529, i32 0, i32 2
  %g1530 = load %A* (%A*)** %g1531
  %cast_op1532 = bitcast %A %ret1527 to %A* 
  %ret1533 = call %A* %g1530 ( %A* %cast_op1532 )
  %i1534 = getelementptr %A* %ret1533, i32 0, i32 2
  %lhs_or_call1535 = load i32* %i1534
  %bop1536 = add i32 %lhs_or_call1508, %lhs_or_call1535
  %lhs_or_call1537 = load %B** %vdecl_slot1481
  %vtable_ptr1538 = getelementptr %B* %lhs_or_call1537, i32 0
  %vtable1539 = load %_B_vtable** %vtable_ptr1538
  %f1541 = getelementptr %_B_vtable* %vtable1539, i32 0, i32 2
  %f1540 = load %A* (%B*)** %f1541
  %cast_op1542 = bitcast %B %lhs_or_call1537 to %B* 
  %ret1543 = call %A* %f1540 ( %B* %cast_op1542 )
  %vtable_ptr1544 = getelementptr %A* %ret1543, i32 0
  %vtable1545 = load %_A_vtable** %vtable_ptr1544
  %g1547 = getelementptr %_A_vtable* %vtable1545, i32 0, i32 2
  %g1546 = load %A* (%A*)** %g1547
  %cast_op1548 = bitcast %A %ret1543 to %A* 
  %ret1549 = call %A* %g1546 ( %A* %cast_op1548 )
  %vtable_ptr1550 = getelementptr %A* %ret1549, i32 0
  %vtable1551 = load %_A_vtable** %vtable_ptr1550
  %g1553 = getelementptr %_A_vtable* %vtable1551, i32 0, i32 2
  %g1552 = load %A* (%A*)** %g1553
  %cast_op1554 = bitcast %A %ret1549 to %A* 
  %ret1555 = call %A* %g1552 ( %A* %cast_op1554 )
  %vtable_ptr1556 = getelementptr %A* %ret1555, i32 0
  %vtable1557 = load %_A_vtable** %vtable_ptr1556
  %g1559 = getelementptr %_A_vtable* %vtable1557, i32 0, i32 2
  %g1558 = load %A* (%A*)** %g1559
  %cast_op1560 = bitcast %A %ret1555 to %A* 
  %ret1561 = call %A* %g1558 ( %A* %cast_op1560 )
  %vtable_ptr1562 = getelementptr %A* %ret1561, i32 0
  %vtable1563 = load %_A_vtable** %vtable_ptr1562
  %g1565 = getelementptr %_A_vtable* %vtable1563, i32 0, i32 2
  %g1564 = load %A* (%A*)** %g1565
  %cast_op1566 = bitcast %A %ret1561 to %A* 
  %ret1567 = call %A* %g1564 ( %A* %cast_op1566 )
  %vtable_ptr1568 = getelementptr %A* %ret1567, i32 0
  %vtable1569 = load %_A_vtable** %vtable_ptr1568
  %g1571 = getelementptr %_A_vtable* %vtable1569, i32 0, i32 2
  %g1570 = load %A* (%A*)** %g1571
  %cast_op1572 = bitcast %A %ret1567 to %A* 
  %ret1573 = call %A* %g1570 ( %A* %cast_op1572 )
  %vtable_ptr1574 = getelementptr %A* %ret1573, i32 0
  %vtable1575 = load %_A_vtable** %vtable_ptr1574
  %g1577 = getelementptr %_A_vtable* %vtable1575, i32 0, i32 2
  %g1576 = load %A* (%A*)** %g1577
  %cast_op1578 = bitcast %A %ret1573 to %A* 
  %ret1579 = call %A* %g1576 ( %A* %cast_op1578 )
  %vtable_ptr1580 = getelementptr %A* %ret1579, i32 0
  %vtable1581 = load %_A_vtable** %vtable_ptr1580
  %g1583 = getelementptr %_A_vtable* %vtable1581, i32 0, i32 2
  %g1582 = load %A* (%A*)** %g1583
  %cast_op1584 = bitcast %A %ret1579 to %A* 
  %ret1585 = call %A* %g1582 ( %A* %cast_op1584 )
  %vtable_ptr1586 = getelementptr %A* %ret1585, i32 0
  %vtable1587 = load %_A_vtable** %vtable_ptr1586
  %g1589 = getelementptr %_A_vtable* %vtable1587, i32 0, i32 2
  %g1588 = load %A* (%A*)** %g1589
  %cast_op1590 = bitcast %A %ret1585 to %A* 
  %ret1591 = call %A* %g1588 ( %A* %cast_op1590 )
  %vtable_ptr1592 = getelementptr %A* %ret1591, i32 0
  %vtable1593 = load %_A_vtable** %vtable_ptr1592
  %g1595 = getelementptr %_A_vtable* %vtable1593, i32 0, i32 2
  %g1594 = load %A* (%A*)** %g1595
  %cast_op1596 = bitcast %A %ret1591 to %A* 
  %ret1597 = call %A* %g1594 ( %A* %cast_op1596 )
  %i1598 = getelementptr %A* %ret1597, i32 0, i32 2
  %lhs_or_call1599 = load i32* %i1598
  %bop1600 = add i32 %bop1536, %lhs_or_call1599
  %lhs_or_call1601 = load %B** %vdecl_slot1481
  %vtable_ptr1602 = getelementptr %B* %lhs_or_call1601, i32 0
  %vtable1603 = load %_B_vtable** %vtable_ptr1602
  %f1605 = getelementptr %_B_vtable* %vtable1603, i32 0, i32 2
  %f1604 = load %A* (%B*)** %f1605
  %cast_op1606 = bitcast %B %lhs_or_call1601 to %B* 
  %ret1607 = call %A* %f1604 ( %B* %cast_op1606 )
  %s1608 = getelementptr %A* %ret1607, i32 0, i32 3
  %lhs_or_call1609 = load %S** %s1608
  %vtable_ptr1610 = getelementptr %S* %lhs_or_call1609, i32 0
  %vtable1611 = load %_S_vtable** %vtable_ptr1610
  %f1613 = getelementptr %_S_vtable* %vtable1611, i32 0, i32 3
  %f1612 = load %S* (%S*)** %f1613
  %cast_op1614 = bitcast %S %lhs_or_call1609 to %S* 
  %ret1615 = call %S* %f1612 ( %S* %cast_op1614 )
  %i1616 = getelementptr %S* %ret1615, i32 0, i32 2
  %lhs_or_call1617 = load i32* %i1616
  %bop1618 = add i32 %bop1600, %lhs_or_call1617
  %lhs_or_call1619 = load { i32, [ 0 x i32 ] }** @arr304
  %bound_ptr1621 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1619, i32 0, i32 0
  %bound1622 = load i32* %bound_ptr1621
  call void @oat_array_bounds_check( i32 %bound1622, i32 1 )
  %elt1620 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1619, i32 0, i32 1, i32 1
  %lhs_or_call1623 = load i32* %elt1620
  %bop1624 = add i32 %bop1618, %lhs_or_call1623
  %lhs_or_call1625 = load %B** %vdecl_slot1481
  %vtable_ptr1626 = getelementptr %B* %lhs_or_call1625, i32 0
  %vtable1627 = load %_B_vtable** %vtable_ptr1626
  %f1629 = getelementptr %_B_vtable* %vtable1627, i32 0, i32 2
  %f1628 = load %A* (%B*)** %f1629
  %cast_op1630 = bitcast %B %lhs_or_call1625 to %B* 
  %ret1631 = call %A* %f1628 ( %B* %cast_op1630 )
  %s1632 = getelementptr %A* %ret1631, i32 0, i32 3
  %lhs_or_call1633 = load %S** %s1632
  %vtable_ptr1634 = getelementptr %S* %lhs_or_call1633, i32 0
  %vtable1635 = load %_S_vtable** %vtable_ptr1634
  %g1637 = getelementptr %_S_vtable* %vtable1635, i32 0, i32 2
  %g1636 = load { i32, [ 0 x i32 ] }* (%S*)** %g1637
  %cast_op1638 = bitcast %S %lhs_or_call1633 to %S* 
  %ret1639 = call { i32, [ 0 x i32 ] }* %g1636 ( %S* %cast_op1638 )
  %bound_ptr1641 = getelementptr { i32, [ 0 x i32 ] }* %ret1639, i32 0, i32 0
  %bound1642 = load i32* %bound_ptr1641
  call void @oat_array_bounds_check( i32 %bound1642, i32 1 )
  %elt1640 = getelementptr { i32, [ 0 x i32 ] }* %ret1639, i32 0, i32 1, i32 1
  %lhs_or_call1643 = load i32* %elt1640
  %bop1644 = add i32 %bop1624, %lhs_or_call1643
  ret i32 %bop1644
}


define %A* @_B_f (%B* %_this1){
__fresh344:
  %mem_ptr1471 = call i32* @oat_malloc ( i32 16 )
  %obj1472 = bitcast i32* %mem_ptr1471 to %A* 
  %new_obj1473 = call %A* @_A_ctor ( %A* %obj1472 )
  ret %A* %new_obj1473
}


define %B* @_B_ctor (%B* %_this1){
__fresh343:
  %mem_ptr1466 = call i32* @oat_malloc ( i32 8 )
  %obj1467 = bitcast i32* %mem_ptr1466 to %Object* 
  %new_obj1468 = call %Object* @_Object_ctor ( %Object* %obj1467 )
  %_this1 = bitcast %Object* %new_obj1468 to %B 
  %_name1469 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str308, i8** %_name1469
  %this_vtable1470 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable302, %_B_vtable** %this_vtable1470
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh342:
  %mem_ptr1463 = call i32* @oat_malloc ( i32 16 )
  %obj1464 = bitcast i32* %mem_ptr1463 to %A* 
  %new_obj1465 = call %A* @_A_ctor ( %A* %obj1464 )
  ret %A* %new_obj1465
}


define %A* @_A_ctor (%A* %_this1){
__fresh341:
  %mem_ptr1454 = call i32* @oat_malloc ( i32 8 )
  %obj1455 = bitcast i32* %mem_ptr1454 to %Object* 
  %new_obj1456 = call %Object* @_Object_ctor ( %Object* %obj1455 )
  %_this1 = bitcast %Object* %new_obj1456 to %A 
  %_name1457 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str307, i8** %_name1457
  %s1458 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1459 = call i32* @oat_malloc ( i32 12 )
  %obj1460 = bitcast i32* %mem_ptr1459 to %S* 
  %new_obj1461 = call %S* @_S_ctor ( %S* %obj1460 )
  store %S* %new_obj1461, %S** %s1458
  %this_vtable1462 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable301, %_A_vtable** %this_vtable1462
  %i1453 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i1453
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh340:
  %mem_ptr1450 = call i32* @oat_malloc ( i32 12 )
  %obj1451 = bitcast i32* %mem_ptr1450 to %S* 
  %new_obj1452 = call %S* @_S_ctor ( %S* %obj1451 )
  ret %S* %new_obj1452
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh339:
  %lhs_or_call1449 = load { i32, [ 0 x i32 ] }** @arr304
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1449
}


define %S* @_S_ctor (%S* %_this1){
__fresh338:
  %mem_ptr1444 = call i32* @oat_malloc ( i32 8 )
  %obj1445 = bitcast i32* %mem_ptr1444 to %Object* 
  %new_obj1446 = call %Object* @_Object_ctor ( %Object* %obj1445 )
  %_this1 = bitcast %Object* %new_obj1446 to %S 
  %_name1447 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str306, i8** %_name1447
  %this_vtable1448 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable300, %_S_vtable** %this_vtable1448
  %i1443 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %i1443
  ret %S* %_this1
}


define void @arr304.init305 (){
__fresh337:
  %array_ptr1438 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1439 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1438 to { i32, [ 0 x i32 ] }* 
  %index_ptr1440 = getelementptr { i32, [ 0 x i32 ] }* %array1439, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1440
  %index_ptr1441 = getelementptr { i32, [ 0 x i32 ] }* %array1439, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1441
  %index_ptr1442 = getelementptr { i32, [ 0 x i32 ] }* %array1439, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1442
  store { i32, [ 0 x i32 ] }* %array1439, { i32, [ 0 x i32 ] }** @arr304
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh336:
  %_name1436 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1437 = load i8** %_name1436
  ret i8* %lhs_or_call1437
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh335:
  %_name1434 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str303, i8** %_name1434
  %this_vtable1435 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable299, %_Object_vtable** %this_vtable1435
  ret %Object* %_this1
}


