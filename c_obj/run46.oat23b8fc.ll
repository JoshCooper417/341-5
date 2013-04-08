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
@_const_str297.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str297 = alias bitcast([ 2 x i8 ]* @_const_str297.str. to i8*)@_const_str296.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str296 = alias bitcast([ 2 x i8 ]* @_const_str296.str. to i8*)@_const_str295.str. = private unnamed_addr constant [ 2 x i8 ] c "S\00", align 4
@_const_str295 = alias bitcast([ 2 x i8 ]* @_const_str295.str. to i8*)@arr293 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by @arr293.init294
@_const_str292.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str292 = alias bitcast([ 7 x i8 ]* @_const_str292.str. to i8*)@_B_vtable291 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable288, i8* (%Object*)* @_Object_get_name, %A* (%B*)* @_B_f}, align 4
@_A_vtable290 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable288, i8* (%Object*)* @_Object_get_name, %A* (%A*)* @_A_g}, align 4
@_S_vtable289 = private constant %_S_vtable {%_Object_vtable* @_Object_vtable288, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%S*)* @_S_g, %S* (%S*)* @_S_f}, align 4
@_Object_vtable288 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh346:
  call void @arr293.init294(  )
  ret void
}


define i32 @program (i32 %argc1464, { i32, [ 0 x i8* ] }* %argv1462){
__fresh345:
  %argc_slot1465 = alloca i32
  store i32 %argc1464, i32* %argc_slot1465
  %argv_slot1463 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1462, { i32, [ 0 x i8* ] }** %argv_slot1463
  %mem_ptr1466 = call i32* @oat_malloc ( i32 8 )
  %obj1467 = bitcast i32* %mem_ptr1466 to %B* 
  %new_obj1468 = call %B* @_B_ctor ( %B* %obj1467 )
  %vdecl_slot1469 = alloca %B*
  store %B* %new_obj1468, %B** %vdecl_slot1469
  %lhs_or_call1470 = load %B** %vdecl_slot1469
  %vtable_ptr1471 = getelementptr %B* %lhs_or_call1470, i32 0
  %vtable1472 = load %_B_vtable** %vtable_ptr1471
  %f1474 = getelementptr %_B_vtable* %vtable1472, i32 0, i32 2
  %f1473 = load %A* (%B*)** %f1474
  %cast_op1475 = bitcast %B %lhs_or_call1470 to %B* 
  %ret1476 = call %A* %f1473 ( %B* %cast_op1475 )
  %s1477 = getelementptr %A* %ret1476, i32 0, i32 3
  %lhs_or_call1478 = load %S** %s1477
  %vtable_ptr1479 = getelementptr %S* %lhs_or_call1478, i32 0
  %vtable1480 = load %_S_vtable** %vtable_ptr1479
  %g1482 = getelementptr %_S_vtable* %vtable1480, i32 0, i32 2
  %g1481 = load { i32, [ 0 x i32 ] }* (%S*)** %g1482
  %cast_op1483 = bitcast %S %lhs_or_call1478 to %S* 
  %ret1484 = call { i32, [ 0 x i32 ] }* %g1481 ( %S* %cast_op1483 )
  %bound_ptr1486 = getelementptr { i32, [ 0 x i32 ] }* %ret1484, i32 0, i32 0
  %bound1487 = load i32* %bound_ptr1486
  call void @oat_array_bounds_check( i32 %bound1487, i32 1 )
  %elt1485 = getelementptr { i32, [ 0 x i32 ] }* %ret1484, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1485
  %lhs_or_call1488 = load %B** %vdecl_slot1469
  %vtable_ptr1489 = getelementptr %B* %lhs_or_call1488, i32 0
  %vtable1490 = load %_B_vtable** %vtable_ptr1489
  %f1492 = getelementptr %_B_vtable* %vtable1490, i32 0, i32 2
  %f1491 = load %A* (%B*)** %f1492
  %cast_op1493 = bitcast %B %lhs_or_call1488 to %B* 
  %ret1494 = call %A* %f1491 ( %B* %cast_op1493 )
  %i1495 = getelementptr %A* %ret1494, i32 0, i32 2
  %lhs_or_call1496 = load i32* %i1495
  %lhs_or_call1497 = load %B** %vdecl_slot1469
  %vtable_ptr1498 = getelementptr %B* %lhs_or_call1497, i32 0
  %vtable1499 = load %_B_vtable** %vtable_ptr1498
  %f1501 = getelementptr %_B_vtable* %vtable1499, i32 0, i32 2
  %f1500 = load %A* (%B*)** %f1501
  %cast_op1502 = bitcast %B %lhs_or_call1497 to %B* 
  %ret1503 = call %A* %f1500 ( %B* %cast_op1502 )
  %vtable_ptr1504 = getelementptr %A* %ret1503, i32 0
  %vtable1505 = load %_A_vtable** %vtable_ptr1504
  %g1507 = getelementptr %_A_vtable* %vtable1505, i32 0, i32 2
  %g1506 = load %A* (%A*)** %g1507
  %cast_op1508 = bitcast %A %ret1503 to %A* 
  %ret1509 = call %A* %g1506 ( %A* %cast_op1508 )
  %vtable_ptr1510 = getelementptr %A* %ret1509, i32 0
  %vtable1511 = load %_A_vtable** %vtable_ptr1510
  %g1513 = getelementptr %_A_vtable* %vtable1511, i32 0, i32 2
  %g1512 = load %A* (%A*)** %g1513
  %cast_op1514 = bitcast %A %ret1509 to %A* 
  %ret1515 = call %A* %g1512 ( %A* %cast_op1514 )
  %vtable_ptr1516 = getelementptr %A* %ret1515, i32 0
  %vtable1517 = load %_A_vtable** %vtable_ptr1516
  %g1519 = getelementptr %_A_vtable* %vtable1517, i32 0, i32 2
  %g1518 = load %A* (%A*)** %g1519
  %cast_op1520 = bitcast %A %ret1515 to %A* 
  %ret1521 = call %A* %g1518 ( %A* %cast_op1520 )
  %i1522 = getelementptr %A* %ret1521, i32 0, i32 2
  %lhs_or_call1523 = load i32* %i1522
  %bop1524 = add i32 %lhs_or_call1496, %lhs_or_call1523
  %lhs_or_call1525 = load %B** %vdecl_slot1469
  %vtable_ptr1526 = getelementptr %B* %lhs_or_call1525, i32 0
  %vtable1527 = load %_B_vtable** %vtable_ptr1526
  %f1529 = getelementptr %_B_vtable* %vtable1527, i32 0, i32 2
  %f1528 = load %A* (%B*)** %f1529
  %cast_op1530 = bitcast %B %lhs_or_call1525 to %B* 
  %ret1531 = call %A* %f1528 ( %B* %cast_op1530 )
  %vtable_ptr1532 = getelementptr %A* %ret1531, i32 0
  %vtable1533 = load %_A_vtable** %vtable_ptr1532
  %g1535 = getelementptr %_A_vtable* %vtable1533, i32 0, i32 2
  %g1534 = load %A* (%A*)** %g1535
  %cast_op1536 = bitcast %A %ret1531 to %A* 
  %ret1537 = call %A* %g1534 ( %A* %cast_op1536 )
  %vtable_ptr1538 = getelementptr %A* %ret1537, i32 0
  %vtable1539 = load %_A_vtable** %vtable_ptr1538
  %g1541 = getelementptr %_A_vtable* %vtable1539, i32 0, i32 2
  %g1540 = load %A* (%A*)** %g1541
  %cast_op1542 = bitcast %A %ret1537 to %A* 
  %ret1543 = call %A* %g1540 ( %A* %cast_op1542 )
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
  %i1586 = getelementptr %A* %ret1585, i32 0, i32 2
  %lhs_or_call1587 = load i32* %i1586
  %bop1588 = add i32 %bop1524, %lhs_or_call1587
  %lhs_or_call1589 = load %B** %vdecl_slot1469
  %vtable_ptr1590 = getelementptr %B* %lhs_or_call1589, i32 0
  %vtable1591 = load %_B_vtable** %vtable_ptr1590
  %f1593 = getelementptr %_B_vtable* %vtable1591, i32 0, i32 2
  %f1592 = load %A* (%B*)** %f1593
  %cast_op1594 = bitcast %B %lhs_or_call1589 to %B* 
  %ret1595 = call %A* %f1592 ( %B* %cast_op1594 )
  %s1596 = getelementptr %A* %ret1595, i32 0, i32 3
  %lhs_or_call1597 = load %S** %s1596
  %vtable_ptr1598 = getelementptr %S* %lhs_or_call1597, i32 0
  %vtable1599 = load %_S_vtable** %vtable_ptr1598
  %f1601 = getelementptr %_S_vtable* %vtable1599, i32 0, i32 3
  %f1600 = load %S* (%S*)** %f1601
  %cast_op1602 = bitcast %S %lhs_or_call1597 to %S* 
  %ret1603 = call %S* %f1600 ( %S* %cast_op1602 )
  %i1604 = getelementptr %S* %ret1603, i32 0, i32 2
  %lhs_or_call1605 = load i32* %i1604
  %bop1606 = add i32 %bop1588, %lhs_or_call1605
  %lhs_or_call1607 = load { i32, [ 0 x i32 ] }** @arr293
  %bound_ptr1609 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1607, i32 0, i32 0
  %bound1610 = load i32* %bound_ptr1609
  call void @oat_array_bounds_check( i32 %bound1610, i32 1 )
  %elt1608 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1607, i32 0, i32 1, i32 1
  %lhs_or_call1611 = load i32* %elt1608
  %bop1612 = add i32 %bop1606, %lhs_or_call1611
  %lhs_or_call1613 = load %B** %vdecl_slot1469
  %vtable_ptr1614 = getelementptr %B* %lhs_or_call1613, i32 0
  %vtable1615 = load %_B_vtable** %vtable_ptr1614
  %f1617 = getelementptr %_B_vtable* %vtable1615, i32 0, i32 2
  %f1616 = load %A* (%B*)** %f1617
  %cast_op1618 = bitcast %B %lhs_or_call1613 to %B* 
  %ret1619 = call %A* %f1616 ( %B* %cast_op1618 )
  %s1620 = getelementptr %A* %ret1619, i32 0, i32 3
  %lhs_or_call1621 = load %S** %s1620
  %vtable_ptr1622 = getelementptr %S* %lhs_or_call1621, i32 0
  %vtable1623 = load %_S_vtable** %vtable_ptr1622
  %g1625 = getelementptr %_S_vtable* %vtable1623, i32 0, i32 2
  %g1624 = load { i32, [ 0 x i32 ] }* (%S*)** %g1625
  %cast_op1626 = bitcast %S %lhs_or_call1621 to %S* 
  %ret1627 = call { i32, [ 0 x i32 ] }* %g1624 ( %S* %cast_op1626 )
  %bound_ptr1629 = getelementptr { i32, [ 0 x i32 ] }* %ret1627, i32 0, i32 0
  %bound1630 = load i32* %bound_ptr1629
  call void @oat_array_bounds_check( i32 %bound1630, i32 1 )
  %elt1628 = getelementptr { i32, [ 0 x i32 ] }* %ret1627, i32 0, i32 1, i32 1
  %lhs_or_call1631 = load i32* %elt1628
  %bop1632 = add i32 %bop1612, %lhs_or_call1631
  ret i32 %bop1632
}


