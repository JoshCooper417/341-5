%G = type { %_G_vtable*, i8* }
%_G_vtable = type { %_D_vtable*, i8* (%Object*)* }
%F = type { %_F_vtable*, i8* }
%_F_vtable = type { %_B_vtable*, i8* (%Object*)* }
%E = type { %_E_vtable*, i8* }
%_E_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%D = type { %_D_vtable*, i8* }
%_D_vtable = type { %_C_vtable*, i8* (%Object*)* }
%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
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
@_const_str333.str. = private unnamed_addr constant [ 2 x i8 ] c "G\00", align 4
@_const_str333 = alias bitcast([ 2 x i8 ]* @_const_str333.str. to i8*)@_const_str332.str. = private unnamed_addr constant [ 2 x i8 ] c "F\00", align 4
@_const_str332 = alias bitcast([ 2 x i8 ]* @_const_str332.str. to i8*)@_const_str331.str. = private unnamed_addr constant [ 2 x i8 ] c "E\00", align 4
@_const_str331 = alias bitcast([ 2 x i8 ]* @_const_str331.str. to i8*)@_const_str330.str. = private unnamed_addr constant [ 2 x i8 ] c "D\00", align 4
@_const_str330 = alias bitcast([ 2 x i8 ]* @_const_str330.str. to i8*)@_const_str329.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str329 = alias bitcast([ 2 x i8 ]* @_const_str329.str. to i8*)@_const_str328.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str328 = alias bitcast([ 2 x i8 ]* @_const_str328.str. to i8*)@_const_str327.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str327 = alias bitcast([ 2 x i8 ]* @_const_str327.str. to i8*)@_const_str326.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str326 = alias bitcast([ 7 x i8 ]* @_const_str326.str. to i8*)@_G_vtable325 = private constant %_G_vtable {%_D_vtable* @_D_vtable322, i8* (%Object*)* @_Object_get_name}, align 4
@_F_vtable324 = private constant %_F_vtable {%_B_vtable* @_B_vtable320, i8* (%Object*)* @_Object_get_name}, align 4
@_E_vtable323 = private constant %_E_vtable {%_Object_vtable* @_Object_vtable318, i8* (%Object*)* @_Object_get_name}, align 4
@_D_vtable322 = private constant %_D_vtable {%_C_vtable* @_C_vtable321, i8* (%Object*)* @_Object_get_name}, align 4
@_C_vtable321 = private constant %_C_vtable {%_B_vtable* @_B_vtable320, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable320 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable318, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable319 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable318, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable318 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh405:
  ret void
}


