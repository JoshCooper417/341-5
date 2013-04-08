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
@_B_vtable9 = private constant %_B_vtable {%_A_vtable* @_A_vtable8, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%B*)* @_B_f, i32 (%B*, i32)* @_B_h}, align 4
@_A_vtable8 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable7, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%A*)* @_A_f}, align 4
@_Object_vtable7 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh26:
  ret void
}


define i32 @program (i32 %argc133, { i32, [ 0 x i8* ] }* %argv131){
__fresh25:
  %argc_slot134 = alloca i32
  store i32 %argc133, i32* %argc_slot134
  %argv_slot132 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv131, { i32, [ 0 x i8* ] }** %argv_slot132
  %mem_ptr135 = call i32* @oat_malloc ( i32 16 )
  %obj136 = bitcast i32* %mem_ptr135 to %B* 
  %new_obj137 = call %B* @_B_ctor ( %B* %obj136 )
  %vdecl_slot138 = alloca %B*
  store %B* %new_obj137, %B** %vdecl_slot138
  %lhs_or_call139 = load %B** %vdecl_slot138
  %j140 = getelementptr %B* %lhs_or_call139, i32 0, i32 3
  %lhs_or_call141 = load i32* %j140
  call void @print_int( i32 %lhs_or_call141 )
  %lhs_or_call142 = load %B** %vdecl_slot138
  %h144 = getelementptr %_B_vtable* @_B_vtable9, i32 0, i32 5
  %h143 = load i32 (%B*, i32)** %h144
  %cast_op145 = bitcast %B %lhs_or_call142 to %B* 
  %ret146 = call i32 %h143 ( %B* %cast_op145, i32 3 )
  ret i32 %ret146
}


define i32 @_B_h (%B* %_this1, i32 %i116){
__fresh24:
  %i_slot117 = alloca i32
  store i32 %i116, i32* %i_slot117
  %f119 = getelementptr %_B_vtable* @_B_vtable9, i32 0, i32 4
  %f118 = load void (%B*)** %f119
  %cast_op120 = bitcast %B %_this1 to %B* 
  call void %f118( %B* %cast_op120 )
  %g122 = getelementptr %_B_vtable* @_B_vtable9, i32 0, i32 3
  %g121 = load void (%A*)** %g122
  %cast_op123 = bitcast %B %_this1 to %A* 
  call void %g121( %A* %cast_op123 )
  %i124 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call125 = load i32* %i124
  %j126 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call127 = load i32* %j126
  %bop128 = add i32 %lhs_or_call125, %lhs_or_call127
  %lhs_or_call129 = load i32* %i_slot117
  %bop130 = add i32 %bop128, %lhs_or_call129
  ret i32 %bop130
}


define void @_B_f (%B* %_this1){
__fresh23:
  %j112 = getelementptr %B* %_this1, i32 0, i32 3
  %j113 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call114 = load i32* %j113
  %bop115 = add i32 %lhs_or_call114, 1
  store i32 %bop115, i32* %j112
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh22:
  %lhs_or_call103 = load %B* %_this1
  %cast_op104 = bitcast %B %lhs_or_call103 to %A* 
  %mem_ptr105 = call i32* @oat_malloc ( i32 12 )
  %obj106 = bitcast i32* %mem_ptr105 to %A* 
  %new_obj107 = call %A* @_A_ctor ( %A* %obj106, %A* %cast_op104 )
  %_name108 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call109 = load %B* %_this1
  %cast_op110 = bitcast %B %lhs_or_call109 to i8* 
  store i8* %cast_op110, i8** %_name108
  %this_vtable111 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable111
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh21:
  %i102 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i102
  ret void
}


define void @_A_g (%A* %_this1){
__fresh20:
  %x96 = getelementptr %_A_vtable* @_A_vtable8, i32 0, i32 2
  %x95 = load void (%A*)** %x96
  %cast_op97 = bitcast %A %_this1 to %A* 
  call void %x95( %A* %cast_op97 )
  %i98 = getelementptr %A* %_this1, i32 0, i32 2
  %i99 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call100 = load i32* %i99
  %bop101 = add i32 %lhs_or_call100, 1
  store i32 %bop101, i32* %i98
  ret void
}


define void @_A_x (%A* %_this1){
__fresh19:
  %i91 = getelementptr %A* %_this1, i32 0, i32 2
  %i92 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call93 = load i32* %i92
  %bop94 = add i32 %lhs_or_call93, 1
  store i32 %bop94, i32* %i91
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh18:
  %lhs_or_call82 = load %A* %_this1
  %cast_op83 = bitcast %A %lhs_or_call82 to %Object* 
  %mem_ptr84 = call i32* @oat_malloc ( i32 8 )
  %obj85 = bitcast i32* %mem_ptr84 to %Object* 
  %new_obj86 = call %Object* @_Object_ctor ( %Object* %obj85, %Object* %cast_op83 )
  %_name87 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call88 = load %A* %_this1
  %cast_op89 = bitcast %A %lhs_or_call88 to i8* 
  store i8* %cast_op89, i8** %_name87
  %this_vtable90 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable90
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh17:
  %_name80 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call81 = load i8** %_name80
  ret i8* %lhs_or_call81
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh16:
  %_name76 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call77 = load %Object* %_this1
  %cast_op78 = bitcast %Object %lhs_or_call77 to i8* 
  store i8* %cast_op78, i8** %_name76
  %this_vtable79 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable79
  ret %Object* %_this1
}


