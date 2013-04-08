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
@a431 = global %A* zeroinitializer, align 4		; initialized by @a431.init432
@_const_str430.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str430 = alias bitcast([ 2 x i8 ]* @_const_str430.str. to i8*)@_const_str429.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str429 = alias bitcast([ 2 x i8 ]* @_const_str429.str. to i8*)@_const_str428.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str428 = alias bitcast([ 2 x i8 ]* @_const_str428.str. to i8*)@_const_str427.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str427 = alias bitcast([ 7 x i8 ]* @_const_str427.str. to i8*)@_C_vtable426 = private constant %_C_vtable {%_B_vtable* @_B_vtable425, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable425 = private constant %_B_vtable {%_A_vtable* @_A_vtable424, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable424 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable423, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable423 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh465:
  call void @a431.init432(  )
  ret void
}


define i32 @program (i32 %argc2191, { i32, [ 0 x i8* ] }* %argv2189){
__fresh464:
  %argc_slot2192 = alloca i32
  store i32 %argc2191, i32* %argc_slot2192
  %argv_slot2190 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2189, { i32, [ 0 x i8* ] }** %argv_slot2190
  %lhs_or_call2193 = load %A** @a431
  %over2195 = getelementptr %_A_vtable* @_A_vtable424, i32 0, i32 2
  %over2194 = load i32 (%A*, i32)** %over2195
  %cast_op2196 = bitcast %A %lhs_or_call2193 to %A* 
  %ret2197 = call i32 %over2194 ( %A* %cast_op2196, i32 3 )
  ret i32 %ret2197
}


define void @a431.init432 (){
__fresh463:
  %mem_ptr2185 = call i32* @oat_malloc ( i32 8 )
  %obj2186 = bitcast i32* %mem_ptr2185 to %C* 
  %new_obj2187 = call %C* @_C_ctor ( %C* %obj2186 )
  %cast_op2188 = bitcast %C* %new_obj2187 to %A* 
  store %A* %cast_op2188, %A** @a431
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2181){
__fresh462:
  %x_slot2182 = alloca i32
  store i32 %x2181, i32* %x_slot2182
  %lhs_or_call2183 = load i32* %x_slot2182
  %bop2184 = add i32 %lhs_or_call2183, 1
  ret i32 %bop2184
}


define %C* @_C_ctor (%C* %_this1){
__fresh461:
  %cast_op2175 = bitcast %C* %_this1 to %B* 
  %mem_ptr2176 = call i32* @oat_malloc ( i32 8 )
  %obj2177 = bitcast i32* %mem_ptr2176 to %C* 
  %new_obj2178 = call %B* @_B_ctor ( %C* %obj2177, %B* %cast_op2175 )
  %_this1 = bitcast %B* %new_obj2178 to %C 
  %_name2179 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str430, i8** %_name2179
  %this_vtable2180 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable426, %_C_vtable** %this_vtable2180
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2171){
__fresh460:
  %x_slot2172 = alloca i32
  store i32 %x2171, i32* %x_slot2172
  %lhs_or_call2173 = load i32* %x_slot2172
  %bop2174 = add i32 %lhs_or_call2173, 2
  ret i32 %bop2174
}


define %B* @_B_ctor (%B* %_this1){
__fresh459:
  %cast_op2165 = bitcast %B* %_this1 to %A* 
  %mem_ptr2166 = call i32* @oat_malloc ( i32 8 )
  %obj2167 = bitcast i32* %mem_ptr2166 to %B* 
  %new_obj2168 = call %A* @_A_ctor ( %B* %obj2167, %A* %cast_op2165 )
  %_this1 = bitcast %A* %new_obj2168 to %B 
  %_name2169 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str429, i8** %_name2169
  %this_vtable2170 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable425, %_B_vtable** %this_vtable2170
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2161){
__fresh458:
  %x_slot2162 = alloca i32
  store i32 %x2161, i32* %x_slot2162
  %lhs_or_call2163 = load i32* %x_slot2162
  %bop2164 = add i32 %lhs_or_call2163, 1
  ret i32 %bop2164
}


define %A* @_A_ctor (%A* %_this1){
__fresh457:
  %cast_op2155 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2156 = call i32* @oat_malloc ( i32 8 )
  %obj2157 = bitcast i32* %mem_ptr2156 to %A* 
  %new_obj2158 = call %Object* @_Object_ctor ( %A* %obj2157, %Object* %cast_op2155 )
  %_this1 = bitcast %Object* %new_obj2158 to %A 
  %_name2159 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2159
  %this_vtable2160 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable424, %_A_vtable** %this_vtable2160
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh456:
  %_name2153 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2154 = load i8** %_name2153
  ret i8* %lhs_or_call2154
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh455:
  %_name2151 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str427, i8** %_name2151
  %this_vtable2152 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable423, %_Object_vtable** %this_vtable2152
  ret %Object* %_this1
}


