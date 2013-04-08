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
@a3327 = global %A* zeroinitializer, align 4		; initialized by @a3327.init328
@a2325 = global %A* zeroinitializer, align 4		; initialized by @a2325.init326
@a1323 = global %A* zeroinitializer, align 4		; initialized by @a1323.init324
@_const_str322.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str322 = alias bitcast([ 2 x i8 ]* @_const_str322.str. to i8*)@_const_str321.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str321 = alias bitcast([ 2 x i8 ]* @_const_str321.str. to i8*)@_const_str320.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str320 = alias bitcast([ 7 x i8 ]* @_const_str320.str. to i8*)@_A_vtable319 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable318, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable318 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh360:
  call void @a1323.init324(  )
  call void @a2325.init326(  )
  call void @a3327.init328(  )
  ret void
}


define i32 @program (i32 %argc1677, { i32, [ 0 x i8* ] }* %argv1675){
__fresh359:
  %argc_slot1678 = alloca i32
  store i32 %argc1677, i32* %argc_slot1678
  %argv_slot1676 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1675, { i32, [ 0 x i8* ] }** %argv_slot1676
  %mem_ptr1679 = call i32* @oat_malloc ( i32 8 )
  %obj1680 = bitcast i32* %mem_ptr1679 to %A* 
  %new_obj1681 = call %A* @_A_ctor ( %A* %obj1680 )
  %vdecl_slot1682 = alloca %A*
  store %A* %new_obj1681, %A** %vdecl_slot1682
  %lhs_or_call1683 = load %A** %vdecl_slot1682
  %print1685 = getelementptr %_A_vtable* @_A_vtable319, i32 0, i32 2
  %print1684 = load void (%A*)** %print1685
  %cast_op1686 = bitcast %A %lhs_or_call1683 to %A* 
  call void %print1684( %A* %cast_op1686 )
  %lhs_or_call1687 = load %A** @a1323
  %print1689 = getelementptr %_A_vtable* @_A_vtable319, i32 0, i32 2
  %print1688 = load void (%A*)** %print1689
  %cast_op1690 = bitcast %A %lhs_or_call1687 to %A* 
  call void %print1688( %A* %cast_op1690 )
  %lhs_or_call1691 = load %A** @a2325
  %print1693 = getelementptr %_A_vtable* @_A_vtable319, i32 0, i32 2
  %print1692 = load void (%A*)** %print1693
  %cast_op1694 = bitcast %A %lhs_or_call1691 to %A* 
  call void %print1692( %A* %cast_op1694 )
  %lhs_or_call1695 = load %A** @a3327
  %print1697 = getelementptr %_A_vtable* @_A_vtable319, i32 0, i32 2
  %print1696 = load void (%A*)** %print1697
  %cast_op1698 = bitcast %A %lhs_or_call1695 to %A* 
  call void %print1696( %A* %cast_op1698 )
  ret i32 0
}


define void @a3327.init328 (){
__fresh358:
  %mem_ptr1672 = call i32* @oat_malloc ( i32 8 )
  %obj1673 = bitcast i32* %mem_ptr1672 to %A* 
  %new_obj1674 = call %A* @_A_ctor ( %A* %obj1673 )
  store %A* %new_obj1674, %A** @a3327
  ret void
}


define void @a2325.init326 (){
__fresh357:
  %mem_ptr1669 = call i32* @oat_malloc ( i32 8 )
  %obj1670 = bitcast i32* %mem_ptr1669 to %A* 
  %new_obj1671 = call %A* @_A_ctor ( %A* %obj1670 )
  store %A* %new_obj1671, %A** @a2325
  ret void
}


define void @a1323.init324 (){
__fresh356:
  %mem_ptr1666 = call i32* @oat_malloc ( i32 8 )
  %obj1667 = bitcast i32* %mem_ptr1666 to %A* 
  %new_obj1668 = call %A* @_A_ctor ( %A* %obj1667 )
  store %A* %new_obj1668, %A** @a1323
  ret void
}


define void @_A_print (%A* %_this1){
__fresh355:
  call void @print_string( i8* @_const_str322 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh354:
  %cast_op1660 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1661 = call i32* @oat_malloc ( i32 8 )
  %obj1662 = bitcast i32* %mem_ptr1661 to %A* 
  %new_obj1663 = call %Object* @_Object_ctor ( %A* %obj1662, %Object* %cast_op1660 )
  %_this1 = bitcast %Object* %new_obj1663 to %A 
  %_name1664 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str321, i8** %_name1664
  %this_vtable1665 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable319, %_A_vtable** %this_vtable1665
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh353:
  %_name1658 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1659 = load i8** %_name1658
  ret i8* %lhs_or_call1659
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh352:
  %_name1656 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str320, i8** %_name1656
  %this_vtable1657 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable318, %_Object_vtable** %this_vtable1657
  ret %Object* %_this1
}


