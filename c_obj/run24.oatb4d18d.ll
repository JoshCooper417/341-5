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


define i32 @program (i32 %argc761, { i32, [ 0 x i8* ] }* %argv759){
__fresh189:
  %argc_slot762 = alloca i32
  store i32 %argc761, i32* %argc_slot762
  %argv_slot760 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv759, { i32, [ 0 x i8* ] }** %argv_slot760
  %mem_ptr763 = call i32* @oat_malloc ( i32 12 )
  %obj764 = bitcast i32* %mem_ptr763 to %B* 
  %new_obj765 = call %B* @_B_ctor ( %B* %obj764 )
  %vdecl_slot766 = alloca %B*
  store %B* %new_obj765, %B** %vdecl_slot766
  %lhs_or_call767 = load %B** %vdecl_slot766
  %vtable_ptr768 = getelementptr %B* %lhs_or_call767, i32 0
  %vtable769 = load %_B_vtable** %vtable_ptr768
  %f771 = getelementptr %_B_vtable* %vtable769, i32 0, i32 2
  %f770 = load void (%A*)** %f771
  %cast_op772 = bitcast %B %lhs_or_call767 to %A* 
  call void %f770( %A* %cast_op772 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh188:
  %mem_ptr753 = call i32* @oat_malloc ( i32 12 )
  %obj754 = bitcast i32* %mem_ptr753 to %A* 
  %new_obj755 = call %A* @_A_ctor ( %A* %obj754 )
  %_this1 = bitcast %A* %new_obj755 to %B 
  %_name756 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str140, i8** %_name756
  %str757 = getelementptr %B* %_this1, i32 0, i32 2
  store i8* @_const_str141, i8** %str757
  %this_vtable758 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable136, %_B_vtable** %this_vtable758
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh187:
  %str751 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call752 = load i8** %str751
  call void @print_string( i8* %lhs_or_call752 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh186:
  %mem_ptr745 = call i32* @oat_malloc ( i32 8 )
  %obj746 = bitcast i32* %mem_ptr745 to %Object* 
  %new_obj747 = call %Object* @_Object_ctor ( %Object* %obj746 )
  %_this1 = bitcast %Object* %new_obj747 to %A 
  %_name748 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str138, i8** %_name748
  %str749 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str139, i8** %str749
  %this_vtable750 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable135, %_A_vtable** %this_vtable750
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh185:
  %_name743 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call744 = load i8** %_name743
  ret i8* %lhs_or_call744
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh184:
  %_name741 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str137, i8** %_name741
  %this_vtable742 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable134, %_Object_vtable** %this_vtable742
  ret %Object* %_this1
}


