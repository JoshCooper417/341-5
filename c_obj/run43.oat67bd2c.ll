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


define i32 @program (i32 %argc1257, { i32, [ 0 x i8* ] }* %argv1255){
__fresh309:
  %argc_slot1258 = alloca i32
  store i32 %argc1257, i32* %argc_slot1258
  %argv_slot1256 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1255, { i32, [ 0 x i8* ] }** %argv_slot1256
  %array_ptr1259 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1260 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1259 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1261 = call i32* @oat_malloc ( i32 12 )
  %obj1262 = bitcast i32* %mem_ptr1261 to %A* 
  %new_obj1263 = call %A* @_A_ctor ( %A* %obj1262 )
  %index_ptr1264 = getelementptr { i32, [ 0 x %A* ] }* %array1260, i32 0, i32 1, i32 0
  store %A* %new_obj1263, %A** %index_ptr1264
  %mem_ptr1265 = call i32* @oat_malloc ( i32 12 )
  %obj1266 = bitcast i32* %mem_ptr1265 to %B* 
  %new_obj1267 = call %B* @_B_ctor ( %B* %obj1266 )
  %cast_op1268 = bitcast %B* %new_obj1267 to %A* 
  %index_ptr1269 = getelementptr { i32, [ 0 x %A* ] }* %array1260, i32 0, i32 1, i32 1
  store %A* %cast_op1268, %A** %index_ptr1269
  %mem_ptr1270 = call i32* @oat_malloc ( i32 12 )
  %obj1271 = bitcast i32* %mem_ptr1270 to %C* 
  %new_obj1272 = call %C* @_C_ctor ( %C* %obj1271 )
  %cast_op1273 = bitcast %C* %new_obj1272 to %A* 
  %index_ptr1274 = getelementptr { i32, [ 0 x %A* ] }* %array1260, i32 0, i32 1, i32 2
  store %A* %cast_op1273, %A** %index_ptr1274
  %vdecl_slot1275 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1260, { i32, [ 0 x %A* ] }** %vdecl_slot1275
  %vdecl_slot1276 = alloca i32
  store i32 0, i32* %vdecl_slot1276
  br label %__cond308

__cond308:
  %lhs_or_call1277 = load i32* %vdecl_slot1276
  %lhs_or_call1278 = load { i32, [ 0 x %A* ] }** %vdecl_slot1275
  %len_ptr1279 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1278, i32 0, i32 0
  %len1280 = load i32* %len_ptr1279
  %bop1281 = icmp slt i32 %lhs_or_call1277, %len1280
  br i1 %bop1281, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1282 = load { i32, [ 0 x %A* ] }** %vdecl_slot1275
  %lhs_or_call1283 = load i32* %vdecl_slot1276
  %bound_ptr1285 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1282, i32 0, i32 0
  %bound1286 = load i32* %bound_ptr1285
  call void @oat_array_bounds_check( i32 %bound1286, i32 %lhs_or_call1283 )
  %elt1284 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1282, i32 0, i32 1, i32 %lhs_or_call1283
  %lhs_or_call1287 = load %A** %elt1284
  %i1288 = getelementptr %A* %lhs_or_call1287, i32 0, i32 2
  %lhs_or_call1289 = load i32* %i1288
  call void @print_int( i32 %lhs_or_call1289 )
  %lhs_or_call1290 = load i32* %vdecl_slot1276
  %bop1291 = add i32 %lhs_or_call1290, 1
  store i32 %bop1291, i32* %vdecl_slot1276
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %mem_ptr1250 = call i32* @oat_malloc ( i32 12 )
  %obj1251 = bitcast i32* %mem_ptr1250 to %A* 
  %new_obj1252 = call %A* @_A_ctor ( %A* %obj1251 )
  %_this1 = bitcast %A* %new_obj1252 to %C 
  %_name1253 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str262, i8** %_name1253
  %this_vtable1254 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable258, %_C_vtable** %this_vtable1254
  %i1249 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1249
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %mem_ptr1244 = call i32* @oat_malloc ( i32 12 )
  %obj1245 = bitcast i32* %mem_ptr1244 to %A* 
  %new_obj1246 = call %A* @_A_ctor ( %A* %obj1245 )
  %_this1 = bitcast %A* %new_obj1246 to %B 
  %_name1247 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str261, i8** %_name1247
  %this_vtable1248 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable257, %_B_vtable** %this_vtable1248
  %i1243 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1243
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %mem_ptr1238 = call i32* @oat_malloc ( i32 8 )
  %obj1239 = bitcast i32* %mem_ptr1238 to %Object* 
  %new_obj1240 = call %Object* @_Object_ctor ( %Object* %obj1239 )
  %_this1 = bitcast %Object* %new_obj1240 to %A 
  %_name1241 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str260, i8** %_name1241
  %this_vtable1242 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable256, %_A_vtable** %this_vtable1242
  %i1237 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1237
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1235 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1236 = load i8** %_name1235
  ret i8* %lhs_or_call1236
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1233 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str259, i8** %_name1233
  %this_vtable1234 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable255, %_Object_vtable** %this_vtable1234
  ret %Object* %_this1
}


