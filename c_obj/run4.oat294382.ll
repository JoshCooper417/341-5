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
__fresh65:
  ret void
}


define i32 @program (i32 %argc204, { i32, [ 0 x i8* ] }* %argv202){
__fresh64:
  %argc_slot205 = alloca i32
  store i32 %argc204, i32* %argc_slot205
  %argv_slot203 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv202, { i32, [ 0 x i8* ] }** %argv_slot203
  %mem_ptr206 = call i32* @oat_malloc ( i32 12 )
  %obj207 = bitcast i32* %mem_ptr206 to %A* 
  %new_obj208 = call %A* @_A_ctor ( %A* %obj207 )
  %vdecl_slot209 = alloca %A*
  store %A* %new_obj208, %A** %vdecl_slot209
  %lhs_or_call210 = load %A** %vdecl_slot209
  %i211 = getelementptr %A* %lhs_or_call210, i32 0, i32 2
  %lhs_or_call212 = load i32* %i211
  ret i32 %lhs_or_call212
}


define %A* @_A_ctor (%A* %_this1){
__fresh63:
  %mem_ptr197 = call i32* @oat_malloc ( i32 8 )
  %obj198 = bitcast i32* %mem_ptr197 to %Object* 
  %new_obj199 = call %Object* @_Object_ctor ( %Object* %obj198 )
  %_this1 = bitcast %Object* %new_obj199 to %A 
  %_name200 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str31, i8** %_name200
  %this_vtable201 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable29, %_A_vtable** %this_vtable201
  %i196 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i196
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh62:
  %_name194 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call195 = load i8** %_name194
  ret i8* %lhs_or_call195
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh61:
  %_name192 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str30, i8** %_name192
  %this_vtable193 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable28, %_Object_vtable** %this_vtable193
  ret %Object* %_this1
}


