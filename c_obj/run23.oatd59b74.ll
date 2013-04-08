%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str133.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str133 = alias bitcast([ 2 x i8 ]* @_const_str133.str. to i8*)@_const_str132.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str132 = alias bitcast([ 2 x i8 ]* @_const_str132.str. to i8*)@_const_str131.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str131 = alias bitcast([ 2 x i8 ]* @_const_str131.str. to i8*)@_const_str130.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str130 = alias bitcast([ 7 x i8 ]* @_const_str130.str. to i8*)@_B_vtable129 = private constant %_B_vtable {%_A_vtable* @_A_vtable128, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable128 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable127, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable127 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh183:
  ret void
}


define i32 @program (i32 %argc740, { i32, [ 0 x i8* ] }* %argv738){
__fresh182:
  %argc_slot741 = alloca i32
  store i32 %argc740, i32* %argc_slot741
  %argv_slot739 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv738, { i32, [ 0 x i8* ] }** %argv_slot739
  %mem_ptr742 = call i32* @oat_malloc ( i32 8 )
  %obj743 = bitcast i32* %mem_ptr742 to %B* 
  %new_obj744 = call %B* @_B_ctor ( %B* %obj743 )
  %vdecl_slot745 = alloca %B*
  store %B* %new_obj744, %B** %vdecl_slot745
  %lhs_or_call746 = load %B** %vdecl_slot745
  %f748 = getelementptr %_B_vtable* @_B_vtable129, i32 0, i32 2
  %f747 = load void (%A*)** %f748
  %cast_op749 = bitcast %B %lhs_or_call746 to %A* 
  call void %f747( %A* %cast_op749 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh181:
  %cast_op732 = bitcast %B* %_this1 to %A* 
  %mem_ptr733 = call i32* @oat_malloc ( i32 8 )
  %obj734 = bitcast i32* %mem_ptr733 to %B* 
  %new_obj735 = call %A* @_A_ctor ( %B* %obj734, %A* %cast_op732 )
  %_this1 = bitcast %A* %new_obj735 to %B 
  %_name736 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str133, i8** %_name736
  %this_vtable737 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable129, %_B_vtable** %this_vtable737
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh180:
  call void @print_string( i8* @_const_str132 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh179:
  %cast_op726 = bitcast %A* %_this1 to %Object* 
  %mem_ptr727 = call i32* @oat_malloc ( i32 8 )
  %obj728 = bitcast i32* %mem_ptr727 to %A* 
  %new_obj729 = call %Object* @_Object_ctor ( %A* %obj728, %Object* %cast_op726 )
  %_this1 = bitcast %Object* %new_obj729 to %A 
  %_name730 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str131, i8** %_name730
  %this_vtable731 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable128, %_A_vtable** %this_vtable731
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh178:
  %_name724 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call725 = load i8** %_name724
  ret i8* %lhs_or_call725
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh177:
  %_name722 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str130, i8** %_name722
  %this_vtable723 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable127, %_Object_vtable** %this_vtable723
  ret %Object* %_this1
}


