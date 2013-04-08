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


define i32 @program (i32 %argc811, { i32, [ 0 x i8* ] }* %argv809){
__fresh205:
  %argc_slot812 = alloca i32
  store i32 %argc811, i32* %argc_slot812
  %argv_slot810 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv809, { i32, [ 0 x i8* ] }** %argv_slot810
  %mem_ptr813 = call i32* @oat_malloc ( i32 8 )
  %obj814 = bitcast i32* %mem_ptr813 to %B* 
  %new_obj815 = call %B* @_B_ctor ( %B* %obj814 )
  %vdecl_slot816 = alloca %B*
  store %B* %new_obj815, %B** %vdecl_slot816
  %lhs_or_call817 = load %B** %vdecl_slot816
  %vtable_ptr818 = getelementptr %B* %lhs_or_call817, i32 0
  %vtable819 = load %_B_vtable** %vtable_ptr818
  %g821 = getelementptr %_B_vtable* %vtable819, i32 0, i32 3
  %g820 = load void (%B*)** %g821
  %cast_op822 = bitcast %B %lhs_or_call817 to %B* 
  call void %g820( %B* %cast_op822 )
  ret i32 0
}


define void @_B_g (%B* %_this1){
__fresh204:
  %vtable_ptr804 = getelementptr %B* %_this1, i32 0
  %vtable805 = load %_B_vtable** %vtable_ptr804
  %f807 = getelementptr %_B_vtable* %vtable805, i32 0, i32 2
  %f806 = load void (%A*)** %f807
  %cast_op808 = bitcast %B %_this1 to %A* 
  call void %f806( %A* %cast_op808 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh203:
  %mem_ptr799 = call i32* @oat_malloc ( i32 8 )
  %obj800 = bitcast i32* %mem_ptr799 to %A* 
  %new_obj801 = call %A* @_A_ctor ( %A* %obj800 )
  %_this1 = bitcast %A* %new_obj801 to %B 
  %_name802 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str145, i8** %_name802
  %this_vtable803 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable141, %_B_vtable** %this_vtable803
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh202:
  call void @print_string( i8* @_const_str144 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh201:
  %mem_ptr794 = call i32* @oat_malloc ( i32 8 )
  %obj795 = bitcast i32* %mem_ptr794 to %Object* 
  %new_obj796 = call %Object* @_Object_ctor ( %Object* %obj795 )
  %_this1 = bitcast %Object* %new_obj796 to %A 
  %_name797 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str143, i8** %_name797
  %this_vtable798 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable140, %_A_vtable** %this_vtable798
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh200:
  %_name792 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call793 = load i8** %_name792
  ret i8* %lhs_or_call793
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh199:
  %_name790 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str142, i8** %_name790
  %this_vtable791 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable139, %_Object_vtable** %this_vtable791
  ret %Object* %_this1
}


