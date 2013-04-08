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


define i32 @program (i32 %argc771, { i32, [ 0 x i8* ] }* %argv769){
__fresh189:
  %argc_slot772 = alloca i32
  store i32 %argc771, i32* %argc_slot772
  %argv_slot770 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv769, { i32, [ 0 x i8* ] }** %argv_slot770
  %mem_ptr773 = call i32* @oat_malloc ( i32 12 )
  %obj774 = bitcast i32* %mem_ptr773 to %B* 
  %new_obj775 = call %B* @_B_ctor ( %B* %obj774 )
  %vdecl_slot776 = alloca %B*
  store %B* %new_obj775, %B** %vdecl_slot776
  %lhs_or_call777 = load %B** %vdecl_slot776
  %f779 = getelementptr %_B_vtable* @_B_vtable136, i32 0, i32 2
  %f778 = load void (%A*)** %f779
  %cast_op780 = bitcast %B %lhs_or_call777 to %A* 
  call void %f778( %A* %cast_op780 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh188:
  %cast_op762 = bitcast %B* %_this1 to %A* 
  %mem_ptr763 = call i32* @oat_malloc ( i32 12 )
  %obj764 = bitcast i32* %mem_ptr763 to %B* 
  %new_obj765 = call %A* @_A_ctor ( %B* %obj764, %A* %cast_op762 )
  %_this1 = bitcast %A* %new_obj765 to %B 
  %_name766 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str140, i8** %_name766
  %str767 = getelementptr %B* %_this1, i32 0, i32 2
  store i8* @_const_str141, i8** %str767
  %this_vtable768 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable136, %_B_vtable** %this_vtable768
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh187:
  %str760 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call761 = load i8** %str760
  call void @print_string( i8* %lhs_or_call761 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh186:
  %cast_op753 = bitcast %A* %_this1 to %Object* 
  %mem_ptr754 = call i32* @oat_malloc ( i32 12 )
  %obj755 = bitcast i32* %mem_ptr754 to %A* 
  %new_obj756 = call %Object* @_Object_ctor ( %A* %obj755, %Object* %cast_op753 )
  %_this1 = bitcast %Object* %new_obj756 to %A 
  %_name757 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str138, i8** %_name757
  %str758 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str139, i8** %str758
  %this_vtable759 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable135, %_A_vtable** %this_vtable759
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh185:
  %_name751 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call752 = load i8** %_name751
  ret i8* %lhs_or_call752
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh184:
  %_name749 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str137, i8** %_name749
  %this_vtable750 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable134, %_Object_vtable** %this_vtable750
  ret %Object* %_this1
}


