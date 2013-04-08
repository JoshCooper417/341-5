%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
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
@_const_str243.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str243 = alias bitcast([ 3 x i8 ]* @_const_str243.str. to i8*)@_const_str242.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str242 = alias bitcast([ 4 x i8 ]* @_const_str242.str. to i8*)@_const_str241.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str241 = alias bitcast([ 2 x i8 ]* @_const_str241.str. to i8*)@_const_str240.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str240 = alias bitcast([ 2 x i8 ]* @_const_str240.str. to i8*)@_const_str239.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str239 = alias bitcast([ 2 x i8 ]* @_const_str239.str. to i8*)@_const_str238.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str238 = alias bitcast([ 7 x i8 ]* @_const_str238.str. to i8*)@_C_vtable237 = private constant %_C_vtable {%_B_vtable* @_B_vtable236, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable236 = private constant %_B_vtable {%_A_vtable* @_A_vtable235, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable235 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable234, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable234 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh434:
  ret void
}


define i32 @program (i32 %argc1273, { i32, [ 0 x i8* ] }* %argv1271){
__fresh426:
  %argc_slot1274 = alloca i32
  store i32 %argc1273, i32* %argc_slot1274
  %argv_slot1272 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1271, { i32, [ 0 x i8* ] }** %argv_slot1272
  %mem_ptr1275 = call i32* @oat_malloc ( i32 12 )
  %obj1276 = bitcast i32* %mem_ptr1275 to %C* 
  %new_obj1277 = call %C* @_C_ctor ( %C* %obj1276 )
  %cast_op1278 = bitcast %C* %new_obj1277 to %A* 
  %vdecl_slot1279 = alloca %A*
  store %A* %cast_op1278, %A** %vdecl_slot1279
  %unop1280 = sub i32 0, 1
  %vdecl_slot1281 = alloca i32
  store i32 %unop1280, i32* %vdecl_slot1281
  br label %__init419

__fresh427:
  br label %__init419

__init419:
  %lhs_or_call1283 = load %A** %vdecl_slot1279
  %rvtable1290 = getelementptr %A* %lhs_or_call1283, i32 0
  br label %__bound_check420

__fresh428:
  br label %__bound_check420

__bound_check420:
  %cast_op1294 = bitcast %_A_vtable* @_A_vtable235 to i8** 
  %lvtable1291 = load i8** %cast_op1294
  %cast_vtable1295 = bitcast i8** %rvtable1290 to i8** 
  %rvtable1293 = load i8** %cast_vtable1295
  %compare1292 = icmp eq i8* %rvtable1293, null
  br i1 %compare1292, label %__end_no423, label %__check_curr422

__fresh429:
  br label %__check_curr422

__check_curr422:
  %compare1292 = icmp eq i8** %lvtable1291, %rvtable1293
  br i1 %compare1292, label %__end_yes424, label %__move_up421

__fresh430:
  br label %__move_up421

__move_up421:
  %rvtable1290 = getelementptr i8* %rvtable1293, i32 0
  br label %__bound_check420

__fresh431:
  br label %__end_yes424

__end_yes424:
  %lhs_or_call1283 = load %A** %vdecl_slot1279
  %cast_ptr1282 = bitcast %A* %lhs_or_call1283 to %A* 
  call void @print_string( i8* @_const_str242 )
  %lhs_or_call1284 = load %A** %cast_ptr1282
  %i1285 = getelementptr %A* %lhs_or_call1284, i32 0, i32 2
  %lhs_or_call1286 = load i32* %i1285
  store i32 %lhs_or_call1286, i32* %vdecl_slot1281
  br label %__end425

__fresh432:
  br label %__end_no423

__end_no423:
  call void @print_string( i8* @_const_str243 )
  %lhs_or_call1287 = load %A** %vdecl_slot1279
  %i1288 = getelementptr %A* %lhs_or_call1287, i32 0, i32 2
  %lhs_or_call1289 = load i32* %i1288
  store i32 %lhs_or_call1289, i32* %vdecl_slot1281
  br label %__end425

__fresh433:
  br label %__end425

__end425:
  %lhs_or_call1296 = load i32* %vdecl_slot1281
  ret i32 %lhs_or_call1296
}


define %C* @_C_ctor (%C* %_this1){
__fresh418:
  %mem_ptr1266 = call i32* @oat_malloc ( i32 12 )
  %obj1267 = bitcast i32* %mem_ptr1266 to %B* 
  %new_obj1268 = call %B* @_B_ctor ( %B* %obj1267 )
  %_this1 = bitcast %B* %new_obj1268 to %C 
  %_name1269 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str241, i8** %_name1269
  %this_vtable1270 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable237, %_C_vtable** %this_vtable1270
  %i1265 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1265
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh417:
  %mem_ptr1260 = call i32* @oat_malloc ( i32 12 )
  %obj1261 = bitcast i32* %mem_ptr1260 to %A* 
  %new_obj1262 = call %A* @_A_ctor ( %A* %obj1261 )
  %_this1 = bitcast %A* %new_obj1262 to %B 
  %_name1263 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str240, i8** %_name1263
  %this_vtable1264 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable236, %_B_vtable** %this_vtable1264
  %i1259 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1259
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh416:
  %mem_ptr1254 = call i32* @oat_malloc ( i32 8 )
  %obj1255 = bitcast i32* %mem_ptr1254 to %Object* 
  %new_obj1256 = call %Object* @_Object_ctor ( %Object* %obj1255 )
  %_this1 = bitcast %Object* %new_obj1256 to %A 
  %_name1257 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str239, i8** %_name1257
  %this_vtable1258 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable235, %_A_vtable** %this_vtable1258
  %i1253 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1253
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh415:
  %_name1251 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1252 = load i8** %_name1251
  ret i8* %lhs_or_call1252
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh414:
  %_name1249 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str238, i8** %_name1249
  %this_vtable1250 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable234, %_Object_vtable** %this_vtable1250
  ret %Object* %_this1
}


