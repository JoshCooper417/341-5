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
@_const_str42.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str42 = alias bitcast([ 2 x i8 ]* @_const_str42.str. to i8*)@_const_str41.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str41 = alias bitcast([ 7 x i8 ]* @_const_str41.str. to i8*)@_A_vtable40 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable39, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable39 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh44:
  ret void
}


define i32 @program (i32 %argc183, { i32, [ 0 x i8* ] }* %argv181){
__fresh43:
  %argc_slot184 = alloca i32
  store i32 %argc183, i32* %argc_slot184
  %argv_slot182 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv181, { i32, [ 0 x i8* ] }** %argv_slot182
  %mem_ptr185 = call i32* @oat_malloc ( i32 12 )
  %obj186 = bitcast i32* %mem_ptr185 to %A* 
  %new_obj187 = call %A* @_A_ctor ( %A* %obj186 )
  %vdecl_slot188 = alloca %A*
  store %A* %new_obj187, %A** %vdecl_slot188
  %lhs_or_call189 = load %A** %vdecl_slot188
  %i190 = getelementptr %A* %lhs_or_call189, i32 0, i32 2
  %lhs_or_call191 = load i32* %i190
  ret i32 %lhs_or_call191
}


define %A* @_A_ctor (%A* %_this1){
__fresh42:
  %mem_ptr176 = call i32* @oat_malloc ( i32 8 )
  %obj177 = bitcast i32* %mem_ptr176 to %Object* 
  %new_obj178 = call %Object* @_Object_ctor ( %Object* %obj177 )
  %_this1 = bitcast %Object* %new_obj178 to %A 
  %_name179 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str42, i8** %_name179
  %this_vtable180 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable40, %_A_vtable** %this_vtable180
  %i175 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i175
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh41:
  %_name173 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call174 = load i8** %_name173
  ret i8* %lhs_or_call174
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh40:
  %_name171 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str41, i8** %_name171
  %this_vtable172 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable39, %_Object_vtable** %this_vtable172
  ret %Object* %_this1
}


