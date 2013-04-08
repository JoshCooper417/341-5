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
@_const_str109.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str109 = alias bitcast([ 7 x i8 ]* @_const_str109.str. to i8*)@_const_str108.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str108 = alias bitcast([ 2 x i8 ]* @_const_str108.str. to i8*)@_const_str107.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str107 = alias bitcast([ 2 x i8 ]* @_const_str107.str. to i8*)@_const_str106.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str106 = alias bitcast([ 7 x i8 ]* @_const_str106.str. to i8*)@_B_vtable105 = private constant %_B_vtable {%_A_vtable* @_A_vtable104, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable104 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable103, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable103 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh183:
  ret void
}


define i32 @program (i32 %argc657, { i32, [ 0 x i8* ] }* %argv655){
__fresh182:
  %argc_slot658 = alloca i32
  store i32 %argc657, i32* %argc_slot658
  %argv_slot656 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv655, { i32, [ 0 x i8* ] }** %argv_slot656
  %mem_ptr659 = call i32* @oat_malloc ( i32 12 )
  %obj660 = bitcast i32* %mem_ptr659 to %B* 
  %new_obj661 = call %B* @_B_ctor ( %B* %obj660, i8* @_const_str109 )
  %vdecl_slot662 = alloca %B*
  store %B* %new_obj661, %B** %vdecl_slot662
  %lhs_or_call663 = load %B** %vdecl_slot662
  %str664 = getelementptr %B* %lhs_or_call663, i32 0, i32 2
  %lhs_or_call665 = load i8** %str664
  call void @print_string( i8* %lhs_or_call665 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str647){
__fresh181:
  %str_slot648 = alloca i8*
  store i8* %str647, i8** %str_slot648
  %lhs_or_call649 = load i8** %str_slot648
  %mem_ptr650 = call i32* @oat_malloc ( i32 12 )
  %obj651 = bitcast i32* %mem_ptr650 to %A* 
  %new_obj652 = call %A* @_A_ctor ( %A* %obj651, i8* %lhs_or_call649 )
  %_this1 = bitcast %A* %new_obj652 to %B 
  %_name653 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str108, i8** %_name653
  %this_vtable654 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable105, %_B_vtable** %this_vtable654
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str638){
__fresh180:
  %str_slot639 = alloca i8*
  store i8* %str638, i8** %str_slot639
  %mem_ptr640 = call i32* @oat_malloc ( i32 8 )
  %obj641 = bitcast i32* %mem_ptr640 to %Object* 
  %new_obj642 = call %Object* @_Object_ctor ( %Object* %obj641 )
  %_this1 = bitcast %Object* %new_obj642 to %A 
  %_name643 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str107, i8** %_name643
  %str644 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call645 = load i8** %str_slot639
  store i8* %lhs_or_call645, i8** %str644
  %this_vtable646 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable104, %_A_vtable** %this_vtable646
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh179:
  %_name636 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call637 = load i8** %_name636
  ret i8* %lhs_or_call637
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh178:
  %_name634 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str106, i8** %_name634
  %this_vtable635 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable103, %_Object_vtable** %this_vtable635
  ret %Object* %_this1
}


