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


define i32 @program (i32 %argc62, { i32, [ 0 x i8* ] }* %argv60){
__fresh9:
  %argc_slot63 = alloca i32
  store i32 %argc62, i32* %argc_slot63
  %argv_slot61 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv60, { i32, [ 0 x i8* ] }** %argv_slot61
  %mem_ptr64 = call i32* @oat_malloc ( i32 16 )
  %obj65 = bitcast i32* %mem_ptr64 to %B* 
  %new_obj66 = call %B* @_B_ctor ( %B* %obj65 )
  %vdecl_slot67 = alloca %B*
  store %B* %new_obj66, %B** %vdecl_slot67
  %lhs_or_call68 = load %B** %vdecl_slot67
  %j69 = getelementptr %B* %lhs_or_call68, i32 0, i32 3
  %lhs_or_call70 = load i32* %j69
  call void @print_int( i32 %lhs_or_call70 )
  %lhs_or_call71 = load %B** %vdecl_slot67
  %h73 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 5
  %h72 = load i32 (%B*, i32)** %h73
  %cast_op74 = bitcast %B %lhs_or_call71 to %B* 
  %ret75 = call i32 %h72 ( %B* %cast_op74, i32 3 )
  ret i32 %ret75
}


define i32 @_B_h (%B* %_this1, i32 %i45){
__fresh8:
  %i_slot46 = alloca i32
  store i32 %i45, i32* %i_slot46
  %f48 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 4
  %f47 = load void (%B*)** %f48
  %cast_op49 = bitcast %B %_this1 to %B* 
  call void %f47( %B* %cast_op49 )
  %g51 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 3
  %g50 = load void (%A*)** %g51
  %cast_op52 = bitcast %B %_this1 to %A* 
  call void %g50( %A* %cast_op52 )
  %i53 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call54 = load i32* %i53
  %j55 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call56 = load i32* %j55
  %bop57 = add i32 %lhs_or_call54, %lhs_or_call56
  %lhs_or_call58 = load i32* %i_slot46
  %bop59 = add i32 %bop57, %lhs_or_call58
  ret i32 %bop59
}


define void @_B_f (%B* %_this1){
__fresh7:
  %j41 = getelementptr %B* %_this1, i32 0, i32 3
  %j42 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call43 = load i32* %j42
  %bop44 = add i32 %lhs_or_call43, 1
  store i32 %bop44, i32* %j41
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh6:
  %lhs_or_call32 = load %B* %_this1
  %cast_op33 = bitcast %B %lhs_or_call32 to %A* 
  %mem_ptr34 = call i32* @oat_malloc ( i32 12 )
  %obj35 = bitcast i32* %mem_ptr34 to %A* 
  %_this1 = call %A* @_A_ctor ( %A* %obj35, %A* %cast_op33 )
  %_name37 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call38 = load %B* %_this1
  %cast_op39 = bitcast %B %lhs_or_call38 to i8* 
  store i8* %cast_op39, i8** %_name37
  %this_vtable40 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable40
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh5:
  %i30 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i30
  ret void
}


define void @_A_g (%A* %_this1){
__fresh4:
  %x24 = getelementptr %_A_vtable* @_A_vtable2, i32 0, i32 2
  %x23 = load void (%A*)** %x24
  %cast_op25 = bitcast %A %_this1 to %A* 
  call void %x23( %A* %cast_op25 )
  %i26 = getelementptr %A* %_this1, i32 0, i32 2
  %i27 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call28 = load i32* %i27
  %bop29 = add i32 %lhs_or_call28, 1
  store i32 %bop29, i32* %i26
  ret void
}


define void @_A_x (%A* %_this1){
__fresh3:
  %i19 = getelementptr %A* %_this1, i32 0, i32 2
  %i20 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call21 = load i32* %i20
  %bop22 = add i32 %lhs_or_call21, 1
  store i32 %bop22, i32* %i19
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %lhs_or_call10 = load %A* %_this1
  %cast_op11 = bitcast %A %lhs_or_call10 to %Object* 
  %mem_ptr12 = call i32* @oat_malloc ( i32 8 )
  %obj13 = bitcast i32* %mem_ptr12 to %Object* 
  %_this1 = call %Object* @_Object_ctor ( %Object* %obj13, %Object* %cast_op11 )
  %_name15 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call16 = load %A* %_this1
  %cast_op17 = bitcast %A %lhs_or_call16 to i8* 
  store i8* %cast_op17, i8** %_name15
  %this_vtable18 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable18
  ret %A* %_this1
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
  ret %Object* %_this1
}


