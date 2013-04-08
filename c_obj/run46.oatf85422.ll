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


define i32 @program (i32 %argc1457, { i32, [ 0 x i8* ] }* %argv1455){
__fresh345:
  %argc_slot1458 = alloca i32
  store i32 %argc1457, i32* %argc_slot1458
  %argv_slot1456 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1455, { i32, [ 0 x i8* ] }** %argv_slot1456
  %mem_ptr1459 = call i32* @oat_malloc ( i32 8 )
  %obj1460 = bitcast i32* %mem_ptr1459 to %B* 
  %new_obj1461 = call %B* @_B_ctor ( %B* %obj1460 )
  %vdecl_slot1462 = alloca %B*
  store %B* %new_obj1461, %B** %vdecl_slot1462
  %lhs_or_call1463 = load %B** %vdecl_slot1462
  %vtable_ptr1464 = getelementptr %B* %lhs_or_call1463, i32 0
  %vtable1465 = load %_B_vtable** %vtable_ptr1464
  %f1467 = getelementptr %_B_vtable* %vtable1465, i32 0, i32 2
  %f1466 = load %A* (%B*)** %f1467
  %cast_op1468 = bitcast %B %lhs_or_call1463 to %B* 
  %ret1469 = call %A* %f1466 ( %B* %cast_op1468 )
  %s1470 = getelementptr %A* %ret1469, i32 0, i32 3
  %lhs_or_call1471 = load %S** %s1470
  %vtable_ptr1472 = getelementptr %S* %lhs_or_call1471, i32 0
  %vtable1473 = load %_S_vtable** %vtable_ptr1472
  %g1475 = getelementptr %_S_vtable* %vtable1473, i32 0, i32 2
  %g1474 = load { i32, [ 0 x i32 ] }* (%S*)** %g1475
  %cast_op1476 = bitcast %S %lhs_or_call1471 to %S* 
  %ret1477 = call { i32, [ 0 x i32 ] }* %g1474 ( %S* %cast_op1476 )
  %bound_ptr1479 = getelementptr { i32, [ 0 x i32 ] }* %ret1477, i32 0, i32 0
  %bound1480 = load i32* %bound_ptr1479
  call void @oat_array_bounds_check( i32 %bound1480, i32 1 )
  %elt1478 = getelementptr { i32, [ 0 x i32 ] }* %ret1477, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1478
  %lhs_or_call1481 = load %B** %vdecl_slot1462
  %vtable_ptr1482 = getelementptr %B* %lhs_or_call1481, i32 0
  %vtable1483 = load %_B_vtable** %vtable_ptr1482
  %f1485 = getelementptr %_B_vtable* %vtable1483, i32 0, i32 2
  %f1484 = load %A* (%B*)** %f1485
  %cast_op1486 = bitcast %B %lhs_or_call1481 to %B* 
  %ret1487 = call %A* %f1484 ( %B* %cast_op1486 )
  %i1488 = getelementptr %A* %ret1487, i32 0, i32 2
  %lhs_or_call1489 = load i32* %i1488
  %lhs_or_call1490 = load %B** %vdecl_slot1462
  %vtable_ptr1491 = getelementptr %B* %lhs_or_call1490, i32 0
  %vtable1492 = load %_B_vtable** %vtable_ptr1491
  %f1494 = getelementptr %_B_vtable* %vtable1492, i32 0, i32 2
  %f1493 = load %A* (%B*)** %f1494
  %cast_op1495 = bitcast %B %lhs_or_call1490 to %B* 
  %ret1496 = call %A* %f1493 ( %B* %cast_op1495 )
  %vtable_ptr1497 = getelementptr %A* %ret1496, i32 0
  %vtable1498 = load %_A_vtable** %vtable_ptr1497
  %g1500 = getelementptr %_A_vtable* %vtable1498, i32 0, i32 2
  %g1499 = load %A* (%A*)** %g1500
  %cast_op1501 = bitcast %A %ret1496 to %A* 
  %ret1502 = call %A* %g1499 ( %A* %cast_op1501 )
  %vtable_ptr1503 = getelementptr %A* %ret1502, i32 0
  %vtable1504 = load %_A_vtable** %vtable_ptr1503
  %g1506 = getelementptr %_A_vtable* %vtable1504, i32 0, i32 2
  %g1505 = load %A* (%A*)** %g1506
  %cast_op1507 = bitcast %A %ret1502 to %A* 
  %ret1508 = call %A* %g1505 ( %A* %cast_op1507 )
  %vtable_ptr1509 = getelementptr %A* %ret1508, i32 0
  %vtable1510 = load %_A_vtable** %vtable_ptr1509
  %g1512 = getelementptr %_A_vtable* %vtable1510, i32 0, i32 2
  %g1511 = load %A* (%A*)** %g1512
  %cast_op1513 = bitcast %A %ret1508 to %A* 
  %ret1514 = call %A* %g1511 ( %A* %cast_op1513 )
  %i1515 = getelementptr %A* %ret1514, i32 0, i32 2
  %lhs_or_call1516 = load i32* %i1515
  %bop1517 = add i32 %lhs_or_call1489, %lhs_or_call1516
  %lhs_or_call1518 = load %B** %vdecl_slot1462
  %vtable_ptr1519 = getelementptr %B* %lhs_or_call1518, i32 0
  %vtable1520 = load %_B_vtable** %vtable_ptr1519
  %f1522 = getelementptr %_B_vtable* %vtable1520, i32 0, i32 2
  %f1521 = load %A* (%B*)** %f1522
  %cast_op1523 = bitcast %B %lhs_or_call1518 to %B* 
  %ret1524 = call %A* %f1521 ( %B* %cast_op1523 )
  %vtable_ptr1525 = getelementptr %A* %ret1524, i32 0
  %vtable1526 = load %_A_vtable** %vtable_ptr1525
  %g1528 = getelementptr %_A_vtable* %vtable1526, i32 0, i32 2
  %g1527 = load %A* (%A*)** %g1528
  %cast_op1529 = bitcast %A %ret1524 to %A* 
  %ret1530 = call %A* %g1527 ( %A* %cast_op1529 )
  %vtable_ptr1531 = getelementptr %A* %ret1530, i32 0
  %vtable1532 = load %_A_vtable** %vtable_ptr1531
  %g1534 = getelementptr %_A_vtable* %vtable1532, i32 0, i32 2
  %g1533 = load %A* (%A*)** %g1534
  %cast_op1535 = bitcast %A %ret1530 to %A* 
  %ret1536 = call %A* %g1533 ( %A* %cast_op1535 )
  %vtable_ptr1537 = getelementptr %A* %ret1536, i32 0
  %vtable1538 = load %_A_vtable** %vtable_ptr1537
  %g1540 = getelementptr %_A_vtable* %vtable1538, i32 0, i32 2
  %g1539 = load %A* (%A*)** %g1540
  %cast_op1541 = bitcast %A %ret1536 to %A* 
  %ret1542 = call %A* %g1539 ( %A* %cast_op1541 )
  %vtable_ptr1543 = getelementptr %A* %ret1542, i32 0
  %vtable1544 = load %_A_vtable** %vtable_ptr1543
  %g1546 = getelementptr %_A_vtable* %vtable1544, i32 0, i32 2
  %g1545 = load %A* (%A*)** %g1546
  %cast_op1547 = bitcast %A %ret1542 to %A* 
  %ret1548 = call %A* %g1545 ( %A* %cast_op1547 )
  %vtable_ptr1549 = getelementptr %A* %ret1548, i32 0
  %vtable1550 = load %_A_vtable** %vtable_ptr1549
  %g1552 = getelementptr %_A_vtable* %vtable1550, i32 0, i32 2
  %g1551 = load %A* (%A*)** %g1552
  %cast_op1553 = bitcast %A %ret1548 to %A* 
  %ret1554 = call %A* %g1551 ( %A* %cast_op1553 )
  %vtable_ptr1555 = getelementptr %A* %ret1554, i32 0
  %vtable1556 = load %_A_vtable** %vtable_ptr1555
  %g1558 = getelementptr %_A_vtable* %vtable1556, i32 0, i32 2
  %g1557 = load %A* (%A*)** %g1558
  %cast_op1559 = bitcast %A %ret1554 to %A* 
  %ret1560 = call %A* %g1557 ( %A* %cast_op1559 )
  %vtable_ptr1561 = getelementptr %A* %ret1560, i32 0
  %vtable1562 = load %_A_vtable** %vtable_ptr1561
  %g1564 = getelementptr %_A_vtable* %vtable1562, i32 0, i32 2
  %g1563 = load %A* (%A*)** %g1564
  %cast_op1565 = bitcast %A %ret1560 to %A* 
  %ret1566 = call %A* %g1563 ( %A* %cast_op1565 )
  %vtable_ptr1567 = getelementptr %A* %ret1566, i32 0
  %vtable1568 = load %_A_vtable** %vtable_ptr1567
  %g1570 = getelementptr %_A_vtable* %vtable1568, i32 0, i32 2
  %g1569 = load %A* (%A*)** %g1570
  %cast_op1571 = bitcast %A %ret1566 to %A* 
  %ret1572 = call %A* %g1569 ( %A* %cast_op1571 )
  %vtable_ptr1573 = getelementptr %A* %ret1572, i32 0
  %vtable1574 = load %_A_vtable** %vtable_ptr1573
  %g1576 = getelementptr %_A_vtable* %vtable1574, i32 0, i32 2
  %g1575 = load %A* (%A*)** %g1576
  %cast_op1577 = bitcast %A %ret1572 to %A* 
  %ret1578 = call %A* %g1575 ( %A* %cast_op1577 )
  %i1579 = getelementptr %A* %ret1578, i32 0, i32 2
  %lhs_or_call1580 = load i32* %i1579
  %bop1581 = add i32 %bop1517, %lhs_or_call1580
  %lhs_or_call1582 = load %B** %vdecl_slot1462
  %vtable_ptr1583 = getelementptr %B* %lhs_or_call1582, i32 0
  %vtable1584 = load %_B_vtable** %vtable_ptr1583
  %f1586 = getelementptr %_B_vtable* %vtable1584, i32 0, i32 2
  %f1585 = load %A* (%B*)** %f1586
  %cast_op1587 = bitcast %B %lhs_or_call1582 to %B* 
  %ret1588 = call %A* %f1585 ( %B* %cast_op1587 )
  %s1589 = getelementptr %A* %ret1588, i32 0, i32 3
  %lhs_or_call1590 = load %S** %s1589
  %vtable_ptr1591 = getelementptr %S* %lhs_or_call1590, i32 0
  %vtable1592 = load %_S_vtable** %vtable_ptr1591
  %f1594 = getelementptr %_S_vtable* %vtable1592, i32 0, i32 3
  %f1593 = load %S* (%S*)** %f1594
  %cast_op1595 = bitcast %S %lhs_or_call1590 to %S* 
  %ret1596 = call %S* %f1593 ( %S* %cast_op1595 )
  %i1597 = getelementptr %S* %ret1596, i32 0, i32 2
  %lhs_or_call1598 = load i32* %i1597
  %bop1599 = add i32 %bop1581, %lhs_or_call1598
  %lhs_or_call1600 = load { i32, [ 0 x i32 ] }** @arr293
  %bound_ptr1602 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1600, i32 0, i32 0
  %bound1603 = load i32* %bound_ptr1602
  call void @oat_array_bounds_check( i32 %bound1603, i32 1 )
  %elt1601 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1600, i32 0, i32 1, i32 1
  %lhs_or_call1604 = load i32* %elt1601
  %bop1605 = add i32 %bop1599, %lhs_or_call1604
  %lhs_or_call1606 = load %B** %vdecl_slot1462
  %vtable_ptr1607 = getelementptr %B* %lhs_or_call1606, i32 0
  %vtable1608 = load %_B_vtable** %vtable_ptr1607
  %f1610 = getelementptr %_B_vtable* %vtable1608, i32 0, i32 2
  %f1609 = load %A* (%B*)** %f1610
  %cast_op1611 = bitcast %B %lhs_or_call1606 to %B* 
  %ret1612 = call %A* %f1609 ( %B* %cast_op1611 )
  %s1613 = getelementptr %A* %ret1612, i32 0, i32 3
  %lhs_or_call1614 = load %S** %s1613
  %vtable_ptr1615 = getelementptr %S* %lhs_or_call1614, i32 0
  %vtable1616 = load %_S_vtable** %vtable_ptr1615
  %g1618 = getelementptr %_S_vtable* %vtable1616, i32 0, i32 2
  %g1617 = load { i32, [ 0 x i32 ] }* (%S*)** %g1618
  %cast_op1619 = bitcast %S %lhs_or_call1614 to %S* 
  %ret1620 = call { i32, [ 0 x i32 ] }* %g1617 ( %S* %cast_op1619 )
  %bound_ptr1622 = getelementptr { i32, [ 0 x i32 ] }* %ret1620, i32 0, i32 0
  %bound1623 = load i32* %bound_ptr1622
  call void @oat_array_bounds_check( i32 %bound1623, i32 1 )
  %elt1621 = getelementptr { i32, [ 0 x i32 ] }* %ret1620, i32 0, i32 1, i32 1
  %lhs_or_call1624 = load i32* %elt1621
  %bop1625 = add i32 %bop1605, %lhs_or_call1624
  ret i32 %bop1625
}


