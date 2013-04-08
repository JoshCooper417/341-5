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


define i32 @program (i32 %argc1371, { i32, [ 0 x i8* ] }* %argv1369){
__fresh333:
  %argc_slot1372 = alloca i32
  store i32 %argc1371, i32* %argc_slot1372
  %argv_slot1370 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1369, { i32, [ 0 x i8* ] }** %argv_slot1370
  %mem_ptr1373 = call i32* @oat_malloc ( i32 8 )
  %obj1374 = bitcast i32* %mem_ptr1373 to %A* 
  %new_obj1375 = call %A* @_A_ctor ( %A* %obj1374 )
  %vdecl_slot1376 = alloca %A*
  store %A* %new_obj1375, %A** %vdecl_slot1376
  %mem_ptr1377 = call i32* @oat_malloc ( i32 8 )
  %obj1378 = bitcast i32* %mem_ptr1377 to %B* 
  %new_obj1379 = call %B* @_B_ctor ( %B* %obj1378 )
  %vdecl_slot1380 = alloca %B*
  store %B* %new_obj1379, %B** %vdecl_slot1380
  %mem_ptr1381 = call i32* @oat_malloc ( i32 8 )
  %obj1382 = bitcast i32* %mem_ptr1381 to %C* 
  %new_obj1383 = call %C* @_C_ctor ( %C* %obj1382 )
  %vdecl_slot1384 = alloca %C*
  store %C* %new_obj1383, %C** %vdecl_slot1384
  %lhs_or_call1385 = load %A** %vdecl_slot1376
  %vtable_ptr1386 = getelementptr %A* %lhs_or_call1385, i32 0
  %vtable1387 = load %_A_vtable** %vtable_ptr1386
  %print1389 = getelementptr %_A_vtable* %vtable1387, i32 0, i32 3
  %print1388 = load void (%A*)** %print1389
  %cast_op1390 = bitcast %A %lhs_or_call1385 to %A* 
  call void %print1388( %A* %cast_op1390 )
  %lhs_or_call1391 = load %B** %vdecl_slot1380
  %vtable_ptr1392 = getelementptr %B* %lhs_or_call1391, i32 0
  %vtable1393 = load %_B_vtable** %vtable_ptr1392
  %print1395 = getelementptr %_B_vtable* %vtable1393, i32 0, i32 3
  %print1394 = load void (%B*)** %print1395
  %cast_op1396 = bitcast %B %lhs_or_call1391 to %B* 
  call void %print1394( %B* %cast_op1396 )
  %lhs_or_call1397 = load %B** %vdecl_slot1380
  %vtable_ptr1398 = getelementptr %B* %lhs_or_call1397, i32 0
  %vtable1399 = load %_B_vtable** %vtable_ptr1398
  %f1401 = getelementptr %_B_vtable* %vtable1399, i32 0, i32 2
  %f1400 = load %C* (%B*)** %f1401
  %cast_op1402 = bitcast %B %lhs_or_call1397 to %B* 
  %ret1403 = call %C* %f1400 ( %B* %cast_op1402 )
  %vtable_ptr1404 = getelementptr %C* %ret1403, i32 0
  %vtable1405 = load %_C_vtable** %vtable_ptr1404
  %print1407 = getelementptr %_C_vtable* %vtable1405, i32 0, i32 2
  %print1406 = load void (%C*)** %print1407
  %cast_op1408 = bitcast %C %ret1403 to %C* 
  call void %print1406( %C* %cast_op1408 )
  %lhs_or_call1409 = load %C** %vdecl_slot1384
  %vtable_ptr1410 = getelementptr %C* %lhs_or_call1409, i32 0
  %vtable1411 = load %_C_vtable** %vtable_ptr1410
  %print1413 = getelementptr %_C_vtable* %vtable1411, i32 0, i32 2
  %print1412 = load void (%C*)** %print1413
  %cast_op1414 = bitcast %C %lhs_or_call1409 to %C* 
  call void %print1412( %C* %cast_op1414 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh332:
  call void @print_string( i8* @_const_str287 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh331:
  %mem_ptr1364 = call i32* @oat_malloc ( i32 8 )
  %obj1365 = bitcast i32* %mem_ptr1364 to %Object* 
  %new_obj1366 = call %Object* @_Object_ctor ( %Object* %obj1365 )
  %_this1 = bitcast %Object* %new_obj1366 to %C 
  %_name1367 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str286, i8** %_name1367
  %this_vtable1368 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable280, %_C_vtable** %this_vtable1368
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh330:
  call void @print_string( i8* @_const_str285 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh329:
  %mem_ptr1361 = call i32* @oat_malloc ( i32 8 )
  %obj1362 = bitcast i32* %mem_ptr1361 to %C* 
  %new_obj1363 = call %C* @_C_ctor ( %C* %obj1362 )
  ret %C* %new_obj1363
}


define %B* @_B_ctor (%B* %_this1){
__fresh328:
  %mem_ptr1356 = call i32* @oat_malloc ( i32 8 )
  %obj1357 = bitcast i32* %mem_ptr1356 to %A* 
  %new_obj1358 = call %A* @_A_ctor ( %A* %obj1357 )
  %_this1 = bitcast %A* %new_obj1358 to %B 
  %_name1359 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str284, i8** %_name1359
  %this_vtable1360 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable279, %_B_vtable** %this_vtable1360
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh327:
  call void @print_string( i8* @_const_str283 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh326:
  %mem_ptr1352 = call i32* @oat_malloc ( i32 8 )
  %obj1353 = bitcast i32* %mem_ptr1352 to %B* 
  %new_obj1354 = call %B* @_B_ctor ( %B* %obj1353 )
  %cast_op1355 = bitcast %B* %new_obj1354 to %Object* 
  ret %Object* %cast_op1355
}


define %A* @_A_ctor (%A* %_this1){
__fresh325:
  %mem_ptr1347 = call i32* @oat_malloc ( i32 8 )
  %obj1348 = bitcast i32* %mem_ptr1347 to %Object* 
  %new_obj1349 = call %Object* @_Object_ctor ( %Object* %obj1348 )
  %_this1 = bitcast %Object* %new_obj1349 to %A 
  %_name1350 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str282, i8** %_name1350
  %this_vtable1351 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable278, %_A_vtable** %this_vtable1351
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh324:
  %_name1345 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1346 = load i8** %_name1345
  ret i8* %lhs_or_call1346
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh323:
  %_name1343 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str281, i8** %_name1343
  %this_vtable1344 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable277, %_Object_vtable** %this_vtable1344
  ret %Object* %_this1
}


