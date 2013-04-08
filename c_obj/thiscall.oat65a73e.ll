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


define i32 @program (i32 %argc327, { i32, [ 0 x i8* ] }* %argv325){
__fresh81:
  %argc_slot328 = alloca i32
  store i32 %argc327, i32* %argc_slot328
  %argv_slot326 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv325, { i32, [ 0 x i8* ] }** %argv_slot326
  %mem_ptr329 = call i32* @oat_malloc ( i32 12 )
  %obj330 = bitcast i32* %mem_ptr329 to %A* 
  %new_obj331 = call %A* @_A_ctor ( %A* %obj330, i32 1 )
  %vdecl_slot332 = alloca %A*
  store %A* %new_obj331, %A** %vdecl_slot332
  %lhs_or_call333 = load %A** %vdecl_slot332
  %vtable_ptr334 = getelementptr %A* %lhs_or_call333, i32 0
  %vtable335 = load %_A_vtable** %vtable_ptr334
  %addToMine337 = getelementptr %_A_vtable* %vtable335, i32 0, i32 2
  %addToMine336 = load i32 (%A*, i32)** %addToMine337
  %cast_op338 = bitcast %A %lhs_or_call333 to %A* 
  %ret339 = call i32 %addToMine336 ( %A* %cast_op338, i32 2 )
  ret i32 %ret339
}


define i32 @_A_addToMine (%A* %_this1, i32 %n319){
__fresh80:
  %n_slot320 = alloca i32
  store i32 %n319, i32* %n_slot320
  %mine321 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call322 = load i32* %mine321
  %lhs_or_call323 = load i32* %n_slot320
  %bop324 = add i32 %lhs_or_call322, %lhs_or_call323
  ret i32 %bop324
}


define %A* @_A_ctor (%A* %_this1, i32 %v310){
__fresh79:
  %v_slot311 = alloca i32
  store i32 %v310, i32* %v_slot311
  %mem_ptr314 = call i32* @oat_malloc ( i32 8 )
  %obj315 = bitcast i32* %mem_ptr314 to %Object* 
  %new_obj316 = call %Object* @_Object_ctor ( %Object* %obj315 )
  %_this1 = bitcast %Object* %new_obj316 to %A 
  %_name317 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str55, i8** %_name317
  %this_vtable318 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable53, %_A_vtable** %this_vtable318
  %mine312 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call313 = load i32* %v_slot311
  store i32 %lhs_or_call313, i32* %mine312
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh78:
  %_name308 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call309 = load i8** %_name308
  ret i8* %lhs_or_call309
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh77:
  %_name306 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str54, i8** %_name306
  %this_vtable307 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable52, %_Object_vtable** %this_vtable307
  ret %Object* %_this1
}


