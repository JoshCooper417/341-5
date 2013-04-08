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
@_const_str14.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str14 = alias bitcast([ 2 x i8 ]* @_const_str14.str. to i8*)@_const_str13.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str13 = alias bitcast([ 2 x i8 ]* @_const_str13.str. to i8*)@_const_str12.str. = private unnamed_addr constant [ 6 x i8 ] c "b.i: \00", align 4
@_const_str12 = alias bitcast([ 6 x i8 ]* @_const_str12.str. to i8*)@_const_str11.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str11 = alias bitcast([ 2 x i8 ]* @_const_str11.str. to i8*)@_const_str10.str. = private unnamed_addr constant [ 6 x i8 ] c "b.j: \00", align 4
@_const_str10 = alias bitcast([ 6 x i8 ]* @_const_str10.str. to i8*)@_const_str9.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str9 = alias bitcast([ 2 x i8 ]* @_const_str9.str. to i8*)@_const_str8.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str8 = alias bitcast([ 2 x i8 ]* @_const_str8.str. to i8*)@_const_str7.str. = private unnamed_addr constant [ 6 x i8 ] c "b.i: \00", align 4
@_const_str7 = alias bitcast([ 6 x i8 ]* @_const_str7.str. to i8*)@_const_str6.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str6 = alias bitcast([ 2 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 6 x i8 ] c "b.j: \00", align 4
@_const_str5 = alias bitcast([ 6 x i8 ]* @_const_str5.str. to i8*)@_const_str4.str. = private unnamed_addr constant [ 13 x i8 ] c "HELLOOOOOOOO\00", align 4
@_const_str4 = alias bitcast([ 13 x i8 ]* @_const_str4.str. to i8*)@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%B*)* @_B_f, i32 (%B*, i32)* @_B_h}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%A*)* @_A_f}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh10:
  ret void
}


define i32 @program (i32 %argc64, { i32, [ 0 x i8* ] }* %argv62){
__fresh9:
  %argc_slot65 = alloca i32
  store i32 %argc64, i32* %argc_slot65
  %argv_slot63 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv62, { i32, [ 0 x i8* ] }** %argv_slot63
  %mem_ptr66 = call i32* @oat_malloc ( i32 16 )
  %obj67 = bitcast i32* %mem_ptr66 to %B* 
  %new_obj68 = call %B* @_B_ctor ( %B* %obj67 )
  %vdecl_slot69 = alloca %B*
  store %B* %new_obj68, %B** %vdecl_slot69
  %vdecl_slot70 = alloca i32
  store i32 0, i32* %vdecl_slot70
  call void @print_string( i8* @_const_str5 )
  %lhs_or_call71 = load %B** %vdecl_slot69
  %j72 = getelementptr %B* %lhs_or_call71, i32 0, i32 3
  %lhs_or_call73 = load i32* %j72
  call void @print_int( i32 %lhs_or_call73 )
  call void @print_string( i8* @_const_str6 )
  call void @print_string( i8* @_const_str7 )
  call void @print_string( i8* @_const_str8 )
  %lhs_or_call74 = load %B** %vdecl_slot69
  %i75 = getelementptr %B* %lhs_or_call74, i32 0, i32 2
  %lhs_or_call76 = load i32* %i75
  call void @print_int( i32 %lhs_or_call76 )
  call void @print_string( i8* @_const_str9 )
  %lhs_or_call77 = load %B** %vdecl_slot69
  %h79 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 5
  %h78 = load i32 (%B*, i32)** %h79
  %cast_op80 = bitcast %B %lhs_or_call77 to %B* 
  %ret81 = call i32 %h78 ( %B* %cast_op80, i32 3 )
  store i32 %ret81, i32* %vdecl_slot70
  call void @print_string( i8* @_const_str10 )
  %lhs_or_call82 = load %B** %vdecl_slot69
  %j83 = getelementptr %B* %lhs_or_call82, i32 0, i32 3
  %lhs_or_call84 = load i32* %j83
  call void @print_int( i32 %lhs_or_call84 )
  call void @print_string( i8* @_const_str11 )
  call void @print_string( i8* @_const_str12 )
  call void @print_string( i8* @_const_str13 )
  %lhs_or_call85 = load %B** %vdecl_slot69
  %i86 = getelementptr %B* %lhs_or_call85, i32 0, i32 2
  %lhs_or_call87 = load i32* %i86
  call void @print_int( i32 %lhs_or_call87 )
  call void @print_string( i8* @_const_str14 )
  %lhs_or_call88 = load i32* %vdecl_slot70
  ret i32 %lhs_or_call88
}


