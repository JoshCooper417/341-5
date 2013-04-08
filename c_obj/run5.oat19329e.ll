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


define i32 @program (i32 %argc216, { i32, [ 0 x i8* ] }* %argv214){
__fresh51:
  %argc_slot217 = alloca i32
  store i32 %argc216, i32* %argc_slot217
  %argv_slot215 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv214, { i32, [ 0 x i8* ] }** %argv_slot215
  %mem_ptr218 = call i32* @oat_malloc ( i32 12 )
  %obj219 = bitcast i32* %mem_ptr218 to %A* 
  %new_obj220 = call %A* @_A_ctor ( %A* %obj219 )
  %vdecl_slot221 = alloca %A*
  store %A* %new_obj220, %A** %vdecl_slot221
  %vdecl_slot222 = alloca i32
  store i32 0, i32* %vdecl_slot222
  %lhs_or_call223 = load %A** %vdecl_slot221
  %b224 = getelementptr %A* %lhs_or_call223, i32 0, i32 2
  %lhs_or_call225 = load i1* %b224
  br i1 %lhs_or_call225, label %__then50, label %__else49

__fresh52:
  br label %__then50

__then50:
  store i32 1, i32* %vdecl_slot222
  br label %__merge48

__fresh53:
  br label %__else49

__else49:
  store i32 0, i32* %vdecl_slot222
  br label %__merge48

__merge48:
  %lhs_or_call226 = load i32* %vdecl_slot222
  ret i32 %lhs_or_call226
}


define %A* @_A_ctor (%A* %_this1){
__fresh47:
  %mem_ptr209 = call i32* @oat_malloc ( i32 8 )
  %obj210 = bitcast i32* %mem_ptr209 to %Object* 
  %new_obj211 = call %Object* @_Object_ctor ( %Object* %obj210 )
  %_this1 = bitcast %Object* %new_obj211 to %A 
  %_name212 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str46, i8** %_name212
  %this_vtable213 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable44, %_A_vtable** %this_vtable213
  %b208 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b208
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh46:
  %_name206 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call207 = load i8** %_name206
  ret i8* %lhs_or_call207
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh45:
  %_name204 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str45, i8** %_name204
  %this_vtable205 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable43, %_Object_vtable** %this_vtable205
  ret %Object* %_this1
}


