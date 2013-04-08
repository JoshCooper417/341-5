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
@_const_str12.str. = private unnamed_addr constant [ 2 x i8 ] c "g\00", align 4
@_const_str12 = alias bitcast([ 2 x i8 ]* @_const_str12.str. to i8*)@_A_vtable11 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable10, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f, void (%A*)* @_A_g}, align 4
@_Object_vtable10 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh33:
  ret void
}


define i32 @program (i32 %argc164, { i32, [ 0 x i8* ] }* %argv162){
__fresh32:
  %argc_slot165 = alloca i32
  store i32 %argc164, i32* %argc_slot165
  %argv_slot163 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv162, { i32, [ 0 x i8* ] }** %argv_slot163
  %mem_ptr166 = call i32* @oat_malloc ( i32 8 )
  %obj167 = bitcast i32* %mem_ptr166 to %A* 
  %new_obj168 = call %A* @_A_ctor ( %A* %obj167 )
  %vdecl_slot169 = alloca %A*
  store %A* %new_obj168, %A** %vdecl_slot169
  %lhs_or_call170 = load %A** %vdecl_slot169
  %g172 = getelementptr %_A_vtable* @_A_vtable11, i32 0, i32 3
  %g171 = load void (%A*)** %g172
  %cast_op173 = bitcast %A %lhs_or_call170 to %A* 
  call void %g171( %A* %cast_op173 )
  ret i32 0
}


define void @_A_g (%A* %_this1){
__fresh31:
  call void @print_string( i8* @_const_str12 )
  ret void
}


define void @_A_f (%A* %_this1){
__fresh30:
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh29:
  %lhs_or_call153 = load %A* %_this1
  %cast_op154 = bitcast %A %lhs_or_call153 to %Object* 
  %mem_ptr155 = call i32* @oat_malloc ( i32 8 )
  %obj156 = bitcast i32* %mem_ptr155 to %Object* 
  %new_obj157 = call %Object* @_Object_ctor ( %Object* %obj156, %Object* %cast_op154 )
  %_name158 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call159 = load %A* %_this1
  %cast_op160 = bitcast %A %lhs_or_call159 to i8* 
  store i8* %cast_op160, i8** %_name158
  %this_vtable161 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable161
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh28:
  %_name151 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call152 = load i8** %_name151
  ret i8* %lhs_or_call152
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh27:
  %_name147 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call148 = load %Object* %_this1
  %cast_op149 = bitcast %Object %lhs_or_call148 to i8* 
  store i8* %cast_op149, i8** %_name147
  %this_vtable150 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable150
  ret %Object* %_this1
}


