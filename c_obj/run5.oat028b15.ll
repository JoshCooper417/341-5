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
@_const_str46.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str46 = alias bitcast([ 2 x i8 ]* @_const_str46.str. to i8*)@_const_str45.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str45 = alias bitcast([ 7 x i8 ]* @_const_str45.str. to i8*)@_A_vtable44 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable43, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable43 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh54:
  ret void
}


define i32 @program (i32 %argc213, { i32, [ 0 x i8* ] }* %argv211){
__fresh51:
  %argc_slot214 = alloca i32
  store i32 %argc213, i32* %argc_slot214
  %argv_slot212 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv211, { i32, [ 0 x i8* ] }** %argv_slot212
  %mem_ptr215 = call i32* @oat_malloc ( i32 12 )
  %obj216 = bitcast i32* %mem_ptr215 to %A* 
  %new_obj217 = call %A* @_A_ctor ( %A* %obj216 )
  %vdecl_slot218 = alloca %A*
  store %A* %new_obj217, %A** %vdecl_slot218
  %vdecl_slot219 = alloca i32
  store i32 0, i32* %vdecl_slot219
  %lhs_or_call220 = load %A** %vdecl_slot218
  %b221 = getelementptr %A* %lhs_or_call220, i32 0, i32 2
  %lhs_or_call222 = load i1* %b221
  br i1 %lhs_or_call222, label %__then50, label %__else49

__fresh52:
  br label %__then50

__then50:
  store i32 1, i32* %vdecl_slot219
  br label %__merge48

__fresh53:
  br label %__else49

__else49:
  store i32 0, i32* %vdecl_slot219
  br label %__merge48

__merge48:
  %lhs_or_call223 = load i32* %vdecl_slot219
  ret i32 %lhs_or_call223
}


define %A* @_A_ctor (%A* %_this1){
__fresh47:
  %cast_op205 = bitcast %A* %_this1 to %Object* 
  %mem_ptr206 = call i32* @oat_malloc ( i32 12 )
  %obj207 = bitcast i32* %mem_ptr206 to %A* 
  %new_obj208 = call %Object* @_Object_ctor ( %A* %obj207, %Object* %cast_op205 )
  %_this1 = bitcast %Object* %new_obj208 to %A 
  %_name209 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str46, i8** %_name209
  %this_vtable210 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable44, %_A_vtable** %this_vtable210
  %b204 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b204
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh46:
  %_name202 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call203 = load i8** %_name202
  ret i8* %lhs_or_call203
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh45:
  %_name200 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str45, i8** %_name200
  %this_vtable201 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable43, %_Object_vtable** %this_vtable201
  ret %Object* %_this1
}


