%B = type { %_B_vtable*, i8*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str96.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str96 = alias bitcast([ 2 x i8 ]* @_const_str96.str. to i8*)@_const_str95.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str95 = alias bitcast([ 4 x i8 ]* @_const_str95.str. to i8*)@_const_str94.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str94 = alias bitcast([ 2 x i8 ]* @_const_str94.str. to i8*)@_const_str93.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str93 = alias bitcast([ 7 x i8 ]* @_const_str93.str. to i8*)@_B_vtable92 = private constant %_B_vtable {%_A_vtable* @_A_vtable91, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable91 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable90, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable90 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh148:
  ret void
}


define i32 @program (i32 %argc563, { i32, [ 0 x i8* ] }* %argv561){
__fresh147:
  %argc_slot564 = alloca i32
  store i32 %argc563, i32* %argc_slot564
  %argv_slot562 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv561, { i32, [ 0 x i8* ] }** %argv_slot562
  %mem_ptr565 = call i32* @oat_malloc ( i32 12 )
  %obj566 = bitcast i32* %mem_ptr565 to %B* 
  %new_obj567 = call %B* @_B_ctor ( %B* %obj566 )
  %vdecl_slot568 = alloca %B*
  store %B* %new_obj567, %B** %vdecl_slot568
  %lhs_or_call569 = load %B** %vdecl_slot568
  %str570 = getelementptr %B* %lhs_or_call569, i32 0, i32 0, i32 2
  %lhs_or_call571 = load i8** %str570
  call void @print_string( i8* %lhs_or_call571 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh146:
  %mem_ptr556 = call i32* @oat_malloc ( i32 12 )
  %obj557 = bitcast i32* %mem_ptr556 to %A* 
  %new_obj558 = call %A* @_A_ctor ( %A* %obj557 )
  %_this1 = bitcast %A* %new_obj558 to %B 
  %_name559 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str96, i8** %_name559
  %this_vtable560 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable92, %_B_vtable** %this_vtable560
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh145:
  %mem_ptr550 = call i32* @oat_malloc ( i32 8 )
  %obj551 = bitcast i32* %mem_ptr550 to %Object* 
  %new_obj552 = call %Object* @_Object_ctor ( %Object* %obj551 )
  %_this1 = bitcast %Object* %new_obj552 to %A 
  %_name553 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str94, i8** %_name553
  %str554 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  store i8* @_const_str95, i8** %str554
  %this_vtable555 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable91, %_A_vtable** %this_vtable555
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh144:
  %_name548 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call549 = load i8** %_name548
  ret i8* %lhs_or_call549
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh143:
  %_name546 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str93, i8** %_name546
  %this_vtable547 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable90, %_Object_vtable** %this_vtable547
  ret %Object* %_this1
}


