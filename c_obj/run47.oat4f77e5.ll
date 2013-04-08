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


define i32 @program (i32 %argc1782, { i32, [ 0 x i8* ] }* %argv1780){
__fresh393:
  %argc_slot1783 = alloca i32
  store i32 %argc1782, i32* %argc_slot1783
  %argv_slot1781 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1780, { i32, [ 0 x i8* ] }** %argv_slot1781
  %mem_ptr1784 = call i32* @oat_malloc ( i32 8 )
  %obj1785 = bitcast i32* %mem_ptr1784 to %A* 
  %new_obj1786 = call %A* @_A_ctor ( %A* %obj1785 )
  %vdecl_slot1787 = alloca %A*
  store %A* %new_obj1786, %A** %vdecl_slot1787
  %lhs_or_call1788 = load %A** %vdecl_slot1787
  %vtable_ptr1789 = getelementptr %A* %lhs_or_call1788, i32 0
  %vtable1790 = load %_A_vtable** %vtable_ptr1789
  %print1792 = getelementptr %_A_vtable* %vtable1790, i32 0, i32 2
  %print1791 = load void (%A*)** %print1792
  %cast_op1793 = bitcast %A %lhs_or_call1788 to %A* 
  call void %print1791( %A* %cast_op1793 )
  %lhs_or_call1794 = load %A** @a1312
  %vtable_ptr1795 = getelementptr %A* %lhs_or_call1794, i32 0
  %vtable1796 = load %_A_vtable** %vtable_ptr1795
  %print1798 = getelementptr %_A_vtable* %vtable1796, i32 0, i32 2
  %print1797 = load void (%A*)** %print1798
  %cast_op1799 = bitcast %A %lhs_or_call1794 to %A* 
  call void %print1797( %A* %cast_op1799 )
  %lhs_or_call1800 = load %A** @a2314
  %vtable_ptr1801 = getelementptr %A* %lhs_or_call1800, i32 0
  %vtable1802 = load %_A_vtable** %vtable_ptr1801
  %print1804 = getelementptr %_A_vtable* %vtable1802, i32 0, i32 2
  %print1803 = load void (%A*)** %print1804
  %cast_op1805 = bitcast %A %lhs_or_call1800 to %A* 
  call void %print1803( %A* %cast_op1805 )
  %lhs_or_call1806 = load %A** @a3316
  %vtable_ptr1807 = getelementptr %A* %lhs_or_call1806, i32 0
  %vtable1808 = load %_A_vtable** %vtable_ptr1807
  %print1810 = getelementptr %_A_vtable* %vtable1808, i32 0, i32 2
  %print1809 = load void (%A*)** %print1810
  %cast_op1811 = bitcast %A %lhs_or_call1806 to %A* 
  call void %print1809( %A* %cast_op1811 )
  ret i32 0
}


define void @a3316.init317 (){
__fresh392:
  %mem_ptr1777 = call i32* @oat_malloc ( i32 8 )
  %obj1778 = bitcast i32* %mem_ptr1777 to %A* 
  %new_obj1779 = call %A* @_A_ctor ( %A* %obj1778 )
  store %A* %new_obj1779, %A** @a3316
  ret void
}


define void @a2314.init315 (){
__fresh391:
  %mem_ptr1774 = call i32* @oat_malloc ( i32 8 )
  %obj1775 = bitcast i32* %mem_ptr1774 to %A* 
  %new_obj1776 = call %A* @_A_ctor ( %A* %obj1775 )
  store %A* %new_obj1776, %A** @a2314
  ret void
}


define void @a1312.init313 (){
__fresh390:
  %mem_ptr1771 = call i32* @oat_malloc ( i32 8 )
  %obj1772 = bitcast i32* %mem_ptr1771 to %A* 
  %new_obj1773 = call %A* @_A_ctor ( %A* %obj1772 )
  store %A* %new_obj1773, %A** @a1312
  ret void
}


define void @_A_print (%A* %_this1){
__fresh389:
  call void @print_string( i8* @_const_str311 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh388:
  %mem_ptr1766 = call i32* @oat_malloc ( i32 8 )
  %obj1767 = bitcast i32* %mem_ptr1766 to %Object* 
  %new_obj1768 = call %Object* @_Object_ctor ( %Object* %obj1767 )
  %_this1 = bitcast %Object* %new_obj1768 to %A 
  %_name1769 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str310, i8** %_name1769
  %this_vtable1770 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable308, %_A_vtable** %this_vtable1770
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh387:
  %_name1764 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1765 = load i8** %_name1764
  ret i8* %lhs_or_call1765
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh386:
  %_name1762 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str309, i8** %_name1762
  %this_vtable1763 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable307, %_Object_vtable** %this_vtable1763
  ret %Object* %_this1
}


