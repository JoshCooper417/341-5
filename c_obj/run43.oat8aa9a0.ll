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
@_const_str262.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str262 = alias bitcast([ 2 x i8 ]* @_const_str262.str. to i8*)@_const_str261.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str261 = alias bitcast([ 2 x i8 ]* @_const_str261.str. to i8*)@_const_str260.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str260 = alias bitcast([ 2 x i8 ]* @_const_str260.str. to i8*)@_const_str259.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str259 = alias bitcast([ 7 x i8 ]* @_const_str259.str. to i8*)@_C_vtable258 = private constant %_C_vtable {%_A_vtable* @_A_vtable256, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable257 = private constant %_B_vtable {%_A_vtable* @_A_vtable256, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable256 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable255, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable255 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh312:
  ret void
}


define i32 @program (i32 %argc1264, { i32, [ 0 x i8* ] }* %argv1262){
__fresh309:
  %argc_slot1265 = alloca i32
  store i32 %argc1264, i32* %argc_slot1265
  %argv_slot1263 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1262, { i32, [ 0 x i8* ] }** %argv_slot1263
  %array_ptr1266 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1267 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1266 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1268 = call i32* @oat_malloc ( i32 12 )
  %obj1269 = bitcast i32* %mem_ptr1268 to %A* 
  %new_obj1270 = call %A* @_A_ctor ( %A* %obj1269 )
  %index_ptr1271 = getelementptr { i32, [ 0 x %A* ] }* %array1267, i32 0, i32 1, i32 0
  store %A* %new_obj1270, %A** %index_ptr1271
  %mem_ptr1272 = call i32* @oat_malloc ( i32 12 )
  %obj1273 = bitcast i32* %mem_ptr1272 to %B* 
  %new_obj1274 = call %B* @_B_ctor ( %B* %obj1273 )
  %cast_op1275 = bitcast %B* %new_obj1274 to %A* 
  %index_ptr1276 = getelementptr { i32, [ 0 x %A* ] }* %array1267, i32 0, i32 1, i32 1
  store %A* %cast_op1275, %A** %index_ptr1276
  %mem_ptr1277 = call i32* @oat_malloc ( i32 12 )
  %obj1278 = bitcast i32* %mem_ptr1277 to %C* 
  %new_obj1279 = call %C* @_C_ctor ( %C* %obj1278 )
  %cast_op1280 = bitcast %C* %new_obj1279 to %A* 
  %index_ptr1281 = getelementptr { i32, [ 0 x %A* ] }* %array1267, i32 0, i32 1, i32 2
  store %A* %cast_op1280, %A** %index_ptr1281
  %vdecl_slot1282 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1267, { i32, [ 0 x %A* ] }** %vdecl_slot1282
  %vdecl_slot1283 = alloca i32
  store i32 0, i32* %vdecl_slot1283
  br label %__cond308

__cond308:
  %lhs_or_call1284 = load i32* %vdecl_slot1283
  %lhs_or_call1285 = load { i32, [ 0 x %A* ] }** %vdecl_slot1282
  %len_ptr1286 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1285, i32 0, i32 0
  %len1287 = load i32* %len_ptr1286
  %bop1288 = icmp slt i32 %lhs_or_call1284, %len1287
  br i1 %bop1288, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1289 = load { i32, [ 0 x %A* ] }** %vdecl_slot1282
  %lhs_or_call1290 = load i32* %vdecl_slot1283
  %bound_ptr1292 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1289, i32 0, i32 0
  %bound1293 = load i32* %bound_ptr1292
  call void @oat_array_bounds_check( i32 %bound1293, i32 %lhs_or_call1290 )
  %elt1291 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1289, i32 0, i32 1, i32 %lhs_or_call1290
  %lhs_or_call1294 = load %A** %elt1291
  %i1295 = getelementptr %A* %lhs_or_call1294, i32 0, i32 2
  %lhs_or_call1296 = load i32* %i1295
  call void @print_int( i32 %lhs_or_call1296 )
  %lhs_or_call1297 = load i32* %vdecl_slot1283
  %bop1298 = add i32 %lhs_or_call1297, 1
  store i32 %bop1298, i32* %vdecl_slot1283
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %mem_ptr1257 = call i32* @oat_malloc ( i32 12 )
  %obj1258 = bitcast i32* %mem_ptr1257 to %A* 
  %new_obj1259 = call %A* @_A_ctor ( %A* %obj1258 )
  %_this1 = bitcast %A* %new_obj1259 to %C 
  %_name1260 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str262, i8** %_name1260
  %this_vtable1261 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable258, %_C_vtable** %this_vtable1261
  %i1256 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1256
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %mem_ptr1251 = call i32* @oat_malloc ( i32 12 )
  %obj1252 = bitcast i32* %mem_ptr1251 to %A* 
  %new_obj1253 = call %A* @_A_ctor ( %A* %obj1252 )
  %_this1 = bitcast %A* %new_obj1253 to %B 
  %_name1254 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str261, i8** %_name1254
  %this_vtable1255 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable257, %_B_vtable** %this_vtable1255
  %i1250 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1250
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %mem_ptr1245 = call i32* @oat_malloc ( i32 8 )
  %obj1246 = bitcast i32* %mem_ptr1245 to %Object* 
  %new_obj1247 = call %Object* @_Object_ctor ( %Object* %obj1246 )
  %_this1 = bitcast %Object* %new_obj1247 to %A 
  %_name1248 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str260, i8** %_name1248
  %this_vtable1249 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable256, %_A_vtable** %this_vtable1249
  %i1244 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1244
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1242 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1243 = load i8** %_name1242
  ret i8* %lhs_or_call1243
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1240 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str259, i8** %_name1240
  %this_vtable1241 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable255, %_Object_vtable** %this_vtable1241
  ret %Object* %_this1
}


