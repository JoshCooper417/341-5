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
@a422 = global %A* zeroinitializer, align 4		; initialized by @a422.init423
@_const_str421.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str421 = alias bitcast([ 2 x i8 ]* @_const_str421.str. to i8*)@_const_str420.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str420 = alias bitcast([ 2 x i8 ]* @_const_str420.str. to i8*)@_const_str419.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str419 = alias bitcast([ 2 x i8 ]* @_const_str419.str. to i8*)@_const_str418.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str418 = alias bitcast([ 7 x i8 ]* @_const_str418.str. to i8*)@_C_vtable417 = private constant %_C_vtable {%_B_vtable* @_B_vtable416, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable416 = private constant %_B_vtable {%_A_vtable* @_A_vtable415, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable415 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable414, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable414 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh445:
  call void @a422.init423(  )
  ret void
}


define i32 @program (i32 %argc2146, { i32, [ 0 x i8* ] }* %argv2144){
__fresh444:
  %argc_slot2147 = alloca i32
  store i32 %argc2146, i32* %argc_slot2147
  %argv_slot2145 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2144, { i32, [ 0 x i8* ] }** %argv_slot2145
  %lhs_or_call2148 = load %A** @a422
  %vtable_ptr2149 = getelementptr %A* %lhs_or_call2148, i32 0
  %vtable2150 = load %_A_vtable** %vtable_ptr2149
  %over2152 = getelementptr %_A_vtable* %vtable2150, i32 0, i32 2
  %over2151 = load i32 (%A*, i32)** %over2152
  %cast_op2153 = bitcast %A %lhs_or_call2148 to %A* 
  %ret2154 = call i32 %over2151 ( %A* %cast_op2153, i32 3 )
  ret i32 %ret2154
}


define void @a422.init423 (){
__fresh443:
  %mem_ptr2140 = call i32* @oat_malloc ( i32 8 )
  %obj2141 = bitcast i32* %mem_ptr2140 to %C* 
  %new_obj2142 = call %C* @_C_ctor ( %C* %obj2141 )
  %cast_op2143 = bitcast %C* %new_obj2142 to %A* 
  store %A* %cast_op2143, %A** @a422
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2136){
__fresh442:
  %x_slot2137 = alloca i32
  store i32 %x2136, i32* %x_slot2137
  %lhs_or_call2138 = load i32* %x_slot2137
  %bop2139 = add i32 %lhs_or_call2138, 1
  ret i32 %bop2139
}


define %C* @_C_ctor (%C* %_this1){
__fresh441:
  %mem_ptr2131 = call i32* @oat_malloc ( i32 8 )
  %obj2132 = bitcast i32* %mem_ptr2131 to %B* 
  %new_obj2133 = call %B* @_B_ctor ( %B* %obj2132 )
  %_this1 = bitcast %B* %new_obj2133 to %C 
  %_name2134 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str421, i8** %_name2134
  %this_vtable2135 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable417, %_C_vtable** %this_vtable2135
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2127){
__fresh440:
  %x_slot2128 = alloca i32
  store i32 %x2127, i32* %x_slot2128
  %lhs_or_call2129 = load i32* %x_slot2128
  %bop2130 = add i32 %lhs_or_call2129, 2
  ret i32 %bop2130
}


define %B* @_B_ctor (%B* %_this1){
__fresh439:
  %mem_ptr2122 = call i32* @oat_malloc ( i32 8 )
  %obj2123 = bitcast i32* %mem_ptr2122 to %A* 
  %new_obj2124 = call %A* @_A_ctor ( %A* %obj2123 )
  %_this1 = bitcast %A* %new_obj2124 to %B 
  %_name2125 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str420, i8** %_name2125
  %this_vtable2126 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable416, %_B_vtable** %this_vtable2126
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2118){
__fresh438:
  %x_slot2119 = alloca i32
  store i32 %x2118, i32* %x_slot2119
  %lhs_or_call2120 = load i32* %x_slot2119
  %bop2121 = add i32 %lhs_or_call2120, 1
  ret i32 %bop2121
}


define %A* @_A_ctor (%A* %_this1){
__fresh437:
  %mem_ptr2113 = call i32* @oat_malloc ( i32 8 )
  %obj2114 = bitcast i32* %mem_ptr2113 to %Object* 
  %new_obj2115 = call %Object* @_Object_ctor ( %Object* %obj2114 )
  %_this1 = bitcast %Object* %new_obj2115 to %A 
  %_name2116 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str419, i8** %_name2116
  %this_vtable2117 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable415, %_A_vtable** %this_vtable2117
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh436:
  %_name2111 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2112 = load i8** %_name2111
  ret i8* %lhs_or_call2112
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh435:
  %_name2109 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str418, i8** %_name2109
  %this_vtable2110 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable414, %_Object_vtable** %this_vtable2110
  ret %Object* %_this1
}


