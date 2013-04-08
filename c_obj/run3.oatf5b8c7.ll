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
__fresh44:
  ret void
}


define i32 @program (i32 %argc135, { i32, [ 0 x i8* ] }* %argv133){
__fresh43:
  %argc_slot136 = alloca i32
  store i32 %argc135, i32* %argc_slot136
  %argv_slot134 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv133, { i32, [ 0 x i8* ] }** %argv_slot134
  %mem_ptr137 = call i32* @oat_malloc ( i32 16 )
  %obj138 = bitcast i32* %mem_ptr137 to %B* 
  %new_obj139 = call %B* @_B_ctor ( %B* %obj138 )
  %vdecl_slot140 = alloca %B*
  store %B* %new_obj139, %B** %vdecl_slot140
  %vdecl_slot141 = alloca i32
  store i32 0, i32* %vdecl_slot141
  %lhs_or_call142 = load %B** %vdecl_slot140
  %vtable_ptr143 = getelementptr %B* %lhs_or_call142, i32 0
  %vtable144 = load %_B_vtable** %vtable_ptr143
  %h146 = getelementptr %_B_vtable* %vtable144, i32 0, i32 5
  %h145 = load i32 (%B*, i32)** %h146
  %cast_op147 = bitcast %B %lhs_or_call142 to %B* 
  %ret148 = call i32 %h145 ( %B* %cast_op147, i32 3 )
  store i32 %ret148, i32* %vdecl_slot141
  %lhs_or_call149 = load i32* %vdecl_slot141
  ret i32 %lhs_or_call149
}


define i32 @_B_h (%B* %_this1, i32 %i114){
__fresh42:
  %i_slot115 = alloca i32
  store i32 %i114, i32* %i_slot115
  %vtable_ptr116 = getelementptr %B* %_this1, i32 0
  %vtable117 = load %_B_vtable** %vtable_ptr116
  %f119 = getelementptr %_B_vtable* %vtable117, i32 0, i32 4
  %f118 = load void (%B*)** %f119
  %cast_op120 = bitcast %B %_this1 to %B* 
  call void %f118( %B* %cast_op120 )
  %vtable_ptr121 = getelementptr %B* %_this1, i32 0
  %vtable122 = load %_B_vtable** %vtable_ptr121
  %g124 = getelementptr %_B_vtable* %vtable122, i32 0, i32 3
  %g123 = load void (%A*)** %g124
  %cast_op125 = bitcast %B %_this1 to %A* 
  call void %g123( %A* %cast_op125 )
  %i126 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call127 = load i32* %i126
  %j128 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call129 = load i32* %j128
  %bop130 = add i32 %lhs_or_call127, %lhs_or_call129
  %lhs_or_call131 = load i32* %i_slot115
  %bop132 = add i32 %bop130, %lhs_or_call131
  ret i32 %bop132
}


define void @_B_f (%B* %_this1){
__fresh41:
  %j110 = getelementptr %B* %_this1, i32 0, i32 3
  %j111 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call112 = load i32* %j111
  %bop113 = add i32 %lhs_or_call112, 1
  store i32 %bop113, i32* %j110
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh40:
  %mem_ptr105 = call i32* @oat_malloc ( i32 12 )
  %obj106 = bitcast i32* %mem_ptr105 to %A* 
  %new_obj107 = call %A* @_A_ctor ( %A* %obj106 )
  %_this1 = bitcast %A* %new_obj107 to %B 
  %_name108 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str18, i8** %_name108
  %this_vtable109 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable15, %_B_vtable** %this_vtable109
  %j104 = getelementptr %B* %_this1, i32 0, i32 3
  store i32 2, i32* %j104
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh39:
  %i103 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i103
  ret void
}


define void @_A_g (%A* %_this1){
__fresh38:
  %vtable_ptr94 = getelementptr %A* %_this1, i32 0
  %vtable95 = load %_A_vtable** %vtable_ptr94
  %x97 = getelementptr %_A_vtable* %vtable95, i32 0, i32 2
  %x96 = load void (%A*)** %x97
  %cast_op98 = bitcast %A %_this1 to %A* 
  call void %x96( %A* %cast_op98 )
  %i99 = getelementptr %A* %_this1, i32 0, i32 2
  %i100 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call101 = load i32* %i100
  %bop102 = add i32 %lhs_or_call101, 1
  store i32 %bop102, i32* %i99
  ret void
}


define void @_A_x (%A* %_this1){
__fresh37:
  %i90 = getelementptr %A* %_this1, i32 0, i32 2
  %i91 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call92 = load i32* %i91
  %bop93 = add i32 %lhs_or_call92, 1
  store i32 %bop93, i32* %i90
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh36:
  %mem_ptr85 = call i32* @oat_malloc ( i32 8 )
  %obj86 = bitcast i32* %mem_ptr85 to %Object* 
  %new_obj87 = call %Object* @_Object_ctor ( %Object* %obj86 )
  %_this1 = bitcast %Object* %new_obj87 to %A 
  %_name88 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str17, i8** %_name88
  %this_vtable89 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable14, %_A_vtable** %this_vtable89
  %i84 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i84
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh35:
  %_name82 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call83 = load i8** %_name82
  ret i8* %lhs_or_call83
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh34:
  %_name80 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str16, i8** %_name80
  %this_vtable81 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable13, %_Object_vtable** %this_vtable81
  ret %Object* %_this1
}


