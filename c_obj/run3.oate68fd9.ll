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


define i32 @program (i32 %argc59, { i32, [ 0 x i8* ] }* %argv57){
__fresh9:
  %argc_slot60 = alloca i32
  store i32 %argc59, i32* %argc_slot60
  %argv_slot58 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv57, { i32, [ 0 x i8* ] }** %argv_slot58
  %mem_ptr61 = call i32* @oat_malloc ( i32 16 )
  %obj62 = bitcast i32* %mem_ptr61 to %B* 
  %new_obj63 = call %B* @_B_ctor ( %B* %obj62 )
  %vdecl_slot64 = alloca %B*
  store %B* %new_obj63, %B** %vdecl_slot64
  %lhs_or_call65 = load %B** %vdecl_slot64
  %j66 = getelementptr %B* %lhs_or_call65, i32 0, i32 3
  %lhs_or_call67 = load i32* %j66
  call void @print_int( i32 %lhs_or_call67 )
  %lhs_or_call68 = load %B** %vdecl_slot64
  %h70 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 5
  %h69 = load i32 (%B*, i32)** %h70
  %cast_op71 = bitcast %B %lhs_or_call68 to %B* 
  %ret72 = call i32 %h69 ( %B* %cast_op71, i32 3 )
  ret i32 %ret72
}


define i32 @_B_h (%B* %_this1, i32 %i42){
__fresh8:
  %i_slot43 = alloca i32
  store i32 %i42, i32* %i_slot43
  %f45 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 4
  %f44 = load void (%B*)** %f45
  %cast_op46 = bitcast %B %_this1 to %B* 
  call void %f44( %B* %cast_op46 )
  %g48 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 3
  %g47 = load void (%A*)** %g48
  %cast_op49 = bitcast %B %_this1 to %A* 
  call void %g47( %A* %cast_op49 )
  %i50 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call51 = load i32* %i50
  %j52 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call53 = load i32* %j52
  %bop54 = add i32 %lhs_or_call51, %lhs_or_call53
  %lhs_or_call55 = load i32* %i_slot43
  %bop56 = add i32 %bop54, %lhs_or_call55
  ret i32 %bop56
}


define void @_B_f (%B* %_this1){
__fresh7:
  %j38 = getelementptr %B* %_this1, i32 0, i32 3
  %j39 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call40 = load i32* %j39
  %bop41 = add i32 %lhs_or_call40, 1
  store i32 %bop41, i32* %j38
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh6:
  %lhs_or_call29 = load %B* %_this1
  %cast_op30 = bitcast %B %lhs_or_call29 to %A* 
  %mem_ptr31 = call i32* @oat_malloc ( i32 12 )
  %obj32 = bitcast i32* %mem_ptr31 to %A* 
  %new_obj33 = call %A* @_A_ctor ( %A* %obj32, %A* %cast_op30 )
  %_name34 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call35 = load %B* %_this1
  %cast_op36 = bitcast %B %lhs_or_call35 to i8* 
  store i8* %cast_op36, i8** %_name34
  %this_vtable37 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable37
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh5:
  %i28 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i28
  ret void
}


define void @_A_g (%A* %_this1){
__fresh4:
  %x22 = getelementptr %_A_vtable* @_A_vtable2, i32 0, i32 2
  %x21 = load void (%A*)** %x22
  %cast_op23 = bitcast %A %_this1 to %A* 
  call void %x21( %A* %cast_op23 )
  %i24 = getelementptr %A* %_this1, i32 0, i32 2
  %i25 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call26 = load i32* %i25
  %bop27 = add i32 %lhs_or_call26, 1
  store i32 %bop27, i32* %i24
  ret void
}


define void @_A_x (%A* %_this1){
__fresh3:
  %i17 = getelementptr %A* %_this1, i32 0, i32 2
  %i18 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call19 = load i32* %i18
  %bop20 = add i32 %lhs_or_call19, 1
  store i32 %bop20, i32* %i17
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %lhs_or_call8 = load %A* %_this1
  %cast_op9 = bitcast %A %lhs_or_call8 to %Object* 
  %mem_ptr10 = call i32* @oat_malloc ( i32 8 )
  %obj11 = bitcast i32* %mem_ptr10 to %Object* 
  %new_obj12 = call %Object* @_Object_ctor ( %Object* %obj11, %Object* %cast_op9 )
  %_name13 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call14 = load %A* %_this1
  %cast_op15 = bitcast %A %lhs_or_call14 to i8* 
  store i8* %cast_op15, i8** %_name13
  %this_vtable16 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable16
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %_name6 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call7 = load i8** %_name6
  ret i8* %lhs_or_call7
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %_name2 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3 = load %Object* %_this1
  %cast_op4 = bitcast %Object %lhs_or_call3 to i8* 
  store i8* %cast_op4, i8** %_name2
  %this_vtable5 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable5
  ret %Object* %_this1
}


