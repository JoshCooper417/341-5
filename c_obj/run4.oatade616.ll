%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str31.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str31 = alias bitcast([ 2 x i8 ]* @_const_str31.str. to i8*)@_const_str30.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str30 = alias bitcast([ 7 x i8 ]* @_const_str30.str. to i8*)@_A_vtable29 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable28, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable28 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh44:
  ret void
}


define i32 @program (i32 %argc184, { i32, [ 0 x i8* ] }* %argv182){
__fresh43:
  %argc_slot185 = alloca i32
  store i32 %argc184, i32* %argc_slot185
  %argv_slot183 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv182, { i32, [ 0 x i8* ] }** %argv_slot183
  %mem_ptr186 = call i32* @oat_malloc ( i32 12 )
  %obj187 = bitcast i32* %mem_ptr186 to %A* 
  %new_obj188 = call %A* @_A_ctor ( %A* %obj187 )
  %vdecl_slot189 = alloca %A*
  store %A* %new_obj188, %A** %vdecl_slot189
  %lhs_or_call190 = load %A** %vdecl_slot189
  %i191 = getelementptr %A* %lhs_or_call190, i32 0, i32 0, i32 2
  %lhs_or_call192 = load i32* %i191
  ret i32 %lhs_or_call192
}


define %A* @_A_ctor (%A* %_this1){
__fresh42:
  %mem_ptr177 = call i32* @oat_malloc ( i32 8 )
  %obj178 = bitcast i32* %mem_ptr177 to %Object* 
  %new_obj179 = call %Object* @_Object_ctor ( %Object* %obj178 )
  %_this1 = bitcast %Object* %new_obj179 to %A 
  %_name180 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str31, i8** %_name180
  %this_vtable181 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable29, %_A_vtable** %this_vtable181
  %i176 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  store i32 10, i32* %i176
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh41:
  %_name174 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call175 = load i8** %_name174
  ret i8* %lhs_or_call175
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh40:
  %_name172 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str30, i8** %_name172
  %this_vtable173 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable28, %_Object_vtable** %this_vtable173
  ret %Object* %_this1
}


