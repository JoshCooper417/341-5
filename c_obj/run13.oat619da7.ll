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


define i32 @program (i32 %argc497, { i32, [ 0 x i8* ] }* %argv495){
__fresh133:
  %argc_slot498 = alloca i32
  store i32 %argc497, i32* %argc_slot498
  %argv_slot496 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv495, { i32, [ 0 x i8* ] }** %argv_slot496
  %mem_ptr499 = call i32* @oat_malloc ( i32 12 )
  %obj500 = bitcast i32* %mem_ptr499 to %B* 
  %new_obj501 = call %B* @_B_ctor ( %B* %obj500 )
  %vdecl_slot502 = alloca %B*
  store %B* %new_obj501, %B** %vdecl_slot502
  %vdecl_slot503 = alloca i1
  store i1 0, i1* %vdecl_slot503
  %vdecl_slot504 = alloca i32
  store i32 0, i32* %vdecl_slot504
  %lhs_or_call505 = load %B** %vdecl_slot502
  %b506 = getelementptr %B* %lhs_or_call505, i32 0, i32 2
  %lhs_or_call507 = load i1* %b506
  br i1 %lhs_or_call507, label %__then132, label %__else131

__fresh134:
  br label %__then132

__then132:
  store i32 1, i32* %vdecl_slot504
  br label %__merge130

__fresh135:
  br label %__else131

__else131:
  store i32 0, i32* %vdecl_slot504
  br label %__merge130

__merge130:
  %lhs_or_call508 = load i32* %vdecl_slot504
  ret i32 %lhs_or_call508
}


define %B* @_B_ctor (%B* %_this1){
__fresh129:
  %mem_ptr490 = call i32* @oat_malloc ( i32 12 )
  %obj491 = bitcast i32* %mem_ptr490 to %A* 
  %new_obj492 = call %A* @_A_ctor ( %A* %obj491 )
  %_this1 = bitcast %A* %new_obj492 to %B 
  %_name493 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str94, i8** %_name493
  %this_vtable494 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable91, %_B_vtable** %this_vtable494
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh128:
  %mem_ptr485 = call i32* @oat_malloc ( i32 8 )
  %obj486 = bitcast i32* %mem_ptr485 to %Object* 
  %new_obj487 = call %Object* @_Object_ctor ( %Object* %obj486 )
  %_this1 = bitcast %Object* %new_obj487 to %A 
  %_name488 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str93, i8** %_name488
  %this_vtable489 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable90, %_A_vtable** %this_vtable489
  %b484 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b484
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh127:
  %_name482 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call483 = load i8** %_name482
  ret i8* %lhs_or_call483
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh126:
  %_name480 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str92, i8** %_name480
  %this_vtable481 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable89, %_Object_vtable** %this_vtable481
  ret %Object* %_this1
}


