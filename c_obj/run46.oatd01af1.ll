%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)*, %A* (%B*)* }
%A = type { %_A_vtable*, i8*, i32, %S* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, %A* (%A*)* }
%S = type { %_S_vtable*, i8*, i32 }
%_S_vtable = type { %_Object_vtable*, i8* (%Object*)*, { i32, [ 0 x i32 ] }* (%S*)*, %S* (%S*)* }
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
@_const_str315.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str315 = alias bitcast([ 2 x i8 ]* @_const_str315.str. to i8*)@_const_str314.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str314 = alias bitcast([ 2 x i8 ]* @_const_str314.str. to i8*)@_const_str313.str. = private unnamed_addr constant [ 2 x i8 ] c "S\00", align 4
@_const_str313 = alias bitcast([ 2 x i8 ]* @_const_str313.str. to i8*)@arr311 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by @arr311.init312
@_const_str310.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str310 = alias bitcast([ 7 x i8 ]* @_const_str310.str. to i8*)@_B_vtable309 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable306, i8* (%Object*)* @_Object_get_name, %A* (%B*)* @_B_f}, align 4
@_A_vtable308 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable306, i8* (%Object*)* @_Object_get_name, %A* (%A*)* @_A_g}, align 4
@_S_vtable307 = private constant %_S_vtable {%_Object_vtable* @_Object_vtable306, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%S*)* @_S_g, %S* (%S*)* @_S_f}, align 4
@_Object_vtable306 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh600:
  call void @arr311.init312(  )
  ret void
}


