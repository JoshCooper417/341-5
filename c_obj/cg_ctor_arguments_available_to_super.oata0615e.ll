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
@_const_str350.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str350 = alias bitcast([ 2 x i8 ]* @_const_str350.str. to i8*)@_const_str349.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str349 = alias bitcast([ 2 x i8 ]* @_const_str349.str. to i8*)@_const_str348.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str348 = alias bitcast([ 7 x i8 ]* @_const_str348.str. to i8*)@_B_vtable347 = private constant %_B_vtable {%_A_vtable* @_A_vtable346, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable346 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable345, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable345 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh377:
  ret void
}


define i32 @program (i32 %argc1854, { i32, [ 0 x i8* ] }* %argv1852){
__fresh376:
  %argc_slot1855 = alloca i32
  store i32 %argc1854, i32* %argc_slot1855
  %argv_slot1853 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1852, { i32, [ 0 x i8* ] }** %argv_slot1853
  %mem_ptr1856 = call i32* @oat_malloc ( i32 12 )
  %obj1857 = bitcast i32* %mem_ptr1856 to %B* 
  %new_obj1858 = call %B* @_B_ctor ( %B* %obj1857, i32 1, i32 2 )
  %vdecl_slot1859 = alloca %B*
  store %B* %new_obj1858, %B** %vdecl_slot1859
  %lhs_or_call1860 = load %B** %vdecl_slot1859
  %x1861 = getelementptr %B* %lhs_or_call1860, i32 0, i32 2
  %lhs_or_call1862 = load i32* %x1861
  ret i32 %lhs_or_call1862
}


define %B* @_B_ctor (%B* %_this1, i32 %a1840, i32 %b1838){
__fresh375:
  %a_slot1841 = alloca i32
  store i32 %a1840, i32* %a_slot1841
  %b_slot1839 = alloca i32
  store i32 %b1838, i32* %b_slot1839
  %lhs_or_call1842 = load i32* %a_slot1841
  %bop1843 = mul i32 %lhs_or_call1842, 10
  %lhs_or_call1844 = load i32* %b_slot1839
  %bop1845 = add i32 %bop1843, %lhs_or_call1844
  %cast_op1846 = bitcast %B* %_this1 to %A* 
  %mem_ptr1847 = call i32* @oat_malloc ( i32 12 )
  %obj1848 = bitcast i32* %mem_ptr1847 to %B* 
  %new_obj1849 = call %A* @_A_ctor ( %B* %obj1848, %A* %cast_op1846, i32 %bop1845 )
  %_this1 = bitcast %A* %new_obj1849 to %B 
  %_name1850 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str350, i8** %_name1850
  %this_vtable1851 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable347, %_B_vtable** %this_vtable1851
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1828){
__fresh374:
  %x_slot1829 = alloca i32
  store i32 %x1828, i32* %x_slot1829
  %cast_op1832 = bitcast %A* %_this1 to %Object* 
  %mem_ptr1833 = call i32* @oat_malloc ( i32 12 )
  %obj1834 = bitcast i32* %mem_ptr1833 to %A* 
  %new_obj1835 = call %Object* @_Object_ctor ( %A* %obj1834, %Object* %cast_op1832 )
  %_this1 = bitcast %Object* %new_obj1835 to %A 
  %_name1836 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str349, i8** %_name1836
  %this_vtable1837 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable346, %_A_vtable** %this_vtable1837
  %x1830 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1831 = load i32* %x_slot1829
  store i32 %lhs_or_call1831, i32* %x1830
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh373:
  %_name1826 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1827 = load i8** %_name1826
  ret i8* %lhs_or_call1827
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh372:
  %_name1824 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str348, i8** %_name1824
  %this_vtable1825 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable345, %_Object_vtable** %this_vtable1825
  ret %Object* %_this1
}


