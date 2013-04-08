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


define i32 @program (i32 %argc1853, { i32, [ 0 x i8* ] }* %argv1851){
__fresh404:
  %argc_slot1854 = alloca i32
  store i32 %argc1853, i32* %argc_slot1854
  %argv_slot1852 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1851, { i32, [ 0 x i8* ] }** %argv_slot1852
  %mem_ptr1855 = call i32* @oat_malloc ( i32 8 )
  %obj1856 = bitcast i32* %mem_ptr1855 to %Object* 
  %new_obj1857 = call %Object* @_Object_ctor ( %Object* %obj1856 )
  %vdecl_slot1858 = alloca %Object*
  store %Object* %new_obj1857, %Object** %vdecl_slot1858
  %mem_ptr1859 = call i32* @oat_malloc ( i32 8 )
  %obj1860 = bitcast i32* %mem_ptr1859 to %A* 
  %new_obj1861 = call %A* @_A_ctor ( %A* %obj1860 )
  %vdecl_slot1862 = alloca %A*
  store %A* %new_obj1861, %A** %vdecl_slot1862
  %mem_ptr1863 = call i32* @oat_malloc ( i32 8 )
  %obj1864 = bitcast i32* %mem_ptr1863 to %B* 
  %new_obj1865 = call %B* @_B_ctor ( %B* %obj1864 )
  %vdecl_slot1866 = alloca %B*
  store %B* %new_obj1865, %B** %vdecl_slot1866
  %mem_ptr1867 = call i32* @oat_malloc ( i32 8 )
  %obj1868 = bitcast i32* %mem_ptr1867 to %C* 
  %new_obj1869 = call %C* @_C_ctor ( %C* %obj1868 )
  %cast_op1870 = bitcast %C* %new_obj1869 to %B* 
  %vdecl_slot1871 = alloca %B*
  store %B* %cast_op1870, %B** %vdecl_slot1871
  %mem_ptr1872 = call i32* @oat_malloc ( i32 8 )
  %obj1873 = bitcast i32* %mem_ptr1872 to %D* 
  %new_obj1874 = call %D* @_D_ctor ( %D* %obj1873 )
  %cast_op1875 = bitcast %D* %new_obj1874 to %B* 
  %vdecl_slot1876 = alloca %B*
  store %B* %cast_op1875, %B** %vdecl_slot1876
  %mem_ptr1877 = call i32* @oat_malloc ( i32 8 )
  %obj1878 = bitcast i32* %mem_ptr1877 to %E* 
  %new_obj1879 = call %E* @_E_ctor ( %E* %obj1878 )
  %vdecl_slot1880 = alloca %E*
  store %E* %new_obj1879, %E** %vdecl_slot1880
  %mem_ptr1881 = call i32* @oat_malloc ( i32 8 )
  %obj1882 = bitcast i32* %mem_ptr1881 to %F* 
  %new_obj1883 = call %F* @_F_ctor ( %F* %obj1882 )
  %cast_op1884 = bitcast %F* %new_obj1883 to %B* 
  %vdecl_slot1885 = alloca %B*
  store %B* %cast_op1884, %B** %vdecl_slot1885
  %mem_ptr1886 = call i32* @oat_malloc ( i32 8 )
  %obj1887 = bitcast i32* %mem_ptr1886 to %G* 
  %new_obj1888 = call %G* @_G_ctor ( %G* %obj1887 )
  %vdecl_slot1889 = alloca %G*
  store %G* %new_obj1888, %G** %vdecl_slot1889
  %lhs_or_call1890 = load %Object** %vdecl_slot1858
  %vtable_ptr1891 = getelementptr %Object* %lhs_or_call1890, i32 0
  %vtable1892 = load %_Object_vtable** %vtable_ptr1891
  %get_name1894 = getelementptr %_Object_vtable* %vtable1892, i32 0, i32 1
  %get_name1893 = load i8* (%Object*)** %get_name1894
  %cast_op1895 = bitcast %Object %lhs_or_call1890 to %Object* 
  %ret1896 = call i8* %get_name1893 ( %Object* %cast_op1895 )
  call void @print_string( i8* %ret1896 )
  %lhs_or_call1897 = load %A** %vdecl_slot1862
  %vtable_ptr1898 = getelementptr %A* %lhs_or_call1897, i32 0
  %vtable1899 = load %_A_vtable** %vtable_ptr1898
  %get_name1901 = getelementptr %_A_vtable* %vtable1899, i32 0, i32 1
  %get_name1900 = load i8* (%Object*)** %get_name1901
  %cast_op1902 = bitcast %A %lhs_or_call1897 to %Object* 
  %ret1903 = call i8* %get_name1900 ( %Object* %cast_op1902 )
  call void @print_string( i8* %ret1903 )
  %lhs_or_call1904 = load %B** %vdecl_slot1866
  %vtable_ptr1905 = getelementptr %B* %lhs_or_call1904, i32 0
  %vtable1906 = load %_B_vtable** %vtable_ptr1905
  %get_name1908 = getelementptr %_B_vtable* %vtable1906, i32 0, i32 1
  %get_name1907 = load i8* (%Object*)** %get_name1908
  %cast_op1909 = bitcast %B %lhs_or_call1904 to %Object* 
  %ret1910 = call i8* %get_name1907 ( %Object* %cast_op1909 )
  call void @print_string( i8* %ret1910 )
  %lhs_or_call1911 = load %B** %vdecl_slot1871
  %vtable_ptr1912 = getelementptr %B* %lhs_or_call1911, i32 0
  %vtable1913 = load %_B_vtable** %vtable_ptr1912
  %get_name1915 = getelementptr %_B_vtable* %vtable1913, i32 0, i32 1
  %get_name1914 = load i8* (%Object*)** %get_name1915
  %cast_op1916 = bitcast %B %lhs_or_call1911 to %Object* 
  %ret1917 = call i8* %get_name1914 ( %Object* %cast_op1916 )
  call void @print_string( i8* %ret1917 )
  %lhs_or_call1918 = load %B** %vdecl_slot1876
  %vtable_ptr1919 = getelementptr %B* %lhs_or_call1918, i32 0
  %vtable1920 = load %_B_vtable** %vtable_ptr1919
  %get_name1922 = getelementptr %_B_vtable* %vtable1920, i32 0, i32 1
  %get_name1921 = load i8* (%Object*)** %get_name1922
  %cast_op1923 = bitcast %B %lhs_or_call1918 to %Object* 
  %ret1924 = call i8* %get_name1921 ( %Object* %cast_op1923 )
  call void @print_string( i8* %ret1924 )
  %lhs_or_call1925 = load %E** %vdecl_slot1880
  %vtable_ptr1926 = getelementptr %E* %lhs_or_call1925, i32 0
  %vtable1927 = load %_E_vtable** %vtable_ptr1926
  %get_name1929 = getelementptr %_E_vtable* %vtable1927, i32 0, i32 1
  %get_name1928 = load i8* (%Object*)** %get_name1929
  %cast_op1930 = bitcast %E %lhs_or_call1925 to %Object* 
  %ret1931 = call i8* %get_name1928 ( %Object* %cast_op1930 )
  call void @print_string( i8* %ret1931 )
  %lhs_or_call1932 = load %B** %vdecl_slot1885
  %vtable_ptr1933 = getelementptr %B* %lhs_or_call1932, i32 0
  %vtable1934 = load %_B_vtable** %vtable_ptr1933
  %get_name1936 = getelementptr %_B_vtable* %vtable1934, i32 0, i32 1
  %get_name1935 = load i8* (%Object*)** %get_name1936
  %cast_op1937 = bitcast %B %lhs_or_call1932 to %Object* 
  %ret1938 = call i8* %get_name1935 ( %Object* %cast_op1937 )
  call void @print_string( i8* %ret1938 )
  %lhs_or_call1939 = load %G** %vdecl_slot1889
  %vtable_ptr1940 = getelementptr %G* %lhs_or_call1939, i32 0
  %vtable1941 = load %_G_vtable** %vtable_ptr1940
  %get_name1943 = getelementptr %_G_vtable* %vtable1941, i32 0, i32 1
  %get_name1942 = load i8* (%Object*)** %get_name1943
  %cast_op1944 = bitcast %G %lhs_or_call1939 to %Object* 
  %ret1945 = call i8* %get_name1942 ( %Object* %cast_op1944 )
  call void @print_string( i8* %ret1945 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh403:
  %mem_ptr1846 = call i32* @oat_malloc ( i32 8 )
  %obj1847 = bitcast i32* %mem_ptr1846 to %D* 
  %new_obj1848 = call %D* @_D_ctor ( %D* %obj1847 )
  %_this1 = bitcast %D* %new_obj1848 to %G 
  %_name1849 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str333, i8** %_name1849
  %this_vtable1850 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable325, %_G_vtable** %this_vtable1850
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh402:
  %mem_ptr1841 = call i32* @oat_malloc ( i32 8 )
  %obj1842 = bitcast i32* %mem_ptr1841 to %B* 
  %new_obj1843 = call %B* @_B_ctor ( %B* %obj1842 )
  %_this1 = bitcast %B* %new_obj1843 to %F 
  %_name1844 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str332, i8** %_name1844
  %this_vtable1845 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable324, %_F_vtable** %this_vtable1845
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh401:
  %mem_ptr1836 = call i32* @oat_malloc ( i32 8 )
  %obj1837 = bitcast i32* %mem_ptr1836 to %Object* 
  %new_obj1838 = call %Object* @_Object_ctor ( %Object* %obj1837 )
  %_this1 = bitcast %Object* %new_obj1838 to %E 
  %_name1839 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str331, i8** %_name1839
  %this_vtable1840 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable323, %_E_vtable** %this_vtable1840
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh400:
  %mem_ptr1831 = call i32* @oat_malloc ( i32 8 )
  %obj1832 = bitcast i32* %mem_ptr1831 to %C* 
  %new_obj1833 = call %C* @_C_ctor ( %C* %obj1832 )
  %_this1 = bitcast %C* %new_obj1833 to %D 
  %_name1834 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str330, i8** %_name1834
  %this_vtable1835 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable322, %_D_vtable** %this_vtable1835
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh399:
  %mem_ptr1826 = call i32* @oat_malloc ( i32 8 )
  %obj1827 = bitcast i32* %mem_ptr1826 to %B* 
  %new_obj1828 = call %B* @_B_ctor ( %B* %obj1827 )
  %_this1 = bitcast %B* %new_obj1828 to %C 
  %_name1829 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str329, i8** %_name1829
  %this_vtable1830 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable321, %_C_vtable** %this_vtable1830
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh398:
  %mem_ptr1821 = call i32* @oat_malloc ( i32 8 )
  %obj1822 = bitcast i32* %mem_ptr1821 to %Object* 
  %new_obj1823 = call %Object* @_Object_ctor ( %Object* %obj1822 )
  %_this1 = bitcast %Object* %new_obj1823 to %B 
  %_name1824 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str328, i8** %_name1824
  %this_vtable1825 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable320, %_B_vtable** %this_vtable1825
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh397:
  %mem_ptr1816 = call i32* @oat_malloc ( i32 8 )
  %obj1817 = bitcast i32* %mem_ptr1816 to %Object* 
  %new_obj1818 = call %Object* @_Object_ctor ( %Object* %obj1817 )
  %_this1 = bitcast %Object* %new_obj1818 to %A 
  %_name1819 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str327, i8** %_name1819
  %this_vtable1820 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable319, %_A_vtable** %this_vtable1820
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh396:
  %_name1814 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1815 = load i8** %_name1814
  ret i8* %lhs_or_call1815
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh395:
  %_name1812 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str326, i8** %_name1812
  %this_vtable1813 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable318, %_Object_vtable** %this_vtable1813
  ret %Object* %_this1
}


