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


define i32 @program (i32 %argc353, { i32, [ 0 x i8* ] }* %argv351){
__fresh86:
  %argc_slot354 = alloca i32
  store i32 %argc353, i32* %argc_slot354
  %argv_slot352 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv351, { i32, [ 0 x i8* ] }** %argv_slot352
  %mem_ptr355 = call i32* @oat_malloc ( i32 12 )
  %obj356 = bitcast i32* %mem_ptr355 to %A* 
  %new_obj357 = call %A* @_A_ctor ( %A* %obj356, i32 10 )
  %vdecl_slot358 = alloca %A*
  store %A* %new_obj357, %A** %vdecl_slot358
  %lhs_or_call359 = load %A** %vdecl_slot358
  %i360 = getelementptr %A* %lhs_or_call359, i32 0, i32 2
  %lhs_or_call361 = load i32* %i360
  ret i32 %lhs_or_call361
}


define %A* @_A_ctor (%A* %_this1, i32 %i342){
__fresh85:
  %i_slot343 = alloca i32
  store i32 %i342, i32* %i_slot343
  %mem_ptr346 = call i32* @oat_malloc ( i32 8 )
  %obj347 = bitcast i32* %mem_ptr346 to %Object* 
  %new_obj348 = call %Object* @_Object_ctor ( %Object* %obj347 )
  %_this1 = bitcast %Object* %new_obj348 to %A 
  %_name349 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str59, i8** %_name349
  %this_vtable350 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable57, %_A_vtable** %this_vtable350
  %i344 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call345 = load i32* %i_slot343
  store i32 %lhs_or_call345, i32* %i344
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh84:
  %_name340 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call341 = load i8** %_name340
  ret i8* %lhs_or_call341
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh83:
  %_name338 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str58, i8** %_name338
  %this_vtable339 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable56, %_Object_vtable** %this_vtable339
  ret %Object* %_this1
}


