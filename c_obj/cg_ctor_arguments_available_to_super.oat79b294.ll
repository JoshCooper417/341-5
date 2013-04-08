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
@_const_str330.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str330 = alias bitcast([ 2 x i8 ]* @_const_str330.str. to i8*)@_const_str329.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str329 = alias bitcast([ 2 x i8 ]* @_const_str329.str. to i8*)@_const_str328.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str328 = alias bitcast([ 7 x i8 ]* @_const_str328.str. to i8*)@_B_vtable327 = private constant %_B_vtable {%_A_vtable* @_A_vtable326, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable326 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable325, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable325 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh372:
  ret void
}


define i32 @program (i32 %argc1845, { i32, [ 0 x i8* ] }* %argv1843){
__fresh371:
  %argc_slot1846 = alloca i32
  store i32 %argc1845, i32* %argc_slot1846
  %argv_slot1844 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1843, { i32, [ 0 x i8* ] }** %argv_slot1844
  %mem_ptr1847 = call i32* @oat_malloc ( i32 12 )
  %obj1848 = bitcast i32* %mem_ptr1847 to %B* 
  %new_obj1849 = call %B* @_B_ctor ( %B* %obj1848, i32 1, i32 2 )
  %vdecl_slot1850 = alloca %B*
  store %B* %new_obj1849, %B** %vdecl_slot1850
  %lhs_or_call1851 = load %B** %vdecl_slot1850
  %x1852 = getelementptr %B* %lhs_or_call1851, i32 0, i32 2
  %lhs_or_call1853 = load i32* %x1852
  ret i32 %lhs_or_call1853
}


define %B* @_B_ctor (%B* %_this1, i32 %a1832, i32 %b1830){
__fresh370:
  %a_slot1833 = alloca i32
  store i32 %a1832, i32* %a_slot1833
  %b_slot1831 = alloca i32
  store i32 %b1830, i32* %b_slot1831
  %lhs_or_call1834 = load i32* %a_slot1833
  %bop1835 = mul i32 %lhs_or_call1834, 10
  %lhs_or_call1836 = load i32* %b_slot1831
  %bop1837 = add i32 %bop1835, %lhs_or_call1836
  %mem_ptr1838 = call i32* @oat_malloc ( i32 12 )
  %obj1839 = bitcast i32* %mem_ptr1838 to %A* 
  %new_obj1840 = call %A* @_A_ctor ( %A* %obj1839, i32 %bop1837 )
  %_this1 = bitcast %A* %new_obj1840 to %B 
  %_name1841 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str330, i8** %_name1841
  %this_vtable1842 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable327, %_B_vtable** %this_vtable1842
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1821){
__fresh369:
  %x_slot1822 = alloca i32
  store i32 %x1821, i32* %x_slot1822
  %mem_ptr1825 = call i32* @oat_malloc ( i32 8 )
  %obj1826 = bitcast i32* %mem_ptr1825 to %Object* 
  %new_obj1827 = call %Object* @_Object_ctor ( %Object* %obj1826 )
  %_this1 = bitcast %Object* %new_obj1827 to %A 
  %_name1828 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str329, i8** %_name1828
  %this_vtable1829 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable326, %_A_vtable** %this_vtable1829
  %x1823 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1824 = load i32* %x_slot1822
  store i32 %lhs_or_call1824, i32* %x1823
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh368:
  %_name1819 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1820 = load i8** %_name1819
  ret i8* %lhs_or_call1820
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh367:
  %_name1817 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str328, i8** %_name1817
  %this_vtable1818 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable325, %_Object_vtable** %this_vtable1818
  ret %Object* %_this1
}


