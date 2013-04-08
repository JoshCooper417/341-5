%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str402.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str402 = alias bitcast([ 2 x i8 ]* @_const_str402.str. to i8*)@_const_str401.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str401 = alias bitcast([ 7 x i8 ]* @_const_str401.str. to i8*)@_A_vtable400 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable399, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable399 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh436:
  ret void
}


define i32 @program (i32 %argc1795, { i32, [ 0 x i8* ] }* %argv1793){
__fresh435:
  %argc_slot1796 = alloca i32
  store i32 %argc1795, i32* %argc_slot1796
  %argv_slot1794 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1793, { i32, [ 0 x i8* ] }** %argv_slot1794
  %cast_op1797 = bitcast i8* null to %A* 
  %ret1798 = call i32 @try_ifnull ( %A* %cast_op1797 )
  ret i32 %ret1798
}


define i32 @try_ifnull (%A* %a1783){
__fresh432:
  %a_slot1784 = alloca %A*
  store %A* %a1783, %A** %a_slot1784
  %vdecl_slot1785 = alloca i32
  store i32 0, i32* %vdecl_slot1785
  %lhs_or_call1786 = load %A** %a_slot1784
  %ifnull_slot1787 = alloca %A*
  store %A* %lhs_or_call1786, %A** %ifnull_slot1787
  %ifnull_guard1788 = icmp ne %A* %lhs_or_call1786, null
  br i1 %ifnull_guard1788, label %__then431, label %__else430

__fresh433:
  br label %__then431

__then431:
  %lhs_or_call1789 = load %A** %ifnull_slot1787
  %x1790 = getelementptr %A* %lhs_or_call1789, i32 0, i32 2
  %lhs_or_call1791 = load i32* %x1790
  store i32 %lhs_or_call1791, i32* %vdecl_slot1785
  br label %__merge429

__fresh434:
  br label %__else430

__else430:
  store i32 12, i32* %vdecl_slot1785
  br label %__merge429

__merge429:
  %lhs_or_call1792 = load i32* %vdecl_slot1785
  ret i32 %lhs_or_call1792
}


define %A* @_A_ctor (%A* %_this1, i32 %x1774){
__fresh428:
  %x_slot1775 = alloca i32
  store i32 %x1774, i32* %x_slot1775
  %mem_ptr1778 = call i32* @oat_malloc ( i32 8 )
  %obj1779 = bitcast i32* %mem_ptr1778 to %Object* 
  %new_obj1780 = call %Object* @_Object_ctor ( %Object* %obj1779 )
  %_this1 = bitcast %Object* %new_obj1780 to %A 
  %_name1781 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str402, i8** %_name1781
  %this_vtable1782 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable400, %_A_vtable** %this_vtable1782
  %x1776 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1777 = load i32* %x_slot1775
  store i32 %lhs_or_call1777, i32* %x1776
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh427:
  %_name1772 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1773 = load i8** %_name1772
  ret i8* %lhs_or_call1773
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh426:
  %_name1770 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str401, i8** %_name1770
  %this_vtable1771 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable399, %_Object_vtable** %this_vtable1771
  ret %Object* %_this1
}


