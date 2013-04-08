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


define i32 @program (i32 %argc2075, { i32, [ 0 x i8* ] }* %argv2073){
__fresh424:
  %argc_slot2076 = alloca i32
  store i32 %argc2075, i32* %argc_slot2076
  %argv_slot2074 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2073, { i32, [ 0 x i8* ] }** %argv_slot2074
  %cast_op2077 = bitcast i8* null to %A* 
  %ret2078 = call i32 @try_ifnull ( %A* %cast_op2077 )
  ret i32 %ret2078
}


define i32 @try_ifnull (%A* %a2063){
__fresh421:
  %a_slot2064 = alloca %A*
  store %A* %a2063, %A** %a_slot2064
  %vdecl_slot2065 = alloca i32
  store i32 0, i32* %vdecl_slot2065
  %lhs_or_call2066 = load %A** %a_slot2064
  %ifnull_slot2067 = alloca %A*
  store %A* %lhs_or_call2066, %A** %ifnull_slot2067
  %ifnull_guard2068 = icmp ne %A* %lhs_or_call2066, null
  br i1 %ifnull_guard2068, label %__then420, label %__else419

__fresh422:
  br label %__then420

__then420:
  %lhs_or_call2069 = load %A** %ifnull_slot2067
  %x2070 = getelementptr %A* %lhs_or_call2069, i32 0, i32 2
  %lhs_or_call2071 = load i32* %x2070
  store i32 %lhs_or_call2071, i32* %vdecl_slot2065
  br label %__merge418

__fresh423:
  br label %__else419

__else419:
  store i32 12, i32* %vdecl_slot2065
  br label %__merge418

__merge418:
  %lhs_or_call2072 = load i32* %vdecl_slot2065
  ret i32 %lhs_or_call2072
}


define %A* @_A_ctor (%A* %_this1, i32 %x2053){
__fresh417:
  %x_slot2054 = alloca i32
  store i32 %x2053, i32* %x_slot2054
  %cast_op2057 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2058 = call i32* @oat_malloc ( i32 12 )
  %obj2059 = bitcast i32* %mem_ptr2058 to %A* 
  %new_obj2060 = call %Object* @_Object_ctor ( %A* %obj2059, %Object* %cast_op2057 )
  %_this1 = bitcast %Object* %new_obj2060 to %A 
  %_name2061 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str405, i8** %_name2061
  %this_vtable2062 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable403, %_A_vtable** %this_vtable2062
  %x2055 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2056 = load i32* %x_slot2054
  store i32 %lhs_or_call2056, i32* %x2055
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh416:
  %_name2051 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2052 = load i8** %_name2051
  ret i8* %lhs_or_call2052
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh415:
  %_name2049 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str404, i8** %_name2049
  %this_vtable2050 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable402, %_Object_vtable** %this_vtable2050
  ret %Object* %_this1
}


