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


define i32 @program (i32 %argc1660, { i32, [ 0 x i8* ] }* %argv1658){
__fresh354:
  %argc_slot1661 = alloca i32
  store i32 %argc1660, i32* %argc_slot1661
  %argv_slot1659 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1658, { i32, [ 0 x i8* ] }** %argv_slot1659
  %mem_ptr1662 = call i32* @oat_malloc ( i32 8 )
  %obj1663 = bitcast i32* %mem_ptr1662 to %A* 
  %new_obj1664 = call %A* @_A_ctor ( %A* %obj1663 )
  %vdecl_slot1665 = alloca %A*
  store %A* %new_obj1664, %A** %vdecl_slot1665
  %lhs_or_call1666 = load %A** %vdecl_slot1665
  %print1668 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %print1667 = load void (%A*)** %print1668
  %cast_op1669 = bitcast %A %lhs_or_call1666 to %A* 
  call void %print1667( %A* %cast_op1669 )
  %lhs_or_call1670 = load %A** @a1314
  %print1672 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %print1671 = load void (%A*)** %print1672
  %cast_op1673 = bitcast %A %lhs_or_call1670 to %A* 
  call void %print1671( %A* %cast_op1673 )
  %lhs_or_call1674 = load %A** @a2316
  %print1676 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %print1675 = load void (%A*)** %print1676
  %cast_op1677 = bitcast %A %lhs_or_call1674 to %A* 
  call void %print1675( %A* %cast_op1677 )
  %lhs_or_call1678 = load %A** @a3318
  %print1680 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %print1679 = load void (%A*)** %print1680
  %cast_op1681 = bitcast %A %lhs_or_call1678 to %A* 
  call void %print1679( %A* %cast_op1681 )
  ret i32 0
}


define void @a3318.init319 (){
__fresh353:
  %mem_ptr1655 = call i32* @oat_malloc ( i32 8 )
  %obj1656 = bitcast i32* %mem_ptr1655 to %A* 
  %new_obj1657 = call %A* @_A_ctor ( %A* %obj1656 )
  store %A* %new_obj1657, %A** @a3318
  ret void
}


define void @a2316.init317 (){
__fresh352:
  %mem_ptr1652 = call i32* @oat_malloc ( i32 8 )
  %obj1653 = bitcast i32* %mem_ptr1652 to %A* 
  %new_obj1654 = call %A* @_A_ctor ( %A* %obj1653 )
  store %A* %new_obj1654, %A** @a2316
  ret void
}


define void @a1314.init315 (){
__fresh351:
  %mem_ptr1649 = call i32* @oat_malloc ( i32 8 )
  %obj1650 = bitcast i32* %mem_ptr1649 to %A* 
  %new_obj1651 = call %A* @_A_ctor ( %A* %obj1650 )
  store %A* %new_obj1651, %A** @a1314
  ret void
}


define void @_A_print (%A* %_this1){
__fresh350:
  call void @print_string( i8* @_const_str313 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh349:
  %cast_op1643 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1644 = call i32* @oat_malloc ( i32 8 )
  %obj1645 = bitcast i32* %mem_ptr1644 to %A* 
  %new_obj1646 = call %Object* @_Object_ctor ( %A* %obj1645, %Object* %cast_op1643 )
  %_this1 = bitcast %Object* %new_obj1646 to %A 
  %_name1647 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str312, i8** %_name1647
  %this_vtable1648 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable310, %_A_vtable** %this_vtable1648
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh348:
  %_name1641 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1642 = load i8** %_name1641
  ret i8* %lhs_or_call1642
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh347:
  %_name1639 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str311, i8** %_name1639
  %this_vtable1640 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable309, %_Object_vtable** %this_vtable1640
  ret %Object* %_this1
}


