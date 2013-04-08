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
@_const_str141.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str141 = alias bitcast([ 2 x i8 ]* @_const_str141.str. to i8*)@_const_str140.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str140 = alias bitcast([ 2 x i8 ]* @_const_str140.str. to i8*)@_const_str139.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str139 = alias bitcast([ 2 x i8 ]* @_const_str139.str. to i8*)@_const_str138.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str138 = alias bitcast([ 2 x i8 ]* @_const_str138.str. to i8*)@_const_str137.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str137 = alias bitcast([ 7 x i8 ]* @_const_str137.str. to i8*)@_B_vtable136 = private constant %_B_vtable {%_A_vtable* @_A_vtable135, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable135 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable134, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable134 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh190:
  ret void
}


define i32 @program (i32 %argc737, { i32, [ 0 x i8* ] }* %argv735){
__fresh189:
  %argc_slot738 = alloca i32
  store i32 %argc737, i32* %argc_slot738
  %argv_slot736 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv735, { i32, [ 0 x i8* ] }** %argv_slot736
  %mem_ptr739 = call i32* @oat_malloc ( i32 12 )
  %obj740 = bitcast i32* %mem_ptr739 to %B* 
  %new_obj741 = call %B* @_B_ctor ( %B* %obj740 )
  %vdecl_slot742 = alloca %B*
  store %B* %new_obj741, %B** %vdecl_slot742
  %lhs_or_call743 = load %B** %vdecl_slot742
  %f745 = getelementptr %_B_vtable* @_B_vtable136, i32 0, i32 2
  %f744 = load void (%A*)** %f745
  %cast_op746 = bitcast %B %lhs_or_call743 to %A* 
  call void %f744( %A* %cast_op746 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh188:
  %mem_ptr729 = call i32* @oat_malloc ( i32 12 )
  %obj730 = bitcast i32* %mem_ptr729 to %A* 
  %new_obj731 = call %A* @_A_ctor ( %A* %obj730 )
  %_this1 = bitcast %A* %new_obj731 to %B 
  %_name732 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str140, i8** %_name732
  %str733 = getelementptr %B* %_this1, i32 0, i32 2
  store i8* @_const_str141, i8** %str733
  %this_vtable734 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable136, %_B_vtable** %this_vtable734
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh187:
  %str727 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call728 = load i8** %str727
  call void @print_string( i8* %lhs_or_call728 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh186:
  %mem_ptr721 = call i32* @oat_malloc ( i32 8 )
  %obj722 = bitcast i32* %mem_ptr721 to %Object* 
  %new_obj723 = call %Object* @_Object_ctor ( %Object* %obj722 )
  %_this1 = bitcast %Object* %new_obj723 to %A 
  %_name724 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str138, i8** %_name724
  %str725 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str139, i8** %str725
  %this_vtable726 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable135, %_A_vtable** %this_vtable726
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh185:
  %_name719 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call720 = load i8** %_name719
  ret i8* %lhs_or_call720
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh184:
  %_name717 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str137, i8** %_name717
  %this_vtable718 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable134, %_Object_vtable** %this_vtable718
  ret %Object* %_this1
}


