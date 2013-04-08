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


define i32 @program (i32 %argc1963, { i32, [ 0 x i8* ] }* %argv1961){
__fresh410:
  %argc_slot1964 = alloca i32
  store i32 %argc1963, i32* %argc_slot1964
  %argv_slot1962 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1961, { i32, [ 0 x i8* ] }** %argv_slot1962
  %mem_ptr1965 = call i32* @oat_malloc ( i32 12 )
  %obj1966 = bitcast i32* %mem_ptr1965 to %B* 
  %new_obj1967 = call %B* @_B_ctor ( %B* %obj1966, i32 1, i32 2 )
  %vdecl_slot1968 = alloca %B*
  store %B* %new_obj1967, %B** %vdecl_slot1968
  %lhs_or_call1969 = load %B** %vdecl_slot1968
  %x1970 = getelementptr %B* %lhs_or_call1969, i32 0, i32 0, i32 2
  %lhs_or_call1971 = load i32* %x1970
  ret i32 %lhs_or_call1971
}


define %B* @_B_ctor (%B* %_this1, i32 %a1950, i32 %b1948){
__fresh409:
  %a_slot1951 = alloca i32
  store i32 %a1950, i32* %a_slot1951
  %b_slot1949 = alloca i32
  store i32 %b1948, i32* %b_slot1949
  %lhs_or_call1952 = load i32* %a_slot1951
  %bop1953 = mul i32 %lhs_or_call1952, 10
  %lhs_or_call1954 = load i32* %b_slot1949
  %bop1955 = add i32 %bop1953, %lhs_or_call1954
  %mem_ptr1956 = call i32* @oat_malloc ( i32 12 )
  %obj1957 = bitcast i32* %mem_ptr1956 to %A* 
  %new_obj1958 = call %A* @_A_ctor ( %A* %obj1957, i32 %bop1955 )
  %_this1 = bitcast %A* %new_obj1958 to %B 
  %_name1959 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str339, i8** %_name1959
  %this_vtable1960 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable336, %_B_vtable** %this_vtable1960
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1939){
__fresh408:
  %x_slot1940 = alloca i32
  store i32 %x1939, i32* %x_slot1940
  %mem_ptr1943 = call i32* @oat_malloc ( i32 8 )
  %obj1944 = bitcast i32* %mem_ptr1943 to %Object* 
  %new_obj1945 = call %Object* @_Object_ctor ( %Object* %obj1944 )
  %_this1 = bitcast %Object* %new_obj1945 to %A 
  %_name1946 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str338, i8** %_name1946
  %this_vtable1947 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable335, %_A_vtable** %this_vtable1947
  %x1941 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call1942 = load i32* %x_slot1940
  store i32 %lhs_or_call1942, i32* %x1941
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh407:
  %_name1937 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call1938 = load i8** %_name1937
  ret i8* %lhs_or_call1938
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh406:
  %_name1935 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str337, i8** %_name1935
  %this_vtable1936 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable334, %_Object_vtable** %this_vtable1936
  ret %Object* %_this1
}


