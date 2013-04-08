%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str68.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str68 = alias bitcast([ 2 x i8 ]* @_const_str68.str. to i8*)@_const_str67.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str67 = alias bitcast([ 7 x i8 ]* @_const_str67.str. to i8*)@_A_vtable66 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable65, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f}, align 4
@_Object_vtable65 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh116:
  ret void
}


define i32 @program (i32 %argc422, { i32, [ 0 x i8* ] }* %argv420){
__fresh115:
  %argc_slot423 = alloca i32
  store i32 %argc422, i32* %argc_slot423
  %argv_slot421 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv420, { i32, [ 0 x i8* ] }** %argv_slot421
  %mem_ptr424 = call i32* @oat_malloc ( i32 12 )
  %obj425 = bitcast i32* %mem_ptr424 to %A* 
  %new_obj426 = call %A* @_A_ctor ( %A* %obj425 )
  %vdecl_slot427 = alloca %A*
  store %A* %new_obj426, %A** %vdecl_slot427
  %lhs_or_call428 = load %A** %vdecl_slot427
  %vtable_ptr429 = getelementptr %A* %lhs_or_call428, i32 0
  %vtable430 = load %_A_vtable** %vtable_ptr429
  %f432 = getelementptr %_A_vtable* %vtable430, i32 0, i32 2
  %f431 = load i32 (%A*)** %f432
  %cast_op433 = bitcast %A %lhs_or_call428 to %A* 
  %ret434 = call i32 %f431 ( %A* %cast_op433 )
  ret i32 %ret434
}


define i32 @_A_f (%A* %_this1){
__fresh114:
  %i417 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call418 = load i32* %i417
  %bop419 = add i32 %lhs_or_call418, 1
  ret i32 %bop419
}


define %A* @_A_ctor (%A* %_this1){
__fresh113:
  %mem_ptr412 = call i32* @oat_malloc ( i32 8 )
  %obj413 = bitcast i32* %mem_ptr412 to %Object* 
  %new_obj414 = call %Object* @_Object_ctor ( %Object* %obj413 )
  %_this1 = bitcast %Object* %new_obj414 to %A 
  %_name415 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str68, i8** %_name415
  %this_vtable416 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable66, %_A_vtable** %this_vtable416
  %i411 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i411
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh112:
  %_name409 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call410 = load i8** %_name409
  ret i8* %lhs_or_call410
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh111:
  %_name407 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str67, i8** %_name407
  %this_vtable408 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable65, %_Object_vtable** %this_vtable408
  ret %Object* %_this1
}


