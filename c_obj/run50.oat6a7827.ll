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
@_const_str342.str. = private unnamed_addr constant [ 2 x i8 ] c "G\00", align 4
@_const_str342 = alias bitcast([ 2 x i8 ]* @_const_str342.str. to i8*)@_const_str341.str. = private unnamed_addr constant [ 2 x i8 ] c "F\00", align 4
@_const_str341 = alias bitcast([ 2 x i8 ]* @_const_str341.str. to i8*)@_const_str340.str. = private unnamed_addr constant [ 2 x i8 ] c "E\00", align 4
@_const_str340 = alias bitcast([ 2 x i8 ]* @_const_str340.str. to i8*)@_const_str339.str. = private unnamed_addr constant [ 2 x i8 ] c "D\00", align 4
@_const_str339 = alias bitcast([ 2 x i8 ]* @_const_str339.str. to i8*)@_const_str338.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str338 = alias bitcast([ 2 x i8 ]* @_const_str338.str. to i8*)@_const_str337.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str337 = alias bitcast([ 2 x i8 ]* @_const_str337.str. to i8*)@_const_str336.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str336 = alias bitcast([ 2 x i8 ]* @_const_str336.str. to i8*)@_const_str335.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str335 = alias bitcast([ 7 x i8 ]* @_const_str335.str. to i8*)@_G_vtable334 = private constant %_G_vtable {%_D_vtable* @_D_vtable331, i8* (%Object*)* @_Object_get_name}, align 4
@_F_vtable333 = private constant %_F_vtable {%_B_vtable* @_B_vtable329, i8* (%Object*)* @_Object_get_name}, align 4
@_E_vtable332 = private constant %_E_vtable {%_Object_vtable* @_Object_vtable327, i8* (%Object*)* @_Object_get_name}, align 4
@_D_vtable331 = private constant %_D_vtable {%_C_vtable* @_C_vtable330, i8* (%Object*)* @_Object_get_name}, align 4
@_C_vtable330 = private constant %_C_vtable {%_B_vtable* @_B_vtable329, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable329 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable327, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable328 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable327, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable327 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh578:
  ret void
}


