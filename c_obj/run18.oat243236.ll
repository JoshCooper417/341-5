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
__fresh110:
  ret void
}


define i32 @program (i32 %argc398, { i32, [ 0 x i8* ] }* %argv396){
__fresh109:
  %argc_slot399 = alloca i32
  store i32 %argc398, i32* %argc_slot399
  %argv_slot397 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv396, { i32, [ 0 x i8* ] }** %argv_slot397
  %mem_ptr400 = call i32* @oat_malloc ( i32 12 )
  %obj401 = bitcast i32* %mem_ptr400 to %A* 
  %new_obj402 = call %A* @_A_ctor ( %A* %obj401, i8* @_const_str64 )
  %vdecl_slot403 = alloca %A*
  store %A* %new_obj402, %A** %vdecl_slot403
  %lhs_or_call404 = load %A** %vdecl_slot403
  %str405 = getelementptr %A* %lhs_or_call404, i32 0, i32 2
  %lhs_or_call406 = load i8** %str405
  call void @print_string( i8* %lhs_or_call406 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str387){
__fresh108:
  %str_slot388 = alloca i8*
  store i8* %str387, i8** %str_slot388
  %mem_ptr389 = call i32* @oat_malloc ( i32 8 )
  %obj390 = bitcast i32* %mem_ptr389 to %Object* 
  %new_obj391 = call %Object* @_Object_ctor ( %Object* %obj390 )
  %_this1 = bitcast %Object* %new_obj391 to %A 
  %_name392 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str63, i8** %_name392
  %str393 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call394 = load i8** %str_slot388
  store i8* %lhs_or_call394, i8** %str393
  %this_vtable395 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable61, %_A_vtable** %this_vtable395
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh107:
  %_name385 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call386 = load i8** %_name385
  ret i8* %lhs_or_call386
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh106:
  %_name383 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str62, i8** %_name383
  %this_vtable384 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable60, %_Object_vtable** %this_vtable384
  ret %Object* %_this1
}


