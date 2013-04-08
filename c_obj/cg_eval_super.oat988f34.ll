%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*, i32)* }
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
@a442 = global %A* zeroinitializer, align 4		; initialized by @a442.init443
@_const_str441.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str441 = alias bitcast([ 2 x i8 ]* @_const_str441.str. to i8*)@_const_str440.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str440 = alias bitcast([ 2 x i8 ]* @_const_str440.str. to i8*)@_const_str439.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str439 = alias bitcast([ 2 x i8 ]* @_const_str439.str. to i8*)@_const_str438.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str438 = alias bitcast([ 7 x i8 ]* @_const_str438.str. to i8*)@_C_vtable437 = private constant %_C_vtable {%_B_vtable* @_B_vtable436, i8* (%Object*)* @_Object_get_name, i32 (%C*, i32)* @_C_over}, align 4
@_B_vtable436 = private constant %_B_vtable {%_A_vtable* @_A_vtable435, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable435 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable434, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable434 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh468:
  call void @a442.init443(  )
  ret void
}


define i32 @program (i32 %argc2128, { i32, [ 0 x i8* ] }* %argv2126){
__fresh467:
  %argc_slot2129 = alloca i32
  store i32 %argc2128, i32* %argc_slot2129
  %argv_slot2127 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2126, { i32, [ 0 x i8* ] }** %argv_slot2127
  %lhs_or_call2130 = load %A** @a442
  %over2132 = getelementptr %_A_vtable* @_A_vtable435, i32 0, i32 2
  %over2131 = load i32 (%A*, i32)** %over2132
  %cast_op2133 = bitcast %A %lhs_or_call2130 to %A* 
  %ret2134 = call i32 %over2131 ( %A* %cast_op2133, i32 3 )
  ret i32 %ret2134
}


define void @a442.init443 (){
__fresh466:
  %mem_ptr2122 = call i32* @oat_malloc ( i32 8 )
  %obj2123 = bitcast i32* %mem_ptr2122 to %C* 
  %new_obj2124 = call %C* @_C_ctor ( %C* %obj2123 )
  %cast_op2125 = bitcast %C* %new_obj2124 to %A* 
  store %A* %cast_op2125, %A** @a442
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2112){
__fresh465:
  %x_slot2113 = alloca i32
  store i32 %x2112, i32* %x_slot2113
  %lhs_or_call2114 = load i32* %x_slot2113
  %bop2115 = add i32 %lhs_or_call2114, 1
  %lhs_or_call2116 = load i32* %x_slot2113
  %over2118 = getelementptr %_C_vtable* @_C_vtable437, i32 0, i32 2
  %over2117 = load i32 (%C*, i32)** %over2118
  %cast_op2119 = bitcast %C %_this1 to %C* 
  %ret2120 = call i32 %over2117 ( %C* %cast_op2119, i32 %lhs_or_call2116 )
  %bop2121 = add i32 %bop2115, %ret2120
  ret i32 %bop2121
}


define %C* @_C_ctor (%C* %_this1){
__fresh464:
  %mem_ptr2107 = call i32* @oat_malloc ( i32 8 )
  %obj2108 = bitcast i32* %mem_ptr2107 to %B* 
  %new_obj2109 = call %B* @_B_ctor ( %B* %obj2108 )
  %_this1 = bitcast %B* %new_obj2109 to %C 
  %_name2110 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str441, i8** %_name2110
  %this_vtable2111 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable437, %_C_vtable** %this_vtable2111
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2103){
__fresh463:
  %x_slot2104 = alloca i32
  store i32 %x2103, i32* %x_slot2104
  %lhs_or_call2105 = load i32* %x_slot2104
  %bop2106 = add i32 %lhs_or_call2105, 2
  ret i32 %bop2106
}


define %B* @_B_ctor (%B* %_this1){
__fresh462:
  %mem_ptr2098 = call i32* @oat_malloc ( i32 8 )
  %obj2099 = bitcast i32* %mem_ptr2098 to %A* 
  %new_obj2100 = call %A* @_A_ctor ( %A* %obj2099 )
  %_this1 = bitcast %A* %new_obj2100 to %B 
  %_name2101 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str440, i8** %_name2101
  %this_vtable2102 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable436, %_B_vtable** %this_vtable2102
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2094){
__fresh461:
  %x_slot2095 = alloca i32
  store i32 %x2094, i32* %x_slot2095
  %lhs_or_call2096 = load i32* %x_slot2095
  %bop2097 = add i32 %lhs_or_call2096, 1
  ret i32 %bop2097
}


define %A* @_A_ctor (%A* %_this1){
__fresh460:
  %mem_ptr2089 = call i32* @oat_malloc ( i32 8 )
  %obj2090 = bitcast i32* %mem_ptr2089 to %Object* 
  %new_obj2091 = call %Object* @_Object_ctor ( %Object* %obj2090 )
  %_this1 = bitcast %Object* %new_obj2091 to %A 
  %_name2092 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str439, i8** %_name2092
  %this_vtable2093 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable435, %_A_vtable** %this_vtable2093
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh459:
  %_name2087 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2088 = load i8** %_name2087
  ret i8* %lhs_or_call2088
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh458:
  %_name2085 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str438, i8** %_name2085
  %this_vtable2086 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable434, %_Object_vtable** %this_vtable2086
  ret %Object* %_this1
}