define %A* @_B_f (%B* %_this1){
__fresh344:
  %mem_ptr1452 = call i32* @oat_malloc ( i32 16 )
  %obj1453 = bitcast i32* %mem_ptr1452 to %A* 
  %new_obj1454 = call %A* @_A_ctor ( %A* %obj1453 )
  ret %A* %new_obj1454
}


define %B* @_B_ctor (%B* %_this1){
__fresh343:
  %mem_ptr1447 = call i32* @oat_malloc ( i32 8 )
  %obj1448 = bitcast i32* %mem_ptr1447 to %Object* 
  %new_obj1449 = call %Object* @_Object_ctor ( %Object* %obj1448 )
  %_this1 = bitcast %Object* %new_obj1449 to %B 
  %_name1450 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str297, i8** %_name1450
  %this_vtable1451 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable291, %_B_vtable** %this_vtable1451
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh342:
  %mem_ptr1444 = call i32* @oat_malloc ( i32 16 )
  %obj1445 = bitcast i32* %mem_ptr1444 to %A* 
  %new_obj1446 = call %A* @_A_ctor ( %A* %obj1445 )
  ret %A* %new_obj1446
}


define %A* @_A_ctor (%A* %_this1){
__fresh341:
  %mem_ptr1435 = call i32* @oat_malloc ( i32 8 )
  %obj1436 = bitcast i32* %mem_ptr1435 to %Object* 
  %new_obj1437 = call %Object* @_Object_ctor ( %Object* %obj1436 )
  %_this1 = bitcast %Object* %new_obj1437 to %A 
  %_name1438 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str296, i8** %_name1438
  %s1439 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1440 = call i32* @oat_malloc ( i32 12 )
  %obj1441 = bitcast i32* %mem_ptr1440 to %S* 
  %new_obj1442 = call %S* @_S_ctor ( %S* %obj1441 )
  store %S* %new_obj1442, %S** %s1439
  %this_vtable1443 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable290, %_A_vtable** %this_vtable1443
  %i1434 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i1434
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh340:
  %mem_ptr1431 = call i32* @oat_malloc ( i32 12 )
  %obj1432 = bitcast i32* %mem_ptr1431 to %S* 
  %new_obj1433 = call %S* @_S_ctor ( %S* %obj1432 )
  ret %S* %new_obj1433
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh339:
  %lhs_or_call1430 = load { i32, [ 0 x i32 ] }** @arr293
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1430
}


