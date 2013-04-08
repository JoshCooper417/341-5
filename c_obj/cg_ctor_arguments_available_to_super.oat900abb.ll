%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@_const_str341.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str341 = alias bitcast([ 2 x i8 ]* @_const_str341.str. to i8*)@_const_str340.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str340 = alias bitcast([ 2 x i8 ]* @_const_str340.str. to i8*)@_const_str339.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str339 = alias bitcast([ 7 x i8 ]* @_const_str339.str. to i8*)@_B_vtable338 = private constant %_B_vtable {%_A_vtable* @_A_vtable337, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable337 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable336, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable336 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh372:
  ret void
}


define i32 @program (i32 %argc1743, { i32, [ 0 x i8* ] }* %argv1741){
__fresh371:
  %argc_slot1744 = alloca i32
  store i32 %argc1743, i32* %argc_slot1744
  %argv_slot1742 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1741, { i32, [ 0 x i8* ] }** %argv_slot1742
  %mem_ptr1745 = call i32* @oat_malloc ( i32 12 )
  %obj1746 = bitcast i32* %mem_ptr1745 to %B* 
  %new_obj1747 = call %B* @_B_ctor ( %B* %obj1746, i32 1, i32 2 )
  %vdecl_slot1748 = alloca %B*
  store %B* %new_obj1747, %B** %vdecl_slot1748
  %lhs_or_call1749 = load %B** %vdecl_slot1748
  %x1750 = getelementptr %B* %lhs_or_call1749, i32 0, i32 2
  %lhs_or_call1751 = load i32* %x1750
  ret i32 %lhs_or_call1751
}


define %B* @_B_ctor (%B* %_this1, i32 %a1730, i32 %b1728){
__fresh370:
  %a_slot1731 = alloca i32
  store i32 %a1730, i32* %a_slot1731
  %b_slot1729 = alloca i32
  store i32 %b1728, i32* %b_slot1729
  %lhs_or_call1732 = load i32* %a_slot1731
  %bop1733 = mul i32 %lhs_or_call1732, 10
  %lhs_or_call1734 = load i32* %b_slot1729
  %bop1735 = add i32 %bop1733, %lhs_or_call1734
  %mem_ptr1736 = call i32* @oat_malloc ( i32 12 )
  %obj1737 = bitcast i32* %mem_ptr1736 to %A* 
  %new_obj1738 = call %A* @_A_ctor ( %A* %obj1737, i32 %bop1735 )
  %_this1 = bitcast %A* %new_obj1738 to %B 
  %_name1739 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str341, i8** %_name1739
  %this_vtable1740 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable338, %_B_vtable** %this_vtable1740
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1719){
__fresh369:
  %x_slot1720 = alloca i32
  store i32 %x1719, i32* %x_slot1720
  %mem_ptr1723 = call i32* @oat_malloc ( i32 8 )
  %obj1724 = bitcast i32* %mem_ptr1723 to %Object* 
  %new_obj1725 = call %Object* @_Object_ctor ( %Object* %obj1724 )
  %_this1 = bitcast %Object* %new_obj1725 to %A 
  %_name1726 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str340, i8** %_name1726
  %this_vtable1727 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable337, %_A_vtable** %this_vtable1727
  %x1721 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1722 = load i32* %x_slot1720
  store i32 %lhs_or_call1722, i32* %x1721
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh368:
  %_name1717 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1718 = load i8** %_name1717
  ret i8* %lhs_or_call1718
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh367:
  %_name1715 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str339, i8** %_name1715
  %this_vtable1716 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable336, %_Object_vtable** %this_vtable1716
  ret %Object* %_this1
}


