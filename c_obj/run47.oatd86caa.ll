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


define i32 @program (i32 %argc1653, { i32, [ 0 x i8* ] }* %argv1651){
__fresh354:
  %argc_slot1654 = alloca i32
  store i32 %argc1653, i32* %argc_slot1654
  %argv_slot1652 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1651, { i32, [ 0 x i8* ] }** %argv_slot1652
  %mem_ptr1655 = call i32* @oat_malloc ( i32 8 )
  %obj1656 = bitcast i32* %mem_ptr1655 to %A* 
  %new_obj1657 = call %A* @_A_ctor ( %A* %obj1656 )
  %vdecl_slot1658 = alloca %A*
  store %A* %new_obj1657, %A** %vdecl_slot1658
  %lhs_or_call1659 = load %A** %vdecl_slot1658
  %vtable_ptr1660 = getelementptr %A* %lhs_or_call1659, i32 0
  %vtable1661 = load %_A_vtable** %vtable_ptr1660
  %print1663 = getelementptr %_A_vtable* %vtable1661, i32 0, i32 2
  %print1662 = load void (%A*)** %print1663
  %cast_op1664 = bitcast %A %lhs_or_call1659 to %A* 
  call void %print1662( %A* %cast_op1664 )
  %lhs_or_call1665 = load %A** @a1303
  %vtable_ptr1666 = getelementptr %A* %lhs_or_call1665, i32 0
  %vtable1667 = load %_A_vtable** %vtable_ptr1666
  %print1669 = getelementptr %_A_vtable* %vtable1667, i32 0, i32 2
  %print1668 = load void (%A*)** %print1669
  %cast_op1670 = bitcast %A %lhs_or_call1665 to %A* 
  call void %print1668( %A* %cast_op1670 )
  %lhs_or_call1671 = load %A** @a2305
  %vtable_ptr1672 = getelementptr %A* %lhs_or_call1671, i32 0
  %vtable1673 = load %_A_vtable** %vtable_ptr1672
  %print1675 = getelementptr %_A_vtable* %vtable1673, i32 0, i32 2
  %print1674 = load void (%A*)** %print1675
  %cast_op1676 = bitcast %A %lhs_or_call1671 to %A* 
  call void %print1674( %A* %cast_op1676 )
  %lhs_or_call1677 = load %A** @a3307
  %vtable_ptr1678 = getelementptr %A* %lhs_or_call1677, i32 0
  %vtable1679 = load %_A_vtable** %vtable_ptr1678
  %print1681 = getelementptr %_A_vtable* %vtable1679, i32 0, i32 2
  %print1680 = load void (%A*)** %print1681
  %cast_op1682 = bitcast %A %lhs_or_call1677 to %A* 
  call void %print1680( %A* %cast_op1682 )
  ret i32 0
}


define void @a3307.init308 (){
__fresh353:
  %mem_ptr1648 = call i32* @oat_malloc ( i32 8 )
  %obj1649 = bitcast i32* %mem_ptr1648 to %A* 
  %new_obj1650 = call %A* @_A_ctor ( %A* %obj1649 )
  store %A* %new_obj1650, %A** @a3307
  ret void
}


define void @a2305.init306 (){
__fresh352:
  %mem_ptr1645 = call i32* @oat_malloc ( i32 8 )
  %obj1646 = bitcast i32* %mem_ptr1645 to %A* 
  %new_obj1647 = call %A* @_A_ctor ( %A* %obj1646 )
  store %A* %new_obj1647, %A** @a2305
  ret void
}


define void @a1303.init304 (){
__fresh351:
  %mem_ptr1642 = call i32* @oat_malloc ( i32 8 )
  %obj1643 = bitcast i32* %mem_ptr1642 to %A* 
  %new_obj1644 = call %A* @_A_ctor ( %A* %obj1643 )
  store %A* %new_obj1644, %A** @a1303
  ret void
}


define void @_A_print (%A* %_this1){
__fresh350:
  call void @print_string( i8* @_const_str302 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh349:
  %mem_ptr1637 = call i32* @oat_malloc ( i32 8 )
  %obj1638 = bitcast i32* %mem_ptr1637 to %Object* 
  %new_obj1639 = call %Object* @_Object_ctor ( %Object* %obj1638 )
  %_this1 = bitcast %Object* %new_obj1639 to %A 
  %_name1640 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str301, i8** %_name1640
  %this_vtable1641 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable299, %_A_vtable** %this_vtable1641
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh348:
  %_name1635 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1636 = load i8** %_name1635
  ret i8* %lhs_or_call1636
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh347:
  %_name1633 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str300, i8** %_name1633
  %this_vtable1634 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable298, %_Object_vtable** %this_vtable1634
  ret %Object* %_this1
}


