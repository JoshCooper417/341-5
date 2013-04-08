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


define i32 @program (i32 %argc830, { i32, [ 0 x i8* ] }* %argv828){
__fresh205:
  %argc_slot831 = alloca i32
  store i32 %argc830, i32* %argc_slot831
  %argv_slot829 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv828, { i32, [ 0 x i8* ] }** %argv_slot829
  %mem_ptr832 = call i32* @oat_malloc ( i32 8 )
  %obj833 = bitcast i32* %mem_ptr832 to %B* 
  %new_obj834 = call %B* @_B_ctor ( %B* %obj833 )
  %vdecl_slot835 = alloca %B*
  store %B* %new_obj834, %B** %vdecl_slot835
  %lhs_or_call836 = load %B** %vdecl_slot835
  %g838 = getelementptr %_B_vtable* @_B_vtable152, i32 0, i32 3
  %g837 = load void (%B*)** %g838
  %cast_op839 = bitcast %B %lhs_or_call836 to %B* 
  call void %g837( %B* %cast_op839 )
  ret i32 0
}


define void @_B_g (%B* %_this1){
__fresh204:
  %f826 = getelementptr %_B_vtable* @_B_vtable152, i32 0, i32 2
  %f825 = load void (%A*)** %f826
  %cast_op827 = bitcast %B %_this1 to %A* 
  call void %f825( %A* %cast_op827 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh203:
  %cast_op819 = bitcast %B* %_this1 to %A* 
  %mem_ptr820 = call i32* @oat_malloc ( i32 8 )
  %obj821 = bitcast i32* %mem_ptr820 to %B* 
  %new_obj822 = call %A* @_A_ctor ( %B* %obj821, %A* %cast_op819 )
  %_this1 = bitcast %A* %new_obj822 to %B 
  %_name823 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str156, i8** %_name823
  %this_vtable824 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable152, %_B_vtable** %this_vtable824
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh202:
  call void @print_string( i8* @_const_str155 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh201:
  %cast_op813 = bitcast %A* %_this1 to %Object* 
  %mem_ptr814 = call i32* @oat_malloc ( i32 8 )
  %obj815 = bitcast i32* %mem_ptr814 to %A* 
  %new_obj816 = call %Object* @_Object_ctor ( %A* %obj815, %Object* %cast_op813 )
  %_this1 = bitcast %Object* %new_obj816 to %A 
  %_name817 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str154, i8** %_name817
  %this_vtable818 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable151, %_A_vtable** %this_vtable818
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh200:
  %_name811 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call812 = load i8** %_name811
  ret i8* %lhs_or_call812
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh199:
  %_name809 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str153, i8** %_name809
  %this_vtable810 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable150, %_Object_vtable** %this_vtable810
  ret %Object* %_this1
}


