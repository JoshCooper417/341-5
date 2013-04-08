%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str40.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str40 = alias bitcast([ 4 x i8 ]* @_const_str40.str. to i8*)@_const_str39.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str39 = alias bitcast([ 2 x i8 ]* @_const_str39.str. to i8*)@_const_str38.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str38 = alias bitcast([ 7 x i8 ]* @_const_str38.str. to i8*)@_A_vtable37 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable36, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable36 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh59:
  ret void
}


define i32 @program (i32 %argc220, { i32, [ 0 x i8* ] }* %argv218){
__fresh58:
  %argc_slot221 = alloca i32
  store i32 %argc220, i32* %argc_slot221
  %argv_slot219 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv218, { i32, [ 0 x i8* ] }** %argv_slot219
  %mem_ptr222 = call i32* @oat_malloc ( i32 12 )
  %obj223 = bitcast i32* %mem_ptr222 to %A* 
  %new_obj224 = call %A* @_A_ctor ( %A* %obj223 )
  %vdecl_slot225 = alloca %A*
  store %A* %new_obj224, %A** %vdecl_slot225
  %lhs_or_call226 = load %A** %vdecl_slot225
  %str227 = getelementptr %A* %lhs_or_call226, i32 0, i32 2
  %lhs_or_call228 = load i8** %str227
  call void @print_string( i8* %lhs_or_call228 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh57:
  %mem_ptr212 = call i32* @oat_malloc ( i32 8 )
  %obj213 = bitcast i32* %mem_ptr212 to %Object* 
  %new_obj214 = call %Object* @_Object_ctor ( %Object* %obj213 )
  %_this1 = bitcast %Object* %new_obj214 to %A 
  %_name215 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str39, i8** %_name215
  %str216 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str40, i8** %str216
  %this_vtable217 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable37, %_A_vtable** %this_vtable217
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh56:
  %_name210 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call211 = load i8** %_name210
  ret i8* %lhs_or_call211
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh55:
  %_name208 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str38, i8** %_name208
  %this_vtable209 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable36, %_Object_vtable** %this_vtable209
  ret %Object* %_this1
}


