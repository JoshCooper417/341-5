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
@a3307 = global %A* zeroinitializer, align 4		; initialized by @a3307.init308
@a2305 = global %A* zeroinitializer, align 4		; initialized by @a2305.init306
@a1303 = global %A* zeroinitializer, align 4		; initialized by @a1303.init304
@_const_str302.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str302 = alias bitcast([ 2 x i8 ]* @_const_str302.str. to i8*)@_const_str301.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str301 = alias bitcast([ 2 x i8 ]* @_const_str301.str. to i8*)@_const_str300.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str300 = alias bitcast([ 7 x i8 ]* @_const_str300.str. to i8*)@_A_vtable299 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable298, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable298 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh355:
  call void @a1303.init304(  )
  call void @a2305.init306(  )
  call void @a3307.init308(  )
  ret void
}


define i32 @program (i32 %argc1646, { i32, [ 0 x i8* ] }* %argv1644){
__fresh354:
  %argc_slot1647 = alloca i32
  store i32 %argc1646, i32* %argc_slot1647
  %argv_slot1645 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1644, { i32, [ 0 x i8* ] }** %argv_slot1645
  %mem_ptr1648 = call i32* @oat_malloc ( i32 8 )
  %obj1649 = bitcast i32* %mem_ptr1648 to %A* 
  %new_obj1650 = call %A* @_A_ctor ( %A* %obj1649 )
  %vdecl_slot1651 = alloca %A*
  store %A* %new_obj1650, %A** %vdecl_slot1651
  %lhs_or_call1652 = load %A** %vdecl_slot1651
  %vtable_ptr1653 = getelementptr %A* %lhs_or_call1652, i32 0
  %vtable1654 = load %_A_vtable** %vtable_ptr1653
  %print1656 = getelementptr %_A_vtable* %vtable1654, i32 0, i32 2
  %print1655 = load void (%A*)** %print1656
  %cast_op1657 = bitcast %A %lhs_or_call1652 to %A* 
  call void %print1655( %A* %cast_op1657 )
  %lhs_or_call1658 = load %A** @a1303
  %vtable_ptr1659 = getelementptr %A* %lhs_or_call1658, i32 0
  %vtable1660 = load %_A_vtable** %vtable_ptr1659
  %print1662 = getelementptr %_A_vtable* %vtable1660, i32 0, i32 2
  %print1661 = load void (%A*)** %print1662
  %cast_op1663 = bitcast %A %lhs_or_call1658 to %A* 
  call void %print1661( %A* %cast_op1663 )
  %lhs_or_call1664 = load %A** @a2305
  %vtable_ptr1665 = getelementptr %A* %lhs_or_call1664, i32 0
  %vtable1666 = load %_A_vtable** %vtable_ptr1665
  %print1668 = getelementptr %_A_vtable* %vtable1666, i32 0, i32 2
  %print1667 = load void (%A*)** %print1668
  %cast_op1669 = bitcast %A %lhs_or_call1664 to %A* 
  call void %print1667( %A* %cast_op1669 )
  %lhs_or_call1670 = load %A** @a3307
  %vtable_ptr1671 = getelementptr %A* %lhs_or_call1670, i32 0
  %vtable1672 = load %_A_vtable** %vtable_ptr1671
  %print1674 = getelementptr %_A_vtable* %vtable1672, i32 0, i32 2
  %print1673 = load void (%A*)** %print1674
  %cast_op1675 = bitcast %A %lhs_or_call1670 to %A* 
  call void %print1673( %A* %cast_op1675 )
  ret i32 0
}


define void @a3307.init308 (){
__fresh353:
  %mem_ptr1641 = call i32* @oat_malloc ( i32 8 )
  %obj1642 = bitcast i32* %mem_ptr1641 to %A* 
  %new_obj1643 = call %A* @_A_ctor ( %A* %obj1642 )
  store %A* %new_obj1643, %A** @a3307
  ret void
}


define void @a2305.init306 (){
__fresh352:
  %mem_ptr1638 = call i32* @oat_malloc ( i32 8 )
  %obj1639 = bitcast i32* %mem_ptr1638 to %A* 
  %new_obj1640 = call %A* @_A_ctor ( %A* %obj1639 )
  store %A* %new_obj1640, %A** @a2305
  ret void
}


define void @a1303.init304 (){
__fresh351:
  %mem_ptr1635 = call i32* @oat_malloc ( i32 8 )
  %obj1636 = bitcast i32* %mem_ptr1635 to %A* 
  %new_obj1637 = call %A* @_A_ctor ( %A* %obj1636 )
  store %A* %new_obj1637, %A** @a1303
  ret void
}


define void @_A_print (%A* %_this1){
__fresh350:
  call void @print_string( i8* @_const_str302 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh349:
  %mem_ptr1630 = call i32* @oat_malloc ( i32 8 )
  %obj1631 = bitcast i32* %mem_ptr1630 to %Object* 
  %new_obj1632 = call %Object* @_Object_ctor ( %Object* %obj1631 )
  %_this1 = bitcast %Object* %new_obj1632 to %A 
  %_name1633 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str301, i8** %_name1633
  %this_vtable1634 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable299, %_A_vtable** %this_vtable1634
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh348:
  %_name1628 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1629 = load i8** %_name1628
  ret i8* %lhs_or_call1629
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh347:
  %_name1626 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str300, i8** %_name1626
  %this_vtable1627 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable298, %_Object_vtable** %this_vtable1627
  ret %Object* %_this1
}


