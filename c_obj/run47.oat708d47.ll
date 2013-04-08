%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@a3318 = global %A* zeroinitializer, align 4		; initialized by @a3318.init319
@a2316 = global %A* zeroinitializer, align 4		; initialized by @a2316.init317
@a1314 = global %A* zeroinitializer, align 4		; initialized by @a1314.init315
@_const_str313.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str313 = alias bitcast([ 2 x i8 ]* @_const_str313.str. to i8*)@_const_str312.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str312 = alias bitcast([ 2 x i8 ]* @_const_str312.str. to i8*)@_const_str311.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str311 = alias bitcast([ 7 x i8 ]* @_const_str311.str. to i8*)@_A_vtable310 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable309, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable309 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh355:
  call void @a1314.init315(  )
  call void @a2316.init317(  )
  call void @a3318.init319(  )
  ret void
}


define i32 @program (i32 %argc1665, { i32, [ 0 x i8* ] }* %argv1663){
__fresh354:
  %argc_slot1666 = alloca i32
  store i32 %argc1665, i32* %argc_slot1666
  %argv_slot1664 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1663, { i32, [ 0 x i8* ] }** %argv_slot1664
  %mem_ptr1667 = call i32* @oat_malloc ( i32 8 )
  %obj1668 = bitcast i32* %mem_ptr1667 to %A* 
  %new_obj1669 = call %A* @_A_ctor ( %A* %obj1668 )
  %vdecl_slot1670 = alloca %A*
  store %A* %new_obj1669, %A** %vdecl_slot1670
  %lhs_or_call1671 = load %A** %vdecl_slot1670
  %vtable_ptr1672 = getelementptr %A* %lhs_or_call1671, i32 0
  %vtable1673 = load %_A_vtable** %vtable_ptr1672
  %print1675 = getelementptr %_A_vtable* %vtable1673, i32 0, i32 2
  %print1674 = load void (%A*)** %print1675
  %cast_op1676 = bitcast %A %lhs_or_call1671 to %A* 
  call void %print1674( %A* %cast_op1676 )
  %lhs_or_call1677 = load %A** @a1314
  %vtable_ptr1678 = getelementptr %A* %lhs_or_call1677, i32 0
  %vtable1679 = load %_A_vtable** %vtable_ptr1678
  %print1681 = getelementptr %_A_vtable* %vtable1679, i32 0, i32 2
  %print1680 = load void (%A*)** %print1681
  %cast_op1682 = bitcast %A %lhs_or_call1677 to %A* 
  call void %print1680( %A* %cast_op1682 )
  %lhs_or_call1683 = load %A** @a2316
  %vtable_ptr1684 = getelementptr %A* %lhs_or_call1683, i32 0
  %vtable1685 = load %_A_vtable** %vtable_ptr1684
  %print1687 = getelementptr %_A_vtable* %vtable1685, i32 0, i32 2
  %print1686 = load void (%A*)** %print1687
  %cast_op1688 = bitcast %A %lhs_or_call1683 to %A* 
  call void %print1686( %A* %cast_op1688 )
  %lhs_or_call1689 = load %A** @a3318
  %vtable_ptr1690 = getelementptr %A* %lhs_or_call1689, i32 0
  %vtable1691 = load %_A_vtable** %vtable_ptr1690
  %print1693 = getelementptr %_A_vtable* %vtable1691, i32 0, i32 2
  %print1692 = load void (%A*)** %print1693
  %cast_op1694 = bitcast %A %lhs_or_call1689 to %A* 
  call void %print1692( %A* %cast_op1694 )
  ret i32 0
}


define void @a3318.init319 (){
__fresh353:
  %mem_ptr1660 = call i32* @oat_malloc ( i32 8 )
  %obj1661 = bitcast i32* %mem_ptr1660 to %A* 
  %new_obj1662 = call %A* @_A_ctor ( %A* %obj1661 )
  store %A* %new_obj1662, %A** @a3318
  ret void
}


define void @a2316.init317 (){
__fresh352:
  %mem_ptr1657 = call i32* @oat_malloc ( i32 8 )
  %obj1658 = bitcast i32* %mem_ptr1657 to %A* 
  %new_obj1659 = call %A* @_A_ctor ( %A* %obj1658 )
  store %A* %new_obj1659, %A** @a2316
  ret void
}


define void @a1314.init315 (){
__fresh351:
  %mem_ptr1654 = call i32* @oat_malloc ( i32 8 )
  %obj1655 = bitcast i32* %mem_ptr1654 to %A* 
  %new_obj1656 = call %A* @_A_ctor ( %A* %obj1655 )
  store %A* %new_obj1656, %A** @a1314
  ret void
}


define void @_A_print (%A* %_this1){
__fresh350:
  call void @print_string( i8* @_const_str313 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh349:
  %mem_ptr1649 = call i32* @oat_malloc ( i32 8 )
  %obj1650 = bitcast i32* %mem_ptr1649 to %Object* 
  %new_obj1651 = call %Object* @_Object_ctor ( %Object* %obj1650 )
  %_this1 = bitcast %Object* %new_obj1651 to %A 
  %_name1652 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str312, i8** %_name1652
  %this_vtable1653 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable310, %_A_vtable** %this_vtable1653
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh348:
  %_name1647 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1648 = load i8** %_name1647
  ret i8* %lhs_or_call1648
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh347:
  %_name1645 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str311, i8** %_name1645
  %this_vtable1646 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable309, %_Object_vtable** %this_vtable1646
  ret %Object* %_this1
}


