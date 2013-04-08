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
@_const_str51.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str51 = alias bitcast([ 4 x i8 ]* @_const_str51.str. to i8*)@_const_str50.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str50 = alias bitcast([ 2 x i8 ]* @_const_str50.str. to i8*)@_const_str49.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str49 = alias bitcast([ 7 x i8 ]* @_const_str49.str. to i8*)@_A_vtable48 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable47, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable47 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh59:
  ret void
}


define i32 @program (i32 %argc239, { i32, [ 0 x i8* ] }* %argv237){
__fresh58:
  %argc_slot240 = alloca i32
  store i32 %argc239, i32* %argc_slot240
  %argv_slot238 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv237, { i32, [ 0 x i8* ] }** %argv_slot238
  %mem_ptr241 = call i32* @oat_malloc ( i32 12 )
  %obj242 = bitcast i32* %mem_ptr241 to %A* 
  %new_obj243 = call %A* @_A_ctor ( %A* %obj242 )
  %vdecl_slot244 = alloca %A*
  store %A* %new_obj243, %A** %vdecl_slot244
  %lhs_or_call245 = load %A** %vdecl_slot244
  %str246 = getelementptr %A* %lhs_or_call245, i32 0, i32 2
  %lhs_or_call247 = load i8** %str246
  call void @print_string( i8* %lhs_or_call247 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh57:
  %mem_ptr231 = call i32* @oat_malloc ( i32 8 )
  %obj232 = bitcast i32* %mem_ptr231 to %Object* 
  %new_obj233 = call %Object* @_Object_ctor ( %Object* %obj232 )
  %_this1 = bitcast %Object* %new_obj233 to %A 
  %_name234 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str50, i8** %_name234
  %str235 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str51, i8** %str235
  %this_vtable236 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable48, %_A_vtable** %this_vtable236
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh56:
  %_name229 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call230 = load i8** %_name229
  ret i8* %lhs_or_call230
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh55:
  %_name227 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str49, i8** %_name227
  %this_vtable228 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable47, %_Object_vtable** %this_vtable228
  ret %Object* %_this1
}


