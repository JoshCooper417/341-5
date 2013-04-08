%B = type { %_B_vtable*, i8*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)* }
%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str130.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str130 = alias bitcast([ 2 x i8 ]* @_const_str130.str. to i8*)@_const_str129.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str129 = alias bitcast([ 2 x i8 ]* @_const_str129.str. to i8*)@_const_str128.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str128 = alias bitcast([ 2 x i8 ]* @_const_str128.str. to i8*)@_const_str127.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str127 = alias bitcast([ 2 x i8 ]* @_const_str127.str. to i8*)@_const_str126.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str126 = alias bitcast([ 7 x i8 ]* @_const_str126.str. to i8*)@_B_vtable125 = private constant %_B_vtable {%_A_vtable* @_A_vtable124, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable124 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable123, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable123 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh190:
  ret void
}


define i32 @program (i32 %argc750, { i32, [ 0 x i8* ] }* %argv748){
__fresh189:
  %argc_slot751 = alloca i32
  store i32 %argc750, i32* %argc_slot751
  %argv_slot749 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv748, { i32, [ 0 x i8* ] }** %argv_slot749
  %mem_ptr752 = call i32* @oat_malloc ( i32 12 )
  %obj753 = bitcast i32* %mem_ptr752 to %B* 
  %new_obj754 = call %B* @_B_ctor ( %B* %obj753 )
  %vdecl_slot755 = alloca %B*
  store %B* %new_obj754, %B** %vdecl_slot755
  %lhs_or_call756 = load %B** %vdecl_slot755
  %vtable_ptr757 = getelementptr %B* %lhs_or_call756, i32 0
  %vtable758 = load %_B_vtable** %vtable_ptr757
  %f760 = getelementptr %_B_vtable* %vtable758, i32 0, i32 2
  %f759 = load void (%A*)** %f760
  %cast_op761 = bitcast %B %lhs_or_call756 to %A* 
  call void %f759( %A* %cast_op761 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh188:
  %mem_ptr742 = call i32* @oat_malloc ( i32 12 )
  %obj743 = bitcast i32* %mem_ptr742 to %A* 
  %new_obj744 = call %A* @_A_ctor ( %A* %obj743 )
  %_this1 = bitcast %A* %new_obj744 to %B 
  %_name745 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str129, i8** %_name745
  %str746 = getelementptr %B* %_this1, i32 0, i32 2
  store i8* @_const_str130, i8** %str746
  %this_vtable747 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable125, %_B_vtable** %this_vtable747
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh187:
  %str740 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call741 = load i8** %str740
  call void @print_string( i8* %lhs_or_call741 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh186:
  %mem_ptr734 = call i32* @oat_malloc ( i32 8 )
  %obj735 = bitcast i32* %mem_ptr734 to %Object* 
  %new_obj736 = call %Object* @_Object_ctor ( %Object* %obj735 )
  %_this1 = bitcast %Object* %new_obj736 to %A 
  %_name737 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str127, i8** %_name737
  %str738 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str128, i8** %str738
  %this_vtable739 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable124, %_A_vtable** %this_vtable739
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh185:
  %_name732 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call733 = load i8** %_name732
  ret i8* %lhs_or_call733
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh184:
  %_name730 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str126, i8** %_name730
  %this_vtable731 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable123, %_Object_vtable** %this_vtable731
  ret %Object* %_this1
}


