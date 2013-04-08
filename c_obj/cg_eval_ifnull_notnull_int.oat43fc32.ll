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


define i32 @program (i32 %argc2025, { i32, [ 0 x i8* ] }* %argv2023){
__fresh413:
  %argc_slot2026 = alloca i32
  store i32 %argc2025, i32* %argc_slot2026
  %argv_slot2024 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2023, { i32, [ 0 x i8* ] }** %argv_slot2024
  %mem_ptr2027 = call i32* @oat_malloc ( i32 12 )
  %obj2028 = bitcast i32* %mem_ptr2027 to %A* 
  %new_obj2029 = call %A* @_A_ctor ( %A* %obj2028, i32 11 )
  %ret2030 = call i32 @try_ifnull ( %A* %new_obj2029 )
  ret i32 %ret2030
}


define i32 @try_ifnull (%A* %a2013){
__fresh410:
  %a_slot2014 = alloca %A*
  store %A* %a2013, %A** %a_slot2014
  %vdecl_slot2015 = alloca i32
  store i32 0, i32* %vdecl_slot2015
  %lhs_or_call2016 = load %A** %a_slot2014
  %ifnull_slot2017 = alloca %A*
  store %A* %lhs_or_call2016, %A** %ifnull_slot2017
  %ifnull_guard2018 = icmp ne %A* %lhs_or_call2016, null
  br i1 %ifnull_guard2018, label %__then409, label %__else408

__fresh411:
  br label %__then409

__then409:
  %lhs_or_call2019 = load %A** %ifnull_slot2017
  %x2020 = getelementptr %A* %lhs_or_call2019, i32 0, i32 2
  %lhs_or_call2021 = load i32* %x2020
  store i32 %lhs_or_call2021, i32* %vdecl_slot2015
  br label %__merge407

__fresh412:
  br label %__else408

__else408:
  store i32 12, i32* %vdecl_slot2015
  br label %__merge407

__merge407:
  %lhs_or_call2022 = load i32* %vdecl_slot2015
  ret i32 %lhs_or_call2022
}


define %A* @_A_ctor (%A* %_this1, i32 %x2004){
__fresh406:
  %x_slot2005 = alloca i32
  store i32 %x2004, i32* %x_slot2005
  %mem_ptr2008 = call i32* @oat_malloc ( i32 8 )
  %obj2009 = bitcast i32* %mem_ptr2008 to %Object* 
  %new_obj2010 = call %Object* @_Object_ctor ( %Object* %obj2009 )
  %_this1 = bitcast %Object* %new_obj2010 to %A 
  %_name2011 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str390, i8** %_name2011
  %this_vtable2012 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable388, %_A_vtable** %this_vtable2012
  %x2006 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2007 = load i32* %x_slot2005
  store i32 %lhs_or_call2007, i32* %x2006
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh405:
  %_name2002 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2003 = load i8** %_name2002
  ret i8* %lhs_or_call2003
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh404:
  %_name2000 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str389, i8** %_name2000
  %this_vtable2001 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable387, %_Object_vtable** %this_vtable2001
  ret %Object* %_this1
}


