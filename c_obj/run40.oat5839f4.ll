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
@_const_str265.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str265 = alias bitcast([ 2 x i8 ]* @_const_str265.str. to i8*)@_const_str264.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str264 = alias bitcast([ 2 x i8 ]* @_const_str264.str. to i8*)@_const_str263.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str263 = alias bitcast([ 2 x i8 ]* @_const_str263.str. to i8*)@_const_str262.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str262 = alias bitcast([ 2 x i8 ]* @_const_str262.str. to i8*)@_const_str261.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str261 = alias bitcast([ 2 x i8 ]* @_const_str261.str. to i8*)@_const_str260.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str260 = alias bitcast([ 2 x i8 ]* @_const_str260.str. to i8*)@_const_str259.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str259 = alias bitcast([ 7 x i8 ]* @_const_str259.str. to i8*)@_C_vtable258 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable255, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable257 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable255, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable256 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable255, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable255 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh300:
  ret void
}


define i32 @program (i32 %argc1261, { i32, [ 0 x i8* ] }* %argv1259){
__fresh299:
  %argc_slot1262 = alloca i32
  store i32 %argc1261, i32* %argc_slot1262
  %argv_slot1260 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1259, { i32, [ 0 x i8* ] }** %argv_slot1260
  %mem_ptr1263 = call i32* @oat_malloc ( i32 12 )
  %obj1264 = bitcast i32* %mem_ptr1263 to %C* 
  %new_obj1265 = call %C* @_C_ctor ( %C* %obj1264 )
  %vdecl_slot1266 = alloca %C*
  store %C* %new_obj1265, %C** %vdecl_slot1266
  %lhs_or_call1267 = load %C** %vdecl_slot1266
  %f1269 = getelementptr %_C_vtable* @_C_vtable258, i32 0, i32 2
  %f1268 = load void (%C*)** %f1269
  %cast_op1270 = bitcast %C %lhs_or_call1267 to %C* 
  call void %f1268( %C* %cast_op1270 )
  %lhs_or_call1271 = load %C** %vdecl_slot1266
  %b1272 = getelementptr %C* %lhs_or_call1271, i32 0, i32 2
  %lhs_or_call1273 = load %B** %b1272
  %f1275 = getelementptr %_B_vtable* @_B_vtable257, i32 0, i32 2
  %f1274 = load void (%B*)** %f1275
  %cast_op1276 = bitcast %B %lhs_or_call1273 to %B* 
  call void %f1274( %B* %cast_op1276 )
  %lhs_or_call1277 = load %C** %vdecl_slot1266
  %b1278 = getelementptr %C* %lhs_or_call1277, i32 0, i32 2
  %lhs_or_call1279 = load %B** %b1278
  %a1280 = getelementptr %B* %lhs_or_call1279, i32 0, i32 2
  %lhs_or_call1281 = load %A** %a1280
  %f1283 = getelementptr %_A_vtable* @_A_vtable256, i32 0, i32 2
  %f1282 = load void (%A*)** %f1283
  %cast_op1284 = bitcast %A %lhs_or_call1281 to %A* 
  call void %f1282( %A* %cast_op1284 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str265 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %cast_op1249 = bitcast %C* %_this1 to %Object* 
  %mem_ptr1250 = call i32* @oat_malloc ( i32 12 )
  %obj1251 = bitcast i32* %mem_ptr1250 to %C* 
  %new_obj1252 = call %Object* @_Object_ctor ( %C* %obj1251, %Object* %cast_op1249 )
  %_this1 = bitcast %Object* %new_obj1252 to %C 
  %_name1253 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str264, i8** %_name1253
  %b1254 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1255 = call i32* @oat_malloc ( i32 12 )
  %obj1256 = bitcast i32* %mem_ptr1255 to %B* 
  %new_obj1257 = call %B* @_B_ctor ( %B* %obj1256 )
  store %B* %new_obj1257, %B** %b1254
  %this_vtable1258 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable258, %_C_vtable** %this_vtable1258
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str263 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %cast_op1239 = bitcast %B* %_this1 to %Object* 
  %mem_ptr1240 = call i32* @oat_malloc ( i32 12 )
  %obj1241 = bitcast i32* %mem_ptr1240 to %B* 
  %new_obj1242 = call %Object* @_Object_ctor ( %B* %obj1241, %Object* %cast_op1239 )
  %_this1 = bitcast %Object* %new_obj1242 to %B 
  %_name1243 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str262, i8** %_name1243
  %a1244 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1245 = call i32* @oat_malloc ( i32 8 )
  %obj1246 = bitcast i32* %mem_ptr1245 to %A* 
  %new_obj1247 = call %A* @_A_ctor ( %A* %obj1246 )
  store %A* %new_obj1247, %A** %a1244
  %this_vtable1248 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable257, %_B_vtable** %this_vtable1248
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str261 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %cast_op1233 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1234 = call i32* @oat_malloc ( i32 8 )
  %obj1235 = bitcast i32* %mem_ptr1234 to %A* 
  %new_obj1236 = call %Object* @_Object_ctor ( %A* %obj1235, %Object* %cast_op1233 )
  %_this1 = bitcast %Object* %new_obj1236 to %A 
  %_name1237 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str260, i8** %_name1237
  %this_vtable1238 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable256, %_A_vtable** %this_vtable1238
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1231 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1232 = load i8** %_name1231
  ret i8* %lhs_or_call1232
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1229 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str259, i8** %_name1229
  %this_vtable1230 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable255, %_Object_vtable** %this_vtable1230
  ret %Object* %_this1
}


