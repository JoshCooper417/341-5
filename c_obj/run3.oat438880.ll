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


define i32 @program (i32 %argc112, { i32, [ 0 x i8* ] }* %argv110){
__fresh25:
  %argc_slot113 = alloca i32
  store i32 %argc112, i32* %argc_slot113
  %argv_slot111 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv110, { i32, [ 0 x i8* ] }** %argv_slot111
  %mem_ptr114 = call i32* @oat_malloc ( i32 16 )
  %obj115 = bitcast i32* %mem_ptr114 to %B* 
  %new_obj116 = call %B* @_B_ctor ( %B* %obj115 )
  %vdecl_slot117 = alloca %B*
  store %B* %new_obj116, %B** %vdecl_slot117
  %vdecl_slot118 = alloca i32
  store i32 0, i32* %vdecl_slot118
  call void @print_string( i8* @_const_str20 )
  %lhs_or_call119 = load %B** %vdecl_slot117
  %j120 = getelementptr %B* %lhs_or_call119, i32 0, i32 3
  %lhs_or_call121 = load i32* %j120
  call void @print_int( i32 %lhs_or_call121 )
  call void @print_string( i8* @_const_str21 )
  call void @print_string( i8* @_const_str22 )
  call void @print_string( i8* @_const_str23 )
  %lhs_or_call122 = load %B** %vdecl_slot117
  %i123 = getelementptr %B* %lhs_or_call122, i32 0, i32 2
  %lhs_or_call124 = load i32* %i123
  call void @print_int( i32 %lhs_or_call124 )
  call void @print_string( i8* @_const_str24 )
  %lhs_or_call125 = load %B** %vdecl_slot117
  %h127 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 5
  %h126 = load i32 (%B*, i32)** %h127
  %cast_op128 = bitcast %B %lhs_or_call125 to %B* 
  %ret129 = call i32 %h126 ( %B* %cast_op128, i32 3 )
  store i32 %ret129, i32* %vdecl_slot118
  call void @print_string( i8* @_const_str25 )
  %lhs_or_call130 = load %B** %vdecl_slot117
  %j131 = getelementptr %B* %lhs_or_call130, i32 0, i32 3
  %lhs_or_call132 = load i32* %j131
  call void @print_int( i32 %lhs_or_call132 )
  call void @print_string( i8* @_const_str26 )
  call void @print_string( i8* @_const_str27 )
  call void @print_string( i8* @_const_str28 )
  %lhs_or_call133 = load %B** %vdecl_slot117
  %i134 = getelementptr %B* %lhs_or_call133, i32 0, i32 2
  %lhs_or_call135 = load i32* %i134
  call void @print_int( i32 %lhs_or_call135 )
  call void @print_string( i8* @_const_str29 )
  %lhs_or_call136 = load i32* %vdecl_slot118
  ret i32 %lhs_or_call136
}


define i32 @_B_h (%B* %_this1, i32 %i95){
__fresh24:
  %i_slot96 = alloca i32
  store i32 %i95, i32* %i_slot96
  %f98 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 4
  %f97 = load void (%B*)** %f98
  %cast_op99 = bitcast %B %_this1 to %B* 
  call void %f97( %B* %cast_op99 )
  %g101 = getelementptr %_B_vtable* @_B_vtable15, i32 0, i32 3
  %g100 = load void (%A*)** %g101
  %cast_op102 = bitcast %B %_this1 to %A* 
  call void %g100( %A* %cast_op102 )
  %i103 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call104 = load i32* %i103
  %j105 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call106 = load i32* %j105
  %bop107 = add i32 %lhs_or_call104, %lhs_or_call106
  %lhs_or_call108 = load i32* %i_slot96
  %bop109 = add i32 %bop107, %lhs_or_call108
  ret i32 %bop109
}


define void @_B_f (%B* %_this1){
__fresh23:
  %j91 = getelementptr %B* %_this1, i32 0, i32 3
  %j92 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call93 = load i32* %j92
  %bop94 = add i32 %lhs_or_call93, 1
  store i32 %bop94, i32* %j91
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh22:
  %cast_op85 = bitcast %B* %_this1 to %A* 
  %mem_ptr86 = call i32* @oat_malloc ( i32 16 )
  %obj87 = bitcast i32* %mem_ptr86 to %B* 
  %new_obj88 = call %A* @_A_ctor ( %B* %obj87, %A* %cast_op85 )
  %_this1 = bitcast %A* %new_obj88 to %B 
  %_name89 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str19, i8** %_name89
  %this_vtable90 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable15, %_B_vtable** %this_vtable90
  call void @print_string( i8* @_const_str18 )
  %j84 = getelementptr %B* %_this1, i32 0, i32 3
  store i32 2, i32* %j84
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh21:
  %i83 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i83
  ret void
}


define void @_A_g (%A* %_this1){
__fresh20:
  %x77 = getelementptr %_A_vtable* @_A_vtable14, i32 0, i32 2
  %x76 = load void (%A*)** %x77
  %cast_op78 = bitcast %A %_this1 to %A* 
  call void %x76( %A* %cast_op78 )
  %i79 = getelementptr %A* %_this1, i32 0, i32 2
  %i80 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call81 = load i32* %i80
  %bop82 = add i32 %lhs_or_call81, 1
  store i32 %bop82, i32* %i79
  ret void
}


define void @_A_x (%A* %_this1){
__fresh19:
  %i72 = getelementptr %A* %_this1, i32 0, i32 2
  %i73 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call74 = load i32* %i73
  %bop75 = add i32 %lhs_or_call74, 1
  store i32 %bop75, i32* %i72
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh18:
  %cast_op66 = bitcast %A* %_this1 to %Object* 
  %mem_ptr67 = call i32* @oat_malloc ( i32 12 )
  %obj68 = bitcast i32* %mem_ptr67 to %A* 
  %new_obj69 = call %Object* @_Object_ctor ( %A* %obj68, %Object* %cast_op66 )
  %_this1 = bitcast %Object* %new_obj69 to %A 
  %_name70 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str17, i8** %_name70
  %this_vtable71 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable14, %_A_vtable** %this_vtable71
  %i65 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i65
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh17:
  %_name63 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call64 = load i8** %_name63
  ret i8* %lhs_or_call64
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh16:
  %_name61 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str16, i8** %_name61
  %this_vtable62 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable13, %_Object_vtable** %this_vtable62
  ret %Object* %_this1
}


