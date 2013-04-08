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


define i32 @program (i32 %argc1837, { i32, [ 0 x i8* ] }* %argv1835){
__fresh371:
  %argc_slot1838 = alloca i32
  store i32 %argc1837, i32* %argc_slot1838
  %argv_slot1836 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1835, { i32, [ 0 x i8* ] }** %argv_slot1836
  %mem_ptr1839 = call i32* @oat_malloc ( i32 12 )
  %obj1840 = bitcast i32* %mem_ptr1839 to %B* 
  %new_obj1841 = call %B* @_B_ctor ( %B* %obj1840, i32 1, i32 2 )
  %vdecl_slot1842 = alloca %B*
  store %B* %new_obj1841, %B** %vdecl_slot1842
  %lhs_or_call1843 = load %B** %vdecl_slot1842
  %x1844 = getelementptr %B* %lhs_or_call1843, i32 0, i32 2
  %lhs_or_call1845 = load i32* %x1844
  ret i32 %lhs_or_call1845
}


define %B* @_B_ctor (%B* %_this1, i32 %a1823, i32 %b1821){
__fresh370:
  %a_slot1824 = alloca i32
  store i32 %a1823, i32* %a_slot1824
  %b_slot1822 = alloca i32
  store i32 %b1821, i32* %b_slot1822
  %lhs_or_call1825 = load i32* %a_slot1824
  %bop1826 = mul i32 %lhs_or_call1825, 10
  %lhs_or_call1827 = load i32* %b_slot1822
  %bop1828 = add i32 %bop1826, %lhs_or_call1827
  %cast_op1829 = bitcast %B* %_this1 to %A* 
  %mem_ptr1830 = call i32* @oat_malloc ( i32 12 )
  %obj1831 = bitcast i32* %mem_ptr1830 to %B* 
  %new_obj1832 = call %A* @_A_ctor ( %B* %obj1831, %A* %cast_op1829, i32 %bop1828 )
  %_this1 = bitcast %A* %new_obj1832 to %B 
  %_name1833 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str341, i8** %_name1833
  %this_vtable1834 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable338, %_B_vtable** %this_vtable1834
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1811){
__fresh369:
  %x_slot1812 = alloca i32
  store i32 %x1811, i32* %x_slot1812
  %cast_op1815 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1816 = call i32* @oat_malloc ( i32 12 )
  %obj1817 = bitcast i32* %mem_ptr1816 to %A* 
  %new_obj1818 = call %Object* @_Object_ctor ( %A* %obj1817, %Object* %cast_op1815 )
  %_this1 = bitcast %Object* %new_obj1818 to %A 
  %_name1819 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str340, i8** %_name1819
  %this_vtable1820 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable337, %_A_vtable** %this_vtable1820
  %x1813 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1814 = load i32* %x_slot1812
  store i32 %lhs_or_call1814, i32* %x1813
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh368:
  %_name1809 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1810 = load i8** %_name1809
  ret i8* %lhs_or_call1810
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh367:
  %_name1807 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str339, i8** %_name1807
  %this_vtable1808 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable336, %_Object_vtable** %this_vtable1808
  ret %Object* %_this1
}


