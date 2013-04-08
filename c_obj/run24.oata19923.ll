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
@_const_str72.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str72 = alias bitcast([ 2 x i8 ]* @_const_str72.str. to i8*)@_const_str71.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str71 = alias bitcast([ 2 x i8 ]* @_const_str71.str. to i8*)@_B_vtable70 = private constant %_B_vtable {%_A_vtable* @_A_vtable69, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable69 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable68, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable68 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh190:
  ret void
}


define i32 @program (i32 %argc899, { i32, [ 0 x i8* ] }* %argv897){
__fresh189:
  %argc_slot900 = alloca i32
  store i32 %argc899, i32* %argc_slot900
  %argv_slot898 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv897, { i32, [ 0 x i8* ] }** %argv_slot898
  %mem_ptr901 = call i32* @oat_malloc ( i32 12 )
  %obj902 = bitcast i32* %mem_ptr901 to %B* 
  %new_obj903 = call %B* @_B_ctor ( %B* %obj902 )
  %vdecl_slot904 = alloca %B*
  store %B* %new_obj903, %B** %vdecl_slot904
  %lhs_or_call905 = load %B** %vdecl_slot904
  %f907 = getelementptr %_B_vtable* @_B_vtable70, i32 0, i32 2
  %f906 = load void (%A*)** %f907
  %cast_op908 = bitcast %B %lhs_or_call905 to %A* 
  call void %f906( %A* %cast_op908 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh188:
  %lhs_or_call887 = load %B* %_this1
  %cast_op888 = bitcast %B %lhs_or_call887 to %A* 
  %mem_ptr889 = call i32* @oat_malloc ( i32 12 )
  %obj890 = bitcast i32* %mem_ptr889 to %A* 
  %new_obj891 = call %A* @_A_ctor ( %A* %obj890, %A* %cast_op888 )
  %_name892 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call893 = load %B* %_this1
  %cast_op894 = bitcast %B %lhs_or_call893 to i8* 
  store i8* %cast_op894, i8** %_name892
  %str895 = getelementptr %B* %_this1, i32 0, i32 2
  store i8* @_const_str72, i8** %str895
  %this_vtable896 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable896
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh187:
  %str885 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call886 = load i8** %str885
  call void @print_string( i8* %lhs_or_call886 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh186:
  %lhs_or_call875 = load %A* %_this1
  %cast_op876 = bitcast %A %lhs_or_call875 to %Object* 
  %mem_ptr877 = call i32* @oat_malloc ( i32 8 )
  %obj878 = bitcast i32* %mem_ptr877 to %Object* 
  %new_obj879 = call %Object* @_Object_ctor ( %Object* %obj878, %Object* %cast_op876 )
  %_name880 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call881 = load %A* %_this1
  %cast_op882 = bitcast %A %lhs_or_call881 to i8* 
  store i8* %cast_op882, i8** %_name880
  %str883 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str71, i8** %str883
  %this_vtable884 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable884
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh185:
  %_name873 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call874 = load i8** %_name873
  ret i8* %lhs_or_call874
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh184:
  %_name869 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call870 = load %Object* %_this1
  %cast_op871 = bitcast %Object %lhs_or_call870 to i8* 
  store i8* %cast_op871, i8** %_name869
  %this_vtable872 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable872
  ret %Object* %_this1
}