define %A* @_B_f (%B* %_this1){
__fresh344:
  %mem_ptr1459 = call i32* @oat_malloc ( i32 16 )
  %obj1460 = bitcast i32* %mem_ptr1459 to %A* 
  %new_obj1461 = call %A* @_A_ctor ( %A* %obj1460 )
  ret %A* %new_obj1461
}


define %B* @_B_ctor (%B* %_this1){
__fresh343:
  %mem_ptr1454 = call i32* @oat_malloc ( i32 8 )
  %obj1455 = bitcast i32* %mem_ptr1454 to %Object* 
  %new_obj1456 = call %Object* @_Object_ctor ( %Object* %obj1455 )
  %_this1 = bitcast %Object* %new_obj1456 to %B 
  %_name1457 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str297, i8** %_name1457
  %this_vtable1458 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable291, %_B_vtable** %this_vtable1458
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh342:
  %mem_ptr1451 = call i32* @oat_malloc ( i32 16 )
  %obj1452 = bitcast i32* %mem_ptr1451 to %A* 
  %new_obj1453 = call %A* @_A_ctor ( %A* %obj1452 )
  ret %A* %new_obj1453
}


define %A* @_A_ctor (%A* %_this1){
__fresh341:
  %mem_ptr1442 = call i32* @oat_malloc ( i32 8 )
  %obj1443 = bitcast i32* %mem_ptr1442 to %Object* 
  %new_obj1444 = call %Object* @_Object_ctor ( %Object* %obj1443 )
  %_this1 = bitcast %Object* %new_obj1444 to %A 
  %_name1445 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str296, i8** %_name1445
  %s1446 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1447 = call i32* @oat_malloc ( i32 12 )
  %obj1448 = bitcast i32* %mem_ptr1447 to %S* 
  %new_obj1449 = call %S* @_S_ctor ( %S* %obj1448 )
  store %S* %new_obj1449, %S** %s1446
  %this_vtable1450 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable290, %_A_vtable** %this_vtable1450
  %i1441 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i1441
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh340:
  %mem_ptr1438 = call i32* @oat_malloc ( i32 12 )
  %obj1439 = bitcast i32* %mem_ptr1438 to %S* 
  %new_obj1440 = call %S* @_S_ctor ( %S* %obj1439 )
  ret %S* %new_obj1440
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh339:
  %lhs_or_call1437 = load { i32, [ 0 x i32 ] }** @arr293
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1437
}


