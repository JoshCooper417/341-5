%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)*, void (%B*)* }
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
@_const_str156.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str156 = alias bitcast([ 2 x i8 ]* @_const_str156.str. to i8*)@_const_str155.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str155 = alias bitcast([ 2 x i8 ]* @_const_str155.str. to i8*)@_const_str154.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str154 = alias bitcast([ 2 x i8 ]* @_const_str154.str. to i8*)@_const_str153.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str153 = alias bitcast([ 7 x i8 ]* @_const_str153.str. to i8*)@_B_vtable152 = private constant %_B_vtable {%_A_vtable* @_A_vtable151, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f, void (%B*)* @_B_g}, align 4
@_A_vtable151 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable150, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable150 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh206:
  ret void
}


define i32 @program (i32 %argc822, { i32, [ 0 x i8* ] }* %argv820){
__fresh205:
  %argc_slot823 = alloca i32
  store i32 %argc822, i32* %argc_slot823
  %argv_slot821 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv820, { i32, [ 0 x i8* ] }** %argv_slot821
  %mem_ptr824 = call i32* @oat_malloc ( i32 8 )
  %obj825 = bitcast i32* %mem_ptr824 to %B* 
  %new_obj826 = call %B* @_B_ctor ( %B* %obj825 )
  %vdecl_slot827 = alloca %B*
  store %B* %new_obj826, %B** %vdecl_slot827
  %lhs_or_call828 = load %B** %vdecl_slot827
  %vtable_ptr829 = getelementptr %B* %lhs_or_call828, i32 0
  %vtable830 = load %_B_vtable** %vtable_ptr829
  %g832 = getelementptr %_B_vtable* %vtable830, i32 0, i32 3
  %g831 = load void (%B*)** %g832
  %cast_op833 = bitcast %B %lhs_or_call828 to %B* 
  call void %g831( %B* %cast_op833 )
  ret i32 0
}


define void @_B_g (%B* %_this1){
__fresh204:
  %vtable_ptr815 = getelementptr %B* %_this1, i32 0
  %vtable816 = load %_B_vtable** %vtable_ptr815
  %f818 = getelementptr %_B_vtable* %vtable816, i32 0, i32 2
  %f817 = load void (%A*)** %f818
  %cast_op819 = bitcast %B %_this1 to %A* 
  call void %f817( %A* %cast_op819 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh203:
  %mem_ptr810 = call i32* @oat_malloc ( i32 8 )
  %obj811 = bitcast i32* %mem_ptr810 to %A* 
  %new_obj812 = call %A* @_A_ctor ( %A* %obj811 )
  %_this1 = bitcast %A* %new_obj812 to %B 
  %_name813 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str156, i8** %_name813
  %this_vtable814 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable152, %_B_vtable** %this_vtable814
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh202:
  call void @print_string( i8* @_const_str155 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh201:
  %mem_ptr805 = call i32* @oat_malloc ( i32 8 )
  %obj806 = bitcast i32* %mem_ptr805 to %Object* 
  %new_obj807 = call %Object* @_Object_ctor ( %Object* %obj806 )
  %_this1 = bitcast %Object* %new_obj807 to %A 
  %_name808 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str154, i8** %_name808
  %this_vtable809 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable151, %_A_vtable** %this_vtable809
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh200:
  %_name803 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call804 = load i8** %_name803
  ret i8* %lhs_or_call804
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh199:
  %_name801 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str153, i8** %_name801
  %this_vtable802 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable150, %_Object_vtable** %this_vtable802
  ret %Object* %_this1
}


