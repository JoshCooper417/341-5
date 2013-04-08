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
@arr164 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by @arr164.init165
@_B_vtable163 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable160, i8* (%Object*)* @_Object_get_name, %A* (%B*)* @_B_f}, align 4
@_A_vtable162 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable160, i8* (%Object*)* @_Object_get_name, %A* (%A*)* @_A_g}, align 4
@_S_vtable161 = private constant %_S_vtable {%_Object_vtable* @_Object_vtable160, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%S*)* @_S_g, %S* (%S*)* @_S_f}, align 4
@_Object_vtable160 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh346:
  call void @arr164.init165(  )
  ret void
}


define i32 @program (i32 %argc1802, { i32, [ 0 x i8* ] }* %argv1800){
__fresh345:
  %argc_slot1803 = alloca i32
  store i32 %argc1802, i32* %argc_slot1803
  %argv_slot1801 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1800, { i32, [ 0 x i8* ] }** %argv_slot1801
  %mem_ptr1804 = call i32* @oat_malloc ( i32 8 )
  %obj1805 = bitcast i32* %mem_ptr1804 to %B* 
  %new_obj1806 = call %B* @_B_ctor ( %B* %obj1805 )
  %vdecl_slot1807 = alloca %B*
  store %B* %new_obj1806, %B** %vdecl_slot1807
  %lhs_or_call1808 = load %B** %vdecl_slot1807
  %f1810 = getelementptr %_B_vtable* @_B_vtable163, i32 0, i32 2
  %f1809 = load %A* (%B*)** %f1810
  %cast_op1811 = bitcast %B %lhs_or_call1808 to %B* 
  %ret1812 = call %A* %f1809 ( %B* %cast_op1811 )
  %s1813 = getelementptr %A* %ret1812, i32 0, i32 3
  %lhs_or_call1814 = load %S** %s1813
  %g1816 = getelementptr %_S_vtable* @_S_vtable161, i32 0, i32 2
  %g1815 = load { i32, [ 0 x i32 ] }* (%S*)** %g1816
  %cast_op1817 = bitcast %S %lhs_or_call1814 to %S* 
  %ret1818 = call { i32, [ 0 x i32 ] }* %g1815 ( %S* %cast_op1817 )
  %bound_ptr1820 = getelementptr { i32, [ 0 x i32 ] }* %ret1818, i32 0, i32 0
  %bound1821 = load i32* %bound_ptr1820
  call void @oat_array_bounds_check( i32 %bound1821, i32 1 )
  %elt1819 = getelementptr { i32, [ 0 x i32 ] }* %ret1818, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1819
  %lhs_or_call1822 = load %B** %vdecl_slot1807
  %f1824 = getelementptr %_B_vtable* @_B_vtable163, i32 0, i32 2
  %f1823 = load %A* (%B*)** %f1824
  %cast_op1825 = bitcast %B %lhs_or_call1822 to %B* 
  %ret1826 = call %A* %f1823 ( %B* %cast_op1825 )
  %i1827 = getelementptr %A* %ret1826, i32 0, i32 2
  %lhs_or_call1828 = load i32* %i1827
  %lhs_or_call1829 = load %B** %vdecl_slot1807
  %f1831 = getelementptr %_B_vtable* @_B_vtable163, i32 0, i32 2
  %f1830 = load %A* (%B*)** %f1831
  %cast_op1832 = bitcast %B %lhs_or_call1829 to %B* 
  %ret1833 = call %A* %f1830 ( %B* %cast_op1832 )
  %g1835 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1834 = load %A* (%A*)** %g1835
  %cast_op1836 = bitcast %A %ret1833 to %A* 
  %ret1837 = call %A* %g1834 ( %A* %cast_op1836 )
  %g1839 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1838 = load %A* (%A*)** %g1839
  %cast_op1840 = bitcast %A %ret1837 to %A* 
  %ret1841 = call %A* %g1838 ( %A* %cast_op1840 )
  %g1843 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1842 = load %A* (%A*)** %g1843
  %cast_op1844 = bitcast %A %ret1841 to %A* 
  %ret1845 = call %A* %g1842 ( %A* %cast_op1844 )
  %i1846 = getelementptr %A* %ret1845, i32 0, i32 2
  %lhs_or_call1847 = load i32* %i1846
  %bop1848 = add i32 %lhs_or_call1828, %lhs_or_call1847
  %lhs_or_call1849 = load %B** %vdecl_slot1807
  %f1851 = getelementptr %_B_vtable* @_B_vtable163, i32 0, i32 2
  %f1850 = load %A* (%B*)** %f1851
  %cast_op1852 = bitcast %B %lhs_or_call1849 to %B* 
  %ret1853 = call %A* %f1850 ( %B* %cast_op1852 )
  %g1855 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1854 = load %A* (%A*)** %g1855
  %cast_op1856 = bitcast %A %ret1853 to %A* 
  %ret1857 = call %A* %g1854 ( %A* %cast_op1856 )
  %g1859 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1858 = load %A* (%A*)** %g1859
  %cast_op1860 = bitcast %A %ret1857 to %A* 
  %ret1861 = call %A* %g1858 ( %A* %cast_op1860 )
  %g1863 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1862 = load %A* (%A*)** %g1863
  %cast_op1864 = bitcast %A %ret1861 to %A* 
  %ret1865 = call %A* %g1862 ( %A* %cast_op1864 )
  %g1867 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1866 = load %A* (%A*)** %g1867
  %cast_op1868 = bitcast %A %ret1865 to %A* 
  %ret1869 = call %A* %g1866 ( %A* %cast_op1868 )
  %g1871 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1870 = load %A* (%A*)** %g1871
  %cast_op1872 = bitcast %A %ret1869 to %A* 
  %ret1873 = call %A* %g1870 ( %A* %cast_op1872 )
  %g1875 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1874 = load %A* (%A*)** %g1875
  %cast_op1876 = bitcast %A %ret1873 to %A* 
  %ret1877 = call %A* %g1874 ( %A* %cast_op1876 )
  %g1879 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1878 = load %A* (%A*)** %g1879
  %cast_op1880 = bitcast %A %ret1877 to %A* 
  %ret1881 = call %A* %g1878 ( %A* %cast_op1880 )
  %g1883 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1882 = load %A* (%A*)** %g1883
  %cast_op1884 = bitcast %A %ret1881 to %A* 
  %ret1885 = call %A* %g1882 ( %A* %cast_op1884 )
  %g1887 = getelementptr %_A_vtable* @_A_vtable162, i32 0, i32 2
  %g1886 = load %A* (%A*)** %g1887
  %cast_op1888 = bitcast %A %ret1885 to %A* 
  %ret1889 = call %A* %g1886 ( %A* %cast_op1888 )
  %i1890 = getelementptr %A* %ret1889, i32 0, i32 2
  %lhs_or_call1891 = load i32* %i1890
  %bop1892 = add i32 %bop1848, %lhs_or_call1891
  %lhs_or_call1893 = load %B** %vdecl_slot1807
  %f1895 = getelementptr %_B_vtable* @_B_vtable163, i32 0, i32 2
  %f1894 = load %A* (%B*)** %f1895
  %cast_op1896 = bitcast %B %lhs_or_call1893 to %B* 
  %ret1897 = call %A* %f1894 ( %B* %cast_op1896 )
  %s1898 = getelementptr %A* %ret1897, i32 0, i32 3
  %lhs_or_call1899 = load %S** %s1898
  %f1901 = getelementptr %_S_vtable* @_S_vtable161, i32 0, i32 3
  %f1900 = load %S* (%S*)** %f1901
  %cast_op1902 = bitcast %S %lhs_or_call1899 to %S* 
  %ret1903 = call %S* %f1900 ( %S* %cast_op1902 )
  %i1904 = getelementptr %S* %ret1903, i32 0, i32 2
  %lhs_or_call1905 = load i32* %i1904
  %bop1906 = add i32 %bop1892, %lhs_or_call1905
  %lhs_or_call1907 = load { i32, [ 0 x i32 ] }** @arr164
  %bound_ptr1909 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1907, i32 0, i32 0
  %bound1910 = load i32* %bound_ptr1909
  call void @oat_array_bounds_check( i32 %bound1910, i32 1 )
  %elt1908 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1907, i32 0, i32 1, i32 1
  %lhs_or_call1911 = load i32* %elt1908
  %bop1912 = add i32 %bop1906, %lhs_or_call1911
  %lhs_or_call1913 = load %B** %vdecl_slot1807
  %f1915 = getelementptr %_B_vtable* @_B_vtable163, i32 0, i32 2
  %f1914 = load %A* (%B*)** %f1915
  %cast_op1916 = bitcast %B %lhs_or_call1913 to %B* 
  %ret1917 = call %A* %f1914 ( %B* %cast_op1916 )
  %s1918 = getelementptr %A* %ret1917, i32 0, i32 3
  %lhs_or_call1919 = load %S** %s1918
  %g1921 = getelementptr %_S_vtable* @_S_vtable161, i32 0, i32 2
  %g1920 = load { i32, [ 0 x i32 ] }* (%S*)** %g1921
  %cast_op1922 = bitcast %S %lhs_or_call1919 to %S* 
  %ret1923 = call { i32, [ 0 x i32 ] }* %g1920 ( %S* %cast_op1922 )
  %bound_ptr1925 = getelementptr { i32, [ 0 x i32 ] }* %ret1923, i32 0, i32 0
  %bound1926 = load i32* %bound_ptr1925
  call void @oat_array_bounds_check( i32 %bound1926, i32 1 )
  %elt1924 = getelementptr { i32, [ 0 x i32 ] }* %ret1923, i32 0, i32 1, i32 1
  %lhs_or_call1927 = load i32* %elt1924
  %bop1928 = add i32 %bop1912, %lhs_or_call1927
  ret i32 %bop1928
}


