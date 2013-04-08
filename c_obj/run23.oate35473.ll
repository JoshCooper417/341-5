%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str122.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str122 = alias bitcast([ 2 x i8 ]* @_const_str122.str. to i8*)@_const_str121.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str121 = alias bitcast([ 2 x i8 ]* @_const_str121.str. to i8*)@_const_str120.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str120 = alias bitcast([ 2 x i8 ]* @_const_str120.str. to i8*)@_const_str119.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str119 = alias bitcast([ 7 x i8 ]* @_const_str119.str. to i8*)@_B_vtable118 = private constant %_B_vtable {%_A_vtable* @_A_vtable117, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable117 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable116, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable116 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh201:
  ret void
}


define i32 @program (i32 %argc738, { i32, [ 0 x i8* ] }* %argv736){
__fresh200:
  %argc_slot739 = alloca i32
  store i32 %argc738, i32* %argc_slot739
  %argv_slot737 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv736, { i32, [ 0 x i8* ] }** %argv_slot737
  %mem_ptr740 = call i32* @oat_malloc ( i32 8 )
  %obj741 = bitcast i32* %mem_ptr740 to %B* 
  %new_obj742 = call %B* @_B_ctor ( %B* %obj741 )
  %vdecl_slot743 = alloca %B*
  store %B* %new_obj742, %B** %vdecl_slot743
  %lhs_or_call744 = load %B** %vdecl_slot743
  %vtable_ptr745 = getelementptr %B* %lhs_or_call744, i32 0
  %vtable746 = load %_B_vtable** %vtable_ptr745
  %f748 = getelementptr %_B_vtable* %vtable746, i32 0, i32 2
  %f747 = load void (%A*)** %f748
  %cast_op749 = bitcast %B %lhs_or_call744 to %A* 
  call void %f747( %A* %cast_op749 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh199:
  %mem_ptr731 = call i32* @oat_malloc ( i32 8 )
  %obj732 = bitcast i32* %mem_ptr731 to %A* 
  %new_obj733 = call %A* @_A_ctor ( %A* %obj732 )
  %_this1 = bitcast %A* %new_obj733 to %B 
  %_name734 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str122, i8** %_name734
  %this_vtable735 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable118, %_B_vtable** %this_vtable735
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh198:
  call void @print_string( i8* @_const_str121 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh197:
  %mem_ptr726 = call i32* @oat_malloc ( i32 8 )
  %obj727 = bitcast i32* %mem_ptr726 to %Object* 
  %new_obj728 = call %Object* @_Object_ctor ( %Object* %obj727 )
  %_this1 = bitcast %Object* %new_obj728 to %A 
  %_name729 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str120, i8** %_name729
  %this_vtable730 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable117, %_A_vtable** %this_vtable730
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh196:
  %_name724 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call725 = load i8** %_name724
  ret i8* %lhs_or_call725
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh195:
  %_name722 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str119, i8** %_name722
  %this_vtable723 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable116, %_Object_vtable** %this_vtable723
  ret %Object* %_this1
}


