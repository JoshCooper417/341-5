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
@_const_str401.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str401 = alias bitcast([ 2 x i8 ]* @_const_str401.str. to i8*)@_const_str400.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str400 = alias bitcast([ 7 x i8 ]* @_const_str400.str. to i8*)@_A_vtable399 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable398, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable398 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh414:
  ret void
}


define i32 @program (i32 %argc2037, { i32, [ 0 x i8* ] }* %argv2035){
__fresh413:
  %argc_slot2038 = alloca i32
  store i32 %argc2037, i32* %argc_slot2038
  %argv_slot2036 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2035, { i32, [ 0 x i8* ] }** %argv_slot2036
  %mem_ptr2039 = call i32* @oat_malloc ( i32 12 )
  %obj2040 = bitcast i32* %mem_ptr2039 to %A* 
  %new_obj2041 = call %A* @_A_ctor ( %A* %obj2040, i32 11 )
  %ret2042 = call i32 @try_ifnull ( %A* %new_obj2041 )
  ret i32 %ret2042
}


define i32 @try_ifnull (%A* %a2025){
__fresh410:
  %a_slot2026 = alloca %A*
  store %A* %a2025, %A** %a_slot2026
  %vdecl_slot2027 = alloca i32
  store i32 0, i32* %vdecl_slot2027
  %lhs_or_call2028 = load %A** %a_slot2026
  %ifnull_slot2029 = alloca %A*
  store %A* %lhs_or_call2028, %A** %ifnull_slot2029
  %ifnull_guard2030 = icmp ne %A* %lhs_or_call2028, null
  br i1 %ifnull_guard2030, label %__then409, label %__else408

__fresh411:
  br label %__then409

__then409:
  %lhs_or_call2031 = load %A** %ifnull_slot2029
  %x2032 = getelementptr %A* %lhs_or_call2031, i32 0, i32 2
  %lhs_or_call2033 = load i32* %x2032
  store i32 %lhs_or_call2033, i32* %vdecl_slot2027
  br label %__merge407

__fresh412:
  br label %__else408

__else408:
  store i32 12, i32* %vdecl_slot2027
  br label %__merge407

__merge407:
  %lhs_or_call2034 = load i32* %vdecl_slot2027
  ret i32 %lhs_or_call2034
}


define %A* @_A_ctor (%A* %_this1, i32 %x2016){
__fresh406:
  %x_slot2017 = alloca i32
  store i32 %x2016, i32* %x_slot2017
  %mem_ptr2020 = call i32* @oat_malloc ( i32 8 )
  %obj2021 = bitcast i32* %mem_ptr2020 to %Object* 
  %new_obj2022 = call %Object* @_Object_ctor ( %Object* %obj2021 )
  %_this1 = bitcast %Object* %new_obj2022 to %A 
  %_name2023 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str401, i8** %_name2023
  %this_vtable2024 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable399, %_A_vtable** %this_vtable2024
  %x2018 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2019 = load i32* %x_slot2017
  store i32 %lhs_or_call2019, i32* %x2018
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh405:
  %_name2014 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2015 = load i8** %_name2014
  ret i8* %lhs_or_call2015
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh404:
  %_name2012 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str400, i8** %_name2012
  %this_vtable2013 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable398, %_Object_vtable** %this_vtable2013
  ret %Object* %_this1
}


