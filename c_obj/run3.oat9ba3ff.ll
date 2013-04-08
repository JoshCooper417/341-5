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
@_const_str29.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str29 = alias bitcast([ 2 x i8 ]* @_const_str29.str. to i8*)@_const_str28.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str28 = alias bitcast([ 2 x i8 ]* @_const_str28.str. to i8*)@_const_str27.str. = private unnamed_addr constant [ 6 x i8 ] c "b.i: \00", align 4
@_const_str27 = alias bitcast([ 6 x i8 ]* @_const_str27.str. to i8*)@_const_str26.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str26 = alias bitcast([ 2 x i8 ]* @_const_str26.str. to i8*)@_const_str25.str. = private unnamed_addr constant [ 6 x i8 ] c "b.j: \00", align 4
@_const_str25 = alias bitcast([ 6 x i8 ]* @_const_str25.str. to i8*)@_const_str24.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str24 = alias bitcast([ 2 x i8 ]* @_const_str24.str. to i8*)@_const_str23.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str23 = alias bitcast([ 2 x i8 ]* @_const_str23.str. to i8*)@_const_str22.str. = private unnamed_addr constant [ 6 x i8 ] c "b.i: \00", align 4
@_const_str22 = alias bitcast([ 6 x i8 ]* @_const_str22.str. to i8*)@_const_str21.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str21 = alias bitcast([ 2 x i8 ]* @_const_str21.str. to i8*)@_const_str20.str. = private unnamed_addr constant [ 6 x i8 ] c "b.j: \00", align 4
@_const_str20 = alias bitcast([ 6 x i8 ]* @_const_str20.str. to i8*)@_const_str18.str. = private unnamed_addr constant [ 13 x i8 ] c "HELLOOOOOOOO\00", align 4
@_const_str18 = alias bitcast([ 13 x i8 ]* @_const_str18.str. to i8*)@_const_str19.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str19 = alias bitcast([ 2 x i8 ]* @_const_str19.str. to i8*)@_const_str17.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str17 = alias bitcast([ 2 x i8 ]* @_const_str17.str. to i8*)@_const_str16.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str16 = alias bitcast([ 7 x i8 ]* @_const_str16.str. to i8*)@_B_vtable15 = private constant %_B_vtable {%_A_vtable* @_A_vtable14, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%B*)* @_B_f, i32 (%B*, i32)* @_B_h}, align 4
@_A_vtable14 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable13, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%A*)* @_A_f}, align 4
@_Object_vtable13 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh26:
  ret void
}


define i32 @program (i32 %argc106, { i32, [ 0 x i8* ] }* %argv104){
__fresh25:
  %argc_slot107 = alloca i32
  store i32 %argc106, i32* %argc_slot107
  %argv_slot105 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv104, { i32, [ 0 x i8* ] }** %argv_slot105
  %mem_ptr108 = call i32* @oat_malloc ( i32 16 )
  %obj109 = bitcast i32* %mem_ptr108 to %B* 
  %new_obj110 = call %B* @_B_ctor ( %B* %obj109 )
  %vdecl_slot111 = alloca %B*
  store %B* %new_obj110, %B** %vdecl_slot111
  %vdecl_slot112 = alloca i32
  store i32 0, i32* %vdecl_slot112
  call void @print_string( i8* @_const_str20 )
  %lhs_or_call113 = load %B** %vdecl_slot111
  %j114 = getelementptr %B* %lhs_or_call113, i32 0, i32 3
  %lhs_or_call115 = load i32* %j114
  call void @print_int( i32 %lhs_or_call115 )
  call void @print_string( i8* @_const_str21 )
  call void @print_string( i8* @_const_str22 )
  call void @print_string( i8* @_const_str23 )
  %lhs_or_call116 = load %B** %vdecl_slot111
  %i117 = getelementptr %B* %lhs_or_call116, i32 0, i32 2
  %lhs_or_call118 = load i32* %i117
  call void @print_int( i32 %lhs_or_call118 )
  call void @print_string( i8* @_const_str24 )
  %lhs_or_call119 = load %B** %vdecl_slot111
  %h121 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 5
  %h120 = load i32 (%B*, i32)** %h121
  %cast_op122 = bitcast %B %lhs_or_call119 to %B* 
  %ret123 = call i32 %h120 ( %B* %cast_op122, i32 3 )
  store i32 %ret123, i32* %vdecl_slot112
  call void @print_string( i8* @_const_str25 )
  %lhs_or_call124 = load %B** %vdecl_slot111
  %j125 = getelementptr %B* %lhs_or_call124, i32 0, i32 3
  %lhs_or_call126 = load i32* %j125
  call void @print_int( i32 %lhs_or_call126 )
  call void @print_string( i8* @_const_str26 )
  call void @print_string( i8* @_const_str27 )
  call void @print_string( i8* @_const_str28 )
  %lhs_or_call127 = load %B** %vdecl_slot111
  %i128 = getelementptr %B* %lhs_or_call127, i32 0, i32 2
  %lhs_or_call129 = load i32* %i128
  call void @print_int( i32 %lhs_or_call129 )
  call void @print_string( i8* @_const_str29 )
  %lhs_or_call130 = load i32* %vdecl_slot112
  ret i32 %lhs_or_call130
}


