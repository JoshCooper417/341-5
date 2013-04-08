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
@_const_str405.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str405 = alias bitcast([ 2 x i8 ]* @_const_str405.str. to i8*)@_const_str404.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str404 = alias bitcast([ 7 x i8 ]* @_const_str404.str. to i8*)@_A_vtable403 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable402, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable402 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh425:
  ret void
}


define i32 @program (i32 %argc2068, { i32, [ 0 x i8* ] }* %argv2066){
__fresh424:
  %argc_slot2069 = alloca i32
  store i32 %argc2068, i32* %argc_slot2069
  %argv_slot2067 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2066, { i32, [ 0 x i8* ] }** %argv_slot2067
  %cast_op2070 = bitcast i8* null to %A* 
  %ret2071 = call i32 @try_ifnull ( %A* %cast_op2070 )
  ret i32 %ret2071
}


define i32 @try_ifnull (%A* %a2056){
__fresh421:
  %a_slot2057 = alloca %A*
  store %A* %a2056, %A** %a_slot2057
  %vdecl_slot2058 = alloca i32
  store i32 0, i32* %vdecl_slot2058
  %lhs_or_call2059 = load %A** %a_slot2057
  %ifnull_slot2060 = alloca %A*
  store %A* %lhs_or_call2059, %A** %ifnull_slot2060
  %ifnull_guard2061 = icmp ne %A* %lhs_or_call2059, null
  br i1 %ifnull_guard2061, label %__then420, label %__else419

__fresh422:
  br label %__then420

__then420:
  %lhs_or_call2062 = load %A** %ifnull_slot2060
  %x2063 = getelementptr %A* %lhs_or_call2062, i32 0, i32 2
  %lhs_or_call2064 = load i32* %x2063
  store i32 %lhs_or_call2064, i32* %vdecl_slot2058
  br label %__merge418

__fresh423:
  br label %__else419

__else419:
  store i32 12, i32* %vdecl_slot2058
  br label %__merge418

__merge418:
  %lhs_or_call2065 = load i32* %vdecl_slot2058
  ret i32 %lhs_or_call2065
}


define %A* @_A_ctor (%A* %_this1, i32 %x2047){
__fresh417:
  %x_slot2048 = alloca i32
  store i32 %x2047, i32* %x_slot2048
  %mem_ptr2051 = call i32* @oat_malloc ( i32 8 )
  %obj2052 = bitcast i32* %mem_ptr2051 to %Object* 
  %new_obj2053 = call %Object* @_Object_ctor ( %Object* %obj2052 )
  %_this1 = bitcast %Object* %new_obj2053 to %A 
  %_name2054 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str405, i8** %_name2054
  %this_vtable2055 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable403, %_A_vtable** %this_vtable2055
  %x2049 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2050 = load i32* %x_slot2048
  store i32 %lhs_or_call2050, i32* %x2049
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh416:
  %_name2045 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2046 = load i8** %_name2045
  ret i8* %lhs_or_call2046
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh415:
  %_name2043 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str404, i8** %_name2043
  %this_vtable2044 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable402, %_Object_vtable** %this_vtable2044
  ret %Object* %_this1
}


