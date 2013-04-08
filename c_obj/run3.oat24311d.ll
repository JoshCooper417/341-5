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
@_const_str18.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str18 = alias bitcast([ 2 x i8 ]* @_const_str18.str. to i8*)@_const_str17.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str17 = alias bitcast([ 2 x i8 ]* @_const_str17.str. to i8*)@_const_str16.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str16 = alias bitcast([ 7 x i8 ]* @_const_str16.str. to i8*)@_B_vtable15 = private constant %_B_vtable {%_A_vtable* @_A_vtable14, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%B*)* @_B_f, i32 (%B*, i32)* @_B_h}, align 4
@_A_vtable14 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable13, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%A*)* @_A_f}, align 4
@_Object_vtable13 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh26:
  ret void
}


define i32 @program (i32 %argc116, { i32, [ 0 x i8* ] }* %argv114){
__fresh25:
  %argc_slot117 = alloca i32
  store i32 %argc116, i32* %argc_slot117
  %argv_slot115 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv114, { i32, [ 0 x i8* ] }** %argv_slot115
  %mem_ptr118 = call i32* @oat_malloc ( i32 16 )
  %obj119 = bitcast i32* %mem_ptr118 to %B* 
  %new_obj120 = call %B* @_B_ctor ( %B* %obj119 )
  %vdecl_slot121 = alloca %B*
  store %B* %new_obj120, %B** %vdecl_slot121
  %vdecl_slot122 = alloca i32
  store i32 0, i32* %vdecl_slot122
  %lhs_or_call123 = load %B** %vdecl_slot121
  %vtable_ptr124 = getelementptr %B* %lhs_or_call123, i32 0
  %vtable125 = load %_B_vtable** %vtable_ptr124
  %h127 = getelementptr %_B_vtable* %vtable125, i32 0, i32 5
  %h126 = load i32 (%B*, i32)** %h127
  %cast_op128 = bitcast %B %lhs_or_call123 to %B* 
  %ret129 = call i32 %h126 ( %B* %cast_op128, i32 3 )
  store i32 %ret129, i32* %vdecl_slot122
  %lhs_or_call130 = load i32* %vdecl_slot122
  ret i32 %lhs_or_call130
}


define i32 @_B_h (%B* %_this1, i32 %i95){
__fresh24:
  %i_slot96 = alloca i32
  store i32 %i95, i32* %i_slot96
  %vtable_ptr97 = getelementptr %B* %_this1, i32 0
  %vtable98 = load %_B_vtable** %vtable_ptr97
  %f100 = getelementptr %_B_vtable* %vtable98, i32 0, i32 4
  %f99 = load void (%B*)** %f100
  %cast_op101 = bitcast %B %_this1 to %B* 
  call void %f99( %B* %cast_op101 )
  %vtable_ptr102 = getelementptr %B* %_this1, i32 0
  %vtable103 = load %_B_vtable** %vtable_ptr102
  %g105 = getelementptr %_B_vtable* %vtable103, i32 0, i32 3
  %g104 = load void (%A*)** %g105
  %cast_op106 = bitcast %B %_this1 to %A* 
  call void %g104( %A* %cast_op106 )
  %i107 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call108 = load i32* %i107
  %j109 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call110 = load i32* %j109
  %bop111 = add i32 %lhs_or_call108, %lhs_or_call110
  %lhs_or_call112 = load i32* %i_slot96
  %bop113 = add i32 %bop111, %lhs_or_call112
  ret i32 %bop113
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
  %mem_ptr86 = call i32* @oat_malloc ( i32 12 )
  %obj87 = bitcast i32* %mem_ptr86 to %A* 
  %new_obj88 = call %A* @_A_ctor ( %A* %obj87 )
  %_this1 = bitcast %A* %new_obj88 to %B 
  %_name89 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str18, i8** %_name89
  %this_vtable90 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable15, %_B_vtable** %this_vtable90
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
  %vtable_ptr75 = getelementptr %A* %_this1, i32 0
  %vtable76 = load %_A_vtable** %vtable_ptr75
  %x78 = getelementptr %_A_vtable* %vtable76, i32 0, i32 2
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
  %i71 = getelementptr %A* %_this1, i32 0, i32 2
  %i72 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call73 = load i32* %i72
  %bop74 = add i32 %lhs_or_call73, 1
  store i32 %bop74, i32* %i71
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh18:
  %mem_ptr66 = call i32* @oat_malloc ( i32 8 )
  %obj67 = bitcast i32* %mem_ptr66 to %Object* 
  %new_obj68 = call %Object* @_Object_ctor ( %Object* %obj67 )
  %_this1 = bitcast %Object* %new_obj68 to %A 
  %_name69 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str17, i8** %_name69
  %this_vtable70 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable14, %_A_vtable** %this_vtable70
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