define %S* @_S_ctor (%S* %_this1){
__fresh338:
  %mem_ptr1432 = call i32* @oat_malloc ( i32 8 )
  %obj1433 = bitcast i32* %mem_ptr1432 to %Object* 
  %new_obj1434 = call %Object* @_Object_ctor ( %Object* %obj1433 )
  %_this1 = bitcast %Object* %new_obj1434 to %S 
  %_name1435 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str295, i8** %_name1435
  %this_vtable1436 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable289, %_S_vtable** %this_vtable1436
  %i1431 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %i1431
  ret %S* %_this1
}


define void @arr293.init294 (){
__fresh337:
  %array_ptr1426 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1427 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1426 to { i32, [ 0 x i32 ] }* 
  %index_ptr1428 = getelementptr { i32, [ 0 x i32 ] }* %array1427, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1428
  %index_ptr1429 = getelementptr { i32, [ 0 x i32 ] }* %array1427, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1429
  %index_ptr1430 = getelementptr { i32, [ 0 x i32 ] }* %array1427, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1430
  store { i32, [ 0 x i32 ] }* %array1427, { i32, [ 0 x i32 ] }** @arr293
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh336:
  %_name1424 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1425 = load i8** %_name1424
  ret i8* %lhs_or_call1425
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh335:
  %_name1422 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str292, i8** %_name1422
  %this_vtable1423 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable288, %_Object_vtable** %this_vtable1423
  ret %Object* %_this1
}


