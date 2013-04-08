%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)* }
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
@_const_str23.str. = private unnamed_addr constant [ 2 x i8 ] c "g\00", align 4
@_const_str23 = alias bitcast([ 2 x i8 ]* @_const_str23.str. to i8*)@_const_str22.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str22 = alias bitcast([ 2 x i8 ]* @_const_str22.str. to i8*)@_const_str21.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str21 = alias bitcast([ 7 x i8 ]* @_const_str21.str. to i8*)@_A_vtable20 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable19, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f, void (%A*)* @_A_g}, align 4
@_Object_vtable19 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh33:
  ret void
}


define i32 @program (i32 %argc140, { i32, [ 0 x i8* ] }* %argv138){
__fresh32:
  %argc_slot141 = alloca i32
  store i32 %argc140, i32* %argc_slot141
  %argv_slot139 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv138, { i32, [ 0 x i8* ] }** %argv_slot139
  %mem_ptr142 = call i32* @oat_malloc ( i32 8 )
  %obj143 = bitcast i32* %mem_ptr142 to %A* 
  %new_obj144 = call %A* @_A_ctor ( %A* %obj143 )
  %vdecl_slot145 = alloca %A*
  store %A* %new_obj144, %A** %vdecl_slot145
  %lhs_or_call146 = load %A** %vdecl_slot145
  %vtable_ptr147 = getelementptr %A* %lhs_or_call146, i32 0
  %vtable148 = load %_A_vtable** %vtable_ptr147
  %g150 = getelementptr %_A_vtable* %vtable148, i32 0, i32 3
  %g149 = load void (%A*)** %g150
  %cast_op151 = bitcast %A %lhs_or_call146 to %A* 
  call void %g149( %A* %cast_op151 )
  ret i32 0
}


define void @_A_g (%A* %_this1){
__fresh31:
  call void @print_string( i8* @_const_str23 )
  ret void
}


define void @_A_f (%A* %_this1){
__fresh30:
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh29:
  %mem_ptr133 = call i32* @oat_malloc ( i32 8 )
  %obj134 = bitcast i32* %mem_ptr133 to %Object* 
  %new_obj135 = call %Object* @_Object_ctor ( %Object* %obj134 )
  %_this1 = bitcast %Object* %new_obj135 to %A 
  %_name136 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str22, i8** %_name136
  %this_vtable137 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable20, %_A_vtable** %this_vtable137
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh28:
  %_name131 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call132 = load i8** %_name131
  ret i8* %lhs_or_call132
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh27:
  %_name129 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str21, i8** %_name129
  %this_vtable130 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable19, %_Object_vtable** %this_vtable130
  ret %Object* %_this1
}