define i32 @program (i32 %argc1786, { i32, [ 0 x i8* ] }* %argv1784){
__fresh599:
  %argc_slot1787 = alloca i32
  store i32 %argc1786, i32* %argc_slot1787
  %argv_slot1785 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1784, { i32, [ 0 x i8* ] }** %argv_slot1785
  %mem_ptr1788 = call i32* @oat_malloc ( i32 8 )
  %obj1789 = bitcast i32* %mem_ptr1788 to %B* 
  %new_obj1790 = call %B* @_B_ctor ( %B* %obj1789 )
  %vdecl_slot1791 = alloca %B*
  store %B* %new_obj1790, %B** %vdecl_slot1791
  %lhs_or_call1792 = load %B** %vdecl_slot1791
  %vtable_ptr1793 = getelementptr %B* %lhs_or_call1792, i32 0
  %vtable1794 = load %_B_vtable** %vtable_ptr1793
  %f1796 = getelementptr %_B_vtable* %vtable1794, i32 0, i32 2
  %f1795 = load %A* (%B*)** %f1796
  %cast_op1797 = bitcast %B %lhs_or_call1792 to %B* 
  %ret1798 = call %A* %f1795 ( %B* %cast_op1797 )
  %s1799 = getelementptr %A* %ret1798, i32 0, i32 3
  %lhs_or_call1800 = load %S** %s1799
  %vtable_ptr1801 = getelementptr %S* %lhs_or_call1800, i32 0
  %vtable1802 = load %_S_vtable** %vtable_ptr1801
  %g1804 = getelementptr %_S_vtable* %vtable1802, i32 0, i32 2
  %g1803 = load { i32, [ 0 x i32 ] }* (%S*)** %g1804
  %cast_op1805 = bitcast %S %lhs_or_call1800 to %S* 
  %ret1806 = call { i32, [ 0 x i32 ] }* %g1803 ( %S* %cast_op1805 )
  %bound_ptr1808 = getelementptr { i32, [ 0 x i32 ] }* %ret1806, i32 0, i32 0
  %bound1809 = load i32* %bound_ptr1808
  call void @oat_array_bounds_check( i32 %bound1809, i32 1 )
  %elt1807 = getelementptr { i32, [ 0 x i32 ] }* %ret1806, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1807
  %lhs_or_call1810 = load %B** %vdecl_slot1791
  %vtable_ptr1811 = getelementptr %B* %lhs_or_call1810, i32 0
  %vtable1812 = load %_B_vtable** %vtable_ptr1811
  %f1814 = getelementptr %_B_vtable* %vtable1812, i32 0, i32 2
  %f1813 = load %A* (%B*)** %f1814
  %cast_op1815 = bitcast %B %lhs_or_call1810 to %B* 
  %ret1816 = call %A* %f1813 ( %B* %cast_op1815 )
  %i1817 = getelementptr %A* %ret1816, i32 0, i32 2
  %lhs_or_call1818 = load i32* %i1817
  %lhs_or_call1819 = load %B** %vdecl_slot1791
  %vtable_ptr1820 = getelementptr %B* %lhs_or_call1819, i32 0
  %vtable1821 = load %_B_vtable** %vtable_ptr1820
  %f1823 = getelementptr %_B_vtable* %vtable1821, i32 0, i32 2
  %f1822 = load %A* (%B*)** %f1823
  %cast_op1824 = bitcast %B %lhs_or_call1819 to %B* 
  %ret1825 = call %A* %f1822 ( %B* %cast_op1824 )
  %vtable_ptr1826 = getelementptr %A* %ret1825, i32 0
  %vtable1827 = load %_A_vtable** %vtable_ptr1826
  %g1829 = getelementptr %_A_vtable* %vtable1827, i32 0, i32 2
  %g1828 = load %A* (%A*)** %g1829
  %cast_op1830 = bitcast %A %ret1825 to %A* 
  %ret1831 = call %A* %g1828 ( %A* %cast_op1830 )
  %vtable_ptr1832 = getelementptr %A* %ret1831, i32 0
  %vtable1833 = load %_A_vtable** %vtable_ptr1832
  %g1835 = getelementptr %_A_vtable* %vtable1833, i32 0, i32 2
  %g1834 = load %A* (%A*)** %g1835
  %cast_op1836 = bitcast %A %ret1831 to %A* 
  %ret1837 = call %A* %g1834 ( %A* %cast_op1836 )
  %vtable_ptr1838 = getelementptr %A* %ret1837, i32 0
  %vtable1839 = load %_A_vtable** %vtable_ptr1838
  %g1841 = getelementptr %_A_vtable* %vtable1839, i32 0, i32 2
  %g1840 = load %A* (%A*)** %g1841
  %cast_op1842 = bitcast %A %ret1837 to %A* 
  %ret1843 = call %A* %g1840 ( %A* %cast_op1842 )
  %i1844 = getelementptr %A* %ret1843, i32 0, i32 2
  %lhs_or_call1845 = load i32* %i1844
  %bop1846 = add i32 %lhs_or_call1818, %lhs_or_call1845
  %lhs_or_call1847 = load %B** %vdecl_slot1791
  %vtable_ptr1848 = getelementptr %B* %lhs_or_call1847, i32 0
  %vtable1849 = load %_B_vtable** %vtable_ptr1848
  %f1851 = getelementptr %_B_vtable* %vtable1849, i32 0, i32 2
  %f1850 = load %A* (%B*)** %f1851
  %cast_op1852 = bitcast %B %lhs_or_call1847 to %B* 
  %ret1853 = call %A* %f1850 ( %B* %cast_op1852 )
  %vtable_ptr1854 = getelementptr %A* %ret1853, i32 0
  %vtable1855 = load %_A_vtable** %vtable_ptr1854
  %g1857 = getelementptr %_A_vtable* %vtable1855, i32 0, i32 2
  %g1856 = load %A* (%A*)** %g1857
  %cast_op1858 = bitcast %A %ret1853 to %A* 
  %ret1859 = call %A* %g1856 ( %A* %cast_op1858 )
  %vtable_ptr1860 = getelementptr %A* %ret1859, i32 0
  %vtable1861 = load %_A_vtable** %vtable_ptr1860
  %g1863 = getelementptr %_A_vtable* %vtable1861, i32 0, i32 2
  %g1862 = load %A* (%A*)** %g1863
  %cast_op1864 = bitcast %A %ret1859 to %A* 
  %ret1865 = call %A* %g1862 ( %A* %cast_op1864 )
  %vtable_ptr1866 = getelementptr %A* %ret1865, i32 0
  %vtable1867 = load %_A_vtable** %vtable_ptr1866
  %g1869 = getelementptr %_A_vtable* %vtable1867, i32 0, i32 2
  %g1868 = load %A* (%A*)** %g1869
  %cast_op1870 = bitcast %A %ret1865 to %A* 
  %ret1871 = call %A* %g1868 ( %A* %cast_op1870 )
  %vtable_ptr1872 = getelementptr %A* %ret1871, i32 0
  %vtable1873 = load %_A_vtable** %vtable_ptr1872
  %g1875 = getelementptr %_A_vtable* %vtable1873, i32 0, i32 2
  %g1874 = load %A* (%A*)** %g1875
  %cast_op1876 = bitcast %A %ret1871 to %A* 
  %ret1877 = call %A* %g1874 ( %A* %cast_op1876 )
  %vtable_ptr1878 = getelementptr %A* %ret1877, i32 0
  %vtable1879 = load %_A_vtable** %vtable_ptr1878
  %g1881 = getelementptr %_A_vtable* %vtable1879, i32 0, i32 2
  %g1880 = load %A* (%A*)** %g1881
  %cast_op1882 = bitcast %A %ret1877 to %A* 
  %ret1883 = call %A* %g1880 ( %A* %cast_op1882 )
  %vtable_ptr1884 = getelementptr %A* %ret1883, i32 0
  %vtable1885 = load %_A_vtable** %vtable_ptr1884
  %g1887 = getelementptr %_A_vtable* %vtable1885, i32 0, i32 2
  %g1886 = load %A* (%A*)** %g1887
  %cast_op1888 = bitcast %A %ret1883 to %A* 
  %ret1889 = call %A* %g1886 ( %A* %cast_op1888 )
  %vtable_ptr1890 = getelementptr %A* %ret1889, i32 0
  %vtable1891 = load %_A_vtable** %vtable_ptr1890
  %g1893 = getelementptr %_A_vtable* %vtable1891, i32 0, i32 2
  %g1892 = load %A* (%A*)** %g1893
  %cast_op1894 = bitcast %A %ret1889 to %A* 
  %ret1895 = call %A* %g1892 ( %A* %cast_op1894 )
  %vtable_ptr1896 = getelementptr %A* %ret1895, i32 0
  %vtable1897 = load %_A_vtable** %vtable_ptr1896
  %g1899 = getelementptr %_A_vtable* %vtable1897, i32 0, i32 2
  %g1898 = load %A* (%A*)** %g1899
  %cast_op1900 = bitcast %A %ret1895 to %A* 
  %ret1901 = call %A* %g1898 ( %A* %cast_op1900 )
  %vtable_ptr1902 = getelementptr %A* %ret1901, i32 0
  %vtable1903 = load %_A_vtable** %vtable_ptr1902
  %g1905 = getelementptr %_A_vtable* %vtable1903, i32 0, i32 2
  %g1904 = load %A* (%A*)** %g1905
  %cast_op1906 = bitcast %A %ret1901 to %A* 
  %ret1907 = call %A* %g1904 ( %A* %cast_op1906 )
  %i1908 = getelementptr %A* %ret1907, i32 0, i32 2
  %lhs_or_call1909 = load i32* %i1908
  %bop1910 = add i32 %bop1846, %lhs_or_call1909
  %lhs_or_call1911 = load %B** %vdecl_slot1791
  %vtable_ptr1912 = getelementptr %B* %lhs_or_call1911, i32 0
  %vtable1913 = load %_B_vtable** %vtable_ptr1912
  %f1915 = getelementptr %_B_vtable* %vtable1913, i32 0, i32 2
  %f1914 = load %A* (%B*)** %f1915
  %cast_op1916 = bitcast %B %lhs_or_call1911 to %B* 
  %ret1917 = call %A* %f1914 ( %B* %cast_op1916 )
  %s1918 = getelementptr %A* %ret1917, i32 0, i32 3
  %lhs_or_call1919 = load %S** %s1918
  %vtable_ptr1920 = getelementptr %S* %lhs_or_call1919, i32 0
  %vtable1921 = load %_S_vtable** %vtable_ptr1920
  %f1923 = getelementptr %_S_vtable* %vtable1921, i32 0, i32 3
  %f1922 = load %S* (%S*)** %f1923
  %cast_op1924 = bitcast %S %lhs_or_call1919 to %S* 
  %ret1925 = call %S* %f1922 ( %S* %cast_op1924 )
  %i1926 = getelementptr %S* %ret1925, i32 0, i32 2
  %lhs_or_call1927 = load i32* %i1926
  %bop1928 = add i32 %bop1910, %lhs_or_call1927
  %lhs_or_call1929 = load { i32, [ 0 x i32 ] }** @arr311
  %bound_ptr1931 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1929, i32 0, i32 0
  %bound1932 = load i32* %bound_ptr1931
  call void @oat_array_bounds_check( i32 %bound1932, i32 1 )
  %elt1930 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1929, i32 0, i32 1, i32 1
  %lhs_or_call1933 = load i32* %elt1930
  %bop1934 = add i32 %bop1928, %lhs_or_call1933
  %lhs_or_call1935 = load %B** %vdecl_slot1791
  %vtable_ptr1936 = getelementptr %B* %lhs_or_call1935, i32 0
  %vtable1937 = load %_B_vtable** %vtable_ptr1936
  %f1939 = getelementptr %_B_vtable* %vtable1937, i32 0, i32 2
  %f1938 = load %A* (%B*)** %f1939
  %cast_op1940 = bitcast %B %lhs_or_call1935 to %B* 
  %ret1941 = call %A* %f1938 ( %B* %cast_op1940 )
  %s1942 = getelementptr %A* %ret1941, i32 0, i32 3
  %lhs_or_call1943 = load %S** %s1942
  %vtable_ptr1944 = getelementptr %S* %lhs_or_call1943, i32 0
  %vtable1945 = load %_S_vtable** %vtable_ptr1944
  %g1947 = getelementptr %_S_vtable* %vtable1945, i32 0, i32 2
  %g1946 = load { i32, [ 0 x i32 ] }* (%S*)** %g1947
  %cast_op1948 = bitcast %S %lhs_or_call1943 to %S* 
  %ret1949 = call { i32, [ 0 x i32 ] }* %g1946 ( %S* %cast_op1948 )
  %bound_ptr1951 = getelementptr { i32, [ 0 x i32 ] }* %ret1949, i32 0, i32 0
  %bound1952 = load i32* %bound_ptr1951
  call void @oat_array_bounds_check( i32 %bound1952, i32 1 )
  %elt1950 = getelementptr { i32, [ 0 x i32 ] }* %ret1949, i32 0, i32 1, i32 1
  %lhs_or_call1953 = load i32* %elt1950
  %bop1954 = add i32 %bop1934, %lhs_or_call1953
  ret i32 %bop1954
}