define %S* @_S_ctor (%S* %_this1){
__fresh338:
  %mem_ptr1425 = call i32* @oat_malloc ( i32 8 )
  %obj1426 = bitcast i32* %mem_ptr1425 to %Object* 
  %new_obj1427 = call %Object* @_Object_ctor ( %Object* %obj1426 )
  %_this1 = bitcast %Object* %new_obj1427 to %S 
  %_name1428 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str295, i8** %_name1428
  %this_vtable1429 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable289, %_S_vtable** %this_vtable1429
  %i1424 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %i1424
  ret %S* %_this1
}


define void @arr293.init294 (){
__fresh337:
  %array_ptr1419 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1420 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1419 to { i32, [ 0 x i32 ] }* 
  %index_ptr1421 = getelementptr { i32, [ 0 x i32 ] }* %array1420, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1421
  %index_ptr1422 = getelementptr { i32, [ 0 x i32 ] }* %array1420, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1422
  %index_ptr1423 = getelementptr { i32, [ 0 x i32 ] }* %array1420, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1423
  store { i32, [ 0 x i32 ] }* %array1420, { i32, [ 0 x i32 ] }** @arr293
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh336:
  %_name1417 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1418 = load i8** %_name1417
  ret i8* %lhs_or_call1418
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh335:
  %_name1415 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str292, i8** %_name1415
  %this_vtable1416 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable288, %_Object_vtable** %this_vtable1416
  ret %Object* %_this1
}


