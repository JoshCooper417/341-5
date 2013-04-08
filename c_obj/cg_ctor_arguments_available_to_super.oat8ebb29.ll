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


define i32 @program (i32 %argc1838, { i32, [ 0 x i8* ] }* %argv1836){
__fresh371:
  %argc_slot1839 = alloca i32
  store i32 %argc1838, i32* %argc_slot1839
  %argv_slot1837 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1836, { i32, [ 0 x i8* ] }** %argv_slot1837
  %mem_ptr1840 = call i32* @oat_malloc ( i32 12 )
  %obj1841 = bitcast i32* %mem_ptr1840 to %B* 
  %new_obj1842 = call %B* @_B_ctor ( %B* %obj1841, i32 1, i32 2 )
  %vdecl_slot1843 = alloca %B*
  store %B* %new_obj1842, %B** %vdecl_slot1843
  %lhs_or_call1844 = load %B** %vdecl_slot1843
  %x1845 = getelementptr %B* %lhs_or_call1844, i32 0, i32 2
  %lhs_or_call1846 = load i32* %x1845
  ret i32 %lhs_or_call1846
}


define %B* @_B_ctor (%B* %_this1, i32 %a1825, i32 %b1823){
__fresh370:
  %a_slot1826 = alloca i32
  store i32 %a1825, i32* %a_slot1826
  %b_slot1824 = alloca i32
  store i32 %b1823, i32* %b_slot1824
  %lhs_or_call1827 = load i32* %a_slot1826
  %bop1828 = mul i32 %lhs_or_call1827, 10
  %lhs_or_call1829 = load i32* %b_slot1824
  %bop1830 = add i32 %bop1828, %lhs_or_call1829
  %mem_ptr1831 = call i32* @oat_malloc ( i32 12 )
  %obj1832 = bitcast i32* %mem_ptr1831 to %A* 
  %new_obj1833 = call %A* @_A_ctor ( %A* %obj1832, i32 %bop1830 )
  %_this1 = bitcast %A* %new_obj1833 to %B 
  %_name1834 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str330, i8** %_name1834
  %this_vtable1835 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable327, %_B_vtable** %this_vtable1835
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1814){
__fresh369:
  %x_slot1815 = alloca i32
  store i32 %x1814, i32* %x_slot1815
  %mem_ptr1818 = call i32* @oat_malloc ( i32 8 )
  %obj1819 = bitcast i32* %mem_ptr1818 to %Object* 
  %new_obj1820 = call %Object* @_Object_ctor ( %Object* %obj1819 )
  %_this1 = bitcast %Object* %new_obj1820 to %A 
  %_name1821 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str329, i8** %_name1821
  %this_vtable1822 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable326, %_A_vtable** %this_vtable1822
  %x1816 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1817 = load i32* %x_slot1815
  store i32 %lhs_or_call1817, i32* %x1816
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh368:
  %_name1812 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1813 = load i8** %_name1812
  ret i8* %lhs_or_call1813
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh367:
  %_name1810 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str328, i8** %_name1810
  %this_vtable1811 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable325, %_Object_vtable** %this_vtable1811
  ret %Object* %_this1
}