define %A* @_B_f (%B* %_this1){
__fresh598:
  %mem_ptr1781 = call i32* @oat_malloc ( i32 16 )
  %obj1782 = bitcast i32* %mem_ptr1781 to %A* 
  %new_obj1783 = call %A* @_A_ctor ( %A* %obj1782 )
  ret %A* %new_obj1783
}


define %B* @_B_ctor (%B* %_this1){
__fresh597:
  %mem_ptr1776 = call i32* @oat_malloc ( i32 8 )
  %obj1777 = bitcast i32* %mem_ptr1776 to %Object* 
  %new_obj1778 = call %Object* @_Object_ctor ( %Object* %obj1777 )
  %_this1 = bitcast %Object* %new_obj1778 to %B 
  %_name1779 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str315, i8** %_name1779
  %this_vtable1780 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable309, %_B_vtable** %this_vtable1780
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh596:
  %mem_ptr1773 = call i32* @oat_malloc ( i32 16 )
  %obj1774 = bitcast i32* %mem_ptr1773 to %A* 
  %new_obj1775 = call %A* @_A_ctor ( %A* %obj1774 )
  ret %A* %new_obj1775
}


define %A* @_A_ctor (%A* %_this1){
__fresh595:
  %mem_ptr1764 = call i32* @oat_malloc ( i32 8 )
  %obj1765 = bitcast i32* %mem_ptr1764 to %Object* 
  %new_obj1766 = call %Object* @_Object_ctor ( %Object* %obj1765 )
  %_this1 = bitcast %Object* %new_obj1766 to %A 
  %_name1767 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str314, i8** %_name1767
  %s1768 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1769 = call i32* @oat_malloc ( i32 12 )
  %obj1770 = bitcast i32* %mem_ptr1769 to %S* 
  %new_obj1771 = call %S* @_S_ctor ( %S* %obj1770 )
  store %S* %new_obj1771, %S** %s1768
  %this_vtable1772 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable308, %_A_vtable** %this_vtable1772
  %i1763 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i1763
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh594:
  %mem_ptr1760 = call i32* @oat_malloc ( i32 12 )
  %obj1761 = bitcast i32* %mem_ptr1760 to %S* 
  %new_obj1762 = call %S* @_S_ctor ( %S* %obj1761 )
  ret %S* %new_obj1762
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh593:
  %lhs_or_call1759 = load { i32, [ 0 x i32 ] }** @arr311
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1759
}


