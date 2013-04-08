%A = type { %_A_vtable*, i8*, i1 }
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
@_const_str35.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str35 = alias bitcast([ 2 x i8 ]* @_const_str35.str. to i8*)@_const_str34.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str34 = alias bitcast([ 7 x i8 ]* @_const_str34.str. to i8*)@_A_vtable33 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable32, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable32 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh54:
  ret void
}


define i32 @program (i32 %argc206, { i32, [ 0 x i8* ] }* %argv204){
__fresh51:
  %argc_slot207 = alloca i32
  store i32 %argc206, i32* %argc_slot207
  %argv_slot205 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv204, { i32, [ 0 x i8* ] }** %argv_slot205
  %mem_ptr208 = call i32* @oat_malloc ( i32 12 )
  %obj209 = bitcast i32* %mem_ptr208 to %A* 
  %new_obj210 = call %A* @_A_ctor ( %A* %obj209 )
  %vdecl_slot211 = alloca %A*
  store %A* %new_obj210, %A** %vdecl_slot211
  %vdecl_slot212 = alloca i32
  store i32 0, i32* %vdecl_slot212
  %lhs_or_call213 = load %A** %vdecl_slot211
  %b214 = getelementptr %A* %lhs_or_call213, i32 0, i32 2
  %lhs_or_call215 = load i1* %b214
  br i1 %lhs_or_call215, label %__then50, label %__else49

__fresh52:
  br label %__then50

__then50:
  store i32 1, i32* %vdecl_slot212
  br label %__merge48

__fresh53:
  br label %__else49

__else49:
  store i32 0, i32* %vdecl_slot212
  br label %__merge48

__merge48:
  %lhs_or_call216 = load i32* %vdecl_slot212
  ret i32 %lhs_or_call216
}


define %A* @_A_ctor (%A* %_this1){
__fresh47:
  %mem_ptr199 = call i32* @oat_malloc ( i32 8 )
  %obj200 = bitcast i32* %mem_ptr199 to %Object* 
  %new_obj201 = call %Object* @_Object_ctor ( %Object* %obj200 )
  %_this1 = bitcast %Object* %new_obj201 to %A 
  %_name202 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str35, i8** %_name202
  %this_vtable203 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable33, %_A_vtable** %this_vtable203
  %b198 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b198
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh46:
  %_name196 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call197 = load i8** %_name196
  ret i8* %lhs_or_call197
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh45:
  %_name194 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str34, i8** %_name194
  %this_vtable195 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable32, %_Object_vtable** %this_vtable195
  ret %Object* %_this1
}


