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


define i32 @program (i32 %argc1275, { i32, [ 0 x i8* ] }* %argv1273){
__fresh309:
  %argc_slot1276 = alloca i32
  store i32 %argc1275, i32* %argc_slot1276
  %argv_slot1274 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1273, { i32, [ 0 x i8* ] }** %argv_slot1274
  %array_ptr1277 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1278 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1277 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1279 = call i32* @oat_malloc ( i32 12 )
  %obj1280 = bitcast i32* %mem_ptr1279 to %A* 
  %new_obj1281 = call %A* @_A_ctor ( %A* %obj1280 )
  %index_ptr1282 = getelementptr { i32, [ 0 x %A* ] }* %array1278, i32 0, i32 1, i32 0
  store %A* %new_obj1281, %A** %index_ptr1282
  %mem_ptr1283 = call i32* @oat_malloc ( i32 12 )
  %obj1284 = bitcast i32* %mem_ptr1283 to %B* 
  %new_obj1285 = call %B* @_B_ctor ( %B* %obj1284 )
  %cast_op1286 = bitcast %B* %new_obj1285 to %A* 
  %index_ptr1287 = getelementptr { i32, [ 0 x %A* ] }* %array1278, i32 0, i32 1, i32 1
  store %A* %cast_op1286, %A** %index_ptr1287
  %mem_ptr1288 = call i32* @oat_malloc ( i32 12 )
  %obj1289 = bitcast i32* %mem_ptr1288 to %C* 
  %new_obj1290 = call %C* @_C_ctor ( %C* %obj1289 )
  %cast_op1291 = bitcast %C* %new_obj1290 to %A* 
  %index_ptr1292 = getelementptr { i32, [ 0 x %A* ] }* %array1278, i32 0, i32 1, i32 2
  store %A* %cast_op1291, %A** %index_ptr1292
  %vdecl_slot1293 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1278, { i32, [ 0 x %A* ] }** %vdecl_slot1293
  %vdecl_slot1294 = alloca i32
  store i32 0, i32* %vdecl_slot1294
  br label %__cond308

__cond308:
  %lhs_or_call1295 = load i32* %vdecl_slot1294
  %lhs_or_call1296 = load { i32, [ 0 x %A* ] }** %vdecl_slot1293
  %len_ptr1297 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1296, i32 0, i32 0
  %len1298 = load i32* %len_ptr1297
  %bop1299 = icmp slt i32 %lhs_or_call1295, %len1298
  br i1 %bop1299, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1300 = load { i32, [ 0 x %A* ] }** %vdecl_slot1293
  %lhs_or_call1301 = load i32* %vdecl_slot1294
  %bound_ptr1303 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1300, i32 0, i32 0
  %bound1304 = load i32* %bound_ptr1303
  call void @oat_array_bounds_check( i32 %bound1304, i32 %lhs_or_call1301 )
  %elt1302 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1300, i32 0, i32 1, i32 %lhs_or_call1301
  %lhs_or_call1305 = load %A** %elt1302
  %i1306 = getelementptr %A* %lhs_or_call1305, i32 0, i32 2
  %lhs_or_call1307 = load i32* %i1306
  call void @print_int( i32 %lhs_or_call1307 )
  %lhs_or_call1308 = load i32* %vdecl_slot1294
  %bop1309 = add i32 %lhs_or_call1308, 1
  store i32 %bop1309, i32* %vdecl_slot1294
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %mem_ptr1268 = call i32* @oat_malloc ( i32 12 )
  %obj1269 = bitcast i32* %mem_ptr1268 to %A* 
  %new_obj1270 = call %A* @_A_ctor ( %A* %obj1269 )
  %_this1 = bitcast %A* %new_obj1270 to %C 
  %_name1271 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str271, i8** %_name1271
  %this_vtable1272 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable267, %_C_vtable** %this_vtable1272
  %i1267 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1267
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %mem_ptr1262 = call i32* @oat_malloc ( i32 12 )
  %obj1263 = bitcast i32* %mem_ptr1262 to %A* 
  %new_obj1264 = call %A* @_A_ctor ( %A* %obj1263 )
  %_this1 = bitcast %A* %new_obj1264 to %B 
  %_name1265 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str270, i8** %_name1265
  %this_vtable1266 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable266, %_B_vtable** %this_vtable1266
  %i1261 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1261
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %mem_ptr1256 = call i32* @oat_malloc ( i32 8 )
  %obj1257 = bitcast i32* %mem_ptr1256 to %Object* 
  %new_obj1258 = call %Object* @_Object_ctor ( %Object* %obj1257 )
  %_this1 = bitcast %Object* %new_obj1258 to %A 
  %_name1259 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str269, i8** %_name1259
  %this_vtable1260 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable265, %_A_vtable** %this_vtable1260
  %i1255 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1255
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1253 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1254 = load i8** %_name1253
  ret i8* %lhs_or_call1254
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1251 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str268, i8** %_name1251
  %this_vtable1252 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable264, %_Object_vtable** %this_vtable1252
  ret %Object* %_this1
}


