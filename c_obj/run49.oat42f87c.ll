%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, %B* }
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
@_const_str283.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str283 = alias bitcast([ 2 x i8 ]* @_const_str283.str. to i8*)@_const_str284.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str284 = alias bitcast([ 2 x i8 ]* @_const_str284.str. to i8*)@_const_str281.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str281 = alias bitcast([ 2 x i8 ]* @_const_str281.str. to i8*)@_const_str282.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str282 = alias bitcast([ 2 x i8 ]* @_const_str282.str. to i8*)@_const_str280.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str280 = alias bitcast([ 7 x i8 ]* @_const_str280.str. to i8*)@_B_vtable279 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable277, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable278 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable277, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable277 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh305:
  ret void
}


define i32 @program (i32 %argc1288, { i32, [ 0 x i8* ] }* %argv1286){
__fresh304:
  %argc_slot1289 = alloca i32
  store i32 %argc1288, i32* %argc_slot1289
  %argv_slot1287 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1286, { i32, [ 0 x i8* ] }** %argv_slot1287
  %mem_ptr1290 = call i32* @oat_malloc ( i32 12 )
  %obj1291 = bitcast i32* %mem_ptr1290 to %A* 
  %new_obj1292 = call %A* @_A_ctor ( %A* %obj1291 )
  %vdecl_slot1293 = alloca %A*
  store %A* %new_obj1292, %A** %vdecl_slot1293
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh303:
  %mem_ptr1281 = call i32* @oat_malloc ( i32 8 )
  %obj1282 = bitcast i32* %mem_ptr1281 to %Object* 
  %new_obj1283 = call %Object* @_Object_ctor ( %Object* %obj1282 )
  %_this1 = bitcast %Object* %new_obj1283 to %B 
  %_name1284 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str284, i8** %_name1284
  %this_vtable1285 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable279, %_B_vtable** %this_vtable1285
  call void @print_string( i8* @_const_str283 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh302:
  %mem_ptr1272 = call i32* @oat_malloc ( i32 8 )
  %obj1273 = bitcast i32* %mem_ptr1272 to %Object* 
  %new_obj1274 = call %Object* @_Object_ctor ( %Object* %obj1273 )
  %_this1 = bitcast %Object* %new_obj1274 to %A 
  %_name1275 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str282, i8** %_name1275
  %b1276 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1277 = call i32* @oat_malloc ( i32 8 )
  %obj1278 = bitcast i32* %mem_ptr1277 to %B* 
  %new_obj1279 = call %B* @_B_ctor ( %B* %obj1278 )
  store %B* %new_obj1279, %B** %b1276
  %this_vtable1280 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable278, %_A_vtable** %this_vtable1280
  call void @print_string( i8* @_const_str281 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh301:
  %_name1270 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1271 = load i8** %_name1270
  ret i8* %lhs_or_call1271
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh300:
  %_name1268 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str280, i8** %_name1268
  %this_vtable1269 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable277, %_Object_vtable** %this_vtable1269
  ret %Object* %_this1
}


