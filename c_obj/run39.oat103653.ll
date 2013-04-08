%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str254.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str254 = alias bitcast([ 2 x i8 ]* @_const_str254.str. to i8*)@_const_str253.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str253 = alias bitcast([ 2 x i8 ]* @_const_str253.str. to i8*)@_const_str252.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str252 = alias bitcast([ 2 x i8 ]* @_const_str252.str. to i8*)@_const_str251.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str251 = alias bitcast([ 2 x i8 ]* @_const_str251.str. to i8*)@_const_str250.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str250 = alias bitcast([ 2 x i8 ]* @_const_str250.str. to i8*)@_const_str249.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str249 = alias bitcast([ 2 x i8 ]* @_const_str249.str. to i8*)@_const_str248.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str248 = alias bitcast([ 7 x i8 ]* @_const_str248.str. to i8*)@_C_vtable247 = private constant %_C_vtable {%_B_vtable* @_B_vtable246, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable246 = private constant %_B_vtable {%_A_vtable* @_A_vtable245, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable245 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable244, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable244 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh487:
  ret void
}


define i32 @program (i32 %argc1362, { i32, [ 0 x i8* ] }* %argv1360){
__fresh486:
  %argc_slot1363 = alloca i32
  store i32 %argc1362, i32* %argc_slot1363
  %argv_slot1361 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1360, { i32, [ 0 x i8* ] }** %argv_slot1361
  %mem_ptr1364 = call i32* @oat_malloc ( i32 8 )
  %obj1365 = bitcast i32* %mem_ptr1364 to %A* 
  %new_obj1366 = call %A* @_A_ctor ( %A* %obj1365 )
  call void @f( %A* %new_obj1366 )
  %mem_ptr1367 = call i32* @oat_malloc ( i32 8 )
  %obj1368 = bitcast i32* %mem_ptr1367 to %B* 
  %new_obj1369 = call %B* @_B_ctor ( %B* %obj1368 )
  %cast_op1370 = bitcast %B* %new_obj1369 to %A* 
  call void @f( %A* %cast_op1370 )
  %mem_ptr1371 = call i32* @oat_malloc ( i32 8 )
  %obj1372 = bitcast i32* %mem_ptr1371 to %C* 
  %new_obj1373 = call %C* @_C_ctor ( %C* %obj1372 )
  %cast_op1374 = bitcast %C* %new_obj1373 to %A* 
  call void @f( %A* %cast_op1374 )
  ret i32 0
}


define void @f (%A* %x1316){
__fresh464:
  %x_slot1317 = alloca %A*
  store %A* %x1316, %A** %x_slot1317
  br label %__init443

__fresh465:
  br label %__init443

__init443:
  %lhs_or_call1319 = load %A** %x_slot1317
  %rvtable1326 = getelementptr %A* %lhs_or_call1319, i32 0
  br label %__bound_check444

__fresh466:
  br label %__bound_check444

__bound_check444:
  %cast_op1330 = bitcast %_C_vtable* @_C_vtable247 to i8** 
  %lvtable1327 = load i8** %cast_op1330
  %cast_vtable1331 = bitcast i8** %rvtable1326 to i8** 
  %rvtable1329 = load i8** %cast_vtable1331
  %compare1328 = icmp eq i8* %rvtable1329, null
  br i1 %compare1328, label %__end_no447, label %__check_curr446

__fresh467:
  br label %__check_curr446

__check_curr446:
  %compare1328 = icmp eq i8** %lvtable1327, %rvtable1329
  br i1 %compare1328, label %__end_yes448, label %__move_up445

__fresh468:
  br label %__move_up445

__move_up445:
  %rvtable1326 = getelementptr i8* %rvtable1329, i32 0
  br label %__bound_check444

__fresh469:
  br label %__end_yes448

__end_yes448:
  %lhs_or_call1319 = load %A** %x_slot1317
  %cast_ptr1318 = bitcast %A* %lhs_or_call1319 to %C* 
  %lhs_or_call1320 = load %C** %cast_ptr1318
  %vtable_ptr1321 = getelementptr %C* %lhs_or_call1320, i32 0
  %vtable1322 = load %_C_vtable** %vtable_ptr1321
  %f1324 = getelementptr %_C_vtable* %vtable1322, i32 0, i32 2
  %f1323 = load void (%C*)** %f1324
  %cast_op1325 = bitcast %C %lhs_or_call1320 to %C* 
  call void %f1323( %C* %cast_op1325 )
  br label %__end449

__fresh470:
  br label %__end_no447

__end_no447:
  br label %__end449

__fresh471:
  br label %__end449

__end449:
  br label %__init450

__fresh472:
  br label %__init450

__init450:
  %lhs_or_call1333 = load %A** %x_slot1317
  %rvtable1340 = getelementptr %A* %lhs_or_call1333, i32 0
  br label %__bound_check451

__fresh473:
  br label %__bound_check451

__bound_check451:
  %cast_op1344 = bitcast %_B_vtable* @_B_vtable246 to i8** 
  %lvtable1341 = load i8** %cast_op1344
  %cast_vtable1345 = bitcast i8** %rvtable1340 to i8** 
  %rvtable1343 = load i8** %cast_vtable1345
  %compare1342 = icmp eq i8* %rvtable1343, null
  br i1 %compare1342, label %__end_no454, label %__check_curr453

__fresh474:
  br label %__check_curr453

__check_curr453:
  %compare1342 = icmp eq i8** %lvtable1341, %rvtable1343
  br i1 %compare1342, label %__end_yes455, label %__move_up452

__fresh475:
  br label %__move_up452

__move_up452:
  %rvtable1340 = getelementptr i8* %rvtable1343, i32 0
  br label %__bound_check451

__fresh476:
  br label %__end_yes455

__end_yes455:
  %lhs_or_call1333 = load %A** %x_slot1317
  %cast_ptr1332 = bitcast %A* %lhs_or_call1333 to %B* 
  %lhs_or_call1334 = load %B** %cast_ptr1332
  %vtable_ptr1335 = getelementptr %B* %lhs_or_call1334, i32 0
  %vtable1336 = load %_B_vtable** %vtable_ptr1335
  %f1338 = getelementptr %_B_vtable* %vtable1336, i32 0, i32 2
  %f1337 = load void (%B*)** %f1338
  %cast_op1339 = bitcast %B %lhs_or_call1334 to %B* 
  call void %f1337( %B* %cast_op1339 )
  br label %__end456

__fresh477:
  br label %__end_no454

__end_no454:
  br label %__end456

__fresh478:
  br label %__end456

__end456:
  br label %__init457

__fresh479:
  br label %__init457

__init457:
  %lhs_or_call1347 = load %A** %x_slot1317
  %rvtable1354 = getelementptr %A* %lhs_or_call1347, i32 0
  br label %__bound_check458

__fresh480:
  br label %__bound_check458

__bound_check458:
  %cast_op1358 = bitcast %_A_vtable* @_A_vtable245 to i8** 
  %lvtable1355 = load i8** %cast_op1358
  %cast_vtable1359 = bitcast i8** %rvtable1354 to i8** 
  %rvtable1357 = load i8** %cast_vtable1359
  %compare1356 = icmp eq i8* %rvtable1357, null
  br i1 %compare1356, label %__end_no461, label %__check_curr460

__fresh481:
  br label %__check_curr460

__check_curr460:
  %compare1356 = icmp eq i8** %lvtable1355, %rvtable1357
  br i1 %compare1356, label %__end_yes462, label %__move_up459

__fresh482:
  br label %__move_up459

__move_up459:
  %rvtable1354 = getelementptr i8* %rvtable1357, i32 0
  br label %__bound_check458

__fresh483:
  br label %__end_yes462

__end_yes462:
  %lhs_or_call1347 = load %A** %x_slot1317
  %cast_ptr1346 = bitcast %A* %lhs_or_call1347 to %A* 
  %lhs_or_call1348 = load %A** %cast_ptr1346
  %vtable_ptr1349 = getelementptr %A* %lhs_or_call1348, i32 0
  %vtable1350 = load %_A_vtable** %vtable_ptr1349
  %f1352 = getelementptr %_A_vtable* %vtable1350, i32 0, i32 2
  %f1351 = load void (%A*)** %f1352
  %cast_op1353 = bitcast %A %lhs_or_call1348 to %A* 
  call void %f1351( %A* %cast_op1353 )
  br label %__end463

__fresh484:
  br label %__end_no461

__end_no461:
  br label %__end463

__fresh485:
  br label %__end463

__end463:
  ret void
}


define void @_C_f (%C* %_this1){
__fresh442:
  call void @print_string( i8* @_const_str254 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh441:
  %mem_ptr1311 = call i32* @oat_malloc ( i32 8 )
  %obj1312 = bitcast i32* %mem_ptr1311 to %B* 
  %new_obj1313 = call %B* @_B_ctor ( %B* %obj1312 )
  %_this1 = bitcast %B* %new_obj1313 to %C 
  %_name1314 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str253, i8** %_name1314
  %this_vtable1315 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable247, %_C_vtable** %this_vtable1315
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh440:
  call void @print_string( i8* @_const_str252 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh439:
  %mem_ptr1306 = call i32* @oat_malloc ( i32 8 )
  %obj1307 = bitcast i32* %mem_ptr1306 to %A* 
  %new_obj1308 = call %A* @_A_ctor ( %A* %obj1307 )
  %_this1 = bitcast %A* %new_obj1308 to %B 
  %_name1309 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str251, i8** %_name1309
  %this_vtable1310 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable246, %_B_vtable** %this_vtable1310
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh438:
  call void @print_string( i8* @_const_str250 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh437:
  %mem_ptr1301 = call i32* @oat_malloc ( i32 8 )
  %obj1302 = bitcast i32* %mem_ptr1301 to %Object* 
  %new_obj1303 = call %Object* @_Object_ctor ( %Object* %obj1302 )
  %_this1 = bitcast %Object* %new_obj1303 to %A 
  %_name1304 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str249, i8** %_name1304
  %this_vtable1305 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable245, %_A_vtable** %this_vtable1305
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh436:
  %_name1299 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1300 = load i8** %_name1299
  ret i8* %lhs_or_call1300
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh435:
  %_name1297 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str248, i8** %_name1297
  %this_vtable1298 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable244, %_Object_vtable** %this_vtable1298
  ret %Object* %_this1
}


