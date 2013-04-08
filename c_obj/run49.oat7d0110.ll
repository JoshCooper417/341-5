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
@_B_vtable152 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable150, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable151 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable150, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable150 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh322:
  ret void
}


define i32 @program (i32 %argc1666, { i32, [ 0 x i8* ] }* %argv1664){
__fresh321:
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
__fresh320:
  %lhs_or_call1655 = load %B* %_this1
  %cast_op1656 = bitcast %B %lhs_or_call1655 to %Object* 
  %mem_ptr1657 = call i32* @oat_malloc ( i32 8 )
  %obj1658 = bitcast i32* %mem_ptr1657 to %Object* 
  %new_obj1659 = call %Object* @_Object_ctor ( %Object* %obj1658, %Object* %cast_op1656 )
  %_name1660 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call1661 = load %B* %_this1
  %cast_op1662 = bitcast %B %lhs_or_call1661 to i8* 
  store i8* %cast_op1662, i8** %_name1660
  %this_vtable1663 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable1663
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh319:
  %lhs_or_call1642 = load %A* %_this1
  %cast_op1643 = bitcast %A %lhs_or_call1642 to %Object* 
  %mem_ptr1644 = call i32* @oat_malloc ( i32 8 )
  %obj1645 = bitcast i32* %mem_ptr1644 to %Object* 
  %new_obj1646 = call %Object* @_Object_ctor ( %Object* %obj1645, %Object* %cast_op1643 )
  %_name1647 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call1648 = load %A* %_this1
  %cast_op1649 = bitcast %A %lhs_or_call1648 to i8* 
  store i8* %cast_op1649, i8** %_name1647
  %b1650 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1651 = call i32* @oat_malloc ( i32 8 )
  %obj1652 = bitcast i32* %mem_ptr1651 to %B* 
  %new_obj1653 = call %B* @_B_ctor ( %B* %obj1652 )
  store %B* %new_obj1653, %B** %b1650
  %this_vtable1654 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable1654
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh318:
  %_name1640 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1641 = load i8** %_name1640
  ret i8* %lhs_or_call1641
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh317:
  %_name1636 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1637 = load %Object* %_this1
  %cast_op1638 = bitcast %Object %lhs_or_call1637 to i8* 
  store i8* %cast_op1638, i8** %_name1636
  %this_vtable1639 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1639
  ret %Object* %_this1
}


