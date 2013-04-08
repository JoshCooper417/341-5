%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@a3173 = global %A* zeroinitializer, align 4		; initialized by @a3173.init174
@a2171 = global %A* zeroinitializer, align 4		; initialized by @a2171.init172
@a1169 = global %A* zeroinitializer, align 4		; initialized by @a1169.init170
@_const_str168.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str168 = alias bitcast([ 2 x i8 ]* @_const_str168.str. to i8*)@_A_vtable167 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable166, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable166 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh355:
  call void @a1169.init170(  )
  call void @a2171.init172(  )
  call void @a3173.init174(  )
  ret void
}


define i32 @program (i32 %argc1955, { i32, [ 0 x i8* ] }* %argv1953){
__fresh354:
  %argc_slot1956 = alloca i32
  store i32 %argc1955, i32* %argc_slot1956
  %argv_slot1954 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1953, { i32, [ 0 x i8* ] }** %argv_slot1954
  %mem_ptr1957 = call i32* @oat_malloc ( i32 8 )
  %obj1958 = bitcast i32* %mem_ptr1957 to %A* 
  %new_obj1959 = call %A* @_A_ctor ( %A* %obj1958 )
  %vdecl_slot1960 = alloca %A*
  store %A* %new_obj1959, %A** %vdecl_slot1960
  %lhs_or_call1961 = load %A** %vdecl_slot1960
  %print1963 = getelementptr %_A_vtable* @_A_vtable167, i32 0, i32 2
  %print1962 = load void (%A*)** %print1963
  %cast_op1964 = bitcast %A %lhs_or_call1961 to %A* 
  call void %print1962( %A* %cast_op1964 )
  %lhs_or_call1965 = load %A** @a1169
  %print1967 = getelementptr %_A_vtable* @_A_vtable167, i32 0, i32 2
  %print1966 = load void (%A*)** %print1967
  %cast_op1968 = bitcast %A %lhs_or_call1965 to %A* 
  call void %print1966( %A* %cast_op1968 )
  %lhs_or_call1969 = load %A** @a2171
  %print1971 = getelementptr %_A_vtable* @_A_vtable167, i32 0, i32 2
  %print1970 = load void (%A*)** %print1971
  %cast_op1972 = bitcast %A %lhs_or_call1969 to %A* 
  call void %print1970( %A* %cast_op1972 )
  %lhs_or_call1973 = load %A** @a3173
  %print1975 = getelementptr %_A_vtable* @_A_vtable167, i32 0, i32 2
  %print1974 = load void (%A*)** %print1975
  %cast_op1976 = bitcast %A %lhs_or_call1973 to %A* 
  call void %print1974( %A* %cast_op1976 )
  ret i32 0
}


define void @a3173.init174 (){
__fresh353:
  %mem_ptr1950 = call i32* @oat_malloc ( i32 8 )
  %obj1951 = bitcast i32* %mem_ptr1950 to %A* 
  %new_obj1952 = call %A* @_A_ctor ( %A* %obj1951 )
  store %A* %new_obj1952, %A** @a3173
  ret void
}


define void @a2171.init172 (){
__fresh352:
  %mem_ptr1947 = call i32* @oat_malloc ( i32 8 )
  %obj1948 = bitcast i32* %mem_ptr1947 to %A* 
  %new_obj1949 = call %A* @_A_ctor ( %A* %obj1948 )
  store %A* %new_obj1949, %A** @a2171
  ret void
}


define void @a1169.init170 (){
__fresh351:
  %mem_ptr1944 = call i32* @oat_malloc ( i32 8 )
  %obj1945 = bitcast i32* %mem_ptr1944 to %A* 
  %new_obj1946 = call %A* @_A_ctor ( %A* %obj1945 )
  store %A* %new_obj1946, %A** @a1169
  ret void
}


define void @_A_print (%A* %_this1){
__fresh350:
  call void @print_string( i8* @_const_str168 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh349:
  %lhs_or_call1935 = load %A* %_this1
  %cast_op1936 = bitcast %A %lhs_or_call1935 to %Object* 
  %mem_ptr1937 = call i32* @oat_malloc ( i32 8 )
  %obj1938 = bitcast i32* %mem_ptr1937 to %Object* 
  %new_obj1939 = call %Object* @_Object_ctor ( %Object* %obj1938, %Object* %cast_op1936 )
  %_name1940 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call1941 = load %A* %_this1
  %cast_op1942 = bitcast %A %lhs_or_call1941 to i8* 
  store i8* %cast_op1942, i8** %_name1940
  %this_vtable1943 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable1943
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh348:
  %_name1933 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1934 = load i8** %_name1933
  ret i8* %lhs_or_call1934
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh347:
  %_name1929 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1930 = load %Object* %_this1
  %cast_op1931 = bitcast %Object %lhs_or_call1930 to i8* 
  store i8* %cast_op1931, i8** %_name1929
  %this_vtable1932 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1932
  ret %Object* %_this1
}


