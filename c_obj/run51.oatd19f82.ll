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
@_const_str287.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str287 = alias bitcast([ 2 x i8 ]* @_const_str287.str. to i8*)@_const_str286.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str286 = alias bitcast([ 2 x i8 ]* @_const_str286.str. to i8*)@_const_str285.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str285 = alias bitcast([ 2 x i8 ]* @_const_str285.str. to i8*)@_const_str284.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str284 = alias bitcast([ 2 x i8 ]* @_const_str284.str. to i8*)@_const_str283.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str283 = alias bitcast([ 2 x i8 ]* @_const_str283.str. to i8*)@_const_str282.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str282 = alias bitcast([ 2 x i8 ]* @_const_str282.str. to i8*)@_const_str281.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str281 = alias bitcast([ 7 x i8 ]* @_const_str281.str. to i8*)@_C_vtable280 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable277, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print}, align 4
@_B_vtable279 = private constant %_B_vtable {%_A_vtable* @_A_vtable278, i8* (%Object*)* @_Object_get_name, %C* (%B*)* @_B_f, void (%B*)* @_B_print}, align 4
@_A_vtable278 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable277, i8* (%Object*)* @_Object_get_name, %Object* (%A*)* @_A_f, void (%A*)* @_A_print}, align 4
@_Object_vtable277 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh334:
  ret void
}