define %S* @_S_ctor (%S* %_this1){
__fresh592:
  %mem_ptr1754 = call i32* @oat_malloc ( i32 8 )
  %obj1755 = bitcast i32* %mem_ptr1754 to %Object* 
  %new_obj1756 = call %Object* @_Object_ctor ( %Object* %obj1755 )
  %_this1 = bitcast %Object* %new_obj1756 to %S 
  %_name1757 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str313, i8** %_name1757
  %this_vtable1758 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable307, %_S_vtable** %this_vtable1758
  %i1753 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %i1753
  ret %S* %_this1
}


define void @arr311.init312 (){
__fresh591:
  %array_ptr1748 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1749 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1748 to { i32, [ 0 x i32 ] }* 
  %index_ptr1750 = getelementptr { i32, [ 0 x i32 ] }* %array1749, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1750
  %index_ptr1751 = getelementptr { i32, [ 0 x i32 ] }* %array1749, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1751
  %index_ptr1752 = getelementptr { i32, [ 0 x i32 ] }* %array1749, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1752
  store { i32, [ 0 x i32 ] }* %array1749, { i32, [ 0 x i32 ] }** @arr311
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh590:
  %_name1746 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1747 = load i8** %_name1746
  ret i8* %lhs_or_call1747
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh589:
  %_name1744 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str310, i8** %_name1744
  %this_vtable1745 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable306, %_Object_vtable** %this_vtable1745
  ret %Object* %_this1
}


