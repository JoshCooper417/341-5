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


define i32 @program (i32 %argc1356, { i32, [ 0 x i8* ] }* %argv1354){
__fresh321:
  %argc_slot1357 = alloca i32
  store i32 %argc1356, i32* %argc_slot1357
  %argv_slot1355 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1354, { i32, [ 0 x i8* ] }** %argv_slot1355
  %mem_ptr1358 = call i32* @oat_malloc ( i32 12 )
  %obj1359 = bitcast i32* %mem_ptr1358 to %A* 
  %new_obj1360 = call %A* @_A_ctor ( %A* %obj1359 )
  %vdecl_slot1361 = alloca %A*
  store %A* %new_obj1360, %A** %vdecl_slot1361
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh320:
  %mem_ptr1349 = call i32* @oat_malloc ( i32 8 )
  %obj1350 = bitcast i32* %mem_ptr1349 to %Object* 
  %new_obj1351 = call %Object* @_Object_ctor ( %Object* %obj1350 )
  %_this1 = bitcast %Object* %new_obj1351 to %B 
  %_name1352 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str287, i8** %_name1352
  %this_vtable1353 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable282, %_B_vtable** %this_vtable1353
  call void @print_string( i8* @_const_str286 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh319:
  %mem_ptr1340 = call i32* @oat_malloc ( i32 8 )
  %obj1341 = bitcast i32* %mem_ptr1340 to %Object* 
  %new_obj1342 = call %Object* @_Object_ctor ( %Object* %obj1341 )
  %_this1 = bitcast %Object* %new_obj1342 to %A 
  %_name1343 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str285, i8** %_name1343
  %b1344 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1345 = call i32* @oat_malloc ( i32 8 )
  %obj1346 = bitcast i32* %mem_ptr1345 to %B* 
  %new_obj1347 = call %B* @_B_ctor ( %B* %obj1346 )
  store %B* %new_obj1347, %B** %b1344
  %this_vtable1348 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable281, %_A_vtable** %this_vtable1348
  call void @print_string( i8* @_const_str284 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh318:
  %_name1338 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1339 = load i8** %_name1338
  ret i8* %lhs_or_call1339
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh317:
  %_name1336 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str283, i8** %_name1336
  %this_vtable1337 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable280, %_Object_vtable** %this_vtable1337
  ret %Object* %_this1
}


