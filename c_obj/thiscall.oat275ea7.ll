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


define i32 @program (i32 %argc336, { i32, [ 0 x i8* ] }* %argv334){
__fresh81:
  %argc_slot337 = alloca i32
  store i32 %argc336, i32* %argc_slot337
  %argv_slot335 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv334, { i32, [ 0 x i8* ] }** %argv_slot335
  %mem_ptr338 = call i32* @oat_malloc ( i32 12 )
  %obj339 = bitcast i32* %mem_ptr338 to %A* 
  %new_obj340 = call %A* @_A_ctor ( %A* %obj339, i32 1 )
  %vdecl_slot341 = alloca %A*
  store %A* %new_obj340, %A** %vdecl_slot341
  %lhs_or_call342 = load %A** %vdecl_slot341
  %addToMine344 = getelementptr %_A_vtable* @_A_vtable64, i32 0, i32 2
  %addToMine343 = load i32 (%A*, i32)** %addToMine344
  %cast_op345 = bitcast %A %lhs_or_call342 to %A* 
  %ret346 = call i32 %addToMine343 ( %A* %cast_op345, i32 2 )
  ret i32 %ret346
}


define i32 @_A_addToMine (%A* %_this1, i32 %n328){
__fresh80:
  %n_slot329 = alloca i32
  store i32 %n328, i32* %n_slot329
  %mine330 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call331 = load i32* %mine330
  %lhs_or_call332 = load i32* %n_slot329
  %bop333 = add i32 %lhs_or_call331, %lhs_or_call332
  ret i32 %bop333
}


define %A* @_A_ctor (%A* %_this1, i32 %v318){
__fresh79:
  %v_slot319 = alloca i32
  store i32 %v318, i32* %v_slot319
  %cast_op322 = bitcast %A* %_this1 to %Object* 
  %mem_ptr323 = call i32* @oat_malloc ( i32 12 )
  %obj324 = bitcast i32* %mem_ptr323 to %A* 
  %new_obj325 = call %Object* @_Object_ctor ( %A* %obj324, %Object* %cast_op322 )
  %_this1 = bitcast %Object* %new_obj325 to %A 
  %_name326 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str66, i8** %_name326
  %this_vtable327 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable64, %_A_vtable** %this_vtable327
  %mine320 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call321 = load i32* %v_slot319
  store i32 %lhs_or_call321, i32* %mine320
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh78:
  %_name316 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call317 = load i8** %_name316
  ret i8* %lhs_or_call317
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh77:
  %_name314 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str65, i8** %_name314
  %this_vtable315 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable63, %_Object_vtable** %this_vtable315
  ret %Object* %_this1
}


