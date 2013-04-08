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


define i32 @program (i32 %argc1423, { i32, [ 0 x i8* ] }* %argv1421){
__fresh354:
  %argc_slot1424 = alloca i32
  store i32 %argc1423, i32* %argc_slot1424
  %argv_slot1422 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1421, { i32, [ 0 x i8* ] }** %argv_slot1422
  %mem_ptr1425 = call i32* @oat_malloc ( i32 24 )
  %obj1426 = bitcast i32* %mem_ptr1425 to %A* 
  %new_obj1427 = call %A* @_A_ctor ( %A* %obj1426 )
  %vdecl_slot1428 = alloca %A*
  store %A* %new_obj1427, %A** %vdecl_slot1428
  %lhs_or_call1429 = load %A** %vdecl_slot1428
  %vtable_ptr1430 = getelementptr %A* %lhs_or_call1429, i32 0
  %vtable1431 = load %_A_vtable** %vtable_ptr1430
  %init1433 = getelementptr %_A_vtable* %vtable1431, i32 0, i32 2
  %init1432 = load void (%A*)** %init1433
  %cast_op1434 = bitcast %A %lhs_or_call1429 to %A* 
  call void %init1432( %A* %cast_op1434 )
  %lhs_or_call1435 = load %A** %vdecl_slot1428
  %vtable_ptr1436 = getelementptr %A* %lhs_or_call1435, i32 0
  %vtable1437 = load %_A_vtable** %vtable_ptr1436
  %sum1439 = getelementptr %_A_vtable* %vtable1437, i32 0, i32 4
  %sum1438 = load i32 (%A*)** %sum1439
  %cast_op1440 = bitcast %A %lhs_or_call1435 to %A* 
  %ret1441 = call i32 %sum1438 ( %A* %cast_op1440 )
  ret i32 %ret1441
}


