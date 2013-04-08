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


define i32 @program (i32 %argc1428, { i32, [ 0 x i8* ] }* %argv1426){
__fresh345:
  %argc_slot1429 = alloca i32
  store i32 %argc1428, i32* %argc_slot1429
  %argv_slot1427 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1426, { i32, [ 0 x i8* ] }** %argv_slot1427
  %mem_ptr1430 = call i32* @oat_malloc ( i32 8 )
  %obj1431 = bitcast i32* %mem_ptr1430 to %B* 
  %new_obj1432 = call %B* @_B_ctor ( %B* %obj1431 )
  %vdecl_slot1433 = alloca %B*
  store %B* %new_obj1432, %B** %vdecl_slot1433
  %lhs_or_call1434 = load %B** %vdecl_slot1433
  %f1436 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1435 = load %A* (%B*)** %f1436
  %cast_op1437 = bitcast %B %lhs_or_call1434 to %B* 
  %ret1438 = call %A* %f1435 ( %B* %cast_op1437 )
  %s1439 = getelementptr %A* %ret1438, i32 0, i32 3
  %lhs_or_call1440 = load %S** %s1439
  %g1442 = getelementptr %_S_vtable* @_S_vtable300, i32 0, i32 2
  %g1441 = load { i32, [ 0 x i32 ] }* (%S*)** %g1442
  %cast_op1443 = bitcast %S %lhs_or_call1440 to %S* 
  %ret1444 = call { i32, [ 0 x i32 ] }* %g1441 ( %S* %cast_op1443 )
  %bound_ptr1446 = getelementptr { i32, [ 0 x i32 ] }* %ret1444, i32 0, i32 0
  %bound1447 = load i32* %bound_ptr1446
  call void @oat_array_bounds_check( i32 %bound1447, i32 1 )
  %elt1445 = getelementptr { i32, [ 0 x i32 ] }* %ret1444, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1445
  %lhs_or_call1448 = load %B** %vdecl_slot1433
  %f1450 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1449 = load %A* (%B*)** %f1450
  %cast_op1451 = bitcast %B %lhs_or_call1448 to %B* 
  %ret1452 = call %A* %f1449 ( %B* %cast_op1451 )
  %i1453 = getelementptr %A* %ret1452, i32 0, i32 2
  %lhs_or_call1454 = load i32* %i1453
  %lhs_or_call1455 = load %B** %vdecl_slot1433
  %f1457 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1456 = load %A* (%B*)** %f1457
  %cast_op1458 = bitcast %B %lhs_or_call1455 to %B* 
  %ret1459 = call %A* %f1456 ( %B* %cast_op1458 )
  %g1461 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1460 = load %A* (%A*)** %g1461
  %cast_op1462 = bitcast %A %ret1459 to %A* 
  %ret1463 = call %A* %g1460 ( %A* %cast_op1462 )
  %g1465 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1464 = load %A* (%A*)** %g1465
  %cast_op1466 = bitcast %A %ret1463 to %A* 
  %ret1467 = call %A* %g1464 ( %A* %cast_op1466 )
  %g1469 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1468 = load %A* (%A*)** %g1469
  %cast_op1470 = bitcast %A %ret1467 to %A* 
  %ret1471 = call %A* %g1468 ( %A* %cast_op1470 )
  %i1472 = getelementptr %A* %ret1471, i32 0, i32 2
  %lhs_or_call1473 = load i32* %i1472
  %bop1474 = add i32 %lhs_or_call1454, %lhs_or_call1473
  %lhs_or_call1475 = load %B** %vdecl_slot1433
  %f1477 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1476 = load %A* (%B*)** %f1477
  %cast_op1478 = bitcast %B %lhs_or_call1475 to %B* 
  %ret1479 = call %A* %f1476 ( %B* %cast_op1478 )
  %g1481 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1480 = load %A* (%A*)** %g1481
  %cast_op1482 = bitcast %A %ret1479 to %A* 
  %ret1483 = call %A* %g1480 ( %A* %cast_op1482 )
  %g1485 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1484 = load %A* (%A*)** %g1485
  %cast_op1486 = bitcast %A %ret1483 to %A* 
  %ret1487 = call %A* %g1484 ( %A* %cast_op1486 )
  %g1489 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1488 = load %A* (%A*)** %g1489
  %cast_op1490 = bitcast %A %ret1487 to %A* 
  %ret1491 = call %A* %g1488 ( %A* %cast_op1490 )
  %g1493 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1492 = load %A* (%A*)** %g1493
  %cast_op1494 = bitcast %A %ret1491 to %A* 
  %ret1495 = call %A* %g1492 ( %A* %cast_op1494 )
  %g1497 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1496 = load %A* (%A*)** %g1497
  %cast_op1498 = bitcast %A %ret1495 to %A* 
  %ret1499 = call %A* %g1496 ( %A* %cast_op1498 )
  %g1501 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1500 = load %A* (%A*)** %g1501
  %cast_op1502 = bitcast %A %ret1499 to %A* 
  %ret1503 = call %A* %g1500 ( %A* %cast_op1502 )
  %g1505 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1504 = load %A* (%A*)** %g1505
  %cast_op1506 = bitcast %A %ret1503 to %A* 
  %ret1507 = call %A* %g1504 ( %A* %cast_op1506 )
  %g1509 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1508 = load %A* (%A*)** %g1509
  %cast_op1510 = bitcast %A %ret1507 to %A* 
  %ret1511 = call %A* %g1508 ( %A* %cast_op1510 )
  %g1513 = getelementptr %_A_vtable* @_A_vtable301, i32 0, i32 2
  %g1512 = load %A* (%A*)** %g1513
  %cast_op1514 = bitcast %A %ret1511 to %A* 
  %ret1515 = call %A* %g1512 ( %A* %cast_op1514 )
  %i1516 = getelementptr %A* %ret1515, i32 0, i32 2
  %lhs_or_call1517 = load i32* %i1516
  %bop1518 = add i32 %bop1474, %lhs_or_call1517
  %lhs_or_call1519 = load %B** %vdecl_slot1433
  %f1521 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1520 = load %A* (%B*)** %f1521
  %cast_op1522 = bitcast %B %lhs_or_call1519 to %B* 
  %ret1523 = call %A* %f1520 ( %B* %cast_op1522 )
  %s1524 = getelementptr %A* %ret1523, i32 0, i32 3
  %lhs_or_call1525 = load %S** %s1524
  %f1527 = getelementptr %_S_vtable* @_S_vtable300, i32 0, i32 3
  %f1526 = load %S* (%S*)** %f1527
  %cast_op1528 = bitcast %S %lhs_or_call1525 to %S* 
  %ret1529 = call %S* %f1526 ( %S* %cast_op1528 )
  %i1530 = getelementptr %S* %ret1529, i32 0, i32 2
  %lhs_or_call1531 = load i32* %i1530
  %bop1532 = add i32 %bop1518, %lhs_or_call1531
  %lhs_or_call1533 = load { i32, [ 0 x i32 ] }** @arr304
  %bound_ptr1535 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1533, i32 0, i32 0
  %bound1536 = load i32* %bound_ptr1535
  call void @oat_array_bounds_check( i32 %bound1536, i32 1 )
  %elt1534 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1533, i32 0, i32 1, i32 1
  %lhs_or_call1537 = load i32* %elt1534
  %bop1538 = add i32 %bop1532, %lhs_or_call1537
  %lhs_or_call1539 = load %B** %vdecl_slot1433
  %f1541 = getelementptr %_B_vtable* @_B_vtable302, i32 0, i32 2
  %f1540 = load %A* (%B*)** %f1541
  %cast_op1542 = bitcast %B %lhs_or_call1539 to %B* 
  %ret1543 = call %A* %f1540 ( %B* %cast_op1542 )
  %s1544 = getelementptr %A* %ret1543, i32 0, i32 3
  %lhs_or_call1545 = load %S** %s1544
  %g1547 = getelementptr %_S_vtable* @_S_vtable300, i32 0, i32 2
  %g1546 = load { i32, [ 0 x i32 ] }* (%S*)** %g1547
  %cast_op1548 = bitcast %S %lhs_or_call1545 to %S* 
  %ret1549 = call { i32, [ 0 x i32 ] }* %g1546 ( %S* %cast_op1548 )
  %bound_ptr1551 = getelementptr { i32, [ 0 x i32 ] }* %ret1549, i32 0, i32 0
  %bound1552 = load i32* %bound_ptr1551
  call void @oat_array_bounds_check( i32 %bound1552, i32 1 )
  %elt1550 = getelementptr { i32, [ 0 x i32 ] }* %ret1549, i32 0, i32 1, i32 1
  %lhs_or_call1553 = load i32* %elt1550
  %bop1554 = add i32 %bop1538, %lhs_or_call1553
  ret i32 %bop1554
}


