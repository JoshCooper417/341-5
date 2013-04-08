%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@_const_str55.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str55 = alias bitcast([ 2 x i8 ]* @_const_str55.str. to i8*)@_const_str54.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str54 = alias bitcast([ 7 x i8 ]* @_const_str54.str. to i8*)@_A_vtable53 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable52, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_addToMine}, align 4
@_Object_vtable52 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh82:
  ret void
}


define i32 @program (i32 %argc325, { i32, [ 0 x i8* ] }* %argv323){
__fresh81:
  %argc_slot326 = alloca i32
  store i32 %argc325, i32* %argc_slot326
  %argv_slot324 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv323, { i32, [ 0 x i8* ] }** %argv_slot324
  %mem_ptr327 = call i32* @oat_malloc ( i32 12 )
  %obj328 = bitcast i32* %mem_ptr327 to %A* 
  %new_obj329 = call %A* @_A_ctor ( %A* %obj328, i32 1 )
  %vdecl_slot330 = alloca %A*
  store %A* %new_obj329, %A** %vdecl_slot330
  %lhs_or_call331 = load %A** %vdecl_slot330
  %vtable_ptr332 = getelementptr %A* %lhs_or_call331, i32 0
  %vtable333 = load %_A_vtable** %vtable_ptr332
  %addToMine335 = getelementptr %_A_vtable* %vtable333, i32 0, i32 2
  %addToMine334 = load i32 (%A*, i32)** %addToMine335
  %cast_op336 = bitcast %A %lhs_or_call331 to %A* 
  %ret337 = call i32 %addToMine334 ( %A* %cast_op336, i32 2 )
  ret i32 %ret337
}


define i32 @_A_addToMine (%A* %_this1, i32 %n317){
__fresh80:
  %n_slot318 = alloca i32
  store i32 %n317, i32* %n_slot318
  %mine319 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call320 = load i32* %mine319
  %lhs_or_call321 = load i32* %n_slot318
  %bop322 = add i32 %lhs_or_call320, %lhs_or_call321
  ret i32 %bop322
}


define %A* @_A_ctor (%A* %_this1, i32 %v308){
__fresh79:
  %v_slot309 = alloca i32
  store i32 %v308, i32* %v_slot309
  %mem_ptr312 = call i32* @oat_malloc ( i32 8 )
  %obj313 = bitcast i32* %mem_ptr312 to %Object* 
  %new_obj314 = call %Object* @_Object_ctor ( %Object* %obj313 )
  %_this1 = bitcast %Object* %new_obj314 to %A 
  %_name315 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str55, i8** %_name315
  %this_vtable316 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable53, %_A_vtable** %this_vtable316
  %mine310 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call311 = load i32* %v_slot309
  store i32 %lhs_or_call311, i32* %mine310
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh78:
  %_name306 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call307 = load i8** %_name306
  ret i8* %lhs_or_call307
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh77:
  %_name304 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str54, i8** %_name304
  %this_vtable305 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable52, %_Object_vtable** %this_vtable305
  ret %Object* %_this1
}


