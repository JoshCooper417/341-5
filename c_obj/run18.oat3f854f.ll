%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str64.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str64 = alias bitcast([ 7 x i8 ]* @_const_str64.str. to i8*)@_const_str63.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str63 = alias bitcast([ 2 x i8 ]* @_const_str63.str. to i8*)@_const_str62.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str62 = alias bitcast([ 7 x i8 ]* @_const_str62.str. to i8*)@_A_vtable61 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable60, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable60 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh92:
  ret void
}


define i32 @program (i32 %argc370, { i32, [ 0 x i8* ] }* %argv368){
__fresh91:
  %argc_slot371 = alloca i32
  store i32 %argc370, i32* %argc_slot371
  %argv_slot369 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv368, { i32, [ 0 x i8* ] }** %argv_slot369
  %mem_ptr372 = call i32* @oat_malloc ( i32 12 )
  %obj373 = bitcast i32* %mem_ptr372 to %A* 
  %new_obj374 = call %A* @_A_ctor ( %A* %obj373, i8* @_const_str64 )
  %vdecl_slot375 = alloca %A*
  store %A* %new_obj374, %A** %vdecl_slot375
  %lhs_or_call376 = load %A** %vdecl_slot375
  %str377 = getelementptr %A* %lhs_or_call376, i32 0, i32 2
  %lhs_or_call378 = load i8** %str377
  call void @print_string( i8* %lhs_or_call378 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str359){
__fresh90:
  %str_slot360 = alloca i8*
  store i8* %str359, i8** %str_slot360
  %mem_ptr361 = call i32* @oat_malloc ( i32 8 )
  %obj362 = bitcast i32* %mem_ptr361 to %Object* 
  %new_obj363 = call %Object* @_Object_ctor ( %Object* %obj362 )
  %_this1 = bitcast %Object* %new_obj363 to %A 
  %_name364 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str63, i8** %_name364
  %str365 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call366 = load i8** %str_slot360
  store i8* %lhs_or_call366, i8** %str365
  %this_vtable367 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable61, %_A_vtable** %this_vtable367
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh89:
  %_name357 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call358 = load i8** %_name357
  ret i8* %lhs_or_call358
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh88:
  %_name355 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str62, i8** %_name355
  %this_vtable356 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable60, %_Object_vtable** %this_vtable356
  ret %Object* %_this1
}


