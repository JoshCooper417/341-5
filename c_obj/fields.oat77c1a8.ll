%Fields = type { %_Fields_vtable*, i8*, i32, i32, i32 }
%_Fields_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Fields* (%Fields*)* }
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
@_const_str481.str. = private unnamed_addr constant [ 7 x i8 ] c "Fields\00", align 4
@_const_str481 = alias bitcast([ 7 x i8 ]* @_const_str481.str. to i8*)@_const_str480.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str480 = alias bitcast([ 7 x i8 ]* @_const_str480.str. to i8*)@_Fields_vtable479 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable478, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable478 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh523:
  ret void
}


define i32 @program (i32 %argc2344, { i32, [ 0 x i8* ] }* %argv2342){
__fresh522:
  %argc_slot2345 = alloca i32
  store i32 %argc2344, i32* %argc_slot2345
  %argv_slot2343 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2342, { i32, [ 0 x i8* ] }** %argv_slot2343
  %mem_ptr2346 = call i32* @oat_malloc ( i32 20 )
  %obj2347 = bitcast i32* %mem_ptr2346 to %Fields* 
  %new_obj2348 = call %Fields* @_Fields_ctor ( %Fields* %obj2347 )
  %vdecl_slot2349 = alloca %Fields*
  store %Fields* %new_obj2348, %Fields** %vdecl_slot2349
  %lhs_or_call2350 = load %Fields** %vdecl_slot2349
  %sumab2352 = getelementptr %_Fields_vtable* @_Fields_vtable479, i32 0, i32 2
  %sumab2351 = load %Fields* (%Fields*)** %sumab2352
  %cast_op2353 = bitcast %Fields %lhs_or_call2350 to %Fields* 
  %ret2354 = call %Fields* %sumab2351 ( %Fields* %cast_op2353 )
  %vdecl_slot2355 = alloca %Fields*
  store %Fields* %ret2354, %Fields** %vdecl_slot2355
  %lhs_or_call2356 = load %Fields** %vdecl_slot2355
  %bfield2357 = getelementptr %Fields* %lhs_or_call2356, i32 0, i32 3
  %lhs_or_call2358 = load i32* %bfield2357
  ret i32 %lhs_or_call2358
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh521:
  %bfield2338 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2339 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2340 = load i32* %afield2339
  %bop2341 = add i32 1, %lhs_or_call2340
  store i32 %bop2341, i32* %bfield2338
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh520:
  %mem_ptr2333 = call i32* @oat_malloc ( i32 8 )
  %obj2334 = bitcast i32* %mem_ptr2333 to %Object* 
  %new_obj2335 = call %Object* @_Object_ctor ( %Object* %obj2334 )
  %_this1 = bitcast %Object* %new_obj2335 to %Fields 
  %_name2336 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str481, i8** %_name2336
  %this_vtable2337 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable479, %_Fields_vtable** %this_vtable2337
  %afield2332 = getelementptr %Fields* %_this1, i32 0, i32 2
  store i32 12, i32* %afield2332
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh519:
  %_name2330 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2331 = load i8** %_name2330
  ret i8* %lhs_or_call2331
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh518:
  %_name2328 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str480, i8** %_name2328
  %this_vtable2329 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable478, %_Object_vtable** %this_vtable2329
  ret %Object* %_this1
}


