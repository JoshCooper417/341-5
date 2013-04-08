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


define i32 @program (i32 %argc729, { i32, [ 0 x i8* ] }* %argv727){
__fresh182:
  %argc_slot730 = alloca i32
  store i32 %argc729, i32* %argc_slot730
  %argv_slot728 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv727, { i32, [ 0 x i8* ] }** %argv_slot728
  %mem_ptr731 = call i32* @oat_malloc ( i32 8 )
  %obj732 = bitcast i32* %mem_ptr731 to %B* 
  %new_obj733 = call %B* @_B_ctor ( %B* %obj732 )
  %vdecl_slot734 = alloca %B*
  store %B* %new_obj733, %B** %vdecl_slot734
  %lhs_or_call735 = load %B** %vdecl_slot734
  %vtable_ptr736 = getelementptr %B* %lhs_or_call735, i32 0
  %vtable737 = load %_B_vtable** %vtable_ptr736
  %f739 = getelementptr %_B_vtable* %vtable737, i32 0, i32 2
  %f738 = load void (%A*)** %f739
  %cast_op740 = bitcast %B %lhs_or_call735 to %A* 
  call void %f738( %A* %cast_op740 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh181:
  %mem_ptr722 = call i32* @oat_malloc ( i32 8 )
  %obj723 = bitcast i32* %mem_ptr722 to %A* 
  %new_obj724 = call %A* @_A_ctor ( %A* %obj723 )
  %_this1 = bitcast %A* %new_obj724 to %B 
  %_name725 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str133, i8** %_name725
  %this_vtable726 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable129, %_B_vtable** %this_vtable726
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh180:
  call void @print_string( i8* @_const_str132 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh179:
  %mem_ptr717 = call i32* @oat_malloc ( i32 8 )
  %obj718 = bitcast i32* %mem_ptr717 to %Object* 
  %new_obj719 = call %Object* @_Object_ctor ( %Object* %obj718 )
  %_this1 = bitcast %Object* %new_obj719 to %A 
  %_name720 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str131, i8** %_name720
  %this_vtable721 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable128, %_A_vtable** %this_vtable721
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh178:
  %_name715 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call716 = load i8** %_name715
  ret i8* %lhs_or_call716
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh177:
  %_name713 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str130, i8** %_name713
  %this_vtable714 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable127, %_Object_vtable** %this_vtable714
  ret %Object* %_this1
}