define i32 @program (i32 %argc2046, { i32, [ 0 x i8* ] }* %argv2044){
__fresh577:
  %argc_slot2047 = alloca i32
  store i32 %argc2046, i32* %argc_slot2047
  %argv_slot2045 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2044, { i32, [ 0 x i8* ] }** %argv_slot2045
  %mem_ptr2048 = call i32* @oat_malloc ( i32 8 )
  %obj2049 = bitcast i32* %mem_ptr2048 to %Object* 
  %new_obj2050 = call %Object* @_Object_ctor ( %Object* %obj2049 )
  %vdecl_slot2051 = alloca %Object*
  store %Object* %new_obj2050, %Object** %vdecl_slot2051
  %mem_ptr2052 = call i32* @oat_malloc ( i32 8 )
  %obj2053 = bitcast i32* %mem_ptr2052 to %A* 
  %new_obj2054 = call %A* @_A_ctor ( %A* %obj2053 )
  %vdecl_slot2055 = alloca %A*
  store %A* %new_obj2054, %A** %vdecl_slot2055
  %mem_ptr2056 = call i32* @oat_malloc ( i32 8 )
  %obj2057 = bitcast i32* %mem_ptr2056 to %B* 
  %new_obj2058 = call %B* @_B_ctor ( %B* %obj2057 )
  %vdecl_slot2059 = alloca %B*
  store %B* %new_obj2058, %B** %vdecl_slot2059
  %mem_ptr2060 = call i32* @oat_malloc ( i32 8 )
  %obj2061 = bitcast i32* %mem_ptr2060 to %C* 
  %new_obj2062 = call %C* @_C_ctor ( %C* %obj2061 )
  %cast_op2063 = bitcast %C* %new_obj2062 to %B* 
  %vdecl_slot2064 = alloca %B*
  store %B* %cast_op2063, %B** %vdecl_slot2064
  %mem_ptr2065 = call i32* @oat_malloc ( i32 8 )
  %obj2066 = bitcast i32* %mem_ptr2065 to %D* 
  %new_obj2067 = call %D* @_D_ctor ( %D* %obj2066 )
  %cast_op2068 = bitcast %D* %new_obj2067 to %B* 
  %vdecl_slot2069 = alloca %B*
  store %B* %cast_op2068, %B** %vdecl_slot2069
  %mem_ptr2070 = call i32* @oat_malloc ( i32 8 )
  %obj2071 = bitcast i32* %mem_ptr2070 to %E* 
  %new_obj2072 = call %E* @_E_ctor ( %E* %obj2071 )
  %vdecl_slot2073 = alloca %E*
  store %E* %new_obj2072, %E** %vdecl_slot2073
  %mem_ptr2074 = call i32* @oat_malloc ( i32 8 )
  %obj2075 = bitcast i32* %mem_ptr2074 to %F* 
  %new_obj2076 = call %F* @_F_ctor ( %F* %obj2075 )
  %cast_op2077 = bitcast %F* %new_obj2076 to %B* 
  %vdecl_slot2078 = alloca %B*
  store %B* %cast_op2077, %B** %vdecl_slot2078
  %mem_ptr2079 = call i32* @oat_malloc ( i32 8 )
  %obj2080 = bitcast i32* %mem_ptr2079 to %G* 
  %new_obj2081 = call %G* @_G_ctor ( %G* %obj2080 )
  %vdecl_slot2082 = alloca %G*
  store %G* %new_obj2081, %G** %vdecl_slot2082
  %lhs_or_call2083 = load %Object** %vdecl_slot2051
  %vtable_ptr2084 = getelementptr %Object* %lhs_or_call2083, i32 0
  %vtable2085 = load %_Object_vtable** %vtable_ptr2084
  %get_name2087 = getelementptr %_Object_vtable* %vtable2085, i32 0, i32 1
  %get_name2086 = load i8* (%Object*)** %get_name2087
  %cast_op2088 = bitcast %Object %lhs_or_call2083 to %Object* 
  %ret2089 = call i8* %get_name2086 ( %Object* %cast_op2088 )
  call void @print_string( i8* %ret2089 )
  %lhs_or_call2090 = load %A** %vdecl_slot2055
  %vtable_ptr2091 = getelementptr %A* %lhs_or_call2090, i32 0
  %vtable2092 = load %_A_vtable** %vtable_ptr2091
  %get_name2094 = getelementptr %_A_vtable* %vtable2092, i32 0, i32 1
  %get_name2093 = load i8* (%Object*)** %get_name2094
  %cast_op2095 = bitcast %A %lhs_or_call2090 to %Object* 
  %ret2096 = call i8* %get_name2093 ( %Object* %cast_op2095 )
  call void @print_string( i8* %ret2096 )
  %lhs_or_call2097 = load %B** %vdecl_slot2059
  %vtable_ptr2098 = getelementptr %B* %lhs_or_call2097, i32 0
  %vtable2099 = load %_B_vtable** %vtable_ptr2098
  %get_name2101 = getelementptr %_B_vtable* %vtable2099, i32 0, i32 1
  %get_name2100 = load i8* (%Object*)** %get_name2101
  %cast_op2102 = bitcast %B %lhs_or_call2097 to %Object* 
  %ret2103 = call i8* %get_name2100 ( %Object* %cast_op2102 )
  call void @print_string( i8* %ret2103 )
  %lhs_or_call2104 = load %B** %vdecl_slot2064
  %vtable_ptr2105 = getelementptr %B* %lhs_or_call2104, i32 0
  %vtable2106 = load %_B_vtable** %vtable_ptr2105
  %get_name2108 = getelementptr %_B_vtable* %vtable2106, i32 0, i32 1
  %get_name2107 = load i8* (%Object*)** %get_name2108
  %cast_op2109 = bitcast %B %lhs_or_call2104 to %Object* 
  %ret2110 = call i8* %get_name2107 ( %Object* %cast_op2109 )
  call void @print_string( i8* %ret2110 )
  %lhs_or_call2111 = load %B** %vdecl_slot2069
  %vtable_ptr2112 = getelementptr %B* %lhs_or_call2111, i32 0
  %vtable2113 = load %_B_vtable** %vtable_ptr2112
  %get_name2115 = getelementptr %_B_vtable* %vtable2113, i32 0, i32 1
  %get_name2114 = load i8* (%Object*)** %get_name2115
  %cast_op2116 = bitcast %B %lhs_or_call2111 to %Object* 
  %ret2117 = call i8* %get_name2114 ( %Object* %cast_op2116 )
  call void @print_string( i8* %ret2117 )
  %lhs_or_call2118 = load %E** %vdecl_slot2073
  %vtable_ptr2119 = getelementptr %E* %lhs_or_call2118, i32 0
  %vtable2120 = load %_E_vtable** %vtable_ptr2119
  %get_name2122 = getelementptr %_E_vtable* %vtable2120, i32 0, i32 1
  %get_name2121 = load i8* (%Object*)** %get_name2122
  %cast_op2123 = bitcast %E %lhs_or_call2118 to %Object* 
  %ret2124 = call i8* %get_name2121 ( %Object* %cast_op2123 )
  call void @print_string( i8* %ret2124 )
  %lhs_or_call2125 = load %B** %vdecl_slot2078
  %vtable_ptr2126 = getelementptr %B* %lhs_or_call2125, i32 0
  %vtable2127 = load %_B_vtable** %vtable_ptr2126
  %get_name2129 = getelementptr %_B_vtable* %vtable2127, i32 0, i32 1
  %get_name2128 = load i8* (%Object*)** %get_name2129
  %cast_op2130 = bitcast %B %lhs_or_call2125 to %Object* 
  %ret2131 = call i8* %get_name2128 ( %Object* %cast_op2130 )
  call void @print_string( i8* %ret2131 )
  %lhs_or_call2132 = load %G** %vdecl_slot2082
  %vtable_ptr2133 = getelementptr %G* %lhs_or_call2132, i32 0
  %vtable2134 = load %_G_vtable** %vtable_ptr2133
  %get_name2136 = getelementptr %_G_vtable* %vtable2134, i32 0, i32 1
  %get_name2135 = load i8* (%Object*)** %get_name2136
  %cast_op2137 = bitcast %G %lhs_or_call2132 to %Object* 
  %ret2138 = call i8* %get_name2135 ( %Object* %cast_op2137 )
  call void @print_string( i8* %ret2138 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh576:
  %mem_ptr2039 = call i32* @oat_malloc ( i32 8 )
  %obj2040 = bitcast i32* %mem_ptr2039 to %D* 
  %new_obj2041 = call %D* @_D_ctor ( %D* %obj2040 )
  %_this1 = bitcast %D* %new_obj2041 to %G 
  %_name2042 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str342, i8** %_name2042
  %this_vtable2043 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable334, %_G_vtable** %this_vtable2043
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh575:
  %mem_ptr2034 = call i32* @oat_malloc ( i32 8 )
  %obj2035 = bitcast i32* %mem_ptr2034 to %B* 
  %new_obj2036 = call %B* @_B_ctor ( %B* %obj2035 )
  %_this1 = bitcast %B* %new_obj2036 to %F 
  %_name2037 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str341, i8** %_name2037
  %this_vtable2038 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable333, %_F_vtable** %this_vtable2038
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh574:
  %mem_ptr2029 = call i32* @oat_malloc ( i32 8 )
  %obj2030 = bitcast i32* %mem_ptr2029 to %Object* 
  %new_obj2031 = call %Object* @_Object_ctor ( %Object* %obj2030 )
  %_this1 = bitcast %Object* %new_obj2031 to %E 
  %_name2032 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str340, i8** %_name2032
  %this_vtable2033 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable332, %_E_vtable** %this_vtable2033
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh573:
  %mem_ptr2024 = call i32* @oat_malloc ( i32 8 )
  %obj2025 = bitcast i32* %mem_ptr2024 to %C* 
  %new_obj2026 = call %C* @_C_ctor ( %C* %obj2025 )
  %_this1 = bitcast %C* %new_obj2026 to %D 
  %_name2027 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str339, i8** %_name2027
  %this_vtable2028 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable331, %_D_vtable** %this_vtable2028
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh572:
  %mem_ptr2019 = call i32* @oat_malloc ( i32 8 )
  %obj2020 = bitcast i32* %mem_ptr2019 to %B* 
  %new_obj2021 = call %B* @_B_ctor ( %B* %obj2020 )
  %_this1 = bitcast %B* %new_obj2021 to %C 
  %_name2022 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str338, i8** %_name2022
  %this_vtable2023 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable330, %_C_vtable** %this_vtable2023
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh571:
  %mem_ptr2014 = call i32* @oat_malloc ( i32 8 )
  %obj2015 = bitcast i32* %mem_ptr2014 to %Object* 
  %new_obj2016 = call %Object* @_Object_ctor ( %Object* %obj2015 )
  %_this1 = bitcast %Object* %new_obj2016 to %B 
  %_name2017 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str337, i8** %_name2017
  %this_vtable2018 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable329, %_B_vtable** %this_vtable2018
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh570:
  %mem_ptr2009 = call i32* @oat_malloc ( i32 8 )
  %obj2010 = bitcast i32* %mem_ptr2009 to %Object* 
  %new_obj2011 = call %Object* @_Object_ctor ( %Object* %obj2010 )
  %_this1 = bitcast %Object* %new_obj2011 to %A 
  %_name2012 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str336, i8** %_name2012
  %this_vtable2013 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable328, %_A_vtable** %this_vtable2013
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh569:
  %_name2007 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2008 = load i8** %_name2007
  ret i8* %lhs_or_call2008
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh568:
  %_name2005 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str335, i8** %_name2005
  %this_vtable2006 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable327, %_Object_vtable** %this_vtable2006
  ret %Object* %_this1
}