define i32 @program (i32 %argc1842, { i32, [ 0 x i8* ] }* %argv1840){
__fresh404:
  %argc_slot1843 = alloca i32
  store i32 %argc1842, i32* %argc_slot1843
  %argv_slot1841 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1840, { i32, [ 0 x i8* ] }** %argv_slot1841
  %mem_ptr1844 = call i32* @oat_malloc ( i32 8 )
  %obj1845 = bitcast i32* %mem_ptr1844 to %Object* 
  %new_obj1846 = call %Object* @_Object_ctor ( %Object* %obj1845 )
  %vdecl_slot1847 = alloca %Object*
  store %Object* %new_obj1846, %Object** %vdecl_slot1847
  %mem_ptr1848 = call i32* @oat_malloc ( i32 8 )
  %obj1849 = bitcast i32* %mem_ptr1848 to %A* 
  %new_obj1850 = call %A* @_A_ctor ( %A* %obj1849 )
  %vdecl_slot1851 = alloca %A*
  store %A* %new_obj1850, %A** %vdecl_slot1851
  %mem_ptr1852 = call i32* @oat_malloc ( i32 8 )
  %obj1853 = bitcast i32* %mem_ptr1852 to %B* 
  %new_obj1854 = call %B* @_B_ctor ( %B* %obj1853 )
  %vdecl_slot1855 = alloca %B*
  store %B* %new_obj1854, %B** %vdecl_slot1855
  %mem_ptr1856 = call i32* @oat_malloc ( i32 8 )
  %obj1857 = bitcast i32* %mem_ptr1856 to %C* 
  %new_obj1858 = call %C* @_C_ctor ( %C* %obj1857 )
  %cast_op1859 = bitcast %C* %new_obj1858 to %B* 
  %vdecl_slot1860 = alloca %B*
  store %B* %cast_op1859, %B** %vdecl_slot1860
  %mem_ptr1861 = call i32* @oat_malloc ( i32 8 )
  %obj1862 = bitcast i32* %mem_ptr1861 to %D* 
  %new_obj1863 = call %D* @_D_ctor ( %D* %obj1862 )
  %cast_op1864 = bitcast %D* %new_obj1863 to %B* 
  %vdecl_slot1865 = alloca %B*
  store %B* %cast_op1864, %B** %vdecl_slot1865
  %mem_ptr1866 = call i32* @oat_malloc ( i32 8 )
  %obj1867 = bitcast i32* %mem_ptr1866 to %E* 
  %new_obj1868 = call %E* @_E_ctor ( %E* %obj1867 )
  %vdecl_slot1869 = alloca %E*
  store %E* %new_obj1868, %E** %vdecl_slot1869
  %mem_ptr1870 = call i32* @oat_malloc ( i32 8 )
  %obj1871 = bitcast i32* %mem_ptr1870 to %F* 
  %new_obj1872 = call %F* @_F_ctor ( %F* %obj1871 )
  %cast_op1873 = bitcast %F* %new_obj1872 to %B* 
  %vdecl_slot1874 = alloca %B*
  store %B* %cast_op1873, %B** %vdecl_slot1874
  %mem_ptr1875 = call i32* @oat_malloc ( i32 8 )
  %obj1876 = bitcast i32* %mem_ptr1875 to %G* 
  %new_obj1877 = call %G* @_G_ctor ( %G* %obj1876 )
  %vdecl_slot1878 = alloca %G*
  store %G* %new_obj1877, %G** %vdecl_slot1878
  %lhs_or_call1879 = load %Object** %vdecl_slot1847
  %vtable_ptr1880 = getelementptr %Object* %lhs_or_call1879, i32 0
  %vtable1881 = load %_Object_vtable** %vtable_ptr1880
  %get_name1883 = getelementptr %_Object_vtable* %vtable1881, i32 0, i32 1
  %get_name1882 = load i8* (%Object*)** %get_name1883
  %cast_op1884 = bitcast %Object %lhs_or_call1879 to %Object* 
  %ret1885 = call i8* %get_name1882 ( %Object* %cast_op1884 )
  call void @print_string( i8* %ret1885 )
  %lhs_or_call1886 = load %A** %vdecl_slot1851
  %vtable_ptr1887 = getelementptr %A* %lhs_or_call1886, i32 0
  %vtable1888 = load %_A_vtable** %vtable_ptr1887
  %get_name1890 = getelementptr %_A_vtable* %vtable1888, i32 0, i32 1
  %get_name1889 = load i8* (%Object*)** %get_name1890
  %cast_op1891 = bitcast %A %lhs_or_call1886 to %Object* 
  %ret1892 = call i8* %get_name1889 ( %Object* %cast_op1891 )
  call void @print_string( i8* %ret1892 )
  %lhs_or_call1893 = load %B** %vdecl_slot1855
  %vtable_ptr1894 = getelementptr %B* %lhs_or_call1893, i32 0
  %vtable1895 = load %_B_vtable** %vtable_ptr1894
  %get_name1897 = getelementptr %_B_vtable* %vtable1895, i32 0, i32 1
  %get_name1896 = load i8* (%Object*)** %get_name1897
  %cast_op1898 = bitcast %B %lhs_or_call1893 to %Object* 
  %ret1899 = call i8* %get_name1896 ( %Object* %cast_op1898 )
  call void @print_string( i8* %ret1899 )
  %lhs_or_call1900 = load %B** %vdecl_slot1860
  %vtable_ptr1901 = getelementptr %B* %lhs_or_call1900, i32 0
  %vtable1902 = load %_B_vtable** %vtable_ptr1901
  %get_name1904 = getelementptr %_B_vtable* %vtable1902, i32 0, i32 1
  %get_name1903 = load i8* (%Object*)** %get_name1904
  %cast_op1905 = bitcast %B %lhs_or_call1900 to %Object* 
  %ret1906 = call i8* %get_name1903 ( %Object* %cast_op1905 )
  call void @print_string( i8* %ret1906 )
  %lhs_or_call1907 = load %B** %vdecl_slot1865
  %vtable_ptr1908 = getelementptr %B* %lhs_or_call1907, i32 0
  %vtable1909 = load %_B_vtable** %vtable_ptr1908
  %get_name1911 = getelementptr %_B_vtable* %vtable1909, i32 0, i32 1
  %get_name1910 = load i8* (%Object*)** %get_name1911
  %cast_op1912 = bitcast %B %lhs_or_call1907 to %Object* 
  %ret1913 = call i8* %get_name1910 ( %Object* %cast_op1912 )
  call void @print_string( i8* %ret1913 )
  %lhs_or_call1914 = load %E** %vdecl_slot1869
  %vtable_ptr1915 = getelementptr %E* %lhs_or_call1914, i32 0
  %vtable1916 = load %_E_vtable** %vtable_ptr1915
  %get_name1918 = getelementptr %_E_vtable* %vtable1916, i32 0, i32 1
  %get_name1917 = load i8* (%Object*)** %get_name1918
  %cast_op1919 = bitcast %E %lhs_or_call1914 to %Object* 
  %ret1920 = call i8* %get_name1917 ( %Object* %cast_op1919 )
  call void @print_string( i8* %ret1920 )
  %lhs_or_call1921 = load %B** %vdecl_slot1874
  %vtable_ptr1922 = getelementptr %B* %lhs_or_call1921, i32 0
  %vtable1923 = load %_B_vtable** %vtable_ptr1922
  %get_name1925 = getelementptr %_B_vtable* %vtable1923, i32 0, i32 1
  %get_name1924 = load i8* (%Object*)** %get_name1925
  %cast_op1926 = bitcast %B %lhs_or_call1921 to %Object* 
  %ret1927 = call i8* %get_name1924 ( %Object* %cast_op1926 )
  call void @print_string( i8* %ret1927 )
  %lhs_or_call1928 = load %G** %vdecl_slot1878
  %vtable_ptr1929 = getelementptr %G* %lhs_or_call1928, i32 0
  %vtable1930 = load %_G_vtable** %vtable_ptr1929
  %get_name1932 = getelementptr %_G_vtable* %vtable1930, i32 0, i32 1
  %get_name1931 = load i8* (%Object*)** %get_name1932
  %cast_op1933 = bitcast %G %lhs_or_call1928 to %Object* 
  %ret1934 = call i8* %get_name1931 ( %Object* %cast_op1933 )
  call void @print_string( i8* %ret1934 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh403:
  %mem_ptr1835 = call i32* @oat_malloc ( i32 8 )
  %obj1836 = bitcast i32* %mem_ptr1835 to %D* 
  %new_obj1837 = call %D* @_D_ctor ( %D* %obj1836 )
  %_this1 = bitcast %D* %new_obj1837 to %G 
  %_name1838 = getelementptr %G* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str333, i8** %_name1838
  %this_vtable1839 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable325, %_G_vtable** %this_vtable1839
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh402:
  %mem_ptr1830 = call i32* @oat_malloc ( i32 8 )
  %obj1831 = bitcast i32* %mem_ptr1830 to %B* 
  %new_obj1832 = call %B* @_B_ctor ( %B* %obj1831 )
  %_this1 = bitcast %B* %new_obj1832 to %F 
  %_name1833 = getelementptr %F* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str332, i8** %_name1833
  %this_vtable1834 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable324, %_F_vtable** %this_vtable1834
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh401:
  %mem_ptr1825 = call i32* @oat_malloc ( i32 8 )
  %obj1826 = bitcast i32* %mem_ptr1825 to %Object* 
  %new_obj1827 = call %Object* @_Object_ctor ( %Object* %obj1826 )
  %_this1 = bitcast %Object* %new_obj1827 to %E 
  %_name1828 = getelementptr %E* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str331, i8** %_name1828
  %this_vtable1829 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable323, %_E_vtable** %this_vtable1829
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh400:
  %mem_ptr1820 = call i32* @oat_malloc ( i32 8 )
  %obj1821 = bitcast i32* %mem_ptr1820 to %C* 
  %new_obj1822 = call %C* @_C_ctor ( %C* %obj1821 )
  %_this1 = bitcast %C* %new_obj1822 to %D 
  %_name1823 = getelementptr %D* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str330, i8** %_name1823
  %this_vtable1824 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable322, %_D_vtable** %this_vtable1824
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh399:
  %mem_ptr1815 = call i32* @oat_malloc ( i32 8 )
  %obj1816 = bitcast i32* %mem_ptr1815 to %B* 
  %new_obj1817 = call %B* @_B_ctor ( %B* %obj1816 )
  %_this1 = bitcast %B* %new_obj1817 to %C 
  %_name1818 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str329, i8** %_name1818
  %this_vtable1819 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable321, %_C_vtable** %this_vtable1819
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh398:
  %mem_ptr1810 = call i32* @oat_malloc ( i32 8 )
  %obj1811 = bitcast i32* %mem_ptr1810 to %Object* 
  %new_obj1812 = call %Object* @_Object_ctor ( %Object* %obj1811 )
  %_this1 = bitcast %Object* %new_obj1812 to %B 
  %_name1813 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str328, i8** %_name1813
  %this_vtable1814 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable320, %_B_vtable** %this_vtable1814
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh397:
  %mem_ptr1805 = call i32* @oat_malloc ( i32 8 )
  %obj1806 = bitcast i32* %mem_ptr1805 to %Object* 
  %new_obj1807 = call %Object* @_Object_ctor ( %Object* %obj1806 )
  %_this1 = bitcast %Object* %new_obj1807 to %A 
  %_name1808 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str327, i8** %_name1808
  %this_vtable1809 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable319, %_A_vtable** %this_vtable1809
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh396:
  %_name1803 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call1804 = load i8** %_name1803
  ret i8* %lhs_or_call1804
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh395:
  %_name1801 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str326, i8** %_name1801
  %this_vtable1802 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable318, %_Object_vtable** %this_vtable1802
  ret %Object* %_this1
}


