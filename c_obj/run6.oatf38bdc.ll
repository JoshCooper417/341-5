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


define i32 @program (i32 %argc229, { i32, [ 0 x i8* ] }* %argv227){
__fresh58:
  %argc_slot230 = alloca i32
  store i32 %argc229, i32* %argc_slot230
  %argv_slot228 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv227, { i32, [ 0 x i8* ] }** %argv_slot228
  %mem_ptr231 = call i32* @oat_malloc ( i32 12 )
  %obj232 = bitcast i32* %mem_ptr231 to %A* 
  %new_obj233 = call %A* @_A_ctor ( %A* %obj232 )
  %vdecl_slot234 = alloca %A*
  store %A* %new_obj233, %A** %vdecl_slot234
  %lhs_or_call235 = load %A** %vdecl_slot234
  %str236 = getelementptr %A* %lhs_or_call235, i32 0, i32 2
  %lhs_or_call237 = load i8** %str236
  call void @print_string( i8* %lhs_or_call237 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh57:
  %mem_ptr221 = call i32* @oat_malloc ( i32 8 )
  %obj222 = bitcast i32* %mem_ptr221 to %Object* 
  %new_obj223 = call %Object* @_Object_ctor ( %Object* %obj222 )
  %_this1 = bitcast %Object* %new_obj223 to %A 
  %_name224 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str39, i8** %_name224
  %str225 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str40, i8** %str225
  %this_vtable226 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable37, %_A_vtable** %this_vtable226
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh56:
  %_name219 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call220 = load i8** %_name219
  ret i8* %lhs_or_call220
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh55:
  %_name217 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str38, i8** %_name217
  %this_vtable218 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable36, %_Object_vtable** %this_vtable218
  ret %Object* %_this1
}


