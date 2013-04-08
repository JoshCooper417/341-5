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
@_G_vtable182 = private constant %_G_vtable {%_D_vtable* @_D_vtable179, i8* (%Object*)* @_Object_get_name}, align 4
@_F_vtable181 = private constant %_F_vtable {%_B_vtable* @_B_vtable177, i8* (%Object*)* @_Object_get_name}, align 4
@_E_vtable180 = private constant %_E_vtable {%_Object_vtable* @_Object_vtable175, i8* (%Object*)* @_Object_get_name}, align 4
@_D_vtable179 = private constant %_D_vtable {%_C_vtable* @_C_vtable178, i8* (%Object*)* @_Object_get_name}, align 4
@_C_vtable178 = private constant %_C_vtable {%_B_vtable* @_B_vtable177, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable177 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable175, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable176 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable175, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable175 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh366:
  ret void
}


define i32 @program (i32 %argc2048, { i32, [ 0 x i8* ] }* %argv2046){
__fresh365:
  %argc_slot2049 = alloca i32
  store i32 %argc2048, i32* %argc_slot2049
  %argv_slot2047 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2046, { i32, [ 0 x i8* ] }** %argv_slot2047
  %mem_ptr2050 = call i32* @oat_malloc ( i32 8 )
  %obj2051 = bitcast i32* %mem_ptr2050 to %Object* 
  %new_obj2052 = call %Object* @_Object_ctor ( %Object* %obj2051 )
  %vdecl_slot2053 = alloca %Object*
  store %Object* %new_obj2052, %Object** %vdecl_slot2053
  %mem_ptr2054 = call i32* @oat_malloc ( i32 8 )
  %obj2055 = bitcast i32* %mem_ptr2054 to %A* 
  %new_obj2056 = call %A* @_A_ctor ( %A* %obj2055 )
  %vdecl_slot2057 = alloca %A*
  store %A* %new_obj2056, %A** %vdecl_slot2057
  %mem_ptr2058 = call i32* @oat_malloc ( i32 8 )
  %obj2059 = bitcast i32* %mem_ptr2058 to %B* 
  %new_obj2060 = call %B* @_B_ctor ( %B* %obj2059 )
  %vdecl_slot2061 = alloca %B*
  store %B* %new_obj2060, %B** %vdecl_slot2061
  %mem_ptr2062 = call i32* @oat_malloc ( i32 8 )
  %obj2063 = bitcast i32* %mem_ptr2062 to %C* 
  %new_obj2064 = call %C* @_C_ctor ( %C* %obj2063 )
  %cast_op2065 = bitcast %C* %new_obj2064 to %B* 
  %vdecl_slot2066 = alloca %B*
  store %B* %cast_op2065, %B** %vdecl_slot2066
  %mem_ptr2067 = call i32* @oat_malloc ( i32 8 )
  %obj2068 = bitcast i32* %mem_ptr2067 to %D* 
  %new_obj2069 = call %D* @_D_ctor ( %D* %obj2068 )
  %cast_op2070 = bitcast %D* %new_obj2069 to %B* 
  %vdecl_slot2071 = alloca %B*
  store %B* %cast_op2070, %B** %vdecl_slot2071
  %mem_ptr2072 = call i32* @oat_malloc ( i32 8 )
  %obj2073 = bitcast i32* %mem_ptr2072 to %E* 
  %new_obj2074 = call %E* @_E_ctor ( %E* %obj2073 )
  %vdecl_slot2075 = alloca %E*
  store %E* %new_obj2074, %E** %vdecl_slot2075
  %mem_ptr2076 = call i32* @oat_malloc ( i32 8 )
  %obj2077 = bitcast i32* %mem_ptr2076 to %F* 
  %new_obj2078 = call %F* @_F_ctor ( %F* %obj2077 )
  %cast_op2079 = bitcast %F* %new_obj2078 to %B* 
  %vdecl_slot2080 = alloca %B*
  store %B* %cast_op2079, %B** %vdecl_slot2080
  %mem_ptr2081 = call i32* @oat_malloc ( i32 8 )
  %obj2082 = bitcast i32* %mem_ptr2081 to %G* 
  %new_obj2083 = call %G* @_G_ctor ( %G* %obj2082 )
  %vdecl_slot2084 = alloca %G*
  store %G* %new_obj2083, %G** %vdecl_slot2084
  %lhs_or_call2085 = load %Object** %vdecl_slot2053
  %get_name2087 = getelementptr %_Object_vtable* @_Object_vtable175, i32 0, i32 1
  %get_name2086 = load i8* (%Object*)** %get_name2087
  %cast_op2088 = bitcast %Object %lhs_or_call2085 to %Object* 
  %ret2089 = call i8* %get_name2086 ( %Object* %cast_op2088 )
  call void @print_string( i8* %ret2089 )
  %lhs_or_call2090 = load %A** %vdecl_slot2057
  %get_name2092 = getelementptr %_A_vtable* @_A_vtable176, i32 0, i32 1
  %get_name2091 = load i8* (%Object*)** %get_name2092
  %cast_op2093 = bitcast %A %lhs_or_call2090 to %Object* 
  %ret2094 = call i8* %get_name2091 ( %Object* %cast_op2093 )
  call void @print_string( i8* %ret2094 )
  %lhs_or_call2095 = load %B** %vdecl_slot2061
  %get_name2097 = getelementptr %_B_vtable* @_B_vtable177, i32 0, i32 1
  %get_name2096 = load i8* (%Object*)** %get_name2097
  %cast_op2098 = bitcast %B %lhs_or_call2095 to %Object* 
  %ret2099 = call i8* %get_name2096 ( %Object* %cast_op2098 )
  call void @print_string( i8* %ret2099 )
  %lhs_or_call2100 = load %B** %vdecl_slot2066
  %get_name2102 = getelementptr %_B_vtable* @_B_vtable177, i32 0, i32 1
  %get_name2101 = load i8* (%Object*)** %get_name2102
  %cast_op2103 = bitcast %B %lhs_or_call2100 to %Object* 
  %ret2104 = call i8* %get_name2101 ( %Object* %cast_op2103 )
  call void @print_string( i8* %ret2104 )
  %lhs_or_call2105 = load %B** %vdecl_slot2071
  %get_name2107 = getelementptr %_B_vtable* @_B_vtable177, i32 0, i32 1
  %get_name2106 = load i8* (%Object*)** %get_name2107
  %cast_op2108 = bitcast %B %lhs_or_call2105 to %Object* 
  %ret2109 = call i8* %get_name2106 ( %Object* %cast_op2108 )
  call void @print_string( i8* %ret2109 )
  %lhs_or_call2110 = load %E** %vdecl_slot2075
  %get_name2112 = getelementptr %_E_vtable* @_E_vtable180, i32 0, i32 1
  %get_name2111 = load i8* (%Object*)** %get_name2112
  %cast_op2113 = bitcast %E %lhs_or_call2110 to %Object* 
  %ret2114 = call i8* %get_name2111 ( %Object* %cast_op2113 )
  call void @print_string( i8* %ret2114 )
  %lhs_or_call2115 = load %B** %vdecl_slot2080
  %get_name2117 = getelementptr %_B_vtable* @_B_vtable177, i32 0, i32 1
  %get_name2116 = load i8* (%Object*)** %get_name2117
  %cast_op2118 = bitcast %B %lhs_or_call2115 to %Object* 
  %ret2119 = call i8* %get_name2116 ( %Object* %cast_op2118 )
  call void @print_string( i8* %ret2119 )
  %lhs_or_call2120 = load %G** %vdecl_slot2084
  %get_name2122 = getelementptr %_G_vtable* @_G_vtable182, i32 0, i32 1
  %get_name2121 = load i8* (%Object*)** %get_name2122
  %cast_op2123 = bitcast %G %lhs_or_call2120 to %Object* 
  %ret2124 = call i8* %get_name2121 ( %Object* %cast_op2123 )
  call void @print_string( i8* %ret2124 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh364:
  %lhs_or_call2037 = load %G* %_this1
  %cast_op2038 = bitcast %G %lhs_or_call2037 to %D* 
  %mem_ptr2039 = call i32* @oat_malloc ( i32 8 )
  %obj2040 = bitcast i32* %mem_ptr2039 to %D* 
  %new_obj2041 = call %D* @_D_ctor ( %D* %obj2040, %D* %cast_op2038 )
  %_name2042 = getelementptr %G* %_this1, i32 0, i32 1
  %lhs_or_call2043 = load %G* %_this1
  %cast_op2044 = bitcast %G %lhs_or_call2043 to i8* 
  store i8* %cast_op2044, i8** %_name2042
  %this_vtable2045 = getelementptr %G* %_this1, i32 0, i32 0
  store %G* %_this1, %_G_vtable* %this_vtable2045
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh363:
  %lhs_or_call2028 = load %F* %_this1
  %cast_op2029 = bitcast %F %lhs_or_call2028 to %B* 
  %mem_ptr2030 = call i32* @oat_malloc ( i32 8 )
  %obj2031 = bitcast i32* %mem_ptr2030 to %B* 
  %new_obj2032 = call %B* @_B_ctor ( %B* %obj2031, %B* %cast_op2029 )
  %_name2033 = getelementptr %F* %_this1, i32 0, i32 1
  %lhs_or_call2034 = load %F* %_this1
  %cast_op2035 = bitcast %F %lhs_or_call2034 to i8* 
  store i8* %cast_op2035, i8** %_name2033
  %this_vtable2036 = getelementptr %F* %_this1, i32 0, i32 0
  store %F* %_this1, %_F_vtable* %this_vtable2036
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh362:
  %lhs_or_call2019 = load %E* %_this1
  %cast_op2020 = bitcast %E %lhs_or_call2019 to %Object* 
  %mem_ptr2021 = call i32* @oat_malloc ( i32 8 )
  %obj2022 = bitcast i32* %mem_ptr2021 to %Object* 
  %new_obj2023 = call %Object* @_Object_ctor ( %Object* %obj2022, %Object* %cast_op2020 )
  %_name2024 = getelementptr %E* %_this1, i32 0, i32 1
  %lhs_or_call2025 = load %E* %_this1
  %cast_op2026 = bitcast %E %lhs_or_call2025 to i8* 
  store i8* %cast_op2026, i8** %_name2024
  %this_vtable2027 = getelementptr %E* %_this1, i32 0, i32 0
  store %E* %_this1, %_E_vtable* %this_vtable2027
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh361:
  %lhs_or_call2010 = load %D* %_this1
  %cast_op2011 = bitcast %D %lhs_or_call2010 to %C* 
  %mem_ptr2012 = call i32* @oat_malloc ( i32 8 )
  %obj2013 = bitcast i32* %mem_ptr2012 to %C* 
  %new_obj2014 = call %C* @_C_ctor ( %C* %obj2013, %C* %cast_op2011 )
  %_name2015 = getelementptr %D* %_this1, i32 0, i32 1
  %lhs_or_call2016 = load %D* %_this1
  %cast_op2017 = bitcast %D %lhs_or_call2016 to i8* 
  store i8* %cast_op2017, i8** %_name2015
  %this_vtable2018 = getelementptr %D* %_this1, i32 0, i32 0
  store %D* %_this1, %_D_vtable* %this_vtable2018
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh360:
  %lhs_or_call2001 = load %C* %_this1
  %cast_op2002 = bitcast %C %lhs_or_call2001 to %B* 
  %mem_ptr2003 = call i32* @oat_malloc ( i32 8 )
  %obj2004 = bitcast i32* %mem_ptr2003 to %B* 
  %new_obj2005 = call %B* @_B_ctor ( %B* %obj2004, %B* %cast_op2002 )
  %_name2006 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call2007 = load %C* %_this1
  %cast_op2008 = bitcast %C %lhs_or_call2007 to i8* 
  store i8* %cast_op2008, i8** %_name2006
  %this_vtable2009 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable2009
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh359:
  %lhs_or_call1992 = load %B* %_this1
  %cast_op1993 = bitcast %B %lhs_or_call1992 to %Object* 
  %mem_ptr1994 = call i32* @oat_malloc ( i32 8 )
  %obj1995 = bitcast i32* %mem_ptr1994 to %Object* 
  %new_obj1996 = call %Object* @_Object_ctor ( %Object* %obj1995, %Object* %cast_op1993 )
  %_name1997 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call1998 = load %B* %_this1
  %cast_op1999 = bitcast %B %lhs_or_call1998 to i8* 
  store i8* %cast_op1999, i8** %_name1997
  %this_vtable2000 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2000
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh358:
  %lhs_or_call1983 = load %A* %_this1
  %cast_op1984 = bitcast %A %lhs_or_call1983 to %Object* 
  %mem_ptr1985 = call i32* @oat_malloc ( i32 8 )
  %obj1986 = bitcast i32* %mem_ptr1985 to %Object* 
  %new_obj1987 = call %Object* @_Object_ctor ( %Object* %obj1986, %Object* %cast_op1984 )
  %_name1988 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call1989 = load %A* %_this1
  %cast_op1990 = bitcast %A %lhs_or_call1989 to i8* 
  store i8* %cast_op1990, i8** %_name1988
  %this_vtable1991 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable1991
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh357:
  %_name1981 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1982 = load i8** %_name1981
  ret i8* %lhs_or_call1982
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh356:
  %_name1977 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1978 = load %Object* %_this1
  %cast_op1979 = bitcast %Object %lhs_or_call1978 to i8* 
  store i8* %cast_op1979, i8** %_name1977
  %this_vtable1980 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1980
  ret %Object* %_this1
}


