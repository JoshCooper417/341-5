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
@_const_str298.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str298 = alias bitcast([ 2 x i8 ]* @_const_str298.str. to i8*)@_const_str297.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str297 = alias bitcast([ 2 x i8 ]* @_const_str297.str. to i8*)@_const_str296.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str296 = alias bitcast([ 2 x i8 ]* @_const_str296.str. to i8*)@_const_str295.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str295 = alias bitcast([ 2 x i8 ]* @_const_str295.str. to i8*)@_const_str294.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str294 = alias bitcast([ 2 x i8 ]* @_const_str294.str. to i8*)@_const_str293.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str293 = alias bitcast([ 2 x i8 ]* @_const_str293.str. to i8*)@_const_str292.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str292 = alias bitcast([ 7 x i8 ]* @_const_str292.str. to i8*)@_C_vtable291 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable288, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print}, align 4
@_B_vtable290 = private constant %_B_vtable {%_A_vtable* @_A_vtable289, i8* (%Object*)* @_Object_get_name, %C* (%B*)* @_B_f, void (%B*)* @_B_print}, align 4
@_A_vtable289 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable288, i8* (%Object*)* @_Object_get_name, %Object* (%A*)* @_A_f, void (%A*)* @_A_print}, align 4
@_Object_vtable288 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh334:
  ret void
}


