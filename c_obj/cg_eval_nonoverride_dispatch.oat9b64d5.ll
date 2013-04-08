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
@a432 = global %A* zeroinitializer, align 4		; initialized by @a432.init433
@_const_str431.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str431 = alias bitcast([ 2 x i8 ]* @_const_str431.str. to i8*)@_const_str430.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str430 = alias bitcast([ 2 x i8 ]* @_const_str430.str. to i8*)@_const_str429.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str429 = alias bitcast([ 2 x i8 ]* @_const_str429.str. to i8*)@_const_str428.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str428 = alias bitcast([ 7 x i8 ]* @_const_str428.str. to i8*)@_C_vtable427 = private constant %_C_vtable {%_B_vtable* @_B_vtable426, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable426 = private constant %_B_vtable {%_A_vtable* @_A_vtable425, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo}, align 4
@_A_vtable425 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable424, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo}, align 4
@_Object_vtable424 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh457:
  call void @a432.init433(  )
  ret void
}


define i32 @program (i32 %argc2207, { i32, [ 0 x i8* ] }* %argv2205){
__fresh456:
  %argc_slot2208 = alloca i32
  store i32 %argc2207, i32* %argc_slot2208
  %argv_slot2206 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2205, { i32, [ 0 x i8* ] }** %argv_slot2206
  %lhs_or_call2209 = load %A** @a432
  %foo2211 = getelementptr %_A_vtable* @_A_vtable425, i32 0, i32 3
  %foo2210 = load i32 (%A*, i32)** %foo2211
  %cast_op2212 = bitcast %A %lhs_or_call2209 to %A* 
  %ret2213 = call i32 %foo2210 ( %A* %cast_op2212, i32 3 )
  ret i32 %ret2213
}


define void @a432.init433 (){
__fresh455:
  %mem_ptr2201 = call i32* @oat_malloc ( i32 8 )
  %obj2202 = bitcast i32* %mem_ptr2201 to %C* 
  %new_obj2203 = call %C* @_C_ctor ( %C* %obj2202 )
  %cast_op2204 = bitcast %C* %new_obj2203 to %A* 
  store %A* %cast_op2204, %A** @a432
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2197){
__fresh454:
  %x_slot2198 = alloca i32
  store i32 %x2197, i32* %x_slot2198
  %lhs_or_call2199 = load i32* %x_slot2198
  %bop2200 = add i32 %lhs_or_call2199, 1
  ret i32 %bop2200
}


define %C* @_C_ctor (%C* %_this1){
__fresh453:
  %cast_op2191 = bitcast %C* %_this1 to %B* 
  %mem_ptr2192 = call i32* @oat_malloc ( i32 8 )
  %obj2193 = bitcast i32* %mem_ptr2192 to %C* 
  %new_obj2194 = call %B* @_B_ctor ( %C* %obj2193, %B* %cast_op2191 )
  %_this1 = bitcast %B* %new_obj2194 to %C 
  %_name2195 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str431, i8** %_name2195
  %this_vtable2196 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable427, %_C_vtable** %this_vtable2196
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2187){
__fresh452:
  %x_slot2188 = alloca i32
  store i32 %x2187, i32* %x_slot2188
  %lhs_or_call2189 = load i32* %x_slot2188
  %bop2190 = add i32 %lhs_or_call2189, 2
  ret i32 %bop2190
}


define %B* @_B_ctor (%B* %_this1){
__fresh451:
  %cast_op2181 = bitcast %B* %_this1 to %A* 
  %mem_ptr2182 = call i32* @oat_malloc ( i32 8 )
  %obj2183 = bitcast i32* %mem_ptr2182 to %B* 
  %new_obj2184 = call %A* @_A_ctor ( %B* %obj2183, %A* %cast_op2181 )
  %_this1 = bitcast %A* %new_obj2184 to %B 
  %_name2185 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str430, i8** %_name2185
  %this_vtable2186 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable426, %_B_vtable** %this_vtable2186
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2177){
__fresh450:
  %x_slot2178 = alloca i32
  store i32 %x2177, i32* %x_slot2178
  %lhs_or_call2179 = load i32* %x_slot2178
  %bop2180 = add i32 %lhs_or_call2179, 8
  ret i32 %bop2180
}


define i32 @_A_over (%A* %_this1, i32 %x2173){
__fresh449:
  %x_slot2174 = alloca i32
  store i32 %x2173, i32* %x_slot2174
  %lhs_or_call2175 = load i32* %x_slot2174
  %bop2176 = add i32 %lhs_or_call2175, 1
  ret i32 %bop2176
}


define %A* @_A_ctor (%A* %_this1){
__fresh448:
  %cast_op2167 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2168 = call i32* @oat_malloc ( i32 8 )
  %obj2169 = bitcast i32* %mem_ptr2168 to %A* 
  %new_obj2170 = call %Object* @_Object_ctor ( %A* %obj2169, %Object* %cast_op2167 )
  %_this1 = bitcast %Object* %new_obj2170 to %A 
  %_name2171 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str429, i8** %_name2171
  %this_vtable2172 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable425, %_A_vtable** %this_vtable2172
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh447:
  %_name2165 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2166 = load i8** %_name2165
  ret i8* %lhs_or_call2166
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh446:
  %_name2163 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2163
  %this_vtable2164 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable424, %_Object_vtable** %this_vtable2164
  ret %Object* %_this1
}


