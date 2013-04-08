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
@a3316 = global %A* zeroinitializer, align 4		; initialized by @a3316.init317
@a2314 = global %A* zeroinitializer, align 4		; initialized by @a2314.init315
@a1312 = global %A* zeroinitializer, align 4		; initialized by @a1312.init313
@_const_str311.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str311 = alias bitcast([ 2 x i8 ]* @_const_str311.str. to i8*)@_const_str310.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str310 = alias bitcast([ 2 x i8 ]* @_const_str310.str. to i8*)@_const_str309.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str309 = alias bitcast([ 7 x i8 ]* @_const_str309.str. to i8*)@_A_vtable308 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable307, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable307 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh394:
  call void @a1312.init313(  )
  call void @a2314.init315(  )
  call void @a3316.init317(  )
  ret void
}


define i32 @program (i32 %argc1771, { i32, [ 0 x i8* ] }* %argv1769){
__fresh393:
  %argc_slot1772 = alloca i32
  store i32 %argc1771, i32* %argc_slot1772
  %argv_slot1770 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1769, { i32, [ 0 x i8* ] }** %argv_slot1770
  %mem_ptr1773 = call i32* @oat_malloc ( i32 8 )
  %obj1774 = bitcast i32* %mem_ptr1773 to %A* 
  %new_obj1775 = call %A* @_A_ctor ( %A* %obj1774 )
  %vdecl_slot1776 = alloca %A*
  store %A* %new_obj1775, %A** %vdecl_slot1776
  %lhs_or_call1777 = load %A** %vdecl_slot1776
  %vtable_ptr1778 = getelementptr %A* %lhs_or_call1777, i32 0
  %vtable1779 = load %_A_vtable** %vtable_ptr1778
  %print1781 = getelementptr %_A_vtable* %vtable1779, i32 0, i32 2
  %print1780 = load void (%A*)** %print1781
  %cast_op1782 = bitcast %A %lhs_or_call1777 to %A* 
  call void %print1780( %A* %cast_op1782 )
  %lhs_or_call1783 = load %A** @a1312
  %vtable_ptr1784 = getelementptr %A* %lhs_or_call1783, i32 0
  %vtable1785 = load %_A_vtable** %vtable_ptr1784
  %print1787 = getelementptr %_A_vtable* %vtable1785, i32 0, i32 2
  %print1786 = load void (%A*)** %print1787
  %cast_op1788 = bitcast %A %lhs_or_call1783 to %A* 
  call void %print1786( %A* %cast_op1788 )
  %lhs_or_call1789 = load %A** @a2314
  %vtable_ptr1790 = getelementptr %A* %lhs_or_call1789, i32 0
  %vtable1791 = load %_A_vtable** %vtable_ptr1790
  %print1793 = getelementptr %_A_vtable* %vtable1791, i32 0, i32 2
  %print1792 = load void (%A*)** %print1793
  %cast_op1794 = bitcast %A %lhs_or_call1789 to %A* 
  call void %print1792( %A* %cast_op1794 )
  %lhs_or_call1795 = load %A** @a3316
  %vtable_ptr1796 = getelementptr %A* %lhs_or_call1795, i32 0
  %vtable1797 = load %_A_vtable** %vtable_ptr1796
  %print1799 = getelementptr %_A_vtable* %vtable1797, i32 0, i32 2
  %print1798 = load void (%A*)** %print1799
  %cast_op1800 = bitcast %A %lhs_or_call1795 to %A* 
  call void %print1798( %A* %cast_op1800 )
  ret i32 0
}


define void @a3316.init317 (){
__fresh392:
  %mem_ptr1766 = call i32* @oat_malloc ( i32 8 )
  %obj1767 = bitcast i32* %mem_ptr1766 to %A* 
  %new_obj1768 = call %A* @_A_ctor ( %A* %obj1767 )
  store %A* %new_obj1768, %A** @a3316
  ret void
}


define void @a2314.init315 (){
__fresh391:
  %mem_ptr1763 = call i32* @oat_malloc ( i32 8 )
  %obj1764 = bitcast i32* %mem_ptr1763 to %A* 
  %new_obj1765 = call %A* @_A_ctor ( %A* %obj1764 )
  store %A* %new_obj1765, %A** @a2314
  ret void
}


define void @a1312.init313 (){
__fresh390:
  %mem_ptr1760 = call i32* @oat_malloc ( i32 8 )
  %obj1761 = bitcast i32* %mem_ptr1760 to %A* 
  %new_obj1762 = call %A* @_A_ctor ( %A* %obj1761 )
  store %A* %new_obj1762, %A** @a1312
  ret void
}


define void @_A_print (%A* %_this1){
__fresh389:
  call void @print_string( i8* @_const_str311 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh388:
  %mem_ptr1755 = call i32* @oat_malloc ( i32 8 )
  %obj1756 = bitcast i32* %mem_ptr1755 to %Object* 
  %new_obj1757 = call %Object* @_Object_ctor ( %Object* %obj1756 )
  %_this1 = bitcast %Object* %new_obj1757 to %A 
  %_name1758 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str310, i8** %_name1758
  %this_vtable1759 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable308, %_A_vtable** %this_vtable1759
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh387:
  %_name1753 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1754 = load i8** %_name1753
  ret i8* %lhs_or_call1754
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh386:
  %_name1751 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str309, i8** %_name1751
  %this_vtable1752 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable307, %_Object_vtable** %this_vtable1752
  ret %Object* %_this1
}


