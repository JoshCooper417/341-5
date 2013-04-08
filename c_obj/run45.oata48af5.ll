%A = type { %_A_vtable*, i8*, i32, i32, %O*, { i32, [ 0 x %A* ] }* }
%_A_vtable = type { %_O_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, i32 (%A*)* }
%O = type { %_O_vtable*, i8* }
%_O_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str277.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str277 = alias bitcast([ 2 x i8 ]* @_const_str277.str. to i8*)@_const_str276.str. = private unnamed_addr constant [ 2 x i8 ] c "O\00", align 4
@_const_str276 = alias bitcast([ 2 x i8 ]* @_const_str276.str. to i8*)@_const_str275.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str275 = alias bitcast([ 7 x i8 ]* @_const_str275.str. to i8*)@_A_vtable274 = private constant %_A_vtable {%_O_vtable* @_O_vtable273, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_init, void (%A*)* @_A_incr, i32 (%A*)* @_A_sum}, align 4
@_O_vtable273 = private constant %_O_vtable {%_Object_vtable* @_Object_vtable272, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable272 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh355:
  ret void
}


define i32 @program (i32 %argc1434, { i32, [ 0 x i8* ] }* %argv1432){
__fresh354:
  %argc_slot1435 = alloca i32
  store i32 %argc1434, i32* %argc_slot1435
  %argv_slot1433 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1432, { i32, [ 0 x i8* ] }** %argv_slot1433
  %mem_ptr1436 = call i32* @oat_malloc ( i32 24 )
  %obj1437 = bitcast i32* %mem_ptr1436 to %A* 
  %new_obj1438 = call %A* @_A_ctor ( %A* %obj1437 )
  %vdecl_slot1439 = alloca %A*
  store %A* %new_obj1438, %A** %vdecl_slot1439
  %lhs_or_call1440 = load %A** %vdecl_slot1439
  %vtable_ptr1441 = getelementptr %A* %lhs_or_call1440, i32 0
  %vtable1442 = load %_A_vtable** %vtable_ptr1441
  %init1444 = getelementptr %_A_vtable* %vtable1442, i32 0, i32 2
  %init1443 = load void (%A*)** %init1444
  %cast_op1445 = bitcast %A %lhs_or_call1440 to %A* 
  call void %init1443( %A* %cast_op1445 )
  %lhs_or_call1446 = load %A** %vdecl_slot1439
  %vtable_ptr1447 = getelementptr %A* %lhs_or_call1446, i32 0
  %vtable1448 = load %_A_vtable** %vtable_ptr1447
  %sum1450 = getelementptr %_A_vtable* %vtable1448, i32 0, i32 4
  %sum1449 = load i32 (%A*)** %sum1450
  %cast_op1451 = bitcast %A %lhs_or_call1446 to %A* 
  %ret1452 = call i32 %sum1449 ( %A* %cast_op1451 )
  ret i32 %ret1452
}


