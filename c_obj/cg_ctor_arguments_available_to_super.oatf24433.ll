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
@_const_str339.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str339 = alias bitcast([ 2 x i8 ]* @_const_str339.str. to i8*)@_const_str338.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str338 = alias bitcast([ 2 x i8 ]* @_const_str338.str. to i8*)@_const_str337.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str337 = alias bitcast([ 7 x i8 ]* @_const_str337.str. to i8*)@_B_vtable336 = private constant %_B_vtable {%_A_vtable* @_A_vtable335, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable335 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable334, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable334 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh411:
  ret void
}


define i32 @program (i32 %argc1974, { i32, [ 0 x i8* ] }* %argv1972){
__fresh410:
  %argc_slot1975 = alloca i32
  store i32 %argc1974, i32* %argc_slot1975
  %argv_slot1973 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1972, { i32, [ 0 x i8* ] }** %argv_slot1973
  %mem_ptr1976 = call i32* @oat_malloc ( i32 12 )
  %obj1977 = bitcast i32* %mem_ptr1976 to %B* 
  %new_obj1978 = call %B* @_B_ctor ( %B* %obj1977, i32 1, i32 2 )
  %vdecl_slot1979 = alloca %B*
  store %B* %new_obj1978, %B** %vdecl_slot1979
  %lhs_or_call1980 = load %B** %vdecl_slot1979
  %x1981 = getelementptr %B* %lhs_or_call1980, i32 0, i32 2
  %lhs_or_call1982 = load i32* %x1981
  ret i32 %lhs_or_call1982
}


define %B* @_B_ctor (%B* %_this1, i32 %a1961, i32 %b1959){
__fresh409:
  %a_slot1962 = alloca i32
  store i32 %a1961, i32* %a_slot1962
  %b_slot1960 = alloca i32
  store i32 %b1959, i32* %b_slot1960
  %lhs_or_call1963 = load i32* %a_slot1962
  %bop1964 = mul i32 %lhs_or_call1963, 10
  %lhs_or_call1965 = load i32* %b_slot1960
  %bop1966 = add i32 %bop1964, %lhs_or_call1965
  %mem_ptr1967 = call i32* @oat_malloc ( i32 12 )
  %obj1968 = bitcast i32* %mem_ptr1967 to %A* 
  %new_obj1969 = call %A* @_A_ctor ( %A* %obj1968, i32 %bop1966 )
  %_this1 = bitcast %A* %new_obj1969 to %B 
  %_name1970 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str339, i8** %_name1970
  %this_vtable1971 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable336, %_B_vtable** %this_vtable1971
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1950){
__fresh408:
  %x_slot1951 = alloca i32
  store i32 %x1950, i32* %x_slot1951
  %mem_ptr1954 = call i32* @oat_malloc ( i32 8 )
  %obj1955 = bitcast i32* %mem_ptr1954 to %Object* 
  %new_obj1956 = call %Object* @_Object_ctor ( %Object* %obj1955 )
  %_this1 = bitcast %Object* %new_obj1956 to %A 
  %_name1957 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str338, i8** %_name1957
  %this_vtable1958 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable335, %_A_vtable** %this_vtable1958
  %x1952 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1953 = load i32* %x_slot1951
  store i32 %lhs_or_call1953, i32* %x1952
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh407:
  %_name1948 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1949 = load i8** %_name1948
  ret i8* %lhs_or_call1949
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh406:
  %_name1946 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str337, i8** %_name1946
  %this_vtable1947 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable334, %_Object_vtable** %this_vtable1947
  ret %Object* %_this1
}


