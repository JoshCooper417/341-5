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


define i32 @program (i32 %argc1857, { i32, [ 0 x i8* ] }* %argv1855){
__fresh371:
  %argc_slot1858 = alloca i32
  store i32 %argc1857, i32* %argc_slot1858
  %argv_slot1856 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1855, { i32, [ 0 x i8* ] }** %argv_slot1856
  %mem_ptr1859 = call i32* @oat_malloc ( i32 12 )
  %obj1860 = bitcast i32* %mem_ptr1859 to %B* 
  %new_obj1861 = call %B* @_B_ctor ( %B* %obj1860, i32 1, i32 2 )
  %vdecl_slot1862 = alloca %B*
  store %B* %new_obj1861, %B** %vdecl_slot1862
  %lhs_or_call1863 = load %B** %vdecl_slot1862
  %x1864 = getelementptr %B* %lhs_or_call1863, i32 0, i32 2
  %lhs_or_call1865 = load i32* %x1864
  ret i32 %lhs_or_call1865
}


define %B* @_B_ctor (%B* %_this1, i32 %a1844, i32 %b1842){
__fresh370:
  %a_slot1845 = alloca i32
  store i32 %a1844, i32* %a_slot1845
  %b_slot1843 = alloca i32
  store i32 %b1842, i32* %b_slot1843
  %lhs_or_call1846 = load i32* %a_slot1845
  %bop1847 = mul i32 %lhs_or_call1846, 10
  %lhs_or_call1848 = load i32* %b_slot1843
  %bop1849 = add i32 %bop1847, %lhs_or_call1848
  %mem_ptr1850 = call i32* @oat_malloc ( i32 12 )
  %obj1851 = bitcast i32* %mem_ptr1850 to %A* 
  %new_obj1852 = call %A* @_A_ctor ( %A* %obj1851, i32 %bop1849 )
  %_this1 = bitcast %A* %new_obj1852 to %B 
  %_name1853 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str341, i8** %_name1853
  %this_vtable1854 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable338, %_B_vtable** %this_vtable1854
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1833){
__fresh369:
  %x_slot1834 = alloca i32
  store i32 %x1833, i32* %x_slot1834
  %mem_ptr1837 = call i32* @oat_malloc ( i32 8 )
  %obj1838 = bitcast i32* %mem_ptr1837 to %Object* 
  %new_obj1839 = call %Object* @_Object_ctor ( %Object* %obj1838 )
  %_this1 = bitcast %Object* %new_obj1839 to %A 
  %_name1840 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str340, i8** %_name1840
  %this_vtable1841 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable337, %_A_vtable** %this_vtable1841
  %x1835 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1836 = load i32* %x_slot1834
  store i32 %lhs_or_call1836, i32* %x1835
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh368:
  %_name1831 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1832 = load i8** %_name1831
  ret i8* %lhs_or_call1832
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh367:
  %_name1829 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str339, i8** %_name1829
  %this_vtable1830 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable336, %_Object_vtable** %this_vtable1830
  ret %Object* %_this1
}