define i32 @_A_sum (%A* %_this1){
__fresh347:
  %vdecl_slot1379 = alloca i32
  store i32 0, i32* %vdecl_slot1379
  %arr1380 = getelementptr %A* %_this1, i32 0, i32 5
  %lhs_or_call1381 = load { i32, [ 0 x %A* ] }** %arr1380
  %ifnull_slot1382 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %lhs_or_call1381, { i32, [ 0 x %A* ] }** %ifnull_slot1382
  %ifnull_guard1383 = icmp ne { i32, [ 0 x %A* ] }* %lhs_or_call1381, null
  br i1 %ifnull_guard1383, label %__then346, label %__else345

__fresh348:
  br label %__then346

__then346:
  %vdecl_slot1384 = alloca i32
  store i32 0, i32* %vdecl_slot1384
  br label %__cond340

__cond340:
  %lhs_or_call1385 = load i32* %vdecl_slot1384
  %lhs_or_call1386 = load { i32, [ 0 x %A* ] }** %ifnull_slot1382
  %len_ptr1387 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1386, i32 0, i32 0
  %len1388 = load i32* %len_ptr1387
  %bop1389 = icmp slt i32 %lhs_or_call1385, %len1388
  br i1 %bop1389, label %__body339, label %__post338

__fresh349:
  br label %__body339

__body339:
  %lhs_or_call1390 = load { i32, [ 0 x %A* ] }** %ifnull_slot1382
  %lhs_or_call1391 = load i32* %vdecl_slot1384
  %bound_ptr1393 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1390, i32 0, i32 0
  %bound1394 = load i32* %bound_ptr1393
  call void @oat_array_bounds_check( i32 %bound1394, i32 %lhs_or_call1391 )
  %elt1392 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1390, i32 0, i32 1, i32 %lhs_or_call1391
  %lhs_or_call1395 = load %A** %elt1392
  %vtable_ptr1396 = getelementptr %A* %lhs_or_call1395, i32 0
  %vtable1397 = load %_A_vtable** %vtable_ptr1396
  %incr1399 = getelementptr %_A_vtable* %vtable1397, i32 0, i32 3
  %incr1398 = load void (%A*)** %incr1399
  %cast_op1400 = bitcast %A %lhs_or_call1395 to %A* 
  call void %incr1398( %A* %cast_op1400 )
  %lhs_or_call1401 = load i32* %vdecl_slot1384
  %bop1402 = add i32 %lhs_or_call1401, 1
  store i32 %bop1402, i32* %vdecl_slot1384
  br label %__cond340

__fresh350:
  br label %__post338

__post338:
  %vdecl_slot1403 = alloca i32
  store i32 0, i32* %vdecl_slot1403
  br label %__cond343

__cond343:
  %lhs_or_call1404 = load i32* %vdecl_slot1403
  %lhs_or_call1405 = load { i32, [ 0 x %A* ] }** %ifnull_slot1382
  %len_ptr1406 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1405, i32 0, i32 0
  %len1407 = load i32* %len_ptr1406
  %bop1408 = icmp slt i32 %lhs_or_call1404, %len1407
  br i1 %bop1408, label %__body342, label %__post341

__fresh351:
  br label %__body342

__body342:
  %lhs_or_call1409 = load i32* %vdecl_slot1379
  %lhs_or_call1410 = load { i32, [ 0 x %A* ] }** %ifnull_slot1382
  %lhs_or_call1411 = load i32* %vdecl_slot1403
  %bound_ptr1413 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1410, i32 0, i32 0
  %bound1414 = load i32* %bound_ptr1413
  call void @oat_array_bounds_check( i32 %bound1414, i32 %lhs_or_call1411 )
  %elt1412 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1410, i32 0, i32 1, i32 %lhs_or_call1411
  %lhs_or_call1415 = load %A** %elt1412
  %a1416 = getelementptr %A* %lhs_or_call1415, i32 0, i32 2
  %lhs_or_call1417 = load i32* %a1416
  %bop1418 = add i32 %lhs_or_call1409, %lhs_or_call1417
  store i32 %bop1418, i32* %vdecl_slot1379
  %lhs_or_call1419 = load i32* %vdecl_slot1379
  %lhs_or_call1420 = load { i32, [ 0 x %A* ] }** %ifnull_slot1382
  %lhs_or_call1421 = load i32* %vdecl_slot1403
  %bound_ptr1423 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1420, i32 0, i32 0
  %bound1424 = load i32* %bound_ptr1423
  call void @oat_array_bounds_check( i32 %bound1424, i32 %lhs_or_call1421 )
  %elt1422 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1420, i32 0, i32 1, i32 %lhs_or_call1421
  %lhs_or_call1425 = load %A** %elt1422
  %b1426 = getelementptr %A* %lhs_or_call1425, i32 0, i32 3
  %lhs_or_call1427 = load i32* %b1426
  %bop1428 = add i32 %lhs_or_call1419, %lhs_or_call1427
  store i32 %bop1428, i32* %vdecl_slot1379
  %lhs_or_call1429 = load i32* %vdecl_slot1403
  %bop1430 = add i32 %lhs_or_call1429, 1
  store i32 %bop1430, i32* %vdecl_slot1403
  br label %__cond343

__fresh352:
  br label %__post341

__post341:
  br label %__merge344

__fresh353:
  br label %__else345

__else345:
  br label %__merge344

__merge344:
  %lhs_or_call1431 = load i32* %vdecl_slot1379
  ret i32 %lhs_or_call1431
}


define void @_A_incr (%A* %_this1){
__fresh337:
  %a1371 = getelementptr %A* %_this1, i32 0, i32 2
  %a1372 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1373 = load i32* %a1372
  %bop1374 = add i32 %lhs_or_call1373, 1
  store i32 %bop1374, i32* %a1371
  %b1375 = getelementptr %A* %_this1, i32 0, i32 3
  %b1376 = getelementptr %A* %_this1, i32 0, i32 3
  %lhs_or_call1377 = load i32* %b1376
  %bop1378 = add i32 %lhs_or_call1377, 1
  store i32 %bop1378, i32* %b1375
  ret void
}


