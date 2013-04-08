%B = type { %_B_vtable*, i8*, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, void (%B*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, void (%A*)* }
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
@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%B*)* @_B_f, i32 (%B*, i32)* @_B_h}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%A*)* @_A_f}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh10:
  ret void
}


define i32 @program (i32 %argc60, { i32, [ 0 x i8* ] }* %argv58){
__fresh9:
  %argc_slot61 = alloca i32
  store i32 %argc60, i32* %argc_slot61
  %argv_slot59 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv58, { i32, [ 0 x i8* ] }** %argv_slot59
  %mem_ptr62 = call i32* @oat_malloc ( i32 16 )
  %obj63 = bitcast i32* %mem_ptr62 to %B* 
  %new_obj64 = call %B* @_B_ctor ( %B* %obj63 )
  %vdecl_slot65 = alloca %B*
  store %B* %new_obj64, %B** %vdecl_slot65
  %lhs_or_call66 = load %B** %vdecl_slot65
  %j67 = getelementptr %B* %lhs_or_call66, i32 0, i32 3
  %lhs_or_call68 = load i32* %j67
  call void @print_int( i32 %lhs_or_call68 )
  %lhs_or_call69 = load %B** %vdecl_slot65
  %h71 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 5
  %h70 = load i32 (%B*, i32)** %h71
  %cast_op72 = bitcast %B %lhs_or_call69 to %B* 
  %ret73 = call i32 %h70 ( %B* %cast_op72, i32 3 )
  ret i32 %ret73
}


define i32 @_B_h (%B* %_this1, i32 %i43){
__fresh8:
  %i_slot44 = alloca i32
  store i32 %i43, i32* %i_slot44
  %f46 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 4
  %f45 = load void (%B*)** %f46
  %cast_op47 = bitcast %B %_this1 to %B* 
  call void %f45( %B* %cast_op47 )
  %g49 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 3
  %g48 = load void (%A*)** %g49
  %cast_op50 = bitcast %B %_this1 to %A* 
  call void %g48( %A* %cast_op50 )
  %i51 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call52 = load i32* %i51
  %j53 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call54 = load i32* %j53
  %bop55 = add i32 %lhs_or_call52, %lhs_or_call54
  %lhs_or_call56 = load i32* %i_slot44
  %bop57 = add i32 %bop55, %lhs_or_call56
  ret i32 %bop57
}


define void @_B_f (%B* %_this1){
__fresh7:
  %j39 = getelementptr %B* %_this1, i32 0, i32 3
  %j40 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call41 = load i32* %j40
  %bop42 = add i32 %lhs_or_call41, 1
  store i32 %bop42, i32* %j39
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh6:
  %lhs_or_call31 = load %B* %_this1
  %cast_op32 = bitcast %B %lhs_or_call31 to %A* 
  %mem_ptr33 = call i32* @oat_malloc ( i32 12 )
  %obj34 = bitcast i32* %mem_ptr33 to %A* 
  %new_op30 = call %A* @_A_ctor ( %A* %obj34, %A* %cast_op32 )
  %_name35 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call36 = load %B* %_this1
  %cast_op37 = bitcast %B %lhs_or_call36 to i8* 
  store i8* %cast_op37, i8** %_name35
  %this_vtable38 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable38
  ret %B* %new_op30
}


define void @_A_f (%A* %_this1){
__fresh5:
  %i29 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i29
  ret void
}


define void @_A_g (%A* %_this1){
__fresh4:
  %x23 = getelementptr %_A_vtable* @_A_vtable2, i32 0, i32 2
  %x22 = load void (%A*)** %x23
  %cast_op24 = bitcast %A %_this1 to %A* 
  call void %x22( %A* %cast_op24 )
  %i25 = getelementptr %A* %_this1, i32 0, i32 2
  %i26 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call27 = load i32* %i26
  %bop28 = add i32 %lhs_or_call27, 1
  store i32 %bop28, i32* %i25
  ret void
}


define void @_A_x (%A* %_this1){
__fresh3:
  %i18 = getelementptr %A* %_this1, i32 0, i32 2
  %i19 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call20 = load i32* %i19
  %bop21 = add i32 %lhs_or_call20, 1
  store i32 %bop21, i32* %i18
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %lhs_or_call10 = load %A* %_this1
  %cast_op11 = bitcast %A %lhs_or_call10 to %Object* 
  %mem_ptr12 = call i32* @oat_malloc ( i32 8 )
  %obj13 = bitcast i32* %mem_ptr12 to %Object* 
  %new_op9 = call %Object* @_Object_ctor ( %Object* %obj13, %Object* %cast_op11 )
  %_name14 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call15 = load %A* %_this1
  %cast_op16 = bitcast %A %lhs_or_call15 to i8* 
  store i8* %cast_op16, i8** %_name14
  %this_vtable17 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable17
  ret %A* %new_op9
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %_name7 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call8 = load i8** %_name7
  ret i8* %lhs_or_call8
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %_name3 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call4 = load %Object* %_this1
  %cast_op5 = bitcast %Object %lhs_or_call4 to i8* 
  store i8* %cast_op5, i8** %_name3
  %this_vtable6 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable6
  ret %Object* %new_op2
}


