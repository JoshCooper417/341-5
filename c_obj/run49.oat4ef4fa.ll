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
@_const_str286.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str286 = alias bitcast([ 2 x i8 ]* @_const_str286.str. to i8*)@_const_str287.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str287 = alias bitcast([ 2 x i8 ]* @_const_str287.str. to i8*)@_const_str284.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str284 = alias bitcast([ 2 x i8 ]* @_const_str284.str. to i8*)@_const_str285.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str285 = alias bitcast([ 2 x i8 ]* @_const_str285.str. to i8*)@_const_str283.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str283 = alias bitcast([ 7 x i8 ]* @_const_str283.str. to i8*)@_B_vtable282 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable280, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable281 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable280, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable280 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh322:
  ret void
}


define i32 @program (i32 %argc1318, { i32, [ 0 x i8* ] }* %argv1316){
__fresh321:
  %argc_slot1319 = alloca i32
  store i32 %argc1318, i32* %argc_slot1319
  %argv_slot1317 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1316, { i32, [ 0 x i8* ] }** %argv_slot1317
  %mem_ptr1320 = call i32* @oat_malloc ( i32 12 )
  %obj1321 = bitcast i32* %mem_ptr1320 to %A* 
  %new_obj1322 = call %A* @_A_ctor ( %A* %obj1321 )
  %vdecl_slot1323 = alloca %A*
  store %A* %new_obj1322, %A** %vdecl_slot1323
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh320:
  %mem_ptr1311 = call i32* @oat_malloc ( i32 8 )
  %obj1312 = bitcast i32* %mem_ptr1311 to %Object* 
  %new_obj1313 = call %Object* @_Object_ctor ( %Object* %obj1312 )
  %_this1 = bitcast %Object* %new_obj1313 to %B 
  %_name1314 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str287, i8** %_name1314
  %this_vtable1315 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable282, %_B_vtable** %this_vtable1315
  call void @print_string( i8* @_const_str286 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh319:
  %mem_ptr1302 = call i32* @oat_malloc ( i32 8 )
  %obj1303 = bitcast i32* %mem_ptr1302 to %Object* 
  %new_obj1304 = call %Object* @_Object_ctor ( %Object* %obj1303 )
  %_this1 = bitcast %Object* %new_obj1304 to %A 
  %_name1305 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str285, i8** %_name1305
  %b1306 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1307 = call i32* @oat_malloc ( i32 8 )
  %obj1308 = bitcast i32* %mem_ptr1307 to %B* 
  %new_obj1309 = call %B* @_B_ctor ( %B* %obj1308 )
  store %B* %new_obj1309, %B** %b1306
  %this_vtable1310 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable281, %_A_vtable** %this_vtable1310
  call void @print_string( i8* @_const_str284 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh318:
  %_name1300 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1301 = load i8** %_name1300
  ret i8* %lhs_or_call1301
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh317:
  %_name1298 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str283, i8** %_name1298
  %this_vtable1299 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable280, %_Object_vtable** %this_vtable1299
  ret %Object* %_this1
}