define i32 @_B_h (%B* %_this1, i32 %i89){
__fresh24:
  %i_slot90 = alloca i32
  store i32 %i89, i32* %i_slot90
  %f92 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 4
  %f91 = load void (%B*)** %f92
  %cast_op93 = bitcast %B %_this1 to %B* 
  call void %f91( %B* %cast_op93 )
  %g95 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 3
  %g94 = load void (%A*)** %g95
  %cast_op96 = bitcast %B %_this1 to %A* 
  call void %g94( %A* %cast_op96 )
  %i97 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call98 = load i32* %i97
  %j99 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call100 = load i32* %j99
  %bop101 = add i32 %lhs_or_call98, %lhs_or_call100
  %lhs_or_call102 = load i32* %i_slot90
  %bop103 = add i32 %bop101, %lhs_or_call102
  ret i32 %bop103
}


define void @_B_f (%B* %_this1){
__fresh23:
  %j85 = getelementptr %B* %_this1, i32 0, i32 3
  %j86 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call87 = load i32* %j86
  %bop88 = add i32 %lhs_or_call87, 1
  store i32 %bop88, i32* %j85
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh22:
  %mem_ptr80 = call i32* @oat_malloc ( i32 12 )
  %obj81 = bitcast i32* %mem_ptr80 to %A* 
  %new_obj82 = call %A* @_A_ctor ( %A* %obj81 )
  %_this1 = bitcast %A* %new_obj82 to %B 
  %_name83 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str19, i8** %_name83
  %this_vtable84 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable15, %_B_vtable** %this_vtable84
  call void @print_string( i8* @_const_str18 )
  %j79 = getelementptr %B* %_this1, i32 0, i32 3
  store i32 2, i32* %j79
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh21:
  %i78 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i78
  ret void
}


define void @_A_g (%A* %_this1){
__fresh20:
  %x72 = getelementptr %_A_vtable* @_A_vtable14, i32 0, i32 2
  %x71 = load void (%A*)** %x72
  %cast_op73 = bitcast %A %_this1 to %A* 
  call void %x71( %A* %cast_op73 )
  %i74 = getelementptr %A* %_this1, i32 0, i32 2
  %i75 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call76 = load i32* %i75
  %bop77 = add i32 %lhs_or_call76, 1
  store i32 %bop77, i32* %i74
  ret void
}


define void @_A_x (%A* %_this1){
__fresh19:
  %i67 = getelementptr %A* %_this1, i32 0, i32 2
  %i68 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call69 = load i32* %i68
  %bop70 = add i32 %lhs_or_call69, 1
  store i32 %bop70, i32* %i67
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh18:
  %mem_ptr62 = call i32* @oat_malloc ( i32 8 )
  %obj63 = bitcast i32* %mem_ptr62 to %Object* 
  %new_obj64 = call %Object* @_Object_ctor ( %Object* %obj63 )
  %_this1 = bitcast %Object* %new_obj64 to %A 
  %_name65 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str17, i8** %_name65
  %this_vtable66 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable14, %_A_vtable** %this_vtable66
  %i61 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i61
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh17:
  %_name59 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call60 = load i8** %_name59
  ret i8* %lhs_or_call60
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh16:
  %_name57 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str16, i8** %_name57
  %this_vtable58 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable13, %_Object_vtable** %this_vtable58
  ret %Object* %_this1
}


