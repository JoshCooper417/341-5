%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@a412 = global %A* zeroinitializer, align 4		; initialized by @a412.init413
@_const_str411.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str411 = alias bitcast([ 2 x i8 ]* @_const_str411.str. to i8*)@_const_str410.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str410 = alias bitcast([ 2 x i8 ]* @_const_str410.str. to i8*)@_const_str409.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str409 = alias bitcast([ 7 x i8 ]* @_const_str409.str. to i8*)@_B_vtable408 = private constant %_B_vtable {%_A_vtable* @_A_vtable407, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable407 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable406, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable406 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh434:
  call void @a412.init413(  )
  ret void
}


define i32 @program (i32 %argc1986, { i32, [ 0 x i8* ] }* %argv1984){
__fresh433:
  %argc_slot1987 = alloca i32
  store i32 %argc1986, i32* %argc_slot1987
  %argv_slot1985 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1984, { i32, [ 0 x i8* ] }** %argv_slot1985
  %lhs_or_call1988 = load %A** @a412
  %over1990 = getelementptr %_A_vtable* @_A_vtable407, i32 0, i32 2
  %over1989 = load i32 (%A*, i32)** %over1990
  %cast_op1991 = bitcast %A %lhs_or_call1988 to %A* 
  %ret1992 = call i32 %over1989 ( %A* %cast_op1991, i32 3 )
  ret i32 %ret1992
}


define void @a412.init413 (){
__fresh432:
  %mem_ptr1980 = call i32* @oat_malloc ( i32 8 )
  %obj1981 = bitcast i32* %mem_ptr1980 to %B* 
  %new_obj1982 = call %B* @_B_ctor ( %B* %obj1981 )
  %cast_op1983 = bitcast %B* %new_obj1982 to %A* 
  store %A* %cast_op1983, %A** @a412
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x1976){
__fresh431:
  %x_slot1977 = alloca i32
  store i32 %x1976, i32* %x_slot1977
  %lhs_or_call1978 = load i32* %x_slot1977
  %bop1979 = add i32 %lhs_or_call1978, 2
  ret i32 %bop1979
}


define %B* @_B_ctor (%B* %_this1){
__fresh430:
  %mem_ptr1971 = call i32* @oat_malloc ( i32 8 )
  %obj1972 = bitcast i32* %mem_ptr1971 to %A* 
  %new_obj1973 = call %A* @_A_ctor ( %A* %obj1972 )
  %_this1 = bitcast %A* %new_obj1973 to %B 
  %_name1974 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str411, i8** %_name1974
  %this_vtable1975 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable408, %_B_vtable** %this_vtable1975
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x1967){
__fresh429:
  %x_slot1968 = alloca i32
  store i32 %x1967, i32* %x_slot1968
  %lhs_or_call1969 = load i32* %x_slot1968
  %bop1970 = add i32 %lhs_or_call1969, 1
  ret i32 %bop1970
}


define %A* @_A_ctor (%A* %_this1){
__fresh428:
  %mem_ptr1962 = call i32* @oat_malloc ( i32 8 )
  %obj1963 = bitcast i32* %mem_ptr1962 to %Object* 
  %new_obj1964 = call %Object* @_Object_ctor ( %Object* %obj1963 )
  %_this1 = bitcast %Object* %new_obj1964 to %A 
  %_name1965 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str410, i8** %_name1965
  %this_vtable1966 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable407, %_A_vtable** %this_vtable1966
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh427:
  %_name1960 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1961 = load i8** %_name1960
  ret i8* %lhs_or_call1961
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh426:
  %_name1958 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str409, i8** %_name1958
  %this_vtable1959 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable406, %_Object_vtable** %this_vtable1959
  ret %Object* %_this1
}


