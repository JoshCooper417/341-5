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


define i32 @program (i32 %argc2043, { i32, [ 0 x i8* ] }* %argv2041){
__fresh413:
  %argc_slot2044 = alloca i32
  store i32 %argc2043, i32* %argc_slot2044
  %argv_slot2042 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2041, { i32, [ 0 x i8* ] }** %argv_slot2042
  %mem_ptr2045 = call i32* @oat_malloc ( i32 12 )
  %obj2046 = bitcast i32* %mem_ptr2045 to %A* 
  %new_obj2047 = call %A* @_A_ctor ( %A* %obj2046, i32 11 )
  %ret2048 = call i32 @try_ifnull ( %A* %new_obj2047 )
  ret i32 %ret2048
}


define i32 @try_ifnull (%A* %a2031){
__fresh410:
  %a_slot2032 = alloca %A*
  store %A* %a2031, %A** %a_slot2032
  %vdecl_slot2033 = alloca i32
  store i32 0, i32* %vdecl_slot2033
  %lhs_or_call2034 = load %A** %a_slot2032
  %ifnull_slot2035 = alloca %A*
  store %A* %lhs_or_call2034, %A** %ifnull_slot2035
  %ifnull_guard2036 = icmp ne %A* %lhs_or_call2034, null
  br i1 %ifnull_guard2036, label %__then409, label %__else408

__fresh411:
  br label %__then409

__then409:
  %lhs_or_call2037 = load %A** %ifnull_slot2035
  %x2038 = getelementptr %A* %lhs_or_call2037, i32 0, i32 2
  %lhs_or_call2039 = load i32* %x2038
  store i32 %lhs_or_call2039, i32* %vdecl_slot2033
  br label %__merge407

__fresh412:
  br label %__else408

__else408:
  store i32 12, i32* %vdecl_slot2033
  br label %__merge407

__merge407:
  %lhs_or_call2040 = load i32* %vdecl_slot2033
  ret i32 %lhs_or_call2040
}


define %A* @_A_ctor (%A* %_this1, i32 %x2021){
__fresh406:
  %x_slot2022 = alloca i32
  store i32 %x2021, i32* %x_slot2022
  %cast_op2025 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2026 = call i32* @oat_malloc ( i32 12 )
  %obj2027 = bitcast i32* %mem_ptr2026 to %A* 
  %new_obj2028 = call %Object* @_Object_ctor ( %A* %obj2027, %Object* %cast_op2025 )
  %_this1 = bitcast %Object* %new_obj2028 to %A 
  %_name2029 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str401, i8** %_name2029
  %this_vtable2030 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable399, %_A_vtable** %this_vtable2030
  %x2023 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2024 = load i32* %x_slot2022
  store i32 %lhs_or_call2024, i32* %x2023
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh405:
  %_name2019 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2020 = load i8** %_name2019
  ret i8* %lhs_or_call2020
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh404:
  %_name2017 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str400, i8** %_name2017
  %this_vtable2018 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable398, %_Object_vtable** %this_vtable2018
  ret %Object* %_this1
}