define i32 @program (i32 %argc1390, { i32, [ 0 x i8* ] }* %argv1388){
__fresh333:
  %argc_slot1391 = alloca i32
  store i32 %argc1390, i32* %argc_slot1391
  %argv_slot1389 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1388, { i32, [ 0 x i8* ] }** %argv_slot1389
  %mem_ptr1392 = call i32* @oat_malloc ( i32 8 )
  %obj1393 = bitcast i32* %mem_ptr1392 to %A* 
  %new_obj1394 = call %A* @_A_ctor ( %A* %obj1393 )
  %vdecl_slot1395 = alloca %A*
  store %A* %new_obj1394, %A** %vdecl_slot1395
  %mem_ptr1396 = call i32* @oat_malloc ( i32 8 )
  %obj1397 = bitcast i32* %mem_ptr1396 to %B* 
  %new_obj1398 = call %B* @_B_ctor ( %B* %obj1397 )
  %vdecl_slot1399 = alloca %B*
  store %B* %new_obj1398, %B** %vdecl_slot1399
  %mem_ptr1400 = call i32* @oat_malloc ( i32 8 )
  %obj1401 = bitcast i32* %mem_ptr1400 to %C* 
  %new_obj1402 = call %C* @_C_ctor ( %C* %obj1401 )
  %vdecl_slot1403 = alloca %C*
  store %C* %new_obj1402, %C** %vdecl_slot1403
  %lhs_or_call1404 = load %A** %vdecl_slot1395
  %vtable_ptr1405 = getelementptr %A* %lhs_or_call1404, i32 0
  %vtable1406 = load %_A_vtable** %vtable_ptr1405
  %print1408 = getelementptr %_A_vtable* %vtable1406, i32 0, i32 3
  %print1407 = load void (%A*)** %print1408
  %cast_op1409 = bitcast %A %lhs_or_call1404 to %A* 
  call void %print1407( %A* %cast_op1409 )
  %lhs_or_call1410 = load %B** %vdecl_slot1399
  %vtable_ptr1411 = getelementptr %B* %lhs_or_call1410, i32 0
  %vtable1412 = load %_B_vtable** %vtable_ptr1411
  %print1414 = getelementptr %_B_vtable* %vtable1412, i32 0, i32 3
  %print1413 = load void (%B*)** %print1414
  %cast_op1415 = bitcast %B %lhs_or_call1410 to %B* 
  call void %print1413( %B* %cast_op1415 )
  %lhs_or_call1416 = load %B** %vdecl_slot1399
  %vtable_ptr1417 = getelementptr %B* %lhs_or_call1416, i32 0
  %vtable1418 = load %_B_vtable** %vtable_ptr1417
  %f1420 = getelementptr %_B_vtable* %vtable1418, i32 0, i32 2
  %f1419 = load %C* (%B*)** %f1420
  %cast_op1421 = bitcast %B %lhs_or_call1416 to %B* 
  %ret1422 = call %C* %f1419 ( %B* %cast_op1421 )
  %vtable_ptr1423 = getelementptr %C* %ret1422, i32 0
  %vtable1424 = load %_C_vtable** %vtable_ptr1423
  %print1426 = getelementptr %_C_vtable* %vtable1424, i32 0, i32 2
  %print1425 = load void (%C*)** %print1426
  %cast_op1427 = bitcast %C %ret1422 to %C* 
  call void %print1425( %C* %cast_op1427 )
  %lhs_or_call1428 = load %C** %vdecl_slot1403
  %vtable_ptr1429 = getelementptr %C* %lhs_or_call1428, i32 0
  %vtable1430 = load %_C_vtable** %vtable_ptr1429
  %print1432 = getelementptr %_C_vtable* %vtable1430, i32 0, i32 2
  %print1431 = load void (%C*)** %print1432
  %cast_op1433 = bitcast %C %lhs_or_call1428 to %C* 
  call void %print1431( %C* %cast_op1433 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh332:
  call void @print_string( i8* @_const_str298 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh331:
  %mem_ptr1383 = call i32* @oat_malloc ( i32 8 )
  %obj1384 = bitcast i32* %mem_ptr1383 to %Object* 
  %new_obj1385 = call %Object* @_Object_ctor ( %Object* %obj1384 )
  %_this1 = bitcast %Object* %new_obj1385 to %C 
  %_name1386 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str297, i8** %_name1386
  %this_vtable1387 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable291, %_C_vtable** %this_vtable1387
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh330:
  call void @print_string( i8* @_const_str296 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh329:
  %mem_ptr1380 = call i32* @oat_malloc ( i32 8 )
  %obj1381 = bitcast i32* %mem_ptr1380 to %C* 
  %new_obj1382 = call %C* @_C_ctor ( %C* %obj1381 )
  ret %C* %new_obj1382
}


define %B* @_B_ctor (%B* %_this1){
__fresh328:
  %mem_ptr1375 = call i32* @oat_malloc ( i32 8 )
  %obj1376 = bitcast i32* %mem_ptr1375 to %A* 
  %new_obj1377 = call %A* @_A_ctor ( %A* %obj1376 )
  %_this1 = bitcast %A* %new_obj1377 to %B 
  %_name1378 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str295, i8** %_name1378
  %this_vtable1379 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable290, %_B_vtable** %this_vtable1379
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh327:
  call void @print_string( i8* @_const_str294 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh326:
  %mem_ptr1371 = call i32* @oat_malloc ( i32 8 )
  %obj1372 = bitcast i32* %mem_ptr1371 to %B* 
  %new_obj1373 = call %B* @_B_ctor ( %B* %obj1372 )
  %cast_op1374 = bitcast %B* %new_obj1373 to %Object* 
  ret %Object* %cast_op1374
}


define %A* @_A_ctor (%A* %_this1){
__fresh325:
  %mem_ptr1366 = call i32* @oat_malloc ( i32 8 )
  %obj1367 = bitcast i32* %mem_ptr1366 to %Object* 
  %new_obj1368 = call %Object* @_Object_ctor ( %Object* %obj1367 )
  %_this1 = bitcast %Object* %new_obj1368 to %A 
  %_name1369 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str293, i8** %_name1369
  %this_vtable1370 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable289, %_A_vtable** %this_vtable1370
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh324:
  %_name1364 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1365 = load i8** %_name1364
  ret i8* %lhs_or_call1365
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh323:
  %_name1362 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str292, i8** %_name1362
  %this_vtable1363 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable288, %_Object_vtable** %this_vtable1363
  ret %Object* %_this1
}


