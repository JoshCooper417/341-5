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
@a411 = global %A* zeroinitializer, align 4		; initialized by @a411.init412
@_const_str410.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str410 = alias bitcast([ 2 x i8 ]* @_const_str410.str. to i8*)@_const_str409.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str409 = alias bitcast([ 2 x i8 ]* @_const_str409.str. to i8*)@_const_str408.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str408 = alias bitcast([ 2 x i8 ]* @_const_str408.str. to i8*)@_const_str407.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str407 = alias bitcast([ 7 x i8 ]* @_const_str407.str. to i8*)@_C_vtable406 = private constant %_C_vtable {%_B_vtable* @_B_vtable405, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable405 = private constant %_B_vtable {%_A_vtable* @_A_vtable404, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable404 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable403, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable403 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh445:
  call void @a411.init412(  )
  ret void
}


define i32 @program (i32 %argc2134, { i32, [ 0 x i8* ] }* %argv2132){
__fresh444:
  %argc_slot2135 = alloca i32
  store i32 %argc2134, i32* %argc_slot2135
  %argv_slot2133 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2132, { i32, [ 0 x i8* ] }** %argv_slot2133
  %lhs_or_call2136 = load %A** @a411
  %vtable_ptr2137 = getelementptr %A* %lhs_or_call2136, i32 0
  %vtable2138 = load %_A_vtable** %vtable_ptr2137
  %over2140 = getelementptr %_A_vtable* %vtable2138, i32 0, i32 2
  %over2139 = load i32 (%A*, i32)** %over2140
  %cast_op2141 = bitcast %A %lhs_or_call2136 to %A* 
  %ret2142 = call i32 %over2139 ( %A* %cast_op2141, i32 3 )
  ret i32 %ret2142
}


define void @a411.init412 (){
__fresh443:
  %mem_ptr2128 = call i32* @oat_malloc ( i32 8 )
  %obj2129 = bitcast i32* %mem_ptr2128 to %C* 
  %new_obj2130 = call %C* @_C_ctor ( %C* %obj2129 )
  %cast_op2131 = bitcast %C* %new_obj2130 to %A* 
  store %A* %cast_op2131, %A** @a411
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2124){
__fresh442:
  %x_slot2125 = alloca i32
  store i32 %x2124, i32* %x_slot2125
  %lhs_or_call2126 = load i32* %x_slot2125
  %bop2127 = add i32 %lhs_or_call2126, 1
  ret i32 %bop2127
}


define %C* @_C_ctor (%C* %_this1){
__fresh441:
  %mem_ptr2119 = call i32* @oat_malloc ( i32 8 )
  %obj2120 = bitcast i32* %mem_ptr2119 to %B* 
  %new_obj2121 = call %B* @_B_ctor ( %B* %obj2120 )
  %_this1 = bitcast %B* %new_obj2121 to %C 
  %_name2122 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str410, i8** %_name2122
  %this_vtable2123 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable406, %_C_vtable** %this_vtable2123
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2115){
__fresh440:
  %x_slot2116 = alloca i32
  store i32 %x2115, i32* %x_slot2116
  %lhs_or_call2117 = load i32* %x_slot2116
  %bop2118 = add i32 %lhs_or_call2117, 2
  ret i32 %bop2118
}


define %B* @_B_ctor (%B* %_this1){
__fresh439:
  %mem_ptr2110 = call i32* @oat_malloc ( i32 8 )
  %obj2111 = bitcast i32* %mem_ptr2110 to %A* 
  %new_obj2112 = call %A* @_A_ctor ( %A* %obj2111 )
  %_this1 = bitcast %A* %new_obj2112 to %B 
  %_name2113 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str409, i8** %_name2113
  %this_vtable2114 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable405, %_B_vtable** %this_vtable2114
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2106){
__fresh438:
  %x_slot2107 = alloca i32
  store i32 %x2106, i32* %x_slot2107
  %lhs_or_call2108 = load i32* %x_slot2107
  %bop2109 = add i32 %lhs_or_call2108, 1
  ret i32 %bop2109
}


define %A* @_A_ctor (%A* %_this1){
__fresh437:
  %mem_ptr2101 = call i32* @oat_malloc ( i32 8 )
  %obj2102 = bitcast i32* %mem_ptr2101 to %Object* 
  %new_obj2103 = call %Object* @_Object_ctor ( %Object* %obj2102 )
  %_this1 = bitcast %Object* %new_obj2103 to %A 
  %_name2104 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str408, i8** %_name2104
  %this_vtable2105 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable404, %_A_vtable** %this_vtable2105
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh436:
  %_name2099 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2100 = load i8** %_name2099
  ret i8* %lhs_or_call2100
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh435:
  %_name2097 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str407, i8** %_name2097
  %this_vtable2098 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable403, %_Object_vtable** %this_vtable2098
  ret %Object* %_this1
}