define i32 @_A_sum (%A* %_this1){
__fresh347:
  %vdecl_slot1368 = alloca i32
  store i32 0, i32* %vdecl_slot1368
  %arr1369 = getelementptr %A* %_this1, i32 0, i32 5
  %lhs_or_call1370 = load { i32, [ 0 x %A* ] }** %arr1369
  %ifnull_slot1371 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %lhs_or_call1370, { i32, [ 0 x %A* ] }** %ifnull_slot1371
  %ifnull_guard1372 = icmp ne { i32, [ 0 x %A* ] }* %lhs_or_call1370, null
  br i1 %ifnull_guard1372, label %__then346, label %__else345

__fresh348:
  br label %__then346

__then346:
  %vdecl_slot1373 = alloca i32
  store i32 0, i32* %vdecl_slot1373
  br label %__cond340

__cond340:
  %lhs_or_call1374 = load i32* %vdecl_slot1373
  %lhs_or_call1375 = load { i32, [ 0 x %A* ] }** %ifnull_slot1371
  %len_ptr1376 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1375, i32 0, i32 0
  %len1377 = load i32* %len_ptr1376
  %bop1378 = icmp slt i32 %lhs_or_call1374, %len1377
  br i1 %bop1378, label %__body339, label %__post338

__fresh349:
  br label %__body339

__body339:
  %lhs_or_call1379 = load { i32, [ 0 x %A* ] }** %ifnull_slot1371
  %lhs_or_call1380 = load i32* %vdecl_slot1373
  %bound_ptr1382 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1379, i32 0, i32 0
  %bound1383 = load i32* %bound_ptr1382
  call void @oat_array_bounds_check( i32 %bound1383, i32 %lhs_or_call1380 )
  %elt1381 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1379, i32 0, i32 1, i32 %lhs_or_call1380
  %lhs_or_call1384 = load %A** %elt1381
  %vtable_ptr1385 = getelementptr %A* %lhs_or_call1384, i32 0
  %vtable1386 = load %_A_vtable** %vtable_ptr1385
  %incr1388 = getelementptr %_A_vtable* %vtable1386, i32 0, i32 3
  %incr1387 = load void (%A*)** %incr1388
  %cast_op1389 = bitcast %A %lhs_or_call1384 to %A* 
  call void %incr1387( %A* %cast_op1389 )
  %lhs_or_call1390 = load i32* %vdecl_slot1373
  %bop1391 = add i32 %lhs_or_call1390, 1
  store i32 %bop1391, i32* %vdecl_slot1373
  br label %__cond340

__fresh350:
  br label %__post338

__post338:
  %vdecl_slot1392 = alloca i32
  store i32 0, i32* %vdecl_slot1392
  br label %__cond343

__cond343:
  %lhs_or_call1393 = load i32* %vdecl_slot1392
  %lhs_or_call1394 = load { i32, [ 0 x %A* ] }** %ifnull_slot1371
  %len_ptr1395 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1394, i32 0, i32 0
  %len1396 = load i32* %len_ptr1395
  %bop1397 = icmp slt i32 %lhs_or_call1393, %len1396
  br i1 %bop1397, label %__body342, label %__post341

__fresh351:
  br label %__body342

__body342:
  %lhs_or_call1398 = load i32* %vdecl_slot1368
  %lhs_or_call1399 = load { i32, [ 0 x %A* ] }** %ifnull_slot1371
  %lhs_or_call1400 = load i32* %vdecl_slot1392
  %bound_ptr1402 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1399, i32 0, i32 0
  %bound1403 = load i32* %bound_ptr1402
  call void @oat_array_bounds_check( i32 %bound1403, i32 %lhs_or_call1400 )
  %elt1401 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1399, i32 0, i32 1, i32 %lhs_or_call1400
  %lhs_or_call1404 = load %A** %elt1401
  %a1405 = getelementptr %A* %lhs_or_call1404, i32 0, i32 2
  %lhs_or_call1406 = load i32* %a1405
  %bop1407 = add i32 %lhs_or_call1398, %lhs_or_call1406
  store i32 %bop1407, i32* %vdecl_slot1368
  %lhs_or_call1408 = load i32* %vdecl_slot1368
  %lhs_or_call1409 = load { i32, [ 0 x %A* ] }** %ifnull_slot1371
  %lhs_or_call1410 = load i32* %vdecl_slot1392
  %bound_ptr1412 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1409, i32 0, i32 0
  %bound1413 = load i32* %bound_ptr1412
  call void @oat_array_bounds_check( i32 %bound1413, i32 %lhs_or_call1410 )
  %elt1411 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1409, i32 0, i32 1, i32 %lhs_or_call1410
  %lhs_or_call1414 = load %A** %elt1411
  %b1415 = getelementptr %A* %lhs_or_call1414, i32 0, i32 3
  %lhs_or_call1416 = load i32* %b1415
  %bop1417 = add i32 %lhs_or_call1408, %lhs_or_call1416
  store i32 %bop1417, i32* %vdecl_slot1368
  %lhs_or_call1418 = load i32* %vdecl_slot1392
  %bop1419 = add i32 %lhs_or_call1418, 1
  store i32 %bop1419, i32* %vdecl_slot1392
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
  %lhs_or_call1420 = load i32* %vdecl_slot1368
  ret i32 %lhs_or_call1420
}


define void @_A_incr (%A* %_this1){
__fresh337:
  %a1360 = getelementptr %A* %_this1, i32 0, i32 2
  %a1361 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1362 = load i32* %a1361
  %bop1363 = add i32 %lhs_or_call1362, 1
  store i32 %bop1363, i32* %a1360
  %b1364 = getelementptr %A* %_this1, i32 0, i32 3
  %b1365 = getelementptr %A* %_this1, i32 0, i32 3
  %lhs_or_call1366 = load i32* %b1365
  %bop1367 = add i32 %lhs_or_call1366, 1
  store i32 %bop1367, i32* %b1364
  ret void
}


