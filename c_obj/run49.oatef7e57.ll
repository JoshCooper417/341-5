%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, %B* }
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
@_const_str293.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str293 = alias bitcast([ 2 x i8 ]* @_const_str293.str. to i8*)@_const_str294.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str294 = alias bitcast([ 2 x i8 ]* @_const_str294.str. to i8*)@_const_str291.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str291 = alias bitcast([ 2 x i8 ]* @_const_str291.str. to i8*)@_const_str292.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str292 = alias bitcast([ 2 x i8 ]* @_const_str292.str. to i8*)@_const_str290.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str290 = alias bitcast([ 7 x i8 ]* @_const_str290.str. to i8*)@_B_vtable289 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable287, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable288 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable287, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable287 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh534:
  ret void
}


define i32 @program (i32 %argc1666, { i32, [ 0 x i8* ] }* %argv1664){
__fresh533:
  %argc_slot1667 = alloca i32
  store i32 %argc1666, i32* %argc_slot1667
  %argv_slot1665 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1664, { i32, [ 0 x i8* ] }** %argv_slot1665
  %mem_ptr1668 = call i32* @oat_malloc ( i32 12 )
  %obj1669 = bitcast i32* %mem_ptr1668 to %A* 
  %new_obj1670 = call %A* @_A_ctor ( %A* %obj1669 )
  %vdecl_slot1671 = alloca %A*
  store %A* %new_obj1670, %A** %vdecl_slot1671
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh532:
  %mem_ptr1659 = call i32* @oat_malloc ( i32 8 )
  %obj1660 = bitcast i32* %mem_ptr1659 to %Object* 
  %new_obj1661 = call %Object* @_Object_ctor ( %Object* %obj1660 )
  %_this1 = bitcast %Object* %new_obj1661 to %B 
  %_name1662 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str294, i8** %_name1662
  %this_vtable1663 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable289, %_B_vtable** %this_vtable1663
  call void @print_string( i8* @_const_str293 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh531:
  %mem_ptr1650 = call i32* @oat_malloc ( i32 8 )
  %obj1651 = bitcast i32* %mem_ptr1650 to %Object* 
  %new_obj1652 = call %Object* @_Object_ctor ( %Object* %obj1651 )
  %_this1 = bitcast %Object* %new_obj1652 to %A 
  %_name1653 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str292, i8** %_name1653
  %b1654 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1655 = call i32* @oat_malloc ( i32 8 )
  %obj1656 = bitcast i32* %mem_ptr1655 to %B* 
  %new_obj1657 = call %B* @_B_ctor ( %B* %obj1656 )
  store %B* %new_obj1657, %B** %b1654
  %this_vtable1658 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable288, %_A_vtable** %this_vtable1658
  call void @print_string( i8* @_const_str291 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh530:
  %_name1648 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1649 = load i8** %_name1648
  ret i8* %lhs_or_call1649
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh529:
  %_name1646 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str290, i8** %_name1646
  %this_vtable1647 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable287, %_Object_vtable** %this_vtable1647
  ret %Object* %_this1
}


