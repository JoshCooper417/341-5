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
@_const_str145.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str145 = alias bitcast([ 2 x i8 ]* @_const_str145.str. to i8*)@_const_str144.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str144 = alias bitcast([ 2 x i8 ]* @_const_str144.str. to i8*)@_const_str143.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str143 = alias bitcast([ 2 x i8 ]* @_const_str143.str. to i8*)@_const_str142.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str142 = alias bitcast([ 7 x i8 ]* @_const_str142.str. to i8*)@_B_vtable141 = private constant %_B_vtable {%_A_vtable* @_A_vtable140, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f, void (%B*)* @_B_g}, align 4
@_A_vtable140 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable139, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable139 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh206:
  ret void
}


define i32 @program (i32 %argc803, { i32, [ 0 x i8* ] }* %argv801){
__fresh205:
  %argc_slot804 = alloca i32
  store i32 %argc803, i32* %argc_slot804
  %argv_slot802 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv801, { i32, [ 0 x i8* ] }** %argv_slot802
  %mem_ptr805 = call i32* @oat_malloc ( i32 8 )
  %obj806 = bitcast i32* %mem_ptr805 to %B* 
  %new_obj807 = call %B* @_B_ctor ( %B* %obj806 )
  %vdecl_slot808 = alloca %B*
  store %B* %new_obj807, %B** %vdecl_slot808
  %lhs_or_call809 = load %B** %vdecl_slot808
  %vtable_ptr810 = getelementptr %B* %lhs_or_call809, i32 0
  %vtable811 = load %_B_vtable** %vtable_ptr810
  %g813 = getelementptr %_B_vtable* %vtable811, i32 0, i32 3
  %g812 = load void (%B*)** %g813
  %cast_op814 = bitcast %B %lhs_or_call809 to %B* 
  call void %g812( %B* %cast_op814 )
  ret i32 0
}


define void @_B_g (%B* %_this1){
__fresh204:
  %vtable_ptr796 = getelementptr %B* %_this1, i32 0
  %vtable797 = load %_B_vtable** %vtable_ptr796
  %f799 = getelementptr %_B_vtable* %vtable797, i32 0, i32 2
  %f798 = load void (%A*)** %f799
  %cast_op800 = bitcast %B %_this1 to %A* 
  call void %f798( %A* %cast_op800 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh203:
  %mem_ptr791 = call i32* @oat_malloc ( i32 8 )
  %obj792 = bitcast i32* %mem_ptr791 to %A* 
  %new_obj793 = call %A* @_A_ctor ( %A* %obj792 )
  %_this1 = bitcast %A* %new_obj793 to %B 
  %_name794 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str145, i8** %_name794
  %this_vtable795 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable141, %_B_vtable** %this_vtable795
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh202:
  call void @print_string( i8* @_const_str144 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh201:
  %mem_ptr786 = call i32* @oat_malloc ( i32 8 )
  %obj787 = bitcast i32* %mem_ptr786 to %Object* 
  %new_obj788 = call %Object* @_Object_ctor ( %Object* %obj787 )
  %_this1 = bitcast %Object* %new_obj788 to %A 
  %_name789 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str143, i8** %_name789
  %this_vtable790 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable140, %_A_vtable** %this_vtable790
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh200:
  %_name784 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call785 = load i8** %_name784
  ret i8* %lhs_or_call785
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh199:
  %_name782 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str142, i8** %_name782
  %this_vtable783 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable139, %_Object_vtable** %this_vtable783
  ret %Object* %_this1
}


