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
@_const_str275.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str275 = alias bitcast([ 2 x i8 ]* @_const_str275.str. to i8*)@_const_str276.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str276 = alias bitcast([ 2 x i8 ]* @_const_str276.str. to i8*)@_const_str273.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str273 = alias bitcast([ 2 x i8 ]* @_const_str273.str. to i8*)@_const_str274.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str274 = alias bitcast([ 2 x i8 ]* @_const_str274.str. to i8*)@_const_str272.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str272 = alias bitcast([ 7 x i8 ]* @_const_str272.str. to i8*)@_B_vtable271 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable269, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable270 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable269, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable269 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh322:
  ret void
}


define i32 @program (i32 %argc1344, { i32, [ 0 x i8* ] }* %argv1342){
__fresh321:
  %argc_slot1345 = alloca i32
  store i32 %argc1344, i32* %argc_slot1345
  %argv_slot1343 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1342, { i32, [ 0 x i8* ] }** %argv_slot1343
  %mem_ptr1346 = call i32* @oat_malloc ( i32 12 )
  %obj1347 = bitcast i32* %mem_ptr1346 to %A* 
  %new_obj1348 = call %A* @_A_ctor ( %A* %obj1347 )
  %vdecl_slot1349 = alloca %A*
  store %A* %new_obj1348, %A** %vdecl_slot1349
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh320:
  %mem_ptr1337 = call i32* @oat_malloc ( i32 8 )
  %obj1338 = bitcast i32* %mem_ptr1337 to %Object* 
  %new_obj1339 = call %Object* @_Object_ctor ( %Object* %obj1338 )
  %_this1 = bitcast %Object* %new_obj1339 to %B 
  %_name1340 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str276, i8** %_name1340
  %this_vtable1341 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable271, %_B_vtable** %this_vtable1341
  call void @print_string( i8* @_const_str275 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh319:
  %mem_ptr1328 = call i32* @oat_malloc ( i32 8 )
  %obj1329 = bitcast i32* %mem_ptr1328 to %Object* 
  %new_obj1330 = call %Object* @_Object_ctor ( %Object* %obj1329 )
  %_this1 = bitcast %Object* %new_obj1330 to %A 
  %_name1331 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str274, i8** %_name1331
  %b1332 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1333 = call i32* @oat_malloc ( i32 8 )
  %obj1334 = bitcast i32* %mem_ptr1333 to %B* 
  %new_obj1335 = call %B* @_B_ctor ( %B* %obj1334 )
  store %B* %new_obj1335, %B** %b1332
  %this_vtable1336 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable270, %_A_vtable** %this_vtable1336
  call void @print_string( i8* @_const_str273 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh318:
  %_name1326 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1327 = load i8** %_name1326
  ret i8* %lhs_or_call1327
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh317:
  %_name1324 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str272, i8** %_name1324
  %this_vtable1325 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable269, %_Object_vtable** %this_vtable1325
  ret %Object* %_this1
}