define i32 @_B_h (%B* %_this1, i32 %i47){
__fresh8:
  %i_slot48 = alloca i32
  store i32 %i47, i32* %i_slot48
  %f50 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 4
  %f49 = load void (%B*)** %f50
  %cast_op51 = bitcast %B %_this1 to %B* 
  call void %f49( %B* %cast_op51 )
  %g53 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 3
  %g52 = load void (%A*)** %g53
  %cast_op54 = bitcast %B %_this1 to %A* 
  call void %g52( %A* %cast_op54 )
  %i55 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call56 = load i32* %i55
  %j57 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call58 = load i32* %j57
  %bop59 = add i32 %lhs_or_call56, %lhs_or_call58
  %lhs_or_call60 = load i32* %i_slot48
  %bop61 = add i32 %bop59, %lhs_or_call60
  ret i32 %bop61
}


define void @_B_f (%B* %_this1){
__fresh7:
  %j43 = getelementptr %B* %_this1, i32 0, i32 3
  %j44 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call45 = load i32* %j44
  %bop46 = add i32 %lhs_or_call45, 1
  store i32 %bop46, i32* %j43
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh6:
  %lhs_or_call34 = load %B* %_this1
  %cast_op35 = bitcast %B %lhs_or_call34 to %A* 
  %mem_ptr36 = call i32* @oat_malloc ( i32 16 )
  %obj37 = bitcast i32* %mem_ptr36 to %B* 
  %new_obj38 = call %A* @_A_ctor ( %B* %obj37, %A* %cast_op35 )
  %_name39 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call40 = load %B* %_this1
  %cast_op41 = bitcast %B %lhs_or_call40 to i8* 
  store i8* %cast_op41, i8** %_name39
  %this_vtable42 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable42
  call void @print_string( i8* @_const_str4 )
  %j32 = getelementptr %B* %_this1, i32 0, i32 3
  store i32 2, i32* %j32
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh5:
  %i31 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i31
  ret void
}


define void @_A_g (%A* %_this1){
__fresh4:
  %x25 = getelementptr %_A_vtable* @_A_vtable2, i32 0, i32 2
  %x24 = load void (%A*)** %x25
  %cast_op26 = bitcast %A %_this1 to %A* 
  call void %x24( %A* %cast_op26 )
  %i27 = getelementptr %A* %_this1, i32 0, i32 2
  %i28 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call29 = load i32* %i28
  %bop30 = add i32 %lhs_or_call29, 1
  store i32 %bop30, i32* %i27
  ret void
}


define void @_A_x (%A* %_this1){
__fresh3:
  %i20 = getelementptr %A* %_this1, i32 0, i32 2
  %i21 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call22 = load i32* %i21
  %bop23 = add i32 %lhs_or_call22, 1
  store i32 %bop23, i32* %i20
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %lhs_or_call11 = load %A* %_this1
  %cast_op12 = bitcast %A %lhs_or_call11 to %Object* 
  %mem_ptr13 = call i32* @oat_malloc ( i32 12 )
  %obj14 = bitcast i32* %mem_ptr13 to %A* 
  %new_obj15 = call %Object* @_Object_ctor ( %A* %obj14, %Object* %cast_op12 )
  %_name16 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call17 = load %A* %_this1
  %cast_op18 = bitcast %A %lhs_or_call17 to i8* 
  store i8* %cast_op18, i8** %_name16
  %this_vtable19 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable19
  %i9 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i9
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


