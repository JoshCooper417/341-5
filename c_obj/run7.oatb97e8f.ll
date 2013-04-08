%A = type { %_A_vtable*, i8*, { i32, [ 0 x i32 ] }* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str43.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str43 = alias bitcast([ 2 x i8 ]* @_const_str43.str. to i8*)@_const_str42.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str42 = alias bitcast([ 7 x i8 ]* @_const_str42.str. to i8*)@_A_vtable41 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable40, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable40 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh59:
  ret void
}


define i32 @program (i32 %argc196, { i32, [ 0 x i8* ] }* %argv194){
__fresh58:
  %argc_slot197 = alloca i32
  store i32 %argc196, i32* %argc_slot197
  %argv_slot195 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv194, { i32, [ 0 x i8* ] }** %argv_slot195
  %mem_ptr198 = call i32* @oat_malloc ( i32 12 )
  %obj199 = bitcast i32* %mem_ptr198 to %A* 
  %new_obj200 = call %A* @_A_ctor ( %A* %obj199 )
  %vdecl_slot201 = alloca %A*
  store %A* %new_obj200, %A** %vdecl_slot201
  %lhs_or_call202 = load %A** %vdecl_slot201
  %arr203 = getelementptr %A* %lhs_or_call202, i32 0, i32 2
  %lhs_or_call204 = load { i32, [ 0 x i32 ] }** %arr203
  %ret205 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call204 )
  call void @print_string( i8* %ret205 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh55:
  %mem_ptr173 = call i32* @oat_malloc ( i32 8 )
  %obj174 = bitcast i32* %mem_ptr173 to %Object* 
  %new_obj175 = call %Object* @_Object_ctor ( %Object* %obj174 )
  %_this1 = bitcast %Object* %new_obj175 to %A 
  %_name176 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str43, i8** %_name176
  %arr177 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr178 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array179 = bitcast { i32, [ 0 x i32 ] }* %array_ptr178 to { i32, [ 0 x i32 ] }* 
  %_tmp40180 = alloca i32
  store i32 10, i32* %_tmp40180
  %_tmp41181 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array179, { i32, [ 0 x i32 ] }** %_tmp41181
  %vdecl_slot182 = alloca i32
  store i32 0, i32* %vdecl_slot182
  br label %__cond54

__cond54:
  %lhs_or_call183 = load i32* %vdecl_slot182
  %lhs_or_call184 = load i32* %_tmp40180
  %bop185 = icmp slt i32 %lhs_or_call183, %lhs_or_call184
  br i1 %bop185, label %__body53, label %__post52

__fresh56:
  br label %__body53

__body53:
  %lhs_or_call186 = load { i32, [ 0 x i32 ] }** %_tmp41181
  %lhs_or_call187 = load i32* %vdecl_slot182
  %bound_ptr189 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call186, i32 0, i32 0
  %bound190 = load i32* %bound_ptr189
  call void @oat_array_bounds_check( i32 %bound190, i32 %lhs_or_call187 )
  %elt188 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call186, i32 0, i32 1, i32 %lhs_or_call187
  store i32 110, i32* %elt188
  %lhs_or_call191 = load i32* %vdecl_slot182
  %bop192 = add i32 %lhs_or_call191, 1
  store i32 %bop192, i32* %vdecl_slot182
  br label %__cond54

__fresh57:
  br label %__post52

__post52:
  store { i32, [ 0 x i32 ] }* %array179, { i32, [ 0 x i32 ] }** %arr177
  %this_vtable193 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable41, %_A_vtable** %this_vtable193
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh51:
  %_name171 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call172 = load i8** %_name171
  ret i8* %lhs_or_call172
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh50:
  %_name169 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str42, i8** %_name169
  %this_vtable170 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable40, %_Object_vtable** %this_vtable170
  ret %Object* %_this1
}


