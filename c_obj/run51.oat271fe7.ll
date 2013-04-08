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


define i32 @program (i32 %argc1352, { i32, [ 0 x i8* ] }* %argv1350){
__fresh333:
  %argc_slot1353 = alloca i32
  store i32 %argc1352, i32* %argc_slot1353
  %argv_slot1351 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1350, { i32, [ 0 x i8* ] }** %argv_slot1351
  %mem_ptr1354 = call i32* @oat_malloc ( i32 8 )
  %obj1355 = bitcast i32* %mem_ptr1354 to %A* 
  %new_obj1356 = call %A* @_A_ctor ( %A* %obj1355 )
  %vdecl_slot1357 = alloca %A*
  store %A* %new_obj1356, %A** %vdecl_slot1357
  %mem_ptr1358 = call i32* @oat_malloc ( i32 8 )
  %obj1359 = bitcast i32* %mem_ptr1358 to %B* 
  %new_obj1360 = call %B* @_B_ctor ( %B* %obj1359 )
  %vdecl_slot1361 = alloca %B*
  store %B* %new_obj1360, %B** %vdecl_slot1361
  %mem_ptr1362 = call i32* @oat_malloc ( i32 8 )
  %obj1363 = bitcast i32* %mem_ptr1362 to %C* 
  %new_obj1364 = call %C* @_C_ctor ( %C* %obj1363 )
  %vdecl_slot1365 = alloca %C*
  store %C* %new_obj1364, %C** %vdecl_slot1365
  %lhs_or_call1366 = load %A** %vdecl_slot1357
  %print1368 = getelementptr %_A_vtable* @_A_vtable289, i32 0, i32 3
  %print1367 = load void (%A*)** %print1368
  %cast_op1369 = bitcast %A %lhs_or_call1366 to %A* 
  call void %print1367( %A* %cast_op1369 )
  %lhs_or_call1370 = load %B** %vdecl_slot1361
  %print1372 = getelementptr %_B_vtable* @_B_vtable290, i32 0, i32 3
  %print1371 = load void (%B*)** %print1372
  %cast_op1373 = bitcast %B %lhs_or_call1370 to %B* 
  call void %print1371( %B* %cast_op1373 )
  %lhs_or_call1374 = load %B** %vdecl_slot1361
  %f1376 = getelementptr %_B_vtable* @_B_vtable290, i32 0, i32 2
  %f1375 = load %C* (%B*)** %f1376
  %cast_op1377 = bitcast %B %lhs_or_call1374 to %B* 
  %ret1378 = call %C* %f1375 ( %B* %cast_op1377 )
  %print1380 = getelementptr %_C_vtable* @_C_vtable291, i32 0, i32 2
  %print1379 = load void (%C*)** %print1380
  %cast_op1381 = bitcast %C %ret1378 to %C* 
  call void %print1379( %C* %cast_op1381 )
  %lhs_or_call1382 = load %C** %vdecl_slot1365
  %print1384 = getelementptr %_C_vtable* @_C_vtable291, i32 0, i32 2
  %print1383 = load void (%C*)** %print1384
  %cast_op1385 = bitcast %C %lhs_or_call1382 to %C* 
  call void %print1383( %C* %cast_op1385 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh332:
  call void @print_string( i8* @_const_str298 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh331:
  %mem_ptr1345 = call i32* @oat_malloc ( i32 8 )
  %obj1346 = bitcast i32* %mem_ptr1345 to %Object* 
  %new_obj1347 = call %Object* @_Object_ctor ( %Object* %obj1346 )
  %_this1 = bitcast %Object* %new_obj1347 to %C 
  %_name1348 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str297, i8** %_name1348
  %this_vtable1349 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable291, %_C_vtable** %this_vtable1349
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh330:
  call void @print_string( i8* @_const_str296 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh329:
  %mem_ptr1342 = call i32* @oat_malloc ( i32 8 )
  %obj1343 = bitcast i32* %mem_ptr1342 to %C* 
  %new_obj1344 = call %C* @_C_ctor ( %C* %obj1343 )
  ret %C* %new_obj1344
}


define %B* @_B_ctor (%B* %_this1){
__fresh328:
  %mem_ptr1337 = call i32* @oat_malloc ( i32 8 )
  %obj1338 = bitcast i32* %mem_ptr1337 to %A* 
  %new_obj1339 = call %A* @_A_ctor ( %A* %obj1338 )
  %_this1 = bitcast %A* %new_obj1339 to %B 
  %_name1340 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str295, i8** %_name1340
  %this_vtable1341 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable290, %_B_vtable** %this_vtable1341
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh327:
  call void @print_string( i8* @_const_str294 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh326:
  %mem_ptr1333 = call i32* @oat_malloc ( i32 8 )
  %obj1334 = bitcast i32* %mem_ptr1333 to %B* 
  %new_obj1335 = call %B* @_B_ctor ( %B* %obj1334 )
  %cast_op1336 = bitcast %B* %new_obj1335 to %Object* 
  ret %Object* %cast_op1336
}


define %A* @_A_ctor (%A* %_this1){
__fresh325:
  %mem_ptr1328 = call i32* @oat_malloc ( i32 8 )
  %obj1329 = bitcast i32* %mem_ptr1328 to %Object* 
  %new_obj1330 = call %Object* @_Object_ctor ( %Object* %obj1329 )
  %_this1 = bitcast %Object* %new_obj1330 to %A 
  %_name1331 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str293, i8** %_name1331
  %this_vtable1332 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable289, %_A_vtable** %this_vtable1332
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh324:
  %_name1326 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1327 = load i8** %_name1326
  ret i8* %lhs_or_call1327
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh323:
  %_name1324 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str292, i8** %_name1324
  %this_vtable1325 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable288, %_Object_vtable** %this_vtable1325
  ret %Object* %_this1
}


