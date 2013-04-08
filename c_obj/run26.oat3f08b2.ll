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
@_const_str81.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str81 = alias bitcast([ 2 x i8 ]* @_const_str81.str. to i8*)@_B_vtable80 = private constant %_B_vtable {%_A_vtable* @_A_vtable79, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f, void (%B*)* @_B_g}, align 4
@_A_vtable79 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable78, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable78 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh206:
  ret void
}


define i32 @program (i32 %argc974, { i32, [ 0 x i8* ] }* %argv972){
__fresh205:
  %argc_slot975 = alloca i32
  store i32 %argc974, i32* %argc_slot975
  %argv_slot973 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv972, { i32, [ 0 x i8* ] }** %argv_slot973
  %mem_ptr976 = call i32* @oat_malloc ( i32 8 )
  %obj977 = bitcast i32* %mem_ptr976 to %B* 
  %new_obj978 = call %B* @_B_ctor ( %B* %obj977 )
  %vdecl_slot979 = alloca %B*
  store %B* %new_obj978, %B** %vdecl_slot979
  %lhs_or_call980 = load %B** %vdecl_slot979
  %g982 = getelementptr %_B_vtable* @_B_vtable80, i32 0, i32 3
  %g981 = load void (%B*)** %g982
  %cast_op983 = bitcast %B %lhs_or_call980 to %B* 
  call void %g981( %B* %cast_op983 )
  ret i32 0
}


define void @_B_g (%B* %_this1){
__fresh204:
  %f970 = getelementptr %_B_vtable* @_B_vtable80, i32 0, i32 2
  %f969 = load void (%A*)** %f970
  %cast_op971 = bitcast %B %_this1 to %A* 
  call void %f969( %A* %cast_op971 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh203:
  %lhs_or_call960 = load %B* %_this1
  %cast_op961 = bitcast %B %lhs_or_call960 to %A* 
  %mem_ptr962 = call i32* @oat_malloc ( i32 8 )
  %obj963 = bitcast i32* %mem_ptr962 to %A* 
  %new_obj964 = call %A* @_A_ctor ( %A* %obj963, %A* %cast_op961 )
  %_name965 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call966 = load %B* %_this1
  %cast_op967 = bitcast %B %lhs_or_call966 to i8* 
  store i8* %cast_op967, i8** %_name965
  %this_vtable968 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable968
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh202:
  call void @print_string( i8* @_const_str81 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh201:
  %lhs_or_call951 = load %A* %_this1
  %cast_op952 = bitcast %A %lhs_or_call951 to %Object* 
  %mem_ptr953 = call i32* @oat_malloc ( i32 8 )
  %obj954 = bitcast i32* %mem_ptr953 to %Object* 
  %new_obj955 = call %Object* @_Object_ctor ( %Object* %obj954, %Object* %cast_op952 )
  %_name956 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call957 = load %A* %_this1
  %cast_op958 = bitcast %A %lhs_or_call957 to i8* 
  store i8* %cast_op958, i8** %_name956
  %this_vtable959 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable959
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh200:
  %_name949 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call950 = load i8** %_name949
  ret i8* %lhs_or_call950
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh199:
  %_name945 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call946 = load %Object* %_this1
  %cast_op947 = bitcast %Object %lhs_or_call946 to i8* 
  store i8* %cast_op947, i8** %_name945
  %this_vtable948 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable948
  ret %Object* %_this1
}