define %A* @_B_f (%B* %_this1){
__fresh344:
  %mem_ptr1423 = call i32* @oat_malloc ( i32 16 )
  %obj1424 = bitcast i32* %mem_ptr1423 to %A* 
  %new_obj1425 = call %A* @_A_ctor ( %A* %obj1424 )
  ret %A* %new_obj1425
}


define %B* @_B_ctor (%B* %_this1){
__fresh343:
  %mem_ptr1418 = call i32* @oat_malloc ( i32 8 )
  %obj1419 = bitcast i32* %mem_ptr1418 to %Object* 
  %new_obj1420 = call %Object* @_Object_ctor ( %Object* %obj1419 )
  %_this1 = bitcast %Object* %new_obj1420 to %B 
  %_name1421 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str308, i8** %_name1421
  %this_vtable1422 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable302, %_B_vtable** %this_vtable1422
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh342:
  %mem_ptr1415 = call i32* @oat_malloc ( i32 16 )
  %obj1416 = bitcast i32* %mem_ptr1415 to %A* 
  %new_obj1417 = call %A* @_A_ctor ( %A* %obj1416 )
  ret %A* %new_obj1417
}


define %A* @_A_ctor (%A* %_this1){
__fresh341:
  %mem_ptr1406 = call i32* @oat_malloc ( i32 8 )
  %obj1407 = bitcast i32* %mem_ptr1406 to %Object* 
  %new_obj1408 = call %Object* @_Object_ctor ( %Object* %obj1407 )
  %_this1 = bitcast %Object* %new_obj1408 to %A 
  %_name1409 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str307, i8** %_name1409
  %s1410 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1411 = call i32* @oat_malloc ( i32 12 )
  %obj1412 = bitcast i32* %mem_ptr1411 to %S* 
  %new_obj1413 = call %S* @_S_ctor ( %S* %obj1412 )
  store %S* %new_obj1413, %S** %s1410
  %this_vtable1414 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable301, %_A_vtable** %this_vtable1414
  %i1405 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i1405
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh340:
  %mem_ptr1402 = call i32* @oat_malloc ( i32 12 )
  %obj1403 = bitcast i32* %mem_ptr1402 to %S* 
  %new_obj1404 = call %S* @_S_ctor ( %S* %obj1403 )
  ret %S* %new_obj1404
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh339:
  %lhs_or_call1401 = load { i32, [ 0 x i32 ] }** @arr304
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1401
}


