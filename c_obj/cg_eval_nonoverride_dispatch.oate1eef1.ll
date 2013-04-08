%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)* }
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
@a421 = global %A* zeroinitializer, align 4		; initialized by @a421.init422
@_const_str420.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str420 = alias bitcast([ 2 x i8 ]* @_const_str420.str. to i8*)@_const_str419.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str419 = alias bitcast([ 2 x i8 ]* @_const_str419.str. to i8*)@_const_str418.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str418 = alias bitcast([ 2 x i8 ]* @_const_str418.str. to i8*)@_const_str417.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str417 = alias bitcast([ 7 x i8 ]* @_const_str417.str. to i8*)@_C_vtable416 = private constant %_C_vtable {%_B_vtable* @_B_vtable415, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable415 = private constant %_B_vtable {%_A_vtable* @_A_vtable414, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo}, align 4
@_A_vtable414 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable413, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo}, align 4
@_Object_vtable413 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh457:
  call void @a421.init422(  )
  ret void
}


define i32 @program (i32 %argc2177, { i32, [ 0 x i8* ] }* %argv2175){
__fresh456:
  %argc_slot2178 = alloca i32
  store i32 %argc2177, i32* %argc_slot2178
  %argv_slot2176 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2175, { i32, [ 0 x i8* ] }** %argv_slot2176
  %lhs_or_call2179 = load %A** @a421
  %vtable_ptr2180 = getelementptr %A* %lhs_or_call2179, i32 0
  %vtable2181 = load %_A_vtable** %vtable_ptr2180
  %foo2183 = getelementptr %_A_vtable* %vtable2181, i32 0, i32 3
  %foo2182 = load i32 (%A*, i32)** %foo2183
  %cast_op2184 = bitcast %A %lhs_or_call2179 to %A* 
  %ret2185 = call i32 %foo2182 ( %A* %cast_op2184, i32 3 )
  ret i32 %ret2185
}


define void @a421.init422 (){
__fresh455:
  %mem_ptr2171 = call i32* @oat_malloc ( i32 8 )
  %obj2172 = bitcast i32* %mem_ptr2171 to %C* 
  %new_obj2173 = call %C* @_C_ctor ( %C* %obj2172 )
  %cast_op2174 = bitcast %C* %new_obj2173 to %A* 
  store %A* %cast_op2174, %A** @a421
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2167){
__fresh454:
  %x_slot2168 = alloca i32
  store i32 %x2167, i32* %x_slot2168
  %lhs_or_call2169 = load i32* %x_slot2168
  %bop2170 = add i32 %lhs_or_call2169, 1
  ret i32 %bop2170
}


define %C* @_C_ctor (%C* %_this1){
__fresh453:
  %mem_ptr2162 = call i32* @oat_malloc ( i32 8 )
  %obj2163 = bitcast i32* %mem_ptr2162 to %B* 
  %new_obj2164 = call %B* @_B_ctor ( %B* %obj2163 )
  %_this1 = bitcast %B* %new_obj2164 to %C 
  %_name2165 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str420, i8** %_name2165
  %this_vtable2166 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable416, %_C_vtable** %this_vtable2166
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2158){
__fresh452:
  %x_slot2159 = alloca i32
  store i32 %x2158, i32* %x_slot2159
  %lhs_or_call2160 = load i32* %x_slot2159
  %bop2161 = add i32 %lhs_or_call2160, 2
  ret i32 %bop2161
}


define %B* @_B_ctor (%B* %_this1){
__fresh451:
  %mem_ptr2153 = call i32* @oat_malloc ( i32 8 )
  %obj2154 = bitcast i32* %mem_ptr2153 to %A* 
  %new_obj2155 = call %A* @_A_ctor ( %A* %obj2154 )
  %_this1 = bitcast %A* %new_obj2155 to %B 
  %_name2156 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str419, i8** %_name2156
  %this_vtable2157 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable415, %_B_vtable** %this_vtable2157
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2149){
__fresh450:
  %x_slot2150 = alloca i32
  store i32 %x2149, i32* %x_slot2150
  %lhs_or_call2151 = load i32* %x_slot2150
  %bop2152 = add i32 %lhs_or_call2151, 8
  ret i32 %bop2152
}


define i32 @_A_over (%A* %_this1, i32 %x2145){
__fresh449:
  %x_slot2146 = alloca i32
  store i32 %x2145, i32* %x_slot2146
  %lhs_or_call2147 = load i32* %x_slot2146
  %bop2148 = add i32 %lhs_or_call2147, 1
  ret i32 %bop2148
}


define %A* @_A_ctor (%A* %_this1){
__fresh448:
  %mem_ptr2140 = call i32* @oat_malloc ( i32 8 )
  %obj2141 = bitcast i32* %mem_ptr2140 to %Object* 
  %new_obj2142 = call %Object* @_Object_ctor ( %Object* %obj2141 )
  %_this1 = bitcast %Object* %new_obj2142 to %A 
  %_name2143 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str418, i8** %_name2143
  %this_vtable2144 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable414, %_A_vtable** %this_vtable2144
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh447:
  %_name2138 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2139 = load i8** %_name2138
  ret i8* %lhs_or_call2139
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh446:
  %_name2136 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str417, i8** %_name2136
  %this_vtable2137 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable413, %_Object_vtable** %this_vtable2137
  ret %Object* %_this1
}