define %A* @_B_f (%B* %_this1){
__fresh344:
  %mem_ptr1797 = call i32* @oat_malloc ( i32 16 )
  %obj1798 = bitcast i32* %mem_ptr1797 to %A* 
  %new_obj1799 = call %A* @_A_ctor ( %A* %obj1798 )
  ret %A* %new_obj1799
}


define %B* @_B_ctor (%B* %_this1){
__fresh343:
  %lhs_or_call1788 = load %B* %_this1
  %cast_op1789 = bitcast %B %lhs_or_call1788 to %Object* 
  %mem_ptr1790 = call i32* @oat_malloc ( i32 8 )
  %obj1791 = bitcast i32* %mem_ptr1790 to %Object* 
  %new_obj1792 = call %Object* @_Object_ctor ( %Object* %obj1791, %Object* %cast_op1789 )
  %_name1793 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call1794 = load %B* %_this1
  %cast_op1795 = bitcast %B %lhs_or_call1794 to i8* 
  store i8* %cast_op1795, i8** %_name1793
  %this_vtable1796 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable1796
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh342:
  %mem_ptr1785 = call i32* @oat_malloc ( i32 16 )
  %obj1786 = bitcast i32* %mem_ptr1785 to %A* 
  %new_obj1787 = call %A* @_A_ctor ( %A* %obj1786 )
  ret %A* %new_obj1787
}


