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


define i32 @program (i32 %argc326, { i32, [ 0 x i8* ] }* %argv324){
__fresh81:
  %argc_slot327 = alloca i32
  store i32 %argc326, i32* %argc_slot327
  %argv_slot325 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv324, { i32, [ 0 x i8* ] }** %argv_slot325
  %mem_ptr328 = call i32* @oat_malloc ( i32 12 )
  %obj329 = bitcast i32* %mem_ptr328 to %A* 
  %new_obj330 = call %A* @_A_ctor ( %A* %obj329, i32 1 )
  %vdecl_slot331 = alloca %A*
  store %A* %new_obj330, %A** %vdecl_slot331
  %lhs_or_call332 = load %A** %vdecl_slot331
  %vtable_ptr333 = getelementptr %A* %lhs_or_call332, i32 0
  %vtable334 = load %_A_vtable** %vtable_ptr333
  %addToMine336 = getelementptr %_A_vtable* %vtable334, i32 0, i32 2
  %addToMine335 = load i32 (%A*, i32)** %addToMine336
  %cast_op337 = bitcast %A %lhs_or_call332 to %A* 
  %ret338 = call i32 %addToMine335 ( %A* %cast_op337, i32 2 )
  ret i32 %ret338
}


define i32 @_A_addToMine (%A* %_this1, i32 %n318){
__fresh80:
  %n_slot319 = alloca i32
  store i32 %n318, i32* %n_slot319
  %mine320 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call321 = load i32* %mine320
  %lhs_or_call322 = load i32* %n_slot319
  %bop323 = add i32 %lhs_or_call321, %lhs_or_call322
  ret i32 %bop323
}


define %A* @_A_ctor (%A* %_this1, i32 %v309){
__fresh79:
  %v_slot310 = alloca i32
  store i32 %v309, i32* %v_slot310
  %mem_ptr313 = call i32* @oat_malloc ( i32 8 )
  %obj314 = bitcast i32* %mem_ptr313 to %Object* 
  %new_obj315 = call %Object* @_Object_ctor ( %Object* %obj314 )
  %_this1 = bitcast %Object* %new_obj315 to %A 
  %_name316 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str55, i8** %_name316
  %this_vtable317 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable53, %_A_vtable** %this_vtable317
  %mine311 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call312 = load i32* %v_slot310
  store i32 %lhs_or_call312, i32* %mine311
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh78:
  %_name307 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call308 = load i8** %_name307
  ret i8* %lhs_or_call308
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh77:
  %_name305 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str54, i8** %_name305
  %this_vtable306 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable52, %_Object_vtable** %this_vtable306
  ret %Object* %_this1
}


