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
@_const_str394.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str394 = alias bitcast([ 2 x i8 ]* @_const_str394.str. to i8*)@_const_str393.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str393 = alias bitcast([ 7 x i8 ]* @_const_str393.str. to i8*)@_A_vtable392 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable391, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable391 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh425:
  ret void
}


define i32 @program (i32 %argc2049, { i32, [ 0 x i8* ] }* %argv2047){
__fresh424:
  %argc_slot2050 = alloca i32
  store i32 %argc2049, i32* %argc_slot2050
  %argv_slot2048 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2047, { i32, [ 0 x i8* ] }** %argv_slot2048
  %cast_op2051 = bitcast i8* null to %A* 
  %ret2052 = call i32 @try_ifnull ( %A* %cast_op2051 )
  ret i32 %ret2052
}


define i32 @try_ifnull (%A* %a2037){
__fresh421:
  %a_slot2038 = alloca %A*
  store %A* %a2037, %A** %a_slot2038
  %vdecl_slot2039 = alloca i32
  store i32 0, i32* %vdecl_slot2039
  %lhs_or_call2040 = load %A** %a_slot2038
  %ifnull_slot2041 = alloca %A*
  store %A* %lhs_or_call2040, %A** %ifnull_slot2041
  %ifnull_guard2042 = icmp ne %A* %lhs_or_call2040, null
  br i1 %ifnull_guard2042, label %__then420, label %__else419

__fresh422:
  br label %__then420

__then420:
  %lhs_or_call2043 = load %A** %ifnull_slot2041
  %x2044 = getelementptr %A* %lhs_or_call2043, i32 0, i32 2
  %lhs_or_call2045 = load i32* %x2044
  store i32 %lhs_or_call2045, i32* %vdecl_slot2039
  br label %__merge418

__fresh423:
  br label %__else419

__else419:
  store i32 12, i32* %vdecl_slot2039
  br label %__merge418

__merge418:
  %lhs_or_call2046 = load i32* %vdecl_slot2039
  ret i32 %lhs_or_call2046
}


define %A* @_A_ctor (%A* %_this1, i32 %x2028){
__fresh417:
  %x_slot2029 = alloca i32
  store i32 %x2028, i32* %x_slot2029
  %mem_ptr2032 = call i32* @oat_malloc ( i32 8 )
  %obj2033 = bitcast i32* %mem_ptr2032 to %Object* 
  %new_obj2034 = call %Object* @_Object_ctor ( %Object* %obj2033 )
  %_this1 = bitcast %Object* %new_obj2034 to %A 
  %_name2035 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str394, i8** %_name2035
  %this_vtable2036 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable392, %_A_vtable** %this_vtable2036
  %x2030 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2031 = load i32* %x_slot2029
  store i32 %lhs_or_call2031, i32* %x2030
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh416:
  %_name2026 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2027 = load i8** %_name2026
  ret i8* %lhs_or_call2027
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh415:
  %_name2024 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str393, i8** %_name2024
  %this_vtable2025 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable391, %_Object_vtable** %this_vtable2025
  ret %Object* %_this1
}


