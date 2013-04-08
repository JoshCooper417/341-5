%C = type { %_C_vtable*, i8*, %B* }
%_C_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8*, %A* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%B*)* }
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
@_const_str272.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str272 = alias bitcast([ 2 x i8 ]* @_const_str272.str. to i8*)@_const_str271.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str271 = alias bitcast([ 2 x i8 ]* @_const_str271.str. to i8*)@_const_str270.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str270 = alias bitcast([ 2 x i8 ]* @_const_str270.str. to i8*)@_const_str269.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str269 = alias bitcast([ 2 x i8 ]* @_const_str269.str. to i8*)@_const_str268.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str268 = alias bitcast([ 2 x i8 ]* @_const_str268.str. to i8*)@_const_str267.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str267 = alias bitcast([ 2 x i8 ]* @_const_str267.str. to i8*)@_const_str266.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str266 = alias bitcast([ 7 x i8 ]* @_const_str266.str. to i8*)@_C_vtable265 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable262, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable264 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable262, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable263 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable262, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable262 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh510:
  ret void
}


define i32 @program (i32 %argc1423, { i32, [ 0 x i8* ] }* %argv1421){
__fresh509:
  %argc_slot1424 = alloca i32
  store i32 %argc1423, i32* %argc_slot1424
  %argv_slot1422 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1421, { i32, [ 0 x i8* ] }** %argv_slot1422
  %mem_ptr1425 = call i32* @oat_malloc ( i32 12 )
  %obj1426 = bitcast i32* %mem_ptr1425 to %C* 
  %new_obj1427 = call %C* @_C_ctor ( %C* %obj1426 )
  %vdecl_slot1428 = alloca %C*
  store %C* %new_obj1427, %C** %vdecl_slot1428
  %lhs_or_call1429 = load %C** %vdecl_slot1428
  %vtable_ptr1430 = getelementptr %C* %lhs_or_call1429, i32 0
  %vtable1431 = load %_C_vtable** %vtable_ptr1430
  %f1433 = getelementptr %_C_vtable* %vtable1431, i32 0, i32 2
  %f1432 = load void (%C*)** %f1433
  %cast_op1434 = bitcast %C %lhs_or_call1429 to %C* 
  call void %f1432( %C* %cast_op1434 )
  %lhs_or_call1435 = load %C** %vdecl_slot1428
  %b1436 = getelementptr %C* %lhs_or_call1435, i32 0, i32 2
  %lhs_or_call1437 = load %B** %b1436
  %vtable_ptr1438 = getelementptr %B* %lhs_or_call1437, i32 0
  %vtable1439 = load %_B_vtable** %vtable_ptr1438
  %f1441 = getelementptr %_B_vtable* %vtable1439, i32 0, i32 2
  %f1440 = load void (%B*)** %f1441
  %cast_op1442 = bitcast %B %lhs_or_call1437 to %B* 
  call void %f1440( %B* %cast_op1442 )
  %lhs_or_call1443 = load %C** %vdecl_slot1428
  %b1444 = getelementptr %C* %lhs_or_call1443, i32 0, i32 2
  %lhs_or_call1445 = load %B** %b1444
  %a1446 = getelementptr %B* %lhs_or_call1445, i32 0, i32 2
  %lhs_or_call1447 = load %A** %a1446
  %vtable_ptr1448 = getelementptr %A* %lhs_or_call1447, i32 0
  %vtable1449 = load %_A_vtable** %vtable_ptr1448
  %f1451 = getelementptr %_A_vtable* %vtable1449, i32 0, i32 2
  %f1450 = load void (%A*)** %f1451
  %cast_op1452 = bitcast %A %lhs_or_call1447 to %A* 
  call void %f1450( %A* %cast_op1452 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh508:
  call void @print_string( i8* @_const_str272 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh507:
  %mem_ptr1412 = call i32* @oat_malloc ( i32 8 )
  %obj1413 = bitcast i32* %mem_ptr1412 to %Object* 
  %new_obj1414 = call %Object* @_Object_ctor ( %Object* %obj1413 )
  %_this1 = bitcast %Object* %new_obj1414 to %C 
  %_name1415 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str271, i8** %_name1415
  %b1416 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1417 = call i32* @oat_malloc ( i32 12 )
  %obj1418 = bitcast i32* %mem_ptr1417 to %B* 
  %new_obj1419 = call %B* @_B_ctor ( %B* %obj1418 )
  store %B* %new_obj1419, %B** %b1416
  %this_vtable1420 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable265, %_C_vtable** %this_vtable1420
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh506:
  call void @print_string( i8* @_const_str270 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh505:
  %mem_ptr1403 = call i32* @oat_malloc ( i32 8 )
  %obj1404 = bitcast i32* %mem_ptr1403 to %Object* 
  %new_obj1405 = call %Object* @_Object_ctor ( %Object* %obj1404 )
  %_this1 = bitcast %Object* %new_obj1405 to %B 
  %_name1406 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str269, i8** %_name1406
  %a1407 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1408 = call i32* @oat_malloc ( i32 8 )
  %obj1409 = bitcast i32* %mem_ptr1408 to %A* 
  %new_obj1410 = call %A* @_A_ctor ( %A* %obj1409 )
  store %A* %new_obj1410, %A** %a1407
  %this_vtable1411 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable264, %_B_vtable** %this_vtable1411
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh504:
  call void @print_string( i8* @_const_str268 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh503:
  %mem_ptr1398 = call i32* @oat_malloc ( i32 8 )
  %obj1399 = bitcast i32* %mem_ptr1398 to %Object* 
  %new_obj1400 = call %Object* @_Object_ctor ( %Object* %obj1399 )
  %_this1 = bitcast %Object* %new_obj1400 to %A 
  %_name1401 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str267, i8** %_name1401
  %this_vtable1402 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable263, %_A_vtable** %this_vtable1402
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh502:
  %_name1396 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1397 = load i8** %_name1396
  ret i8* %lhs_or_call1397
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh501:
  %_name1394 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str266, i8** %_name1394
  %this_vtable1395 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable262, %_Object_vtable** %this_vtable1395
  ret %Object* %_this1
}


