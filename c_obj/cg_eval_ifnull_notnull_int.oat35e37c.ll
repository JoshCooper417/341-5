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
@_const_str398.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str398 = alias bitcast([ 2 x i8 ]* @_const_str398.str. to i8*)@_const_str397.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str397 = alias bitcast([ 7 x i8 ]* @_const_str397.str. to i8*)@_A_vtable396 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable395, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable395 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh425:
  ret void
}


define i32 @program (i32 %argc1764, { i32, [ 0 x i8* ] }* %argv1762){
__fresh424:
  %argc_slot1765 = alloca i32
  store i32 %argc1764, i32* %argc_slot1765
  %argv_slot1763 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1762, { i32, [ 0 x i8* ] }** %argv_slot1763
  %mem_ptr1766 = call i32* @oat_malloc ( i32 12 )
  %obj1767 = bitcast i32* %mem_ptr1766 to %A* 
  %new_obj1768 = call %A* @_A_ctor ( %A* %obj1767, i32 11 )
  %ret1769 = call i32 @try_ifnull ( %A* %new_obj1768 )
  ret i32 %ret1769
}


define i32 @try_ifnull (%A* %a1752){
__fresh421:
  %a_slot1753 = alloca %A*
  store %A* %a1752, %A** %a_slot1753
  %vdecl_slot1754 = alloca i32
  store i32 0, i32* %vdecl_slot1754
  %lhs_or_call1755 = load %A** %a_slot1753
  %ifnull_slot1756 = alloca %A*
  store %A* %lhs_or_call1755, %A** %ifnull_slot1756
  %ifnull_guard1757 = icmp ne %A* %lhs_or_call1755, null
  br i1 %ifnull_guard1757, label %__then420, label %__else419

__fresh422:
  br label %__then420

__then420:
  %lhs_or_call1758 = load %A** %ifnull_slot1756
  %x1759 = getelementptr %A* %lhs_or_call1758, i32 0, i32 2
  %lhs_or_call1760 = load i32* %x1759
  store i32 %lhs_or_call1760, i32* %vdecl_slot1754
  br label %__merge418

__fresh423:
  br label %__else419

__else419:
  store i32 12, i32* %vdecl_slot1754
  br label %__merge418

__merge418:
  %lhs_or_call1761 = load i32* %vdecl_slot1754
  ret i32 %lhs_or_call1761
}


define %A* @_A_ctor (%A* %_this1, i32 %x1743){
__fresh417:
  %x_slot1744 = alloca i32
  store i32 %x1743, i32* %x_slot1744
  %mem_ptr1747 = call i32* @oat_malloc ( i32 8 )
  %obj1748 = bitcast i32* %mem_ptr1747 to %Object* 
  %new_obj1749 = call %Object* @_Object_ctor ( %Object* %obj1748 )
  %_this1 = bitcast %Object* %new_obj1749 to %A 
  %_name1750 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str398, i8** %_name1750
  %this_vtable1751 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable396, %_A_vtable** %this_vtable1751
  %x1745 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1746 = load i32* %x_slot1744
  store i32 %lhs_or_call1746, i32* %x1745
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh416:
  %_name1741 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1742 = load i8** %_name1741
  ret i8* %lhs_or_call1742
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh415:
  %_name1739 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str397, i8** %_name1739
  %this_vtable1740 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable395, %_Object_vtable** %this_vtable1740
  ret %Object* %_this1
}


