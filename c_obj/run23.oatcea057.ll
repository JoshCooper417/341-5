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
@_const_str67.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str67 = alias bitcast([ 2 x i8 ]* @_const_str67.str. to i8*)@_B_vtable66 = private constant %_B_vtable {%_A_vtable* @_A_vtable65, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable65 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable64, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable64 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh183:
  ret void
}


define i32 @program (i32 %argc859, { i32, [ 0 x i8* ] }* %argv857){
__fresh182:
  %argc_slot860 = alloca i32
  store i32 %argc859, i32* %argc_slot860
  %argv_slot858 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv857, { i32, [ 0 x i8* ] }** %argv_slot858
  %mem_ptr861 = call i32* @oat_malloc ( i32 8 )
  %obj862 = bitcast i32* %mem_ptr861 to %B* 
  %new_obj863 = call %B* @_B_ctor ( %B* %obj862 )
  %vdecl_slot864 = alloca %B*
  store %B* %new_obj863, %B** %vdecl_slot864
  %lhs_or_call865 = load %B** %vdecl_slot864
  %f867 = getelementptr %_B_vtable* @_B_vtable66, i32 0, i32 2
  %f866 = load void (%A*)** %f867
  %cast_op868 = bitcast %B %lhs_or_call865 to %A* 
  call void %f866( %A* %cast_op868 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh181:
  %lhs_or_call848 = load %B* %_this1
  %cast_op849 = bitcast %B %lhs_or_call848 to %A* 
  %mem_ptr850 = call i32* @oat_malloc ( i32 8 )
  %obj851 = bitcast i32* %mem_ptr850 to %A* 
  %new_obj852 = call %A* @_A_ctor ( %A* %obj851, %A* %cast_op849 )
  %_name853 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call854 = load %B* %_this1
  %cast_op855 = bitcast %B %lhs_or_call854 to i8* 
  store i8* %cast_op855, i8** %_name853
  %this_vtable856 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable856
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh180:
  call void @print_string( i8* @_const_str67 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh179:
  %lhs_or_call839 = load %A* %_this1
  %cast_op840 = bitcast %A %lhs_or_call839 to %Object* 
  %mem_ptr841 = call i32* @oat_malloc ( i32 8 )
  %obj842 = bitcast i32* %mem_ptr841 to %Object* 
  %new_obj843 = call %Object* @_Object_ctor ( %Object* %obj842, %Object* %cast_op840 )
  %_name844 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call845 = load %A* %_this1
  %cast_op846 = bitcast %A %lhs_or_call845 to i8* 
  store i8* %cast_op846, i8** %_name844
  %this_vtable847 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable847
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh178:
  %_name837 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call838 = load i8** %_name837
  ret i8* %lhs_or_call838
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh177:
  %_name833 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call834 = load %Object* %_this1
  %cast_op835 = bitcast %Object %lhs_or_call834 to i8* 
  store i8* %cast_op835, i8** %_name833
  %this_vtable836 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable836
  ret %Object* %_this1
}