define %A* @_A_ctor (%A* %_this1){
__fresh341:
  %lhs_or_call1772 = load %A* %_this1
  %cast_op1773 = bitcast %A %lhs_or_call1772 to %Object* 
  %mem_ptr1774 = call i32* @oat_malloc ( i32 8 )
  %obj1775 = bitcast i32* %mem_ptr1774 to %Object* 
  %new_obj1776 = call %Object* @_Object_ctor ( %Object* %obj1775, %Object* %cast_op1773 )
  %_name1777 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call1778 = load %A* %_this1
  %cast_op1779 = bitcast %A %lhs_or_call1778 to i8* 
  store i8* %cast_op1779, i8** %_name1777
  %s1780 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1781 = call i32* @oat_malloc ( i32 12 )
  %obj1782 = bitcast i32* %mem_ptr1781 to %S* 
  %new_obj1783 = call %S* @_S_ctor ( %S* %obj1782 )
  store %S* %new_obj1783, %S** %s1780
  %this_vtable1784 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable1784
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh340:
  %mem_ptr1769 = call i32* @oat_malloc ( i32 12 )
  %obj1770 = bitcast i32* %mem_ptr1769 to %S* 
  %new_obj1771 = call %S* @_S_ctor ( %S* %obj1770 )
  ret %S* %new_obj1771
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh339:
  %lhs_or_call1768 = load { i32, [ 0 x i32 ] }** @arr164
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1768
}


define %S* @_S_ctor (%S* %_this1){
__fresh338:
  %lhs_or_call1759 = load %S* %_this1
  %cast_op1760 = bitcast %S %lhs_or_call1759 to %Object* 
  %mem_ptr1761 = call i32* @oat_malloc ( i32 8 )
  %obj1762 = bitcast i32* %mem_ptr1761 to %Object* 
  %new_obj1763 = call %Object* @_Object_ctor ( %Object* %obj1762, %Object* %cast_op1760 )
  %_name1764 = getelementptr %S* %_this1, i32 0, i32 1
  %lhs_or_call1765 = load %S* %_this1
  %cast_op1766 = bitcast %S %lhs_or_call1765 to i8* 
  store i8* %cast_op1766, i8** %_name1764
  %this_vtable1767 = getelementptr %S* %_this1, i32 0, i32 0
  store %S* %_this1, %_S_vtable* %this_vtable1767
  ret %S* %_this1
}


define void @arr164.init165 (){
__fresh337:
  %array_ptr1754 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1755 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1754 to { i32, [ 0 x i32 ] }* 
  %index_ptr1756 = getelementptr { i32, [ 0 x i32 ] }* %array1755, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1756
  %index_ptr1757 = getelementptr { i32, [ 0 x i32 ] }* %array1755, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1757
  %index_ptr1758 = getelementptr { i32, [ 0 x i32 ] }* %array1755, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1758
  store { i32, [ 0 x i32 ] }* %array1755, { i32, [ 0 x i32 ] }** @arr164
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh336:
  %_name1752 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1753 = load i8** %_name1752
  ret i8* %lhs_or_call1753
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh335:
  %_name1748 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1749 = load %Object* %_this1
  %cast_op1750 = bitcast %Object %lhs_or_call1749 to i8* 
  store i8* %cast_op1750, i8** %_name1748
  %this_vtable1751 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1751
  ret %Object* %_this1
}


