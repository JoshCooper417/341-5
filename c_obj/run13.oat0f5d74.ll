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


define i32 @program (i32 %argc517, { i32, [ 0 x i8* ] }* %argv515){
__fresh133:
  %argc_slot518 = alloca i32
  store i32 %argc517, i32* %argc_slot518
  %argv_slot516 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv515, { i32, [ 0 x i8* ] }** %argv_slot516
  %mem_ptr519 = call i32* @oat_malloc ( i32 12 )
  %obj520 = bitcast i32* %mem_ptr519 to %B* 
  %new_obj521 = call %B* @_B_ctor ( %B* %obj520 )
  %vdecl_slot522 = alloca %B*
  store %B* %new_obj521, %B** %vdecl_slot522
  %vdecl_slot523 = alloca i1
  store i1 0, i1* %vdecl_slot523
  %vdecl_slot524 = alloca i32
  store i32 0, i32* %vdecl_slot524
  %lhs_or_call525 = load %B** %vdecl_slot522
  %b526 = getelementptr %B* %lhs_or_call525, i32 0, i32 2
  %lhs_or_call527 = load i1* %b526
  br i1 %lhs_or_call527, label %__then132, label %__else131

__fresh134:
  br label %__then132

__then132:
  store i32 1, i32* %vdecl_slot524
  br label %__merge130

__fresh135:
  br label %__else131

__else131:
  store i32 0, i32* %vdecl_slot524
  br label %__merge130

__merge130:
  %lhs_or_call528 = load i32* %vdecl_slot524
  ret i32 %lhs_or_call528
}


define %B* @_B_ctor (%B* %_this1){
__fresh129:
  %cast_op509 = bitcast %B* %_this1 to %A* 
  %mem_ptr510 = call i32* @oat_malloc ( i32 12 )
  %obj511 = bitcast i32* %mem_ptr510 to %B* 
  %new_obj512 = call %A* @_A_ctor ( %B* %obj511, %A* %cast_op509 )
  %_this1 = bitcast %A* %new_obj512 to %B 
  %_name513 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str94, i8** %_name513
  %this_vtable514 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable91, %_B_vtable** %this_vtable514
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh128:
  %cast_op503 = bitcast %A* %_this1 to %Object* 
  %mem_ptr504 = call i32* @oat_malloc ( i32 12 )
  %obj505 = bitcast i32* %mem_ptr504 to %A* 
  %new_obj506 = call %Object* @_Object_ctor ( %A* %obj505, %Object* %cast_op503 )
  %_this1 = bitcast %Object* %new_obj506 to %A 
  %_name507 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str93, i8** %_name507
  %this_vtable508 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable90, %_A_vtable** %this_vtable508
  %b502 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b502
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh127:
  %_name500 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call501 = load i8** %_name500
  ret i8* %lhs_or_call501
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh126:
  %_name498 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str92, i8** %_name498
  %this_vtable499 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable89, %_Object_vtable** %this_vtable499
  ret %Object* %_this1
}


