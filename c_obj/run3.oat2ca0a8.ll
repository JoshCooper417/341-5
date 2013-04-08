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


define i32 @program (i32 %argc113, { i32, [ 0 x i8* ] }* %argv111){
__fresh25:
  %argc_slot114 = alloca i32
  store i32 %argc113, i32* %argc_slot114
  %argv_slot112 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv111, { i32, [ 0 x i8* ] }** %argv_slot112
  %mem_ptr115 = call i32* @oat_malloc ( i32 16 )
  %obj116 = bitcast i32* %mem_ptr115 to %B* 
  %new_obj117 = call %B* @_B_ctor ( %B* %obj116 )
  %vdecl_slot118 = alloca %B*
  store %B* %new_obj117, %B** %vdecl_slot118
  %vdecl_slot119 = alloca i32
  store i32 0, i32* %vdecl_slot119
  call void @print_string( i8* @_const_str20 )
  %lhs_or_call120 = load %B** %vdecl_slot118
  %j121 = getelementptr %B* %lhs_or_call120, i32 0, i32 3
  %lhs_or_call122 = load i32* %j121
  call void @print_int( i32 %lhs_or_call122 )
  call void @print_string( i8* @_const_str21 )
  call void @print_string( i8* @_const_str22 )
  call void @print_string( i8* @_const_str23 )
  %lhs_or_call123 = load %B** %vdecl_slot118
  %i124 = getelementptr %B* %lhs_or_call123, i32 0, i32 2
  %lhs_or_call125 = load i32* %i124
  call void @print_int( i32 %lhs_or_call125 )
  call void @print_string( i8* @_const_str24 )
  %lhs_or_call126 = load %B** %vdecl_slot118
  %h128 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 5
  %h127 = load i32 (%B*, i32)** %h128
  %cast_op129 = bitcast %B %lhs_or_call126 to %B* 
  %ret130 = call i32 %h127 ( %B* %cast_op129, i32 3 )
  store i32 %ret130, i32* %vdecl_slot119
  call void @print_string( i8* @_const_str25 )
  %lhs_or_call131 = load %B** %vdecl_slot118
  %j132 = getelementptr %B* %lhs_or_call131, i32 0, i32 3
  %lhs_or_call133 = load i32* %j132
  call void @print_int( i32 %lhs_or_call133 )
  call void @print_string( i8* @_const_str26 )
  call void @print_string( i8* @_const_str27 )
  call void @print_string( i8* @_const_str28 )
  %lhs_or_call134 = load %B** %vdecl_slot118
  %i135 = getelementptr %B* %lhs_or_call134, i32 0, i32 2
  %lhs_or_call136 = load i32* %i135
  call void @print_int( i32 %lhs_or_call136 )
  call void @print_string( i8* @_const_str29 )
  %lhs_or_call137 = load i32* %vdecl_slot119
  ret i32 %lhs_or_call137
}


define i32 @_B_h (%B* %_this1, i32 %i96){
__fresh24:
  %i_slot97 = alloca i32
  store i32 %i96, i32* %i_slot97
  %f99 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 4
  %f98 = load void (%B*)** %f99
  %cast_op100 = bitcast %B %_this1 to %B* 
  call void %f98( %B* %cast_op100 )
  %g102 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 3
  %g101 = load void (%A*)** %g102
  %cast_op103 = bitcast %B %_this1 to %A* 
  call void %g101( %A* %cast_op103 )
  %i104 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call105 = load i32* %i104
  %j106 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call107 = load i32* %j106
  %bop108 = add i32 %lhs_or_call105, %lhs_or_call107
  %lhs_or_call109 = load i32* %i_slot97
  %bop110 = add i32 %bop108, %lhs_or_call109
  ret i32 %bop110
}


define void @_B_f (%B* %_this1){
__fresh23:
  %j92 = getelementptr %B* %_this1, i32 0, i32 3
  %j93 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call94 = load i32* %j93
  %bop95 = add i32 %lhs_or_call94, 1
  store i32 %bop95, i32* %j92
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh22:
  %cast_op86 = bitcast %B* %_this1 to %A* 
  %mem_ptr87 = call i32* @oat_malloc ( i32 16 )
  %obj88 = bitcast i32* %mem_ptr87 to %B* 
  %new_obj89 = call %A* @_A_ctor ( %B* %obj88, %A* %cast_op86 )
  %_this1 = bitcast %A* %new_obj89 to %B 
  %_name90 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str19, i8** %_name90
  %this_vtable91 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable15, %_B_vtable** %this_vtable91
  call void @print_string( i8* @_const_str18 )
  %j85 = getelementptr %B* %_this1, i32 0, i32 3
  store i32 2, i32* %j85
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh21:
  %i84 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i84
  ret void
}


define void @_A_g (%A* %_this1){
__fresh20:
  %x78 = getelementptr %_A_vtable* @_A_vtable14, i32 0, i32 2
  %x77 = load void (%A*)** %x78
  %cast_op79 = bitcast %A %_this1 to %A* 
  call void %x77( %A* %cast_op79 )
  %i80 = getelementptr %A* %_this1, i32 0, i32 2
  %i81 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call82 = load i32* %i81
  %bop83 = add i32 %lhs_or_call82, 1
  store i32 %bop83, i32* %i80
  ret void
}


define void @_A_x (%A* %_this1){
__fresh19:
  %i73 = getelementptr %A* %_this1, i32 0, i32 2
  %i74 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call75 = load i32* %i74
  %bop76 = add i32 %lhs_or_call75, 1
  store i32 %bop76, i32* %i73
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh18:
  %cast_op67 = bitcast %A* %_this1 to %Object* 
  %mem_ptr68 = call i32* @oat_malloc ( i32 12 )
  %obj69 = bitcast i32* %mem_ptr68 to %A* 
  %new_obj70 = call %Object* @_Object_ctor ( %A* %obj69, %Object* %cast_op67 )
  %_this1 = bitcast %Object* %new_obj70 to %A 
  %_name71 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str17, i8** %_name71
  %this_vtable72 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable14, %_A_vtable** %this_vtable72
  %i66 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i66
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh17:
  %_name64 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call65 = load i8** %_name64
  ret i8* %lhs_or_call65
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh16:
  %_name62 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str16, i8** %_name62
  %this_vtable63 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable13, %_Object_vtable** %this_vtable63
  ret %Object* %_this1
}


