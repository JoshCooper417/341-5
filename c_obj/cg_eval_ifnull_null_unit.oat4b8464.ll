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


define i32 @program (i32 %argc2056, { i32, [ 0 x i8* ] }* %argv2054){
__fresh424:
  %argc_slot2057 = alloca i32
  store i32 %argc2056, i32* %argc_slot2057
  %argv_slot2055 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2054, { i32, [ 0 x i8* ] }** %argv_slot2055
  %cast_op2058 = bitcast i8* null to %A* 
  %ret2059 = call i32 @try_ifnull ( %A* %cast_op2058 )
  ret i32 %ret2059
}


define i32 @try_ifnull (%A* %a2044){
__fresh421:
  %a_slot2045 = alloca %A*
  store %A* %a2044, %A** %a_slot2045
  %vdecl_slot2046 = alloca i32
  store i32 0, i32* %vdecl_slot2046
  %lhs_or_call2047 = load %A** %a_slot2045
  %ifnull_slot2048 = alloca %A*
  store %A* %lhs_or_call2047, %A** %ifnull_slot2048
  %ifnull_guard2049 = icmp ne %A* %lhs_or_call2047, null
  br i1 %ifnull_guard2049, label %__then420, label %__else419

__fresh422:
  br label %__then420

__then420:
  %lhs_or_call2050 = load %A** %ifnull_slot2048
  %x2051 = getelementptr %A* %lhs_or_call2050, i32 0, i32 2
  %lhs_or_call2052 = load i32* %x2051
  store i32 %lhs_or_call2052, i32* %vdecl_slot2046
  br label %__merge418

__fresh423:
  br label %__else419

__else419:
  store i32 12, i32* %vdecl_slot2046
  br label %__merge418

__merge418:
  %lhs_or_call2053 = load i32* %vdecl_slot2046
  ret i32 %lhs_or_call2053
}


define %A* @_A_ctor (%A* %_this1, i32 %x2035){
__fresh417:
  %x_slot2036 = alloca i32
  store i32 %x2035, i32* %x_slot2036
  %mem_ptr2039 = call i32* @oat_malloc ( i32 8 )
  %obj2040 = bitcast i32* %mem_ptr2039 to %Object* 
  %new_obj2041 = call %Object* @_Object_ctor ( %Object* %obj2040 )
  %_this1 = bitcast %Object* %new_obj2041 to %A 
  %_name2042 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str394, i8** %_name2042
  %this_vtable2043 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable392, %_A_vtable** %this_vtable2043
  %x2037 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2038 = load i32* %x_slot2036
  store i32 %lhs_or_call2038, i32* %x2037
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh416:
  %_name2033 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2034 = load i8** %_name2033
  ret i8* %lhs_or_call2034
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh415:
  %_name2031 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str393, i8** %_name2031
  %this_vtable2032 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable391, %_Object_vtable** %this_vtable2032
  ret %Object* %_this1
}


