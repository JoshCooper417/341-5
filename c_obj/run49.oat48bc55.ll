%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, %B* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str286.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str286 = alias bitcast([ 2 x i8 ]* @_const_str286.str. to i8*)@_const_str287.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str287 = alias bitcast([ 2 x i8 ]* @_const_str287.str. to i8*)@_const_str284.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str284 = alias bitcast([ 2 x i8 ]* @_const_str284.str. to i8*)@_const_str285.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str285 = alias bitcast([ 2 x i8 ]* @_const_str285.str. to i8*)@_const_str283.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str283 = alias bitcast([ 7 x i8 ]* @_const_str283.str. to i8*)@_B_vtable282 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable280, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable281 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable280, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable280 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh322:
  ret void
}


define i32 @program (i32 %argc1396, { i32, [ 0 x i8* ] }* %argv1394){
__fresh321:
  %argc_slot1397 = alloca i32
  store i32 %argc1396, i32* %argc_slot1397
  %argv_slot1395 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1394, { i32, [ 0 x i8* ] }** %argv_slot1395
  %mem_ptr1398 = call i32* @oat_malloc ( i32 12 )
  %obj1399 = bitcast i32* %mem_ptr1398 to %A* 
  %new_obj1400 = call %A* @_A_ctor ( %A* %obj1399 )
  %vdecl_slot1401 = alloca %A*
  store %A* %new_obj1400, %A** %vdecl_slot1401
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh320:
  %cast_op1388 = bitcast %B* %_this1 to %Object* 
  %mem_ptr1389 = call i32* @oat_malloc ( i32 8 )
  %obj1390 = bitcast i32* %mem_ptr1389 to %B* 
  %new_obj1391 = call %Object* @_Object_ctor ( %B* %obj1390, %Object* %cast_op1388 )
  %_this1 = bitcast %Object* %new_obj1391 to %B 
  %_name1392 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str287, i8** %_name1392
  %this_vtable1393 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable282, %_B_vtable** %this_vtable1393
  call void @print_string( i8* @_const_str286 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh319:
  %cast_op1378 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1379 = call i32* @oat_malloc ( i32 12 )
  %obj1380 = bitcast i32* %mem_ptr1379 to %A* 
  %new_obj1381 = call %Object* @_Object_ctor ( %A* %obj1380, %Object* %cast_op1378 )
  %_this1 = bitcast %Object* %new_obj1381 to %A 
  %_name1382 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str285, i8** %_name1382
  %b1383 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1384 = call i32* @oat_malloc ( i32 8 )
  %obj1385 = bitcast i32* %mem_ptr1384 to %B* 
  %new_obj1386 = call %B* @_B_ctor ( %B* %obj1385 )
  store %B* %new_obj1386, %B** %b1383
  %this_vtable1387 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable281, %_A_vtable** %this_vtable1387
  call void @print_string( i8* @_const_str284 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh318:
  %_name1376 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1377 = load i8** %_name1376
  ret i8* %lhs_or_call1377
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh317:
  %_name1374 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str283, i8** %_name1374
  %this_vtable1375 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable280, %_Object_vtable** %this_vtable1375
  ret %Object* %_this1
}


