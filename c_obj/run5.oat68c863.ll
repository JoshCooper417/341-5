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
@_A_vtable19 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable18, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable18 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh54:
  ret void
}


define i32 @program (i32 %argc238, { i32, [ 0 x i8* ] }* %argv236){
__fresh51:
  %argc_slot239 = alloca i32
  store i32 %argc238, i32* %argc_slot239
  %argv_slot237 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv236, { i32, [ 0 x i8* ] }** %argv_slot237
  %mem_ptr240 = call i32* @oat_malloc ( i32 12 )
  %obj241 = bitcast i32* %mem_ptr240 to %A* 
  %new_obj242 = call %A* @_A_ctor ( %A* %obj241 )
  %vdecl_slot243 = alloca %A*
  store %A* %new_obj242, %A** %vdecl_slot243
  %vdecl_slot244 = alloca i32
  store i32 0, i32* %vdecl_slot244
  %lhs_or_call245 = load %A** %vdecl_slot243
  %b246 = getelementptr %A* %lhs_or_call245, i32 0, i32 2
  %lhs_or_call247 = load i1* %b246
  br i1 %lhs_or_call247, label %__then50, label %__else49

__fresh52:
  br label %__then50

__then50:
  store i32 1, i32* %vdecl_slot244
  br label %__merge48

__fresh53:
  br label %__else49

__else49:
  store i32 0, i32* %vdecl_slot244
  br label %__merge48

__merge48:
  %lhs_or_call248 = load i32* %vdecl_slot244
  ret i32 %lhs_or_call248
}


define %A* @_A_ctor (%A* %_this1){
__fresh47:
  %lhs_or_call227 = load %A* %_this1
  %cast_op228 = bitcast %A %lhs_or_call227 to %Object* 
  %mem_ptr229 = call i32* @oat_malloc ( i32 8 )
  %obj230 = bitcast i32* %mem_ptr229 to %Object* 
  %new_obj231 = call %Object* @_Object_ctor ( %Object* %obj230, %Object* %cast_op228 )
  %_name232 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call233 = load %A* %_this1
  %cast_op234 = bitcast %A %lhs_or_call233 to i8* 
  store i8* %cast_op234, i8** %_name232
  %this_vtable235 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable235
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh46:
  %_name225 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call226 = load i8** %_name225
  ret i8* %lhs_or_call226
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh45:
  %_name221 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call222 = load %Object* %_this1
  %cast_op223 = bitcast %Object %lhs_or_call222 to i8* 
  store i8* %cast_op223, i8** %_name221
  %this_vtable224 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable224
  ret %Object* %_this1
}


