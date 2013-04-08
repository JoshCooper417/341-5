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


define i32 @program (i32 %argc799, { i32, [ 0 x i8* ] }* %argv797){
__fresh197:
  %argc_slot800 = alloca i32
  store i32 %argc799, i32* %argc_slot800
  %argv_slot798 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv797, { i32, [ 0 x i8* ] }** %argv_slot798
  %mem_ptr801 = call i32* @oat_malloc ( i32 8 )
  %obj802 = bitcast i32* %mem_ptr801 to %B* 
  %new_obj803 = call %B* @_B_ctor ( %B* %obj802 )
  %vdecl_slot804 = alloca %B*
  store %B* %new_obj803, %B** %vdecl_slot804
  %lhs_or_call805 = load %B** %vdecl_slot804
  %f807 = getelementptr %_B_vtable* @_B_vtable144, i32 0, i32 2
  %f806 = load void (%B*)** %f807
  %cast_op808 = bitcast %B %lhs_or_call805 to %B* 
  call void %f806( %B* %cast_op808 )
  ret i32 0
}


define void @_B_f (%B* %_this1){
__fresh196:
  call void @print_string( i8* @_const_str149 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh195:
  %cast_op791 = bitcast %B* %_this1 to %A* 
  %mem_ptr792 = call i32* @oat_malloc ( i32 8 )
  %obj793 = bitcast i32* %mem_ptr792 to %B* 
  %new_obj794 = call %A* @_A_ctor ( %B* %obj793, %A* %cast_op791 )
  %_this1 = bitcast %A* %new_obj794 to %B 
  %_name795 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str148, i8** %_name795
  %this_vtable796 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable144, %_B_vtable** %this_vtable796
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh194:
  call void @print_string( i8* @_const_str147 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh193:
  %cast_op785 = bitcast %A* %_this1 to %Object* 
  %mem_ptr786 = call i32* @oat_malloc ( i32 8 )
  %obj787 = bitcast i32* %mem_ptr786 to %A* 
  %new_obj788 = call %Object* @_Object_ctor ( %A* %obj787, %Object* %cast_op785 )
  %_this1 = bitcast %Object* %new_obj788 to %A 
  %_name789 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str146, i8** %_name789
  %this_vtable790 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable143, %_A_vtable** %this_vtable790
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh192:
  %_name783 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call784 = load i8** %_name783
  ret i8* %lhs_or_call784
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh191:
  %_name781 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str145, i8** %_name781
  %this_vtable782 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable142, %_Object_vtable** %this_vtable782
  ret %Object* %_this1
}


