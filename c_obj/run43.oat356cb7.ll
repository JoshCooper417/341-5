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


define i32 @program (i32 %argc1276, { i32, [ 0 x i8* ] }* %argv1274){
__fresh309:
  %argc_slot1277 = alloca i32
  store i32 %argc1276, i32* %argc_slot1277
  %argv_slot1275 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1274, { i32, [ 0 x i8* ] }** %argv_slot1275
  %array_ptr1278 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1279 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1278 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1280 = call i32* @oat_malloc ( i32 12 )
  %obj1281 = bitcast i32* %mem_ptr1280 to %A* 
  %new_obj1282 = call %A* @_A_ctor ( %A* %obj1281 )
  %index_ptr1283 = getelementptr { i32, [ 0 x %A* ] }* %array1279, i32 0, i32 1, i32 0
  store %A* %new_obj1282, %A** %index_ptr1283
  %mem_ptr1284 = call i32* @oat_malloc ( i32 12 )
  %obj1285 = bitcast i32* %mem_ptr1284 to %B* 
  %new_obj1286 = call %B* @_B_ctor ( %B* %obj1285 )
  %cast_op1287 = bitcast %B* %new_obj1286 to %A* 
  %index_ptr1288 = getelementptr { i32, [ 0 x %A* ] }* %array1279, i32 0, i32 1, i32 1
  store %A* %cast_op1287, %A** %index_ptr1288
  %mem_ptr1289 = call i32* @oat_malloc ( i32 12 )
  %obj1290 = bitcast i32* %mem_ptr1289 to %C* 
  %new_obj1291 = call %C* @_C_ctor ( %C* %obj1290 )
  %cast_op1292 = bitcast %C* %new_obj1291 to %A* 
  %index_ptr1293 = getelementptr { i32, [ 0 x %A* ] }* %array1279, i32 0, i32 1, i32 2
  store %A* %cast_op1292, %A** %index_ptr1293
  %vdecl_slot1294 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1279, { i32, [ 0 x %A* ] }** %vdecl_slot1294
  %vdecl_slot1295 = alloca i32
  store i32 0, i32* %vdecl_slot1295
  br label %__cond308

__cond308:
  %lhs_or_call1296 = load i32* %vdecl_slot1295
  %lhs_or_call1297 = load { i32, [ 0 x %A* ] }** %vdecl_slot1294
  %len_ptr1298 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1297, i32 0, i32 0
  %len1299 = load i32* %len_ptr1298
  %bop1300 = icmp slt i32 %lhs_or_call1296, %len1299
  br i1 %bop1300, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1301 = load { i32, [ 0 x %A* ] }** %vdecl_slot1294
  %lhs_or_call1302 = load i32* %vdecl_slot1295
  %bound_ptr1304 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1301, i32 0, i32 0
  %bound1305 = load i32* %bound_ptr1304
  call void @oat_array_bounds_check( i32 %bound1305, i32 %lhs_or_call1302 )
  %elt1303 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1301, i32 0, i32 1, i32 %lhs_or_call1302
  %lhs_or_call1306 = load %A** %elt1303
  %i1307 = getelementptr %A* %lhs_or_call1306, i32 0, i32 2
  %lhs_or_call1308 = load i32* %i1307
  call void @print_int( i32 %lhs_or_call1308 )
  %lhs_or_call1309 = load i32* %vdecl_slot1295
  %bop1310 = add i32 %lhs_or_call1309, 1
  store i32 %bop1310, i32* %vdecl_slot1295
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %mem_ptr1269 = call i32* @oat_malloc ( i32 12 )
  %obj1270 = bitcast i32* %mem_ptr1269 to %A* 
  %new_obj1271 = call %A* @_A_ctor ( %A* %obj1270 )
  %_this1 = bitcast %A* %new_obj1271 to %C 
  %_name1272 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str273, i8** %_name1272
  %this_vtable1273 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable269, %_C_vtable** %this_vtable1273
  %i1268 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1268
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %mem_ptr1263 = call i32* @oat_malloc ( i32 12 )
  %obj1264 = bitcast i32* %mem_ptr1263 to %A* 
  %new_obj1265 = call %A* @_A_ctor ( %A* %obj1264 )
  %_this1 = bitcast %A* %new_obj1265 to %B 
  %_name1266 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str272, i8** %_name1266
  %this_vtable1267 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable268, %_B_vtable** %this_vtable1267
  %i1262 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1262
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %mem_ptr1257 = call i32* @oat_malloc ( i32 8 )
  %obj1258 = bitcast i32* %mem_ptr1257 to %Object* 
  %new_obj1259 = call %Object* @_Object_ctor ( %Object* %obj1258 )
  %_this1 = bitcast %Object* %new_obj1259 to %A 
  %_name1260 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str271, i8** %_name1260
  %this_vtable1261 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable267, %_A_vtable** %this_vtable1261
  %i1256 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1256
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1254 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1255 = load i8** %_name1254
  ret i8* %lhs_or_call1255
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1252 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str270, i8** %_name1252
  %this_vtable1253 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable266, %_Object_vtable** %this_vtable1253
  ret %Object* %_this1
}


