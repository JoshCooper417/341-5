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
@_const_str59.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str59 = alias bitcast([ 2 x i8 ]* @_const_str59.str. to i8*)@_const_str58.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str58 = alias bitcast([ 7 x i8 ]* @_const_str58.str. to i8*)@_A_vtable57 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable56, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable56 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh87:
  ret void
}


define i32 @program (i32 %argc355, { i32, [ 0 x i8* ] }* %argv353){
__fresh86:
  %argc_slot356 = alloca i32
  store i32 %argc355, i32* %argc_slot356
  %argv_slot354 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv353, { i32, [ 0 x i8* ] }** %argv_slot354
  %mem_ptr357 = call i32* @oat_malloc ( i32 12 )
  %obj358 = bitcast i32* %mem_ptr357 to %A* 
  %new_obj359 = call %A* @_A_ctor ( %A* %obj358, i32 10 )
  %vdecl_slot360 = alloca %A*
  store %A* %new_obj359, %A** %vdecl_slot360
  %lhs_or_call361 = load %A** %vdecl_slot360
  %i362 = getelementptr %A* %lhs_or_call361, i32 0, i32 2
  %lhs_or_call363 = load i32* %i362
  ret i32 %lhs_or_call363
}


define %A* @_A_ctor (%A* %_this1, i32 %i344){
__fresh85:
  %i_slot345 = alloca i32
  store i32 %i344, i32* %i_slot345
  %mem_ptr348 = call i32* @oat_malloc ( i32 8 )
  %obj349 = bitcast i32* %mem_ptr348 to %Object* 
  %new_obj350 = call %Object* @_Object_ctor ( %Object* %obj349 )
  %_this1 = bitcast %Object* %new_obj350 to %A 
  %_name351 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str59, i8** %_name351
  %this_vtable352 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable57, %_A_vtable** %this_vtable352
  %i346 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call347 = load i32* %i_slot345
  store i32 %lhs_or_call347, i32* %i346
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh84:
  %_name342 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call343 = load i8** %_name342
  ret i8* %lhs_or_call343
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh83:
  %_name340 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str58, i8** %_name340
  %this_vtable341 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable56, %_Object_vtable** %this_vtable341
  ret %Object* %_this1
}


