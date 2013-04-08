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


define i32 @program (i32 %argc323, { i32, [ 0 x i8* ] }* %argv321){
__fresh81:
  %argc_slot324 = alloca i32
  store i32 %argc323, i32* %argc_slot324
  %argv_slot322 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv321, { i32, [ 0 x i8* ] }** %argv_slot322
  %mem_ptr325 = call i32* @oat_malloc ( i32 12 )
  %obj326 = bitcast i32* %mem_ptr325 to %A* 
  %new_obj327 = call %A* @_A_ctor ( %A* %obj326, i32 1 )
  %vdecl_slot328 = alloca %A*
  store %A* %new_obj327, %A** %vdecl_slot328
  %lhs_or_call329 = load %A** %vdecl_slot328
  %addToMine331 = getelementptr %_A_vtable* @_A_vtable64, i32 0, i32 2
  %addToMine330 = load i32 (%A*, i32)** %addToMine331
  %cast_op332 = bitcast %A %lhs_or_call329 to %A* 
  %ret333 = call i32 %addToMine330 ( %A* %cast_op332, i32 2 )
  ret i32 %ret333
}


define i32 @_A_addToMine (%A* %_this1, i32 %n315){
__fresh80:
  %n_slot316 = alloca i32
  store i32 %n315, i32* %n_slot316
  %mine317 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call318 = load i32* %mine317
  %lhs_or_call319 = load i32* %n_slot316
  %bop320 = add i32 %lhs_or_call318, %lhs_or_call319
  ret i32 %bop320
}


define %A* @_A_ctor (%A* %_this1, i32 %v306){
__fresh79:
  %v_slot307 = alloca i32
  store i32 %v306, i32* %v_slot307
  %mem_ptr310 = call i32* @oat_malloc ( i32 8 )
  %obj311 = bitcast i32* %mem_ptr310 to %Object* 
  %new_obj312 = call %Object* @_Object_ctor ( %Object* %obj311 )
  %_this1 = bitcast %Object* %new_obj312 to %A 
  %_name313 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str66, i8** %_name313
  %this_vtable314 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable64, %_A_vtable** %this_vtable314
  %mine308 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call309 = load i32* %v_slot307
  store i32 %lhs_or_call309, i32* %mine308
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh78:
  %_name304 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call305 = load i8** %_name304
  ret i8* %lhs_or_call305
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh77:
  %_name302 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str65, i8** %_name302
  %this_vtable303 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable63, %_Object_vtable** %this_vtable303
  ret %Object* %_this1
}


