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


define i32 @program (i32 %argc185, { i32, [ 0 x i8* ] }* %argv183){
__fresh43:
  %argc_slot186 = alloca i32
  store i32 %argc185, i32* %argc_slot186
  %argv_slot184 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv183, { i32, [ 0 x i8* ] }** %argv_slot184
  %mem_ptr187 = call i32* @oat_malloc ( i32 12 )
  %obj188 = bitcast i32* %mem_ptr187 to %A* 
  %new_obj189 = call %A* @_A_ctor ( %A* %obj188 )
  %vdecl_slot190 = alloca %A*
  store %A* %new_obj189, %A** %vdecl_slot190
  %lhs_or_call191 = load %A** %vdecl_slot190
  %i192 = getelementptr %A* %lhs_or_call191, i32 0, i32 2
  %lhs_or_call193 = load i32* %i192
  ret i32 %lhs_or_call193
}


define %A* @_A_ctor (%A* %_this1){
__fresh42:
  %mem_ptr178 = call i32* @oat_malloc ( i32 8 )
  %obj179 = bitcast i32* %mem_ptr178 to %Object* 
  %new_obj180 = call %Object* @_Object_ctor ( %Object* %obj179 )
  %_this1 = bitcast %Object* %new_obj180 to %A 
  %_name181 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str31, i8** %_name181
  %this_vtable182 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable29, %_A_vtable** %this_vtable182
  %i177 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i177
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh41:
  %_name175 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call176 = load i8** %_name175
  ret i8* %lhs_or_call176
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh40:
  %_name173 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str30, i8** %_name173
  %this_vtable174 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable28, %_Object_vtable** %this_vtable174
  ret %Object* %_this1
}


