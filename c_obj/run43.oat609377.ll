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
@_const_str271.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str271 = alias bitcast([ 2 x i8 ]* @_const_str271.str. to i8*)@_const_str270.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str270 = alias bitcast([ 2 x i8 ]* @_const_str270.str. to i8*)@_const_str269.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str269 = alias bitcast([ 2 x i8 ]* @_const_str269.str. to i8*)@_const_str268.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str268 = alias bitcast([ 7 x i8 ]* @_const_str268.str. to i8*)@_C_vtable267 = private constant %_C_vtable {%_A_vtable* @_A_vtable265, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable266 = private constant %_B_vtable {%_A_vtable* @_A_vtable265, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable265 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable264, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable264 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh312:
  ret void
}


define i32 @program (i32 %argc1286, { i32, [ 0 x i8* ] }* %argv1284){
__fresh309:
  %argc_slot1287 = alloca i32
  store i32 %argc1286, i32* %argc_slot1287
  %argv_slot1285 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1284, { i32, [ 0 x i8* ] }** %argv_slot1285
  %array_ptr1288 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1289 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1288 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1290 = call i32* @oat_malloc ( i32 12 )
  %obj1291 = bitcast i32* %mem_ptr1290 to %A* 
  %new_obj1292 = call %A* @_A_ctor ( %A* %obj1291 )
  %index_ptr1293 = getelementptr { i32, [ 0 x %A* ] }* %array1289, i32 0, i32 1, i32 0
  store %A* %new_obj1292, %A** %index_ptr1293
  %mem_ptr1294 = call i32* @oat_malloc ( i32 12 )
  %obj1295 = bitcast i32* %mem_ptr1294 to %B* 
  %new_obj1296 = call %B* @_B_ctor ( %B* %obj1295 )
  %cast_op1297 = bitcast %B* %new_obj1296 to %A* 
  %index_ptr1298 = getelementptr { i32, [ 0 x %A* ] }* %array1289, i32 0, i32 1, i32 1
  store %A* %cast_op1297, %A** %index_ptr1298
  %mem_ptr1299 = call i32* @oat_malloc ( i32 12 )
  %obj1300 = bitcast i32* %mem_ptr1299 to %C* 
  %new_obj1301 = call %C* @_C_ctor ( %C* %obj1300 )
  %cast_op1302 = bitcast %C* %new_obj1301 to %A* 
  %index_ptr1303 = getelementptr { i32, [ 0 x %A* ] }* %array1289, i32 0, i32 1, i32 2
  store %A* %cast_op1302, %A** %index_ptr1303
  %vdecl_slot1304 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1289, { i32, [ 0 x %A* ] }** %vdecl_slot1304
  %vdecl_slot1305 = alloca i32
  store i32 0, i32* %vdecl_slot1305
  br label %__cond308

__cond308:
  %lhs_or_call1306 = load i32* %vdecl_slot1305
  %lhs_or_call1307 = load { i32, [ 0 x %A* ] }** %vdecl_slot1304
  %len_ptr1308 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1307, i32 0, i32 0
  %len1309 = load i32* %len_ptr1308
  %bop1310 = icmp slt i32 %lhs_or_call1306, %len1309
  br i1 %bop1310, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1311 = load { i32, [ 0 x %A* ] }** %vdecl_slot1304
  %lhs_or_call1312 = load i32* %vdecl_slot1305
  %bound_ptr1314 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1311, i32 0, i32 0
  %bound1315 = load i32* %bound_ptr1314
  call void @oat_array_bounds_check( i32 %bound1315, i32 %lhs_or_call1312 )
  %elt1313 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1311, i32 0, i32 1, i32 %lhs_or_call1312
  %lhs_or_call1316 = load %A** %elt1313
  %i1317 = getelementptr %A* %lhs_or_call1316, i32 0, i32 2
  %lhs_or_call1318 = load i32* %i1317
  call void @print_int( i32 %lhs_or_call1318 )
  %lhs_or_call1319 = load i32* %vdecl_slot1305
  %bop1320 = add i32 %lhs_or_call1319, 1
  store i32 %bop1320, i32* %vdecl_slot1305
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %mem_ptr1279 = call i32* @oat_malloc ( i32 12 )
  %obj1280 = bitcast i32* %mem_ptr1279 to %A* 
  %new_obj1281 = call %A* @_A_ctor ( %A* %obj1280 )
  %_this1 = bitcast %A* %new_obj1281 to %C 
  %_name1282 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str271, i8** %_name1282
  %this_vtable1283 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable267, %_C_vtable** %this_vtable1283
  %i1278 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1278
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %mem_ptr1273 = call i32* @oat_malloc ( i32 12 )
  %obj1274 = bitcast i32* %mem_ptr1273 to %A* 
  %new_obj1275 = call %A* @_A_ctor ( %A* %obj1274 )
  %_this1 = bitcast %A* %new_obj1275 to %B 
  %_name1276 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str270, i8** %_name1276
  %this_vtable1277 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable266, %_B_vtable** %this_vtable1277
  %i1272 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1272
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %mem_ptr1267 = call i32* @oat_malloc ( i32 8 )
  %obj1268 = bitcast i32* %mem_ptr1267 to %Object* 
  %new_obj1269 = call %Object* @_Object_ctor ( %Object* %obj1268 )
  %_this1 = bitcast %Object* %new_obj1269 to %A 
  %_name1270 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str269, i8** %_name1270
  %this_vtable1271 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable265, %_A_vtable** %this_vtable1271
  %i1266 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1266
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1264 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1265 = load i8** %_name1264
  ret i8* %lhs_or_call1265
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1262 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str268, i8** %_name1262
  %this_vtable1263 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable264, %_Object_vtable** %this_vtable1263
  ret %Object* %_this1
}