define i32 @program (i32 %argc1378, { i32, [ 0 x i8* ] }* %argv1376){
__fresh333:
  %argc_slot1379 = alloca i32
  store i32 %argc1378, i32* %argc_slot1379
  %argv_slot1377 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1376, { i32, [ 0 x i8* ] }** %argv_slot1377
  %mem_ptr1380 = call i32* @oat_malloc ( i32 8 )
  %obj1381 = bitcast i32* %mem_ptr1380 to %A* 
  %new_obj1382 = call %A* @_A_ctor ( %A* %obj1381 )
  %vdecl_slot1383 = alloca %A*
  store %A* %new_obj1382, %A** %vdecl_slot1383
  %mem_ptr1384 = call i32* @oat_malloc ( i32 8 )
  %obj1385 = bitcast i32* %mem_ptr1384 to %B* 
  %new_obj1386 = call %B* @_B_ctor ( %B* %obj1385 )
  %vdecl_slot1387 = alloca %B*
  store %B* %new_obj1386, %B** %vdecl_slot1387
  %mem_ptr1388 = call i32* @oat_malloc ( i32 8 )
  %obj1389 = bitcast i32* %mem_ptr1388 to %C* 
  %new_obj1390 = call %C* @_C_ctor ( %C* %obj1389 )
  %vdecl_slot1391 = alloca %C*
  store %C* %new_obj1390, %C** %vdecl_slot1391
  %lhs_or_call1392 = load %A** %vdecl_slot1383
  %vtable_ptr1393 = getelementptr %A* %lhs_or_call1392, i32 0
  %vtable1394 = load %_A_vtable** %vtable_ptr1393
  %print1396 = getelementptr %_A_vtable* %vtable1394, i32 0, i32 3
  %print1395 = load void (%A*)** %print1396
  %cast_op1397 = bitcast %A %lhs_or_call1392 to %A* 
  call void %print1395( %A* %cast_op1397 )
  %lhs_or_call1398 = load %B** %vdecl_slot1387
  %vtable_ptr1399 = getelementptr %B* %lhs_or_call1398, i32 0
  %vtable1400 = load %_B_vtable** %vtable_ptr1399
  %print1402 = getelementptr %_B_vtable* %vtable1400, i32 0, i32 3
  %print1401 = load void (%B*)** %print1402
  %cast_op1403 = bitcast %B %lhs_or_call1398 to %B* 
  call void %print1401( %B* %cast_op1403 )
  %lhs_or_call1404 = load %B** %vdecl_slot1387
  %vtable_ptr1405 = getelementptr %B* %lhs_or_call1404, i32 0
  %vtable1406 = load %_B_vtable** %vtable_ptr1405
  %f1408 = getelementptr %_B_vtable* %vtable1406, i32 0, i32 2
  %f1407 = load %C* (%B*)** %f1408
  %cast_op1409 = bitcast %B %lhs_or_call1404 to %B* 
  %ret1410 = call %C* %f1407 ( %B* %cast_op1409 )
  %vtable_ptr1411 = getelementptr %C* %ret1410, i32 0
  %vtable1412 = load %_C_vtable** %vtable_ptr1411
  %print1414 = getelementptr %_C_vtable* %vtable1412, i32 0, i32 2
  %print1413 = load void (%C*)** %print1414
  %cast_op1415 = bitcast %C %ret1410 to %C* 
  call void %print1413( %C* %cast_op1415 )
  %lhs_or_call1416 = load %C** %vdecl_slot1391
  %vtable_ptr1417 = getelementptr %C* %lhs_or_call1416, i32 0
  %vtable1418 = load %_C_vtable** %vtable_ptr1417
  %print1420 = getelementptr %_C_vtable* %vtable1418, i32 0, i32 2
  %print1419 = load void (%C*)** %print1420
  %cast_op1421 = bitcast %C %lhs_or_call1416 to %C* 
  call void %print1419( %C* %cast_op1421 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh332:
  call void @print_string( i8* @_const_str287 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh331:
  %mem_ptr1371 = call i32* @oat_malloc ( i32 8 )
  %obj1372 = bitcast i32* %mem_ptr1371 to %Object* 
  %new_obj1373 = call %Object* @_Object_ctor ( %Object* %obj1372 )
  %_this1 = bitcast %Object* %new_obj1373 to %C 
  %_name1374 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str286, i8** %_name1374
  %this_vtable1375 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable280, %_C_vtable** %this_vtable1375
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh330:
  call void @print_string( i8* @_const_str285 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh329:
  %mem_ptr1368 = call i32* @oat_malloc ( i32 8 )
  %obj1369 = bitcast i32* %mem_ptr1368 to %C* 
  %new_obj1370 = call %C* @_C_ctor ( %C* %obj1369 )
  ret %C* %new_obj1370
}


define %B* @_B_ctor (%B* %_this1){
__fresh328:
  %mem_ptr1363 = call i32* @oat_malloc ( i32 8 )
  %obj1364 = bitcast i32* %mem_ptr1363 to %A* 
  %new_obj1365 = call %A* @_A_ctor ( %A* %obj1364 )
  %_this1 = bitcast %A* %new_obj1365 to %B 
  %_name1366 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str284, i8** %_name1366
  %this_vtable1367 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable279, %_B_vtable** %this_vtable1367
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh327:
  call void @print_string( i8* @_const_str283 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh326:
  %mem_ptr1359 = call i32* @oat_malloc ( i32 8 )
  %obj1360 = bitcast i32* %mem_ptr1359 to %B* 
  %new_obj1361 = call %B* @_B_ctor ( %B* %obj1360 )
  %cast_op1362 = bitcast %B* %new_obj1361 to %Object* 
  ret %Object* %cast_op1362
}


define %A* @_A_ctor (%A* %_this1){
__fresh325:
  %mem_ptr1354 = call i32* @oat_malloc ( i32 8 )
  %obj1355 = bitcast i32* %mem_ptr1354 to %Object* 
  %new_obj1356 = call %Object* @_Object_ctor ( %Object* %obj1355 )
  %_this1 = bitcast %Object* %new_obj1356 to %A 
  %_name1357 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str282, i8** %_name1357
  %this_vtable1358 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable278, %_A_vtable** %this_vtable1358
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh324:
  %_name1352 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1353 = load i8** %_name1352
  ret i8* %lhs_or_call1353
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh323:
  %_name1350 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str281, i8** %_name1350
  %this_vtable1351 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable277, %_Object_vtable** %this_vtable1351
  ret %Object* %_this1
}


