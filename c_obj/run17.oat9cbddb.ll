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
@_const_str70.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str70 = alias bitcast([ 2 x i8 ]* @_const_str70.str. to i8*)@_const_str69.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str69 = alias bitcast([ 7 x i8 ]* @_const_str69.str. to i8*)@_A_vtable68 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable67, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable67 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh87:
  ret void
}


define i32 @program (i32 %argc349, { i32, [ 0 x i8* ] }* %argv347){
__fresh86:
  %argc_slot350 = alloca i32
  store i32 %argc349, i32* %argc_slot350
  %argv_slot348 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv347, { i32, [ 0 x i8* ] }** %argv_slot348
  %mem_ptr351 = call i32* @oat_malloc ( i32 12 )
  %obj352 = bitcast i32* %mem_ptr351 to %A* 
  %new_obj353 = call %A* @_A_ctor ( %A* %obj352, i32 10 )
  %vdecl_slot354 = alloca %A*
  store %A* %new_obj353, %A** %vdecl_slot354
  %lhs_or_call355 = load %A** %vdecl_slot354
  %i356 = getelementptr %A* %lhs_or_call355, i32 0, i32 2
  %lhs_or_call357 = load i32* %i356
  ret i32 %lhs_or_call357
}


define %A* @_A_ctor (%A* %_this1, i32 %i338){
__fresh85:
  %i_slot339 = alloca i32
  store i32 %i338, i32* %i_slot339
  %mem_ptr342 = call i32* @oat_malloc ( i32 8 )
  %obj343 = bitcast i32* %mem_ptr342 to %Object* 
  %new_obj344 = call %Object* @_Object_ctor ( %Object* %obj343 )
  %_this1 = bitcast %Object* %new_obj344 to %A 
  %_name345 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str70, i8** %_name345
  %this_vtable346 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable68, %_A_vtable** %this_vtable346
  %i340 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call341 = load i32* %i_slot339
  store i32 %lhs_or_call341, i32* %i340
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh84:
  %_name336 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call337 = load i8** %_name336
  ret i8* %lhs_or_call337
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh83:
  %_name334 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str69, i8** %_name334
  %this_vtable335 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable67, %_Object_vtable** %this_vtable335
  ret %Object* %_this1
}


