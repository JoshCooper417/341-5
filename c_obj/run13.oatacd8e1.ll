%B = type { %_B_vtable*, i8*, i1 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i1 }
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
@_const_str94.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str94 = alias bitcast([ 2 x i8 ]* @_const_str94.str. to i8*)@_const_str93.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str93 = alias bitcast([ 2 x i8 ]* @_const_str93.str. to i8*)@_const_str92.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str92 = alias bitcast([ 7 x i8 ]* @_const_str92.str. to i8*)@_B_vtable91 = private constant %_B_vtable {%_A_vtable* @_A_vtable90, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable90 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable89, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable89 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh136:
  ret void
}


define i32 @program (i32 %argc518, { i32, [ 0 x i8* ] }* %argv516){
__fresh133:
  %argc_slot519 = alloca i32
  store i32 %argc518, i32* %argc_slot519
  %argv_slot517 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv516, { i32, [ 0 x i8* ] }** %argv_slot517
  %mem_ptr520 = call i32* @oat_malloc ( i32 12 )
  %obj521 = bitcast i32* %mem_ptr520 to %B* 
  %new_obj522 = call %B* @_B_ctor ( %B* %obj521 )
  %vdecl_slot523 = alloca %B*
  store %B* %new_obj522, %B** %vdecl_slot523
  %vdecl_slot524 = alloca i1
  store i1 0, i1* %vdecl_slot524
  %vdecl_slot525 = alloca i32
  store i32 0, i32* %vdecl_slot525
  %lhs_or_call526 = load %B** %vdecl_slot523
  %b527 = getelementptr %B* %lhs_or_call526, i32 0, i32 2
  %lhs_or_call528 = load i1* %b527
  br i1 %lhs_or_call528, label %__then132, label %__else131

__fresh134:
  br label %__then132

__then132:
  store i32 1, i32* %vdecl_slot525
  br label %__merge130

__fresh135:
  br label %__else131

__else131:
  store i32 0, i32* %vdecl_slot525
  br label %__merge130

__merge130:
  %lhs_or_call529 = load i32* %vdecl_slot525
  ret i32 %lhs_or_call529
}


define %B* @_B_ctor (%B* %_this1){
__fresh129:
  %cast_op510 = bitcast %B* %_this1 to %A* 
  %mem_ptr511 = call i32* @oat_malloc ( i32 12 )
  %obj512 = bitcast i32* %mem_ptr511 to %B* 
  %new_obj513 = call %A* @_A_ctor ( %B* %obj512, %A* %cast_op510 )
  %_this1 = bitcast %A* %new_obj513 to %B 
  %_name514 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str94, i8** %_name514
  %this_vtable515 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable91, %_B_vtable** %this_vtable515
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh128:
  %cast_op504 = bitcast %A* %_this1 to %Object* 
  %mem_ptr505 = call i32* @oat_malloc ( i32 12 )
  %obj506 = bitcast i32* %mem_ptr505 to %A* 
  %new_obj507 = call %Object* @_Object_ctor ( %A* %obj506, %Object* %cast_op504 )
  %_this1 = bitcast %Object* %new_obj507 to %A 
  %_name508 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str93, i8** %_name508
  %this_vtable509 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable90, %_A_vtable** %this_vtable509
  %b503 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b503
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh127:
  %_name501 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call502 = load i8** %_name501
  ret i8* %lhs_or_call502
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh126:
  %_name499 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str92, i8** %_name499
  %this_vtable500 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable89, %_Object_vtable** %this_vtable500
  ret %Object* %_this1
}


