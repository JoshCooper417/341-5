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
@_const_str273.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str273 = alias bitcast([ 2 x i8 ]* @_const_str273.str. to i8*)@_const_str272.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str272 = alias bitcast([ 2 x i8 ]* @_const_str272.str. to i8*)@_const_str271.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str271 = alias bitcast([ 2 x i8 ]* @_const_str271.str. to i8*)@_const_str270.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str270 = alias bitcast([ 7 x i8 ]* @_const_str270.str. to i8*)@_C_vtable269 = private constant %_C_vtable {%_A_vtable* @_A_vtable267, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable268 = private constant %_B_vtable {%_A_vtable* @_A_vtable267, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable267 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable266, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable266 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh312:
  ret void
}


define i32 @program (i32 %argc1312, { i32, [ 0 x i8* ] }* %argv1310){
__fresh309:
  %argc_slot1313 = alloca i32
  store i32 %argc1312, i32* %argc_slot1313
  %argv_slot1311 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1310, { i32, [ 0 x i8* ] }** %argv_slot1311
  %array_ptr1314 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1315 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1314 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1316 = call i32* @oat_malloc ( i32 12 )
  %obj1317 = bitcast i32* %mem_ptr1316 to %A* 
  %new_obj1318 = call %A* @_A_ctor ( %A* %obj1317 )
  %index_ptr1319 = getelementptr { i32, [ 0 x %A* ] }* %array1315, i32 0, i32 1, i32 0
  store %A* %new_obj1318, %A** %index_ptr1319
  %mem_ptr1320 = call i32* @oat_malloc ( i32 12 )
  %obj1321 = bitcast i32* %mem_ptr1320 to %B* 
  %new_obj1322 = call %B* @_B_ctor ( %B* %obj1321 )
  %cast_op1323 = bitcast %B* %new_obj1322 to %A* 
  %index_ptr1324 = getelementptr { i32, [ 0 x %A* ] }* %array1315, i32 0, i32 1, i32 1
  store %A* %cast_op1323, %A** %index_ptr1324
  %mem_ptr1325 = call i32* @oat_malloc ( i32 12 )
  %obj1326 = bitcast i32* %mem_ptr1325 to %C* 
  %new_obj1327 = call %C* @_C_ctor ( %C* %obj1326 )
  %cast_op1328 = bitcast %C* %new_obj1327 to %A* 
  %index_ptr1329 = getelementptr { i32, [ 0 x %A* ] }* %array1315, i32 0, i32 1, i32 2
  store %A* %cast_op1328, %A** %index_ptr1329
  %vdecl_slot1330 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1315, { i32, [ 0 x %A* ] }** %vdecl_slot1330
  %vdecl_slot1331 = alloca i32
  store i32 0, i32* %vdecl_slot1331
  br label %__cond308

__cond308:
  %lhs_or_call1332 = load i32* %vdecl_slot1331
  %lhs_or_call1333 = load { i32, [ 0 x %A* ] }** %vdecl_slot1330
  %len_ptr1334 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1333, i32 0, i32 0
  %len1335 = load i32* %len_ptr1334
  %bop1336 = icmp slt i32 %lhs_or_call1332, %len1335
  br i1 %bop1336, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1337 = load { i32, [ 0 x %A* ] }** %vdecl_slot1330
  %lhs_or_call1338 = load i32* %vdecl_slot1331
  %bound_ptr1340 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1337, i32 0, i32 0
  %bound1341 = load i32* %bound_ptr1340
  call void @oat_array_bounds_check( i32 %bound1341, i32 %lhs_or_call1338 )
  %elt1339 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1337, i32 0, i32 1, i32 %lhs_or_call1338
  %lhs_or_call1342 = load %A** %elt1339
  %i1343 = getelementptr %A* %lhs_or_call1342, i32 0, i32 2
  %lhs_or_call1344 = load i32* %i1343
  call void @print_int( i32 %lhs_or_call1344 )
  %lhs_or_call1345 = load i32* %vdecl_slot1331
  %bop1346 = add i32 %lhs_or_call1345, 1
  store i32 %bop1346, i32* %vdecl_slot1331
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %cast_op1304 = bitcast %C* %_this1 to %A* 
  %mem_ptr1305 = call i32* @oat_malloc ( i32 12 )
  %obj1306 = bitcast i32* %mem_ptr1305 to %C* 
  %new_obj1307 = call %A* @_A_ctor ( %C* %obj1306, %A* %cast_op1304 )
  %_this1 = bitcast %A* %new_obj1307 to %C 
  %_name1308 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str273, i8** %_name1308
  %this_vtable1309 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable269, %_C_vtable** %this_vtable1309
  %i1303 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1303
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %cast_op1297 = bitcast %B* %_this1 to %A* 
  %mem_ptr1298 = call i32* @oat_malloc ( i32 12 )
  %obj1299 = bitcast i32* %mem_ptr1298 to %B* 
  %new_obj1300 = call %A* @_A_ctor ( %B* %obj1299, %A* %cast_op1297 )
  %_this1 = bitcast %A* %new_obj1300 to %B 
  %_name1301 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str272, i8** %_name1301
  %this_vtable1302 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable268, %_B_vtable** %this_vtable1302
  %i1296 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1296
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %cast_op1290 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1291 = call i32* @oat_malloc ( i32 12 )
  %obj1292 = bitcast i32* %mem_ptr1291 to %A* 
  %new_obj1293 = call %Object* @_Object_ctor ( %A* %obj1292, %Object* %cast_op1290 )
  %_this1 = bitcast %Object* %new_obj1293 to %A 
  %_name1294 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str271, i8** %_name1294
  %this_vtable1295 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable267, %_A_vtable** %this_vtable1295
  %i1289 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1289
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1287 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1288 = load i8** %_name1287
  ret i8* %lhs_or_call1288
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1285 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str270, i8** %_name1285
  %this_vtable1286 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable266, %_Object_vtable** %this_vtable1286
  ret %Object* %_this1
}


