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
@_const_str390.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str390 = alias bitcast([ 2 x i8 ]* @_const_str390.str. to i8*)@_const_str389.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str389 = alias bitcast([ 7 x i8 ]* @_const_str389.str. to i8*)@_A_vtable388 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable387, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable387 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh414:
  ret void
}


define i32 @program (i32 %argc2018, { i32, [ 0 x i8* ] }* %argv2016){
__fresh413:
  %argc_slot2019 = alloca i32
  store i32 %argc2018, i32* %argc_slot2019
  %argv_slot2017 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2016, { i32, [ 0 x i8* ] }** %argv_slot2017
  %mem_ptr2020 = call i32* @oat_malloc ( i32 12 )
  %obj2021 = bitcast i32* %mem_ptr2020 to %A* 
  %new_obj2022 = call %A* @_A_ctor ( %A* %obj2021, i32 11 )
  %ret2023 = call i32 @try_ifnull ( %A* %new_obj2022 )
  ret i32 %ret2023
}


define i32 @try_ifnull (%A* %a2006){
__fresh410:
  %a_slot2007 = alloca %A*
  store %A* %a2006, %A** %a_slot2007
  %vdecl_slot2008 = alloca i32
  store i32 0, i32* %vdecl_slot2008
  %lhs_or_call2009 = load %A** %a_slot2007
  %ifnull_slot2010 = alloca %A*
  store %A* %lhs_or_call2009, %A** %ifnull_slot2010
  %ifnull_guard2011 = icmp ne %A* %lhs_or_call2009, null
  br i1 %ifnull_guard2011, label %__then409, label %__else408

__fresh411:
  br label %__then409

__then409:
  %lhs_or_call2012 = load %A** %ifnull_slot2010
  %x2013 = getelementptr %A* %lhs_or_call2012, i32 0, i32 2
  %lhs_or_call2014 = load i32* %x2013
  store i32 %lhs_or_call2014, i32* %vdecl_slot2008
  br label %__merge407

__fresh412:
  br label %__else408

__else408:
  store i32 12, i32* %vdecl_slot2008
  br label %__merge407

__merge407:
  %lhs_or_call2015 = load i32* %vdecl_slot2008
  ret i32 %lhs_or_call2015
}


define %A* @_A_ctor (%A* %_this1, i32 %x1997){
__fresh406:
  %x_slot1998 = alloca i32
  store i32 %x1997, i32* %x_slot1998
  %mem_ptr2001 = call i32* @oat_malloc ( i32 8 )
  %obj2002 = bitcast i32* %mem_ptr2001 to %Object* 
  %new_obj2003 = call %Object* @_Object_ctor ( %Object* %obj2002 )
  %_this1 = bitcast %Object* %new_obj2003 to %A 
  %_name2004 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str390, i8** %_name2004
  %this_vtable2005 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable388, %_A_vtable** %this_vtable2005
  %x1999 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2000 = load i32* %x_slot1998
  store i32 %lhs_or_call2000, i32* %x1999
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh405:
  %_name1995 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1996 = load i8** %_name1995
  ret i8* %lhs_or_call1996
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh404:
  %_name1993 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str389, i8** %_name1993
  %this_vtable1994 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable387, %_Object_vtable** %this_vtable1994
  ret %Object* %_this1
}