define void @_A_init (%A* %_this1){
__fresh328:
  %o1326 = getelementptr %A* %_this1, i32 0, i32 4
  %mem_ptr1327 = call i32* @oat_malloc ( i32 24 )
  %obj1328 = bitcast i32* %mem_ptr1327 to %A* 
  %new_obj1329 = call %A* @_A_ctor ( %A* %obj1328 )
  %cast_op1330 = bitcast %A* %new_obj1329 to %O* 
  store %O* %cast_op1330, %O** %o1326
  %o1331 = getelementptr %A* %_this1, i32 0, i32 4
  %lhs_or_call1332 = load %O** %o1331
  %ifnull_slot1333 = alloca %O*
  store %O* %lhs_or_call1332, %O** %ifnull_slot1333
  %ifnull_guard1334 = icmp ne %O* %lhs_or_call1332, null
  br i1 %ifnull_guard1334, label %__then324, label %__else323

__fresh329:
  br label %__then324

__then324:
  br label %__bound_check317

__fresh330:
  br label %__bound_check317

__bound_check317:
  %cast_op1340 = bitcast %_A_vtable* @_A_vtable274 to i8** 
  %rvtable1339 = load i8** %rvtable1336
  %lvtable1337 = load i8** %cast_op1340
  %compare1338 = icmp eq i8* %rvtable1339, null
  br i1 %compare1338, label %__end_no320, label %__check_curr319

__fresh331:
  br label %__check_curr319

__check_curr319:
  %compare1338 = icmp eq i8** %lvtable1337, %rvtable1339
  br i1 %compare1338, label %__end_yes321, label %__move_up318

__fresh332:
  br label %__move_up318

__move_up318:
  %rvtable1336 = getelementptr i8* %rvtable1339, i32 0
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
  %arr1341 = getelementptr %A* %_this1, i32 0, i32 5
  %array_ptr1342 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1343 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1342 to { i32, [ 0 x %A* ] }* 
  %_tmp2711344 = alloca i32
  store i32 2, i32* %_tmp2711344
  %_tmp2721345 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1343, { i32, [ 0 x %A* ] }** %_tmp2721345
  %vdecl_slot1346 = alloca i32
  store i32 0, i32* %vdecl_slot1346
  br label %__cond327

__cond327:
  %lhs_or_call1347 = load i32* %vdecl_slot1346
  %lhs_or_call1348 = load i32* %_tmp2711344
  %bop1349 = icmp slt i32 %lhs_or_call1347, %lhs_or_call1348
  br i1 %bop1349, label %__body326, label %__post325

__fresh335:
  br label %__body326

__body326:
  %lhs_or_call1350 = load { i32, [ 0 x %A* ] }** %_tmp2721345
  %lhs_or_call1351 = load i32* %vdecl_slot1346
  %bound_ptr1353 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1350, i32 0, i32 0
  %bound1354 = load i32* %bound_ptr1353
  call void @oat_array_bounds_check( i32 %bound1354, i32 %lhs_or_call1351 )
  %elt1352 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1350, i32 0, i32 1, i32 %lhs_or_call1351
  %mem_ptr1355 = call i32* @oat_malloc ( i32 24 )
  %obj1356 = bitcast i32* %mem_ptr1355 to %A* 
  %new_obj1357 = call %A* @_A_ctor ( %A* %obj1356 )
  store %A* %new_obj1357, %A** %elt1352
  %lhs_or_call1358 = load i32* %vdecl_slot1346
  %bop1359 = add i32 %lhs_or_call1358, 1
  store i32 %bop1359, i32* %vdecl_slot1346
  br label %__cond327

__fresh336:
  br label %__post325

__post325:
  store { i32, [ 0 x %A* ] }* %array1343, { i32, [ 0 x %A* ] }** %arr1341
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh316:
  %mem_ptr1319 = call i32* @oat_malloc ( i32 8 )
  %obj1320 = bitcast i32* %mem_ptr1319 to %O* 
  %new_obj1321 = call %O* @_O_ctor ( %O* %obj1320 )
  %_this1 = bitcast %O* %new_obj1321 to %A 
  %_name1322 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str277, i8** %_name1322
  %a1323 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %a1323
  %b1324 = getelementptr %A* %_this1, i32 0, i32 3
  store i32 2, i32* %b1324
  %this_vtable1325 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable274, %_A_vtable** %this_vtable1325
  ret %A* %_this1
}


define %O* @_O_ctor (%O* %_this1){
__fresh315:
  %mem_ptr1314 = call i32* @oat_malloc ( i32 8 )
  %obj1315 = bitcast i32* %mem_ptr1314 to %Object* 
  %new_obj1316 = call %Object* @_Object_ctor ( %Object* %obj1315 )
  %_this1 = bitcast %Object* %new_obj1316 to %O 
  %_name1317 = getelementptr %O* %_this1, i32 0, i32 1
  store i8* @_const_str276, i8** %_name1317
  %this_vtable1318 = getelementptr %O* %_this1, i32 0, i32 0
  store %_O_vtable* @_O_vtable273, %_O_vtable** %this_vtable1318
  ret %O* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh314:
  %_name1312 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1313 = load i8** %_name1312
  ret i8* %lhs_or_call1313
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh313:
  %_name1310 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str275, i8** %_name1310
  %this_vtable1311 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable272, %_Object_vtable** %this_vtable1311
  ret %Object* %_this1
}


