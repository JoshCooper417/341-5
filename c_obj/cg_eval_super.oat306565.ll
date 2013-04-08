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
@a431 = global %A* zeroinitializer, align 4		; initialized by @a431.init432
@_const_str430.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str430 = alias bitcast([ 2 x i8 ]* @_const_str430.str. to i8*)@_const_str429.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str429 = alias bitcast([ 2 x i8 ]* @_const_str429.str. to i8*)@_const_str428.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str428 = alias bitcast([ 2 x i8 ]* @_const_str428.str. to i8*)@_const_str427.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str427 = alias bitcast([ 7 x i8 ]* @_const_str427.str. to i8*)@_C_vtable426 = private constant %_C_vtable {%_B_vtable* @_B_vtable425, i8* (%Object*)* @_Object_get_name, i32 (%C*, i32)* @_C_over}, align 4
@_B_vtable425 = private constant %_B_vtable {%_A_vtable* @_A_vtable424, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable424 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable423, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable423 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh468:
  call void @a431.init432(  )
  ret void
}


define i32 @program (i32 %argc2231, { i32, [ 0 x i8* ] }* %argv2229){
__fresh467:
  %argc_slot2232 = alloca i32
  store i32 %argc2231, i32* %argc_slot2232
  %argv_slot2230 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2229, { i32, [ 0 x i8* ] }** %argv_slot2230
  %lhs_or_call2233 = load %A** @a431
  %vtable_ptr2234 = getelementptr %A* %lhs_or_call2233, i32 0
  %vtable2235 = load %_A_vtable** %vtable_ptr2234
  %over2237 = getelementptr %_A_vtable* %vtable2235, i32 0, i32 2
  %over2236 = load i32 (%A*, i32)** %over2237
  %cast_op2238 = bitcast %A %lhs_or_call2233 to %A* 
  %ret2239 = call i32 %over2236 ( %A* %cast_op2238, i32 3 )
  ret i32 %ret2239
}


define void @a431.init432 (){
__fresh466:
  %mem_ptr2225 = call i32* @oat_malloc ( i32 8 )
  %obj2226 = bitcast i32* %mem_ptr2225 to %C* 
  %new_obj2227 = call %C* @_C_ctor ( %C* %obj2226 )
  %cast_op2228 = bitcast %C* %new_obj2227 to %A* 
  store %A* %cast_op2228, %A** @a431
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2213){
__fresh465:
  %x_slot2214 = alloca i32
  store i32 %x2213, i32* %x_slot2214
  %lhs_or_call2215 = load i32* %x_slot2214
  %bop2216 = add i32 %lhs_or_call2215, 1
  %lhs_or_call2217 = load i32* %x_slot2214
  %vtable_ptr2218 = getelementptr %C* %_this1, i32 0
  %vtable2219 = load %_C_vtable** %vtable_ptr2218
  %over2221 = getelementptr %_C_vtable* %vtable2219, i32 0, i32 2
  %over2220 = load i32 (%C*, i32)** %over2221
  %cast_op2222 = bitcast %C %_this1 to %C* 
  %ret2223 = call i32 %over2220 ( %C* %cast_op2222, i32 %lhs_or_call2217 )
  %bop2224 = add i32 %bop2216, %ret2223
  ret i32 %bop2224
}


define %C* @_C_ctor (%C* %_this1){
__fresh464:
  %mem_ptr2208 = call i32* @oat_malloc ( i32 8 )
  %obj2209 = bitcast i32* %mem_ptr2208 to %B* 
  %new_obj2210 = call %B* @_B_ctor ( %B* %obj2209 )
  %_this1 = bitcast %B* %new_obj2210 to %C 
  %_name2211 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str430, i8** %_name2211
  %this_vtable2212 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable426, %_C_vtable** %this_vtable2212
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2204){
__fresh463:
  %x_slot2205 = alloca i32
  store i32 %x2204, i32* %x_slot2205
  %lhs_or_call2206 = load i32* %x_slot2205
  %bop2207 = add i32 %lhs_or_call2206, 2
  ret i32 %bop2207
}


define %B* @_B_ctor (%B* %_this1){
__fresh462:
  %mem_ptr2199 = call i32* @oat_malloc ( i32 8 )
  %obj2200 = bitcast i32* %mem_ptr2199 to %A* 
  %new_obj2201 = call %A* @_A_ctor ( %A* %obj2200 )
  %_this1 = bitcast %A* %new_obj2201 to %B 
  %_name2202 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str429, i8** %_name2202
  %this_vtable2203 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable425, %_B_vtable** %this_vtable2203
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2195){
__fresh461:
  %x_slot2196 = alloca i32
  store i32 %x2195, i32* %x_slot2196
  %lhs_or_call2197 = load i32* %x_slot2196
  %bop2198 = add i32 %lhs_or_call2197, 1
  ret i32 %bop2198
}


define %A* @_A_ctor (%A* %_this1){
__fresh460:
  %mem_ptr2190 = call i32* @oat_malloc ( i32 8 )
  %obj2191 = bitcast i32* %mem_ptr2190 to %Object* 
  %new_obj2192 = call %Object* @_Object_ctor ( %Object* %obj2191 )
  %_this1 = bitcast %Object* %new_obj2192 to %A 
  %_name2193 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2193
  %this_vtable2194 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable424, %_A_vtable** %this_vtable2194
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh459:
  %_name2188 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2189 = load i8** %_name2188
  ret i8* %lhs_or_call2189
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh458:
  %_name2186 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str427, i8** %_name2186
  %this_vtable2187 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable423, %_Object_vtable** %this_vtable2187
  ret %Object* %_this1
}


