%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)* }
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
@a432 = global %A* zeroinitializer, align 4		; initialized by @a432.init433
@_const_str431.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str431 = alias bitcast([ 2 x i8 ]* @_const_str431.str. to i8*)@_const_str430.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str430 = alias bitcast([ 2 x i8 ]* @_const_str430.str. to i8*)@_const_str429.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str429 = alias bitcast([ 2 x i8 ]* @_const_str429.str. to i8*)@_const_str428.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str428 = alias bitcast([ 7 x i8 ]* @_const_str428.str. to i8*)@_C_vtable427 = private constant %_C_vtable {%_B_vtable* @_B_vtable426, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable426 = private constant %_B_vtable {%_A_vtable* @_A_vtable425, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo}, align 4
@_A_vtable425 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable424, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo}, align 4
@_Object_vtable424 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh457:
  call void @a432.init433(  )
  ret void
}


define i32 @program (i32 %argc2078, { i32, [ 0 x i8* ] }* %argv2076){
__fresh456:
  %argc_slot2079 = alloca i32
  store i32 %argc2078, i32* %argc_slot2079
  %argv_slot2077 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2076, { i32, [ 0 x i8* ] }** %argv_slot2077
  %lhs_or_call2080 = load %A** @a432
  %foo2082 = getelementptr %_A_vtable* @_A_vtable425, i32 0, i32 3
  %foo2081 = load i32 (%A*, i32)** %foo2082
  %cast_op2083 = bitcast %A %lhs_or_call2080 to %A* 
  %ret2084 = call i32 %foo2081 ( %A* %cast_op2083, i32 3 )
  ret i32 %ret2084
}


define void @a432.init433 (){
__fresh455:
  %mem_ptr2072 = call i32* @oat_malloc ( i32 8 )
  %obj2073 = bitcast i32* %mem_ptr2072 to %C* 
  %new_obj2074 = call %C* @_C_ctor ( %C* %obj2073 )
  %cast_op2075 = bitcast %C* %new_obj2074 to %A* 
  store %A* %cast_op2075, %A** @a432
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2068){
__fresh454:
  %x_slot2069 = alloca i32
  store i32 %x2068, i32* %x_slot2069
  %lhs_or_call2070 = load i32* %x_slot2069
  %bop2071 = add i32 %lhs_or_call2070, 1
  ret i32 %bop2071
}


define %C* @_C_ctor (%C* %_this1){
__fresh453:
  %mem_ptr2063 = call i32* @oat_malloc ( i32 8 )
  %obj2064 = bitcast i32* %mem_ptr2063 to %B* 
  %new_obj2065 = call %B* @_B_ctor ( %B* %obj2064 )
  %_this1 = bitcast %B* %new_obj2065 to %C 
  %_name2066 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str431, i8** %_name2066
  %this_vtable2067 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable427, %_C_vtable** %this_vtable2067
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2059){
__fresh452:
  %x_slot2060 = alloca i32
  store i32 %x2059, i32* %x_slot2060
  %lhs_or_call2061 = load i32* %x_slot2060
  %bop2062 = add i32 %lhs_or_call2061, 2
  ret i32 %bop2062
}


define %B* @_B_ctor (%B* %_this1){
__fresh451:
  %mem_ptr2054 = call i32* @oat_malloc ( i32 8 )
  %obj2055 = bitcast i32* %mem_ptr2054 to %A* 
  %new_obj2056 = call %A* @_A_ctor ( %A* %obj2055 )
  %_this1 = bitcast %A* %new_obj2056 to %B 
  %_name2057 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str430, i8** %_name2057
  %this_vtable2058 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable426, %_B_vtable** %this_vtable2058
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2050){
__fresh450:
  %x_slot2051 = alloca i32
  store i32 %x2050, i32* %x_slot2051
  %lhs_or_call2052 = load i32* %x_slot2051
  %bop2053 = add i32 %lhs_or_call2052, 8
  ret i32 %bop2053
}


define i32 @_A_over (%A* %_this1, i32 %x2046){
__fresh449:
  %x_slot2047 = alloca i32
  store i32 %x2046, i32* %x_slot2047
  %lhs_or_call2048 = load i32* %x_slot2047
  %bop2049 = add i32 %lhs_or_call2048, 1
  ret i32 %bop2049
}


define %A* @_A_ctor (%A* %_this1){
__fresh448:
  %mem_ptr2041 = call i32* @oat_malloc ( i32 8 )
  %obj2042 = bitcast i32* %mem_ptr2041 to %Object* 
  %new_obj2043 = call %Object* @_Object_ctor ( %Object* %obj2042 )
  %_this1 = bitcast %Object* %new_obj2043 to %A 
  %_name2044 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str429, i8** %_name2044
  %this_vtable2045 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable425, %_A_vtable** %this_vtable2045
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh447:
  %_name2039 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2040 = load i8** %_name2039
  ret i8* %lhs_or_call2040
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh446:
  %_name2037 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2037
  %this_vtable2038 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable424, %_Object_vtable** %this_vtable2038
  ret %Object* %_this1
}


