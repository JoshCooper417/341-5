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
__fresh224:
  ret void
}


define i32 @program (i32 %argc831, { i32, [ 0 x i8* ] }* %argv829){
__fresh223:
  %argc_slot832 = alloca i32
  store i32 %argc831, i32* %argc_slot832
  %argv_slot830 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv829, { i32, [ 0 x i8* ] }** %argv_slot830
  %mem_ptr833 = call i32* @oat_malloc ( i32 8 )
  %obj834 = bitcast i32* %mem_ptr833 to %B* 
  %new_obj835 = call %B* @_B_ctor ( %B* %obj834 )
  %vdecl_slot836 = alloca %B*
  store %B* %new_obj835, %B** %vdecl_slot836
  %lhs_or_call837 = load %B** %vdecl_slot836
  %vtable_ptr838 = getelementptr %B* %lhs_or_call837, i32 0
  %vtable839 = load %_B_vtable** %vtable_ptr838
  %g841 = getelementptr %_B_vtable* %vtable839, i32 0, i32 3
  %g840 = load void (%B*)** %g841
  %cast_op842 = bitcast %B %lhs_or_call837 to %B* 
  call void %g840( %B* %cast_op842 )
  ret i32 0
}


define void @_B_g (%B* %_this1){
__fresh222:
  %vtable_ptr824 = getelementptr %B* %_this1, i32 0
  %vtable825 = load %_B_vtable** %vtable_ptr824
  %f827 = getelementptr %_B_vtable* %vtable825, i32 0, i32 2
  %f826 = load void (%A*)** %f827
  %cast_op828 = bitcast %B %_this1 to %A* 
  call void %f826( %A* %cast_op828 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh221:
  %mem_ptr819 = call i32* @oat_malloc ( i32 8 )
  %obj820 = bitcast i32* %mem_ptr819 to %A* 
  %new_obj821 = call %A* @_A_ctor ( %A* %obj820 )
  %_this1 = bitcast %A* %new_obj821 to %B 
  %_name822 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str145, i8** %_name822
  %this_vtable823 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable141, %_B_vtable** %this_vtable823
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh220:
  call void @print_string( i8* @_const_str144 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh219:
  %mem_ptr814 = call i32* @oat_malloc ( i32 8 )
  %obj815 = bitcast i32* %mem_ptr814 to %Object* 
  %new_obj816 = call %Object* @_Object_ctor ( %Object* %obj815 )
  %_this1 = bitcast %Object* %new_obj816 to %A 
  %_name817 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str143, i8** %_name817
  %this_vtable818 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable140, %_A_vtable** %this_vtable818
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh218:
  %_name812 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call813 = load i8** %_name812
  ret i8* %lhs_or_call813
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh217:
  %_name810 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str142, i8** %_name810
  %this_vtable811 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable139, %_Object_vtable** %this_vtable811
  ret %Object* %_this1
}


