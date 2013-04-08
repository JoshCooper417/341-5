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
@a3325 = global %A* zeroinitializer, align 4		; initialized by @a3325.init326
@a2323 = global %A* zeroinitializer, align 4		; initialized by @a2323.init324
@a1321 = global %A* zeroinitializer, align 4		; initialized by @a1321.init322
@_const_str320.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str320 = alias bitcast([ 2 x i8 ]* @_const_str320.str. to i8*)@_const_str319.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str319 = alias bitcast([ 2 x i8 ]* @_const_str319.str. to i8*)@_const_str318.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str318 = alias bitcast([ 7 x i8 ]* @_const_str318.str. to i8*)@_A_vtable317 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable316, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable316 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh567:
  call void @a1321.init322(  )
  call void @a2323.init324(  )
  call void @a3325.init326(  )
  ret void
}


define i32 @program (i32 %argc1975, { i32, [ 0 x i8* ] }* %argv1973){
__fresh566:
  %argc_slot1976 = alloca i32
  store i32 %argc1975, i32* %argc_slot1976
  %argv_slot1974 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1973, { i32, [ 0 x i8* ] }** %argv_slot1974
  %mem_ptr1977 = call i32* @oat_malloc ( i32 8 )
  %obj1978 = bitcast i32* %mem_ptr1977 to %A* 
  %new_obj1979 = call %A* @_A_ctor ( %A* %obj1978 )
  %vdecl_slot1980 = alloca %A*
  store %A* %new_obj1979, %A** %vdecl_slot1980
  %lhs_or_call1981 = load %A** %vdecl_slot1980
  %vtable_ptr1982 = getelementptr %A* %lhs_or_call1981, i32 0
  %vtable1983 = load %_A_vtable** %vtable_ptr1982
  %print1985 = getelementptr %_A_vtable* %vtable1983, i32 0, i32 2
  %print1984 = load void (%A*)** %print1985
  %cast_op1986 = bitcast %A %lhs_or_call1981 to %A* 
  call void %print1984( %A* %cast_op1986 )
  %lhs_or_call1987 = load %A** @a1321
  %vtable_ptr1988 = getelementptr %A* %lhs_or_call1987, i32 0
  %vtable1989 = load %_A_vtable** %vtable_ptr1988
  %print1991 = getelementptr %_A_vtable* %vtable1989, i32 0, i32 2
  %print1990 = load void (%A*)** %print1991
  %cast_op1992 = bitcast %A %lhs_or_call1987 to %A* 
  call void %print1990( %A* %cast_op1992 )
  %lhs_or_call1993 = load %A** @a2323
  %vtable_ptr1994 = getelementptr %A* %lhs_or_call1993, i32 0
  %vtable1995 = load %_A_vtable** %vtable_ptr1994
  %print1997 = getelementptr %_A_vtable* %vtable1995, i32 0, i32 2
  %print1996 = load void (%A*)** %print1997
  %cast_op1998 = bitcast %A %lhs_or_call1993 to %A* 
  call void %print1996( %A* %cast_op1998 )
  %lhs_or_call1999 = load %A** @a3325
  %vtable_ptr2000 = getelementptr %A* %lhs_or_call1999, i32 0
  %vtable2001 = load %_A_vtable** %vtable_ptr2000
  %print2003 = getelementptr %_A_vtable* %vtable2001, i32 0, i32 2
  %print2002 = load void (%A*)** %print2003
  %cast_op2004 = bitcast %A %lhs_or_call1999 to %A* 
  call void %print2002( %A* %cast_op2004 )
  ret i32 0
}


define void @a3325.init326 (){
__fresh565:
  %mem_ptr1970 = call i32* @oat_malloc ( i32 8 )
  %obj1971 = bitcast i32* %mem_ptr1970 to %A* 
  %new_obj1972 = call %A* @_A_ctor ( %A* %obj1971 )
  store %A* %new_obj1972, %A** @a3325
  ret void
}


define void @a2323.init324 (){
__fresh564:
  %mem_ptr1967 = call i32* @oat_malloc ( i32 8 )
  %obj1968 = bitcast i32* %mem_ptr1967 to %A* 
  %new_obj1969 = call %A* @_A_ctor ( %A* %obj1968 )
  store %A* %new_obj1969, %A** @a2323
  ret void
}


define void @a1321.init322 (){
__fresh563:
  %mem_ptr1964 = call i32* @oat_malloc ( i32 8 )
  %obj1965 = bitcast i32* %mem_ptr1964 to %A* 
  %new_obj1966 = call %A* @_A_ctor ( %A* %obj1965 )
  store %A* %new_obj1966, %A** @a1321
  ret void
}


define void @_A_print (%A* %_this1){
__fresh562:
  call void @print_string( i8* @_const_str320 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh561:
  %mem_ptr1959 = call i32* @oat_malloc ( i32 8 )
  %obj1960 = bitcast i32* %mem_ptr1959 to %Object* 
  %new_obj1961 = call %Object* @_Object_ctor ( %Object* %obj1960 )
  %_this1 = bitcast %Object* %new_obj1961 to %A 
  %_name1962 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str319, i8** %_name1962
  %this_vtable1963 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable317, %_A_vtable** %this_vtable1963
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh560:
  %_name1957 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1958 = load i8** %_name1957
  ret i8* %lhs_or_call1958
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh559:
  %_name1955 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str318, i8** %_name1955
  %this_vtable1956 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable316, %_Object_vtable** %this_vtable1956
  ret %Object* %_this1
}


