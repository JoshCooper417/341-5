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
@_const_str66.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str66 = alias bitcast([ 2 x i8 ]* @_const_str66.str. to i8*)@_const_str65.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str65 = alias bitcast([ 7 x i8 ]* @_const_str65.str. to i8*)@_A_vtable64 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable63, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_addToMine}, align 4
@_Object_vtable63 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh82:
  ret void
}


define i32 @program (i32 %argc337, { i32, [ 0 x i8* ] }* %argv335){
__fresh81:
  %argc_slot338 = alloca i32
  store i32 %argc337, i32* %argc_slot338
  %argv_slot336 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv335, { i32, [ 0 x i8* ] }** %argv_slot336
  %mem_ptr339 = call i32* @oat_malloc ( i32 12 )
  %obj340 = bitcast i32* %mem_ptr339 to %A* 
  %new_obj341 = call %A* @_A_ctor ( %A* %obj340, i32 1 )
  %vdecl_slot342 = alloca %A*
  store %A* %new_obj341, %A** %vdecl_slot342
  %lhs_or_call343 = load %A** %vdecl_slot342
  %vtable_ptr344 = getelementptr %A* %lhs_or_call343, i32 0
  %vtable345 = load %_A_vtable** %vtable_ptr344
  %addToMine347 = getelementptr %_A_vtable* %vtable345, i32 0, i32 2
  %addToMine346 = load i32 (%A*, i32)** %addToMine347
  %cast_op348 = bitcast %A %lhs_or_call343 to %A* 
  %ret349 = call i32 %addToMine346 ( %A* %cast_op348, i32 2 )
  ret i32 %ret349
}


define i32 @_A_addToMine (%A* %_this1, i32 %n329){
__fresh80:
  %n_slot330 = alloca i32
  store i32 %n329, i32* %n_slot330
  %mine331 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call332 = load i32* %mine331
  %lhs_or_call333 = load i32* %n_slot330
  %bop334 = add i32 %lhs_or_call332, %lhs_or_call333
  ret i32 %bop334
}


define %A* @_A_ctor (%A* %_this1, i32 %v320){
__fresh79:
  %v_slot321 = alloca i32
  store i32 %v320, i32* %v_slot321
  %mem_ptr324 = call i32* @oat_malloc ( i32 8 )
  %obj325 = bitcast i32* %mem_ptr324 to %Object* 
  %new_obj326 = call %Object* @_Object_ctor ( %Object* %obj325 )
  %_this1 = bitcast %Object* %new_obj326 to %A 
  %_name327 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str66, i8** %_name327
  %this_vtable328 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable64, %_A_vtable** %this_vtable328
  %mine322 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call323 = load i32* %v_slot321
  store i32 %lhs_or_call323, i32* %mine322
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh78:
  %_name318 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call319 = load i8** %_name318
  ret i8* %lhs_or_call319
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh77:
  %_name316 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str65, i8** %_name316
  %this_vtable317 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable63, %_Object_vtable** %this_vtable317
  ret %Object* %_this1
}


