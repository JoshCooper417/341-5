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


define i32 @program (i32 %argc792, { i32, [ 0 x i8* ] }* %argv790){
__fresh205:
  %argc_slot793 = alloca i32
  store i32 %argc792, i32* %argc_slot793
  %argv_slot791 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv790, { i32, [ 0 x i8* ] }** %argv_slot791
  %mem_ptr794 = call i32* @oat_malloc ( i32 8 )
  %obj795 = bitcast i32* %mem_ptr794 to %B* 
  %new_obj796 = call %B* @_B_ctor ( %B* %obj795 )
  %vdecl_slot797 = alloca %B*
  store %B* %new_obj796, %B** %vdecl_slot797
  %lhs_or_call798 = load %B** %vdecl_slot797
  %g800 = getelementptr %_B_vtable* @_B_vtable152, i32 0, i32 3
  %g799 = load void (%B*)** %g800
  %cast_op801 = bitcast %B %lhs_or_call798 to %B* 
  call void %g799( %B* %cast_op801 )
  ret i32 0
}


define void @_B_g (%B* %_this1){
__fresh204:
  %f788 = getelementptr %_B_vtable* @_B_vtable152, i32 0, i32 2
  %f787 = load void (%A*)** %f788
  %cast_op789 = bitcast %B %_this1 to %A* 
  call void %f787( %A* %cast_op789 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh203:
  %mem_ptr782 = call i32* @oat_malloc ( i32 8 )
  %obj783 = bitcast i32* %mem_ptr782 to %A* 
  %new_obj784 = call %A* @_A_ctor ( %A* %obj783 )
  %_this1 = bitcast %A* %new_obj784 to %B 
  %_name785 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str156, i8** %_name785
  %this_vtable786 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable152, %_B_vtable** %this_vtable786
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh202:
  call void @print_string( i8* @_const_str155 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh201:
  %mem_ptr777 = call i32* @oat_malloc ( i32 8 )
  %obj778 = bitcast i32* %mem_ptr777 to %Object* 
  %new_obj779 = call %Object* @_Object_ctor ( %Object* %obj778 )
  %_this1 = bitcast %Object* %new_obj779 to %A 
  %_name780 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str154, i8** %_name780
  %this_vtable781 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable151, %_A_vtable** %this_vtable781
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh200:
  %_name775 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call776 = load i8** %_name775
  ret i8* %lhs_or_call776
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh199:
  %_name773 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str153, i8** %_name773
  %this_vtable774 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable150, %_Object_vtable** %this_vtable774
  ret %Object* %_this1
}


