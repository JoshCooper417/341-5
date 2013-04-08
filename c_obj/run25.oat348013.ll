%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
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
@_const_str149.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str149 = alias bitcast([ 2 x i8 ]* @_const_str149.str. to i8*)@_const_str148.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str148 = alias bitcast([ 2 x i8 ]* @_const_str148.str. to i8*)@_const_str147.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str147 = alias bitcast([ 2 x i8 ]* @_const_str147.str. to i8*)@_const_str146.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str146 = alias bitcast([ 2 x i8 ]* @_const_str146.str. to i8*)@_const_str145.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str145 = alias bitcast([ 7 x i8 ]* @_const_str145.str. to i8*)@_B_vtable144 = private constant %_B_vtable {%_A_vtable* @_A_vtable143, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable143 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable142, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable142 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh198:
  ret void
}


define i32 @program (i32 %argc800, { i32, [ 0 x i8* ] }* %argv798){
__fresh197:
  %argc_slot801 = alloca i32
  store i32 %argc800, i32* %argc_slot801
  %argv_slot799 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv798, { i32, [ 0 x i8* ] }** %argv_slot799
  %mem_ptr802 = call i32* @oat_malloc ( i32 8 )
  %obj803 = bitcast i32* %mem_ptr802 to %B* 
  %new_obj804 = call %B* @_B_ctor ( %B* %obj803 )
  %vdecl_slot805 = alloca %B*
  store %B* %new_obj804, %B** %vdecl_slot805
  %lhs_or_call806 = load %B** %vdecl_slot805
  %f808 = getelementptr %_B_vtable* @_B_vtable144, i32 0, i32 2
  %f807 = load void (%B*)** %f808
  %cast_op809 = bitcast %B %lhs_or_call806 to %B* 
  call void %f807( %B* %cast_op809 )
  ret i32 0
}


define void @_B_f (%B* %_this1){
__fresh196:
  call void @print_string( i8* @_const_str149 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh195:
  %cast_op792 = bitcast %B* %_this1 to %A* 
  %mem_ptr793 = call i32* @oat_malloc ( i32 8 )
  %obj794 = bitcast i32* %mem_ptr793 to %B* 
  %new_obj795 = call %A* @_A_ctor ( %B* %obj794, %A* %cast_op792 )
  %_this1 = bitcast %A* %new_obj795 to %B 
  %_name796 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str148, i8** %_name796
  %this_vtable797 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable144, %_B_vtable** %this_vtable797
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh194:
  call void @print_string( i8* @_const_str147 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh193:
  %cast_op786 = bitcast %A* %_this1 to %Object* 
  %mem_ptr787 = call i32* @oat_malloc ( i32 8 )
  %obj788 = bitcast i32* %mem_ptr787 to %A* 
  %new_obj789 = call %Object* @_Object_ctor ( %A* %obj788, %Object* %cast_op786 )
  %_this1 = bitcast %Object* %new_obj789 to %A 
  %_name790 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str146, i8** %_name790
  %this_vtable791 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable143, %_A_vtable** %this_vtable791
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh192:
  %_name784 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call785 = load i8** %_name784
  ret i8* %lhs_or_call785
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh191:
  %_name782 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str145, i8** %_name782
  %this_vtable783 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable142, %_Object_vtable** %this_vtable783
  ret %Object* %_this1
}


