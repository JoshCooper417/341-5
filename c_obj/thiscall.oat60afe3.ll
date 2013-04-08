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
__fresh103:
  ret void
}


define i32 @program (i32 %argc346, { i32, [ 0 x i8* ] }* %argv344){
__fresh102:
  %argc_slot347 = alloca i32
  store i32 %argc346, i32* %argc_slot347
  %argv_slot345 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv344, { i32, [ 0 x i8* ] }** %argv_slot345
  %mem_ptr348 = call i32* @oat_malloc ( i32 12 )
  %obj349 = bitcast i32* %mem_ptr348 to %A* 
  %new_obj350 = call %A* @_A_ctor ( %A* %obj349, i32 1 )
  %vdecl_slot351 = alloca %A*
  store %A* %new_obj350, %A** %vdecl_slot351
  %lhs_or_call352 = load %A** %vdecl_slot351
  %vtable_ptr353 = getelementptr %A* %lhs_or_call352, i32 0
  %vtable354 = load %_A_vtable** %vtable_ptr353
  %addToMine356 = getelementptr %_A_vtable* %vtable354, i32 0, i32 2
  %addToMine355 = load i32 (%A*, i32)** %addToMine356
  %cast_op357 = bitcast %A %lhs_or_call352 to %A* 
  %ret358 = call i32 %addToMine355 ( %A* %cast_op357, i32 2 )
  ret i32 %ret358
}


define i32 @_A_addToMine (%A* %_this1, i32 %n338){
__fresh101:
  %n_slot339 = alloca i32
  store i32 %n338, i32* %n_slot339
  %mine340 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call341 = load i32* %mine340
  %lhs_or_call342 = load i32* %n_slot339
  %bop343 = add i32 %lhs_or_call341, %lhs_or_call342
  ret i32 %bop343
}


define %A* @_A_ctor (%A* %_this1, i32 %v329){
__fresh100:
  %v_slot330 = alloca i32
  store i32 %v329, i32* %v_slot330
  %mem_ptr333 = call i32* @oat_malloc ( i32 8 )
  %obj334 = bitcast i32* %mem_ptr333 to %Object* 
  %new_obj335 = call %Object* @_Object_ctor ( %Object* %obj334 )
  %_this1 = bitcast %Object* %new_obj335 to %A 
  %_name336 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str55, i8** %_name336
  %this_vtable337 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable53, %_A_vtable** %this_vtable337
  %mine331 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call332 = load i32* %v_slot330
  store i32 %lhs_or_call332, i32* %mine331
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh99:
  %_name327 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call328 = load i8** %_name327
  ret i8* %lhs_or_call328
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh98:
  %_name325 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str54, i8** %_name325
  %this_vtable326 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable52, %_Object_vtable** %this_vtable326
  ret %Object* %_this1
}


