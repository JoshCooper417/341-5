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
@_const_str410.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str410 = alias bitcast([ 2 x i8 ]* @_const_str410.str. to i8*)@_const_str409.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str409 = alias bitcast([ 7 x i8 ]* @_const_str409.str. to i8*)@_A_vtable408 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable407, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable407 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh434:
  ret void
}


define i32 @program (i32 %argc2078, { i32, [ 0 x i8* ] }* %argv2076){
__fresh433:
  %argc_slot2079 = alloca i32
  store i32 %argc2078, i32* %argc_slot2079
  %argv_slot2077 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2076, { i32, [ 0 x i8* ] }** %argv_slot2077
  %mem_ptr2080 = call i32* @oat_malloc ( i32 12 )
  %obj2081 = bitcast i32* %mem_ptr2080 to %A* 
  %new_obj2082 = call %A* @_A_ctor ( %A* %obj2081, i32 11 )
  %ret2083 = call i32 @try_ifnull ( %A* %new_obj2082 )
  ret i32 %ret2083
}


define i32 @try_ifnull (%A* %a2066){
__fresh430:
  %a_slot2067 = alloca %A*
  store %A* %a2066, %A** %a_slot2067
  %vdecl_slot2068 = alloca i32
  store i32 0, i32* %vdecl_slot2068
  %lhs_or_call2069 = load %A** %a_slot2067
  %ifnull_slot2070 = alloca %A*
  store %A* %lhs_or_call2069, %A** %ifnull_slot2070
  %ifnull_guard2071 = icmp ne %A* %lhs_or_call2069, null
  br i1 %ifnull_guard2071, label %__then429, label %__else428

__fresh431:
  br label %__then429

__then429:
  %lhs_or_call2072 = load %A** %ifnull_slot2070
  %x2073 = getelementptr %A* %lhs_or_call2072, i32 0, i32 2
  %lhs_or_call2074 = load i32* %x2073
  store i32 %lhs_or_call2074, i32* %vdecl_slot2068
  br label %__merge427

__fresh432:
  br label %__else428

__else428:
  store i32 12, i32* %vdecl_slot2068
  br label %__merge427

__merge427:
  %lhs_or_call2075 = load i32* %vdecl_slot2068
  ret i32 %lhs_or_call2075
}


define %A* @_A_ctor (%A* %_this1, i32 %x2056){
__fresh426:
  %x_slot2057 = alloca i32
  store i32 %x2056, i32* %x_slot2057
  %cast_op2060 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2061 = call i32* @oat_malloc ( i32 12 )
  %obj2062 = bitcast i32* %mem_ptr2061 to %A* 
  %new_obj2063 = call %Object* @_Object_ctor ( %A* %obj2062, %Object* %cast_op2060 )
  %_this1 = bitcast %Object* %new_obj2063 to %A 
  %_name2064 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str410, i8** %_name2064
  %this_vtable2065 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable408, %_A_vtable** %this_vtable2065
  %x2058 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2059 = load i32* %x_slot2057
  store i32 %lhs_or_call2059, i32* %x2058
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh425:
  %_name2054 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2055 = load i8** %_name2054
  ret i8* %lhs_or_call2055
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh424:
  %_name2052 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str409, i8** %_name2052
  %this_vtable2053 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable407, %_Object_vtable** %this_vtable2053
  ret %Object* %_this1
}


