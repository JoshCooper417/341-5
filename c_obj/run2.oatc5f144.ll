%B = type { %_B_vtable*, i8*, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8*, i32, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)* }
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
@_const_str12.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str12 = alias bitcast([ 2 x i8 ]* @_const_str12.str. to i8*)@_const_str11.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str11 = alias bitcast([ 2 x i8 ]* @_const_str11.str. to i8*)@_const_str10.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str10 = alias bitcast([ 7 x i8 ]* @_const_str10.str. to i8*)@_B_vtable9 = private constant %_B_vtable {%_A_vtable* @_A_vtable8, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f, void (%A*)* @_A_p, i32 (%B*)* @_B_g}, align 4
@_A_vtable8 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable7, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f, void (%A*)* @_A_p}, align 4
@_Object_vtable7 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh15:
  ret void
}


define i32 @program (i32 %argc55, { i32, [ 0 x i8* ] }* %argv53){
__fresh14:
  %argc_slot56 = alloca i32
  store i32 %argc55, i32* %argc_slot56
  %argv_slot54 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv53, { i32, [ 0 x i8* ] }** %argv_slot54
  %vdecl_slot57 = alloca i32
  store i32 0, i32* %vdecl_slot57
  %lhs_or_call58 = load i32* %vdecl_slot57
  ret i32 %lhs_or_call58
}


define i32 @_B_g (%B* %_this1){
__fresh13:
  %i51 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call52 = load i32* %i51
  ret i32 %lhs_or_call52
}


define %B* @_B_ctor (%B* %_this1){
__fresh12:
  %mem_ptr46 = call i32* @oat_malloc ( i32 16 )
  %obj47 = bitcast i32* %mem_ptr46 to %A* 
  %new_obj48 = call %A* @_A_ctor ( %A* %obj47 )
  %_this1 = bitcast %A* %new_obj48 to %B 
  %_name49 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str12, i8** %_name49
  %this_vtable50 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable9, %_B_vtable** %this_vtable50
  ret %B* %_this1
}


define void @_A_p (%A* %_this1){
__fresh11:
  ret void
}


define i32 @_A_f (%A* %_this1){
__fresh10:
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh9:
  %mem_ptr41 = call i32* @oat_malloc ( i32 8 )
  %obj42 = bitcast i32* %mem_ptr41 to %Object* 
  %new_obj43 = call %Object* @_Object_ctor ( %Object* %obj42 )
  %_this1 = bitcast %Object* %new_obj43 to %A 
  %_name44 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str11, i8** %_name44
  %this_vtable45 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable8, %_A_vtable** %this_vtable45
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh8:
  %_name39 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call40 = load i8** %_name39
  ret i8* %lhs_or_call40
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh7:
  %_name37 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str10, i8** %_name37
  %this_vtable38 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable7, %_Object_vtable** %this_vtable38
  ret %Object* %_this1
}


