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
@_const_str274.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str274 = alias bitcast([ 2 x i8 ]* @_const_str274.str. to i8*)@_const_str273.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str273 = alias bitcast([ 2 x i8 ]* @_const_str273.str. to i8*)@_const_str272.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str272 = alias bitcast([ 2 x i8 ]* @_const_str272.str. to i8*)@_const_str271.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str271 = alias bitcast([ 2 x i8 ]* @_const_str271.str. to i8*)@_const_str270.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str270 = alias bitcast([ 2 x i8 ]* @_const_str270.str. to i8*)@_const_str269.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str269 = alias bitcast([ 2 x i8 ]* @_const_str269.str. to i8*)@_const_str268.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str268 = alias bitcast([ 7 x i8 ]* @_const_str268.str. to i8*)@_C_vtable267 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable264, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable266 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable264, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable265 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable264, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable264 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh300:
  ret void
}


define i32 @program (i32 %argc1272, { i32, [ 0 x i8* ] }* %argv1270){
__fresh299:
  %argc_slot1273 = alloca i32
  store i32 %argc1272, i32* %argc_slot1273
  %argv_slot1271 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1270, { i32, [ 0 x i8* ] }** %argv_slot1271
  %mem_ptr1274 = call i32* @oat_malloc ( i32 12 )
  %obj1275 = bitcast i32* %mem_ptr1274 to %C* 
  %new_obj1276 = call %C* @_C_ctor ( %C* %obj1275 )
  %vdecl_slot1277 = alloca %C*
  store %C* %new_obj1276, %C** %vdecl_slot1277
  %lhs_or_call1278 = load %C** %vdecl_slot1277
  %f1280 = getelementptr %_C_vtable* @_C_vtable267, i32 0, i32 2
  %f1279 = load void (%C*)** %f1280
  %cast_op1281 = bitcast %C %lhs_or_call1278 to %C* 
  call void %f1279( %C* %cast_op1281 )
  %lhs_or_call1282 = load %C** %vdecl_slot1277
  %b1283 = getelementptr %C* %lhs_or_call1282, i32 0, i32 2
  %lhs_or_call1284 = load %B** %b1283
  %f1286 = getelementptr %_B_vtable* @_B_vtable266, i32 0, i32 2
  %f1285 = load void (%B*)** %f1286
  %cast_op1287 = bitcast %B %lhs_or_call1284 to %B* 
  call void %f1285( %B* %cast_op1287 )
  %lhs_or_call1288 = load %C** %vdecl_slot1277
  %b1289 = getelementptr %C* %lhs_or_call1288, i32 0, i32 2
  %lhs_or_call1290 = load %B** %b1289
  %a1291 = getelementptr %B* %lhs_or_call1290, i32 0, i32 2
  %lhs_or_call1292 = load %A** %a1291
  %f1294 = getelementptr %_A_vtable* @_A_vtable265, i32 0, i32 2
  %f1293 = load void (%A*)** %f1294
  %cast_op1295 = bitcast %A %lhs_or_call1292 to %A* 
  call void %f1293( %A* %cast_op1295 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str274 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %cast_op1260 = bitcast %C* %_this1 to %Object* 
  %mem_ptr1261 = call i32* @oat_malloc ( i32 12 )
  %obj1262 = bitcast i32* %mem_ptr1261 to %C* 
  %new_obj1263 = call %Object* @_Object_ctor ( %C* %obj1262, %Object* %cast_op1260 )
  %_this1 = bitcast %Object* %new_obj1263 to %C 
  %_name1264 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str273, i8** %_name1264
  %b1265 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1266 = call i32* @oat_malloc ( i32 12 )
  %obj1267 = bitcast i32* %mem_ptr1266 to %B* 
  %new_obj1268 = call %B* @_B_ctor ( %B* %obj1267 )
  store %B* %new_obj1268, %B** %b1265
  %this_vtable1269 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable267, %_C_vtable** %this_vtable1269
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str272 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %cast_op1250 = bitcast %B* %_this1 to %Object* 
  %mem_ptr1251 = call i32* @oat_malloc ( i32 12 )
  %obj1252 = bitcast i32* %mem_ptr1251 to %B* 
  %new_obj1253 = call %Object* @_Object_ctor ( %B* %obj1252, %Object* %cast_op1250 )
  %_this1 = bitcast %Object* %new_obj1253 to %B 
  %_name1254 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str271, i8** %_name1254
  %a1255 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1256 = call i32* @oat_malloc ( i32 8 )
  %obj1257 = bitcast i32* %mem_ptr1256 to %A* 
  %new_obj1258 = call %A* @_A_ctor ( %A* %obj1257 )
  store %A* %new_obj1258, %A** %a1255
  %this_vtable1259 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable266, %_B_vtable** %this_vtable1259
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str270 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %cast_op1244 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1245 = call i32* @oat_malloc ( i32 8 )
  %obj1246 = bitcast i32* %mem_ptr1245 to %A* 
  %new_obj1247 = call %Object* @_Object_ctor ( %A* %obj1246, %Object* %cast_op1244 )
  %_this1 = bitcast %Object* %new_obj1247 to %A 
  %_name1248 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str269, i8** %_name1248
  %this_vtable1249 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable265, %_A_vtable** %this_vtable1249
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1242 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1243 = load i8** %_name1242
  ret i8* %lhs_or_call1243
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1240 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str268, i8** %_name1240
  %this_vtable1241 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable264, %_Object_vtable** %this_vtable1241
  ret %Object* %_this1
}