define %S* @_S_ctor (%S* %_this1){
__fresh338:
  %mem_ptr1396 = call i32* @oat_malloc ( i32 8 )
  %obj1397 = bitcast i32* %mem_ptr1396 to %Object* 
  %new_obj1398 = call %Object* @_Object_ctor ( %Object* %obj1397 )
  %_this1 = bitcast %Object* %new_obj1398 to %S 
  %_name1399 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str306, i8** %_name1399
  %this_vtable1400 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable300, %_S_vtable** %this_vtable1400
  %i1395 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %i1395
  ret %S* %_this1
}


define void @arr304.init305 (){
__fresh337:
  %array_ptr1390 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1391 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1390 to { i32, [ 0 x i32 ] }* 
  %index_ptr1392 = getelementptr { i32, [ 0 x i32 ] }* %array1391, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1392
  %index_ptr1393 = getelementptr { i32, [ 0 x i32 ] }* %array1391, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1393
  %index_ptr1394 = getelementptr { i32, [ 0 x i32 ] }* %array1391, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1394
  store { i32, [ 0 x i32 ] }* %array1391, { i32, [ 0 x i32 ] }** @arr304
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh336:
  %_name1388 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1389 = load i8** %_name1388
  ret i8* %lhs_or_call1389
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh335:
  %_name1386 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str303, i8** %_name1386
  %this_vtable1387 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable299, %_Object_vtable** %this_vtable1387
  ret %Object* %_this1
}