define void @_A_init (%A* %_this1){
__fresh328:
  %o1337 = getelementptr %A* %_this1, i32 0, i32 4
  %mem_ptr1338 = call i32* @oat_malloc ( i32 24 )
  %obj1339 = bitcast i32* %mem_ptr1338 to %A* 
  %new_obj1340 = call %A* @_A_ctor ( %A* %obj1339 )
  %cast_op1341 = bitcast %A* %new_obj1340 to %O* 
  store %O* %cast_op1341, %O** %o1337
  %o1342 = getelementptr %A* %_this1, i32 0, i32 4
  %lhs_or_call1343 = load %O** %o1342
  %ifnull_slot1344 = alloca %O*
  store %O* %lhs_or_call1343, %O** %ifnull_slot1344
  %ifnull_guard1345 = icmp ne %O* %lhs_or_call1343, null
  br i1 %ifnull_guard1345, label %__then324, label %__else323

__fresh329:
  br label %__then324

__then324:
  br label %__bound_check317

__fresh330:
  br label %__bound_check317

__bound_check317:
  %cast_op1351 = bitcast %_A_vtable* @_A_vtable274 to i8** 
  %rvtable1350 = load i8** %rvtable1347
  %lvtable1348 = load i8** %cast_op1351
  %compare1349 = icmp eq i8* %rvtable1350, null
  br i1 %compare1349, label %__end_no320, label %__check_curr319

__fresh331:
  br label %__check_curr319

__check_curr319:
  %compare1349 = icmp eq i8** %lvtable1348, %rvtable1350
  br i1 %compare1349, label %__end_yes321, label %__move_up318

__fresh332:
  br label %__move_up318

__move_up318:
  %rvtable1347 = getelementptr i8* %rvtable1350, i32 0
  br label %__bound_check317

__fresh333:
  br label %__end_yes321

__end_yes321:
  br label %__end_no320

__end_no320:
  br label %__merge322

__fresh334:
  br label %__else323

__else323:
  br label %__merge322

__merge322:
  %arr1352 = getelementptr %A* %_this1, i32 0, i32 5
  %array_ptr1353 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1354 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1353 to { i32, [ 0 x %A* ] }* 
  %_tmp2711355 = alloca i32
  store i32 2, i32* %_tmp2711355
  %_tmp2721356 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1354, { i32, [ 0 x %A* ] }** %_tmp2721356
  %vdecl_slot1357 = alloca i32
  store i32 0, i32* %vdecl_slot1357
  br label %__cond327

__cond327:
  %lhs_or_call1358 = load i32* %vdecl_slot1357
  %lhs_or_call1359 = load i32* %_tmp2711355
  %bop1360 = icmp slt i32 %lhs_or_call1358, %lhs_or_call1359
  br i1 %bop1360, label %__body326, label %__post325

__fresh335:
  br label %__body326

__body326:
  %lhs_or_call1361 = load { i32, [ 0 x %A* ] }** %_tmp2721356
  %lhs_or_call1362 = load i32* %vdecl_slot1357
  %bound_ptr1364 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1361, i32 0, i32 0
  %bound1365 = load i32* %bound_ptr1364
  call void @oat_array_bounds_check( i32 %bound1365, i32 %lhs_or_call1362 )
  %elt1363 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1361, i32 0, i32 1, i32 %lhs_or_call1362
  %mem_ptr1366 = call i32* @oat_malloc ( i32 24 )
  %obj1367 = bitcast i32* %mem_ptr1366 to %A* 
  %new_obj1368 = call %A* @_A_ctor ( %A* %obj1367 )
  store %A* %new_obj1368, %A** %elt1363
  %lhs_or_call1369 = load i32* %vdecl_slot1357
  %bop1370 = add i32 %lhs_or_call1369, 1
  store i32 %bop1370, i32* %vdecl_slot1357
  br label %__cond327

__fresh336:
  br label %__post325

__post325:
  store { i32, [ 0 x %A* ] }* %array1354, { i32, [ 0 x %A* ] }** %arr1352
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh316:
  %mem_ptr1330 = call i32* @oat_malloc ( i32 8 )
  %obj1331 = bitcast i32* %mem_ptr1330 to %O* 
  %new_obj1332 = call %O* @_O_ctor ( %O* %obj1331 )
  %_this1 = bitcast %O* %new_obj1332 to %A 
  %_name1333 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str277, i8** %_name1333
  %a1334 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %a1334
  %b1335 = getelementptr %A* %_this1, i32 0, i32 3
  store i32 2, i32* %b1335
  %this_vtable1336 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable274, %_A_vtable** %this_vtable1336
  ret %A* %_this1
}


define %O* @_O_ctor (%O* %_this1){
__fresh315:
  %mem_ptr1325 = call i32* @oat_malloc ( i32 8 )
  %obj1326 = bitcast i32* %mem_ptr1325 to %Object* 
  %new_obj1327 = call %Object* @_Object_ctor ( %Object* %obj1326 )
  %_this1 = bitcast %Object* %new_obj1327 to %O 
  %_name1328 = getelementptr %O* %_this1, i32 0, i32 1
  store i8* @_const_str276, i8** %_name1328
  %this_vtable1329 = getelementptr %O* %_this1, i32 0, i32 0
  store %_O_vtable* @_O_vtable273, %_O_vtable** %this_vtable1329
  ret %O* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh314:
  %_name1323 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1324 = load i8** %_name1323
  ret i8* %lhs_or_call1324
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh313:
  %_name1321 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str275, i8** %_name1321
  %this_vtable1322 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable272, %_Object_vtable** %this_vtable1322
  ret %Object* %_this1
}


