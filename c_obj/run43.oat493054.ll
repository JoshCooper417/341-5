%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_A_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str282.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str282 = alias bitcast([ 2 x i8 ]* @_const_str282.str. to i8*)@_const_str281.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str281 = alias bitcast([ 2 x i8 ]* @_const_str281.str. to i8*)@_const_str280.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str280 = alias bitcast([ 2 x i8 ]* @_const_str280.str. to i8*)@_const_str279.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str279 = alias bitcast([ 7 x i8 ]* @_const_str279.str. to i8*)@_C_vtable278 = private constant %_C_vtable {%_A_vtable* @_A_vtable276, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable277 = private constant %_B_vtable {%_A_vtable* @_A_vtable276, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable276 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable275, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable275 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh312:
  ret void
}


define i32 @program (i32 %argc1323, { i32, [ 0 x i8* ] }* %argv1321){
__fresh309:
  %argc_slot1324 = alloca i32
  store i32 %argc1323, i32* %argc_slot1324
  %argv_slot1322 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1321, { i32, [ 0 x i8* ] }** %argv_slot1322
  %array_ptr1325 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1326 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1325 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1327 = call i32* @oat_malloc ( i32 12 )
  %obj1328 = bitcast i32* %mem_ptr1327 to %A* 
  %new_obj1329 = call %A* @_A_ctor ( %A* %obj1328 )
  %index_ptr1330 = getelementptr { i32, [ 0 x %A* ] }* %array1326, i32 0, i32 1, i32 0
  store %A* %new_obj1329, %A** %index_ptr1330
  %mem_ptr1331 = call i32* @oat_malloc ( i32 12 )
  %obj1332 = bitcast i32* %mem_ptr1331 to %B* 
  %new_obj1333 = call %B* @_B_ctor ( %B* %obj1332 )
  %cast_op1334 = bitcast %B* %new_obj1333 to %A* 
  %index_ptr1335 = getelementptr { i32, [ 0 x %A* ] }* %array1326, i32 0, i32 1, i32 1
  store %A* %cast_op1334, %A** %index_ptr1335
  %mem_ptr1336 = call i32* @oat_malloc ( i32 12 )
  %obj1337 = bitcast i32* %mem_ptr1336 to %C* 
  %new_obj1338 = call %C* @_C_ctor ( %C* %obj1337 )
  %cast_op1339 = bitcast %C* %new_obj1338 to %A* 
  %index_ptr1340 = getelementptr { i32, [ 0 x %A* ] }* %array1326, i32 0, i32 1, i32 2
  store %A* %cast_op1339, %A** %index_ptr1340
  %vdecl_slot1341 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1326, { i32, [ 0 x %A* ] }** %vdecl_slot1341
  %vdecl_slot1342 = alloca i32
  store i32 0, i32* %vdecl_slot1342
  br label %__cond308

__cond308:
  %lhs_or_call1343 = load i32* %vdecl_slot1342
  %lhs_or_call1344 = load { i32, [ 0 x %A* ] }** %vdecl_slot1341
  %len_ptr1345 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1344, i32 0, i32 0
  %len1346 = load i32* %len_ptr1345
  %bop1347 = icmp slt i32 %lhs_or_call1343, %len1346
  br i1 %bop1347, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1348 = load { i32, [ 0 x %A* ] }** %vdecl_slot1341
  %lhs_or_call1349 = load i32* %vdecl_slot1342
  %bound_ptr1351 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1348, i32 0, i32 0
  %bound1352 = load i32* %bound_ptr1351
  call void @oat_array_bounds_check( i32 %bound1352, i32 %lhs_or_call1349 )
  %elt1350 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1348, i32 0, i32 1, i32 %lhs_or_call1349
  %lhs_or_call1353 = load %A** %elt1350
  %i1354 = getelementptr %A* %lhs_or_call1353, i32 0, i32 2
  %lhs_or_call1355 = load i32* %i1354
  call void @print_int( i32 %lhs_or_call1355 )
  %lhs_or_call1356 = load i32* %vdecl_slot1342
  %bop1357 = add i32 %lhs_or_call1356, 1
  store i32 %bop1357, i32* %vdecl_slot1342
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %cast_op1315 = bitcast %C* %_this1 to %A* 
  %mem_ptr1316 = call i32* @oat_malloc ( i32 12 )
  %obj1317 = bitcast i32* %mem_ptr1316 to %C* 
  %new_obj1318 = call %A* @_A_ctor ( %C* %obj1317, %A* %cast_op1315 )
  %_this1 = bitcast %A* %new_obj1318 to %C 
  %_name1319 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str282, i8** %_name1319
  %this_vtable1320 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable278, %_C_vtable** %this_vtable1320
  %i1314 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1314
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %cast_op1308 = bitcast %B* %_this1 to %A* 
  %mem_ptr1309 = call i32* @oat_malloc ( i32 12 )
  %obj1310 = bitcast i32* %mem_ptr1309 to %B* 
  %new_obj1311 = call %A* @_A_ctor ( %B* %obj1310, %A* %cast_op1308 )
  %_this1 = bitcast %A* %new_obj1311 to %B 
  %_name1312 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str281, i8** %_name1312
  %this_vtable1313 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable277, %_B_vtable** %this_vtable1313
  %i1307 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1307
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %cast_op1301 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1302 = call i32* @oat_malloc ( i32 12 )
  %obj1303 = bitcast i32* %mem_ptr1302 to %A* 
  %new_obj1304 = call %Object* @_Object_ctor ( %A* %obj1303, %Object* %cast_op1301 )
  %_this1 = bitcast %Object* %new_obj1304 to %A 
  %_name1305 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str280, i8** %_name1305
  %this_vtable1306 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable276, %_A_vtable** %this_vtable1306
  %i1300 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1300
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1298 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1299 = load i8** %_name1298
  ret i8* %lhs_or_call1299
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1296 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str279, i8** %_name1296
  %this_vtable1297 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable275, %_Object_vtable** %this_vtable1297
  ret %Object* %_this1
}


