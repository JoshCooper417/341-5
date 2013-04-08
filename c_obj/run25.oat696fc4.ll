%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
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
@_const_str77.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str77 = alias bitcast([ 2 x i8 ]* @_const_str77.str. to i8*)@_const_str76.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str76 = alias bitcast([ 2 x i8 ]* @_const_str76.str. to i8*)@_B_vtable75 = private constant %_B_vtable {%_A_vtable* @_A_vtable74, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable74 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable73, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable73 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh198:
  ret void
}


define i32 @program (i32 %argc935, { i32, [ 0 x i8* ] }* %argv933){
__fresh197:
  %argc_slot936 = alloca i32
  store i32 %argc935, i32* %argc_slot936
  %argv_slot934 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv933, { i32, [ 0 x i8* ] }** %argv_slot934
  %mem_ptr937 = call i32* @oat_malloc ( i32 8 )
  %obj938 = bitcast i32* %mem_ptr937 to %B* 
  %new_obj939 = call %B* @_B_ctor ( %B* %obj938 )
  %vdecl_slot940 = alloca %B*
  store %B* %new_obj939, %B** %vdecl_slot940
  %lhs_or_call941 = load %B** %vdecl_slot940
  %f943 = getelementptr %_B_vtable* @_B_vtable75, i32 0, i32 2
  %f942 = load void (%B*)** %f943
  %cast_op944 = bitcast %B %lhs_or_call941 to %B* 
  call void %f942( %B* %cast_op944 )
  ret i32 0
}


define void @_B_f (%B* %_this1){
__fresh196:
  call void @print_string( i8* @_const_str77 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh195:
  %lhs_or_call924 = load %B* %_this1
  %cast_op925 = bitcast %B %lhs_or_call924 to %A* 
  %mem_ptr926 = call i32* @oat_malloc ( i32 8 )
  %obj927 = bitcast i32* %mem_ptr926 to %A* 
  %new_obj928 = call %A* @_A_ctor ( %A* %obj927, %A* %cast_op925 )
  %_name929 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call930 = load %B* %_this1
  %cast_op931 = bitcast %B %lhs_or_call930 to i8* 
  store i8* %cast_op931, i8** %_name929
  %this_vtable932 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable932
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh194:
  call void @print_string( i8* @_const_str76 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh193:
  %lhs_or_call915 = load %A* %_this1
  %cast_op916 = bitcast %A %lhs_or_call915 to %Object* 
  %mem_ptr917 = call i32* @oat_malloc ( i32 8 )
  %obj918 = bitcast i32* %mem_ptr917 to %Object* 
  %new_obj919 = call %Object* @_Object_ctor ( %Object* %obj918, %Object* %cast_op916 )
  %_name920 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call921 = load %A* %_this1
  %cast_op922 = bitcast %A %lhs_or_call921 to i8* 
  store i8* %cast_op922, i8** %_name920
  %this_vtable923 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable923
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh192:
  %_name913 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call914 = load i8** %_name913
  ret i8* %lhs_or_call914
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh191:
  %_name909 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call910 = load %Object* %_this1
  %cast_op911 = bitcast %Object %lhs_or_call910 to i8* 
  store i8* %cast_op911, i8** %_name909
  %this_vtable912 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable912
  ret %Object* %_this1
}


