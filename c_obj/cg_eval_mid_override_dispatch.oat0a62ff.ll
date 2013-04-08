%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%C*, i32)* }
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
@a422 = global %A* zeroinitializer, align 4		; initialized by @a422.init423
@_const_str421.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str421 = alias bitcast([ 2 x i8 ]* @_const_str421.str. to i8*)@_const_str420.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str420 = alias bitcast([ 2 x i8 ]* @_const_str420.str. to i8*)@_const_str419.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str419 = alias bitcast([ 2 x i8 ]* @_const_str419.str. to i8*)@_const_str418.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str418 = alias bitcast([ 7 x i8 ]* @_const_str418.str. to i8*)@_C_vtable417 = private constant %_C_vtable {%_B_vtable* @_B_vtable416, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable416 = private constant %_B_vtable {%_A_vtable* @_A_vtable415, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable415 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable414, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable414 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh445:
  call void @a422.init423(  )
  ret void
}


define i32 @program (i32 %argc2030, { i32, [ 0 x i8* ] }* %argv2028){
__fresh444:
  %argc_slot2031 = alloca i32
  store i32 %argc2030, i32* %argc_slot2031
  %argv_slot2029 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2028, { i32, [ 0 x i8* ] }** %argv_slot2029
  %lhs_or_call2032 = load %A** @a422
  %over2034 = getelementptr %_A_vtable* @_A_vtable415, i32 0, i32 2
  %over2033 = load i32 (%A*, i32)** %over2034
  %cast_op2035 = bitcast %A %lhs_or_call2032 to %A* 
  %ret2036 = call i32 %over2033 ( %A* %cast_op2035, i32 3 )
  ret i32 %ret2036
}


define void @a422.init423 (){
__fresh443:
  %mem_ptr2024 = call i32* @oat_malloc ( i32 8 )
  %obj2025 = bitcast i32* %mem_ptr2024 to %C* 
  %new_obj2026 = call %C* @_C_ctor ( %C* %obj2025 )
  %cast_op2027 = bitcast %C* %new_obj2026 to %A* 
  store %A* %cast_op2027, %A** @a422
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2020){
__fresh442:
  %x_slot2021 = alloca i32
  store i32 %x2020, i32* %x_slot2021
  %lhs_or_call2022 = load i32* %x_slot2021
  %bop2023 = add i32 %lhs_or_call2022, 1
  ret i32 %bop2023
}


define %C* @_C_ctor (%C* %_this1){
__fresh441:
  %mem_ptr2015 = call i32* @oat_malloc ( i32 8 )
  %obj2016 = bitcast i32* %mem_ptr2015 to %B* 
  %new_obj2017 = call %B* @_B_ctor ( %B* %obj2016 )
  %_this1 = bitcast %B* %new_obj2017 to %C 
  %_name2018 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str421, i8** %_name2018
  %this_vtable2019 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable417, %_C_vtable** %this_vtable2019
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2011){
__fresh440:
  %x_slot2012 = alloca i32
  store i32 %x2011, i32* %x_slot2012
  %lhs_or_call2013 = load i32* %x_slot2012
  %bop2014 = add i32 %lhs_or_call2013, 2
  ret i32 %bop2014
}


define %B* @_B_ctor (%B* %_this1){
__fresh439:
  %mem_ptr2006 = call i32* @oat_malloc ( i32 8 )
  %obj2007 = bitcast i32* %mem_ptr2006 to %A* 
  %new_obj2008 = call %A* @_A_ctor ( %A* %obj2007 )
  %_this1 = bitcast %A* %new_obj2008 to %B 
  %_name2009 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str420, i8** %_name2009
  %this_vtable2010 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable416, %_B_vtable** %this_vtable2010
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2002){
__fresh438:
  %x_slot2003 = alloca i32
  store i32 %x2002, i32* %x_slot2003
  %lhs_or_call2004 = load i32* %x_slot2003
  %bop2005 = add i32 %lhs_or_call2004, 1
  ret i32 %bop2005
}


define %A* @_A_ctor (%A* %_this1){
__fresh437:
  %mem_ptr1997 = call i32* @oat_malloc ( i32 8 )
  %obj1998 = bitcast i32* %mem_ptr1997 to %Object* 
  %new_obj1999 = call %Object* @_Object_ctor ( %Object* %obj1998 )
  %_this1 = bitcast %Object* %new_obj1999 to %A 
  %_name2000 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str419, i8** %_name2000
  %this_vtable2001 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable415, %_A_vtable** %this_vtable2001
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh436:
  %_name1995 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1996 = load i8** %_name1995
  ret i8* %lhs_or_call1996
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh435:
  %_name1993 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str418, i8** %_name1993
  %this_vtable1994 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable414, %_Object_vtable** %this_vtable1994
  ret %Object* %_this1
}


