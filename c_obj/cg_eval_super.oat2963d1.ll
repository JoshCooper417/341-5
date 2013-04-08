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


define i32 @program (i32 %argc2260, { i32, [ 0 x i8* ] }* %argv2258){
__fresh467:
  %argc_slot2261 = alloca i32
  store i32 %argc2260, i32* %argc_slot2261
  %argv_slot2259 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2258, { i32, [ 0 x i8* ] }** %argv_slot2259
  %lhs_or_call2262 = load %A** @a442
  %over2264 = getelementptr %_A_vtable* @_A_vtable435, i32 0, i32 2
  %over2263 = load i32 (%A*, i32)** %over2264
  %cast_op2265 = bitcast %A %lhs_or_call2262 to %A* 
  %ret2266 = call i32 %over2263 ( %A* %cast_op2265, i32 3 )
  ret i32 %ret2266
}


define void @a442.init443 (){
__fresh466:
  %mem_ptr2254 = call i32* @oat_malloc ( i32 8 )
  %obj2255 = bitcast i32* %mem_ptr2254 to %C* 
  %new_obj2256 = call %C* @_C_ctor ( %C* %obj2255 )
  %cast_op2257 = bitcast %C* %new_obj2256 to %A* 
  store %A* %cast_op2257, %A** @a442
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2244){
__fresh465:
  %x_slot2245 = alloca i32
  store i32 %x2244, i32* %x_slot2245
  %lhs_or_call2246 = load i32* %x_slot2245
  %bop2247 = add i32 %lhs_or_call2246, 1
  %lhs_or_call2248 = load i32* %x_slot2245
  %over2250 = getelementptr %_C_vtable* @_C_vtable437, i32 0, i32 2
  %over2249 = load i32 (%C*, i32)** %over2250
  %cast_op2251 = bitcast %C %_this1 to %C* 
  %ret2252 = call i32 %over2249 ( %C* %cast_op2251, i32 %lhs_or_call2248 )
  %bop2253 = add i32 %bop2247, %ret2252
  ret i32 %bop2253
}


define %C* @_C_ctor (%C* %_this1){
__fresh464:
  %cast_op2238 = bitcast %C* %_this1 to %B* 
  %mem_ptr2239 = call i32* @oat_malloc ( i32 8 )
  %obj2240 = bitcast i32* %mem_ptr2239 to %C* 
  %new_obj2241 = call %B* @_B_ctor ( %C* %obj2240, %B* %cast_op2238 )
  %_this1 = bitcast %B* %new_obj2241 to %C 
  %_name2242 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str441, i8** %_name2242
  %this_vtable2243 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable437, %_C_vtable** %this_vtable2243
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2234){
__fresh463:
  %x_slot2235 = alloca i32
  store i32 %x2234, i32* %x_slot2235
  %lhs_or_call2236 = load i32* %x_slot2235
  %bop2237 = add i32 %lhs_or_call2236, 2
  ret i32 %bop2237
}


define %B* @_B_ctor (%B* %_this1){
__fresh462:
  %cast_op2228 = bitcast %B* %_this1 to %A* 
  %mem_ptr2229 = call i32* @oat_malloc ( i32 8 )
  %obj2230 = bitcast i32* %mem_ptr2229 to %B* 
  %new_obj2231 = call %A* @_A_ctor ( %B* %obj2230, %A* %cast_op2228 )
  %_this1 = bitcast %A* %new_obj2231 to %B 
  %_name2232 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str440, i8** %_name2232
  %this_vtable2233 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable436, %_B_vtable** %this_vtable2233
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2224){
__fresh461:
  %x_slot2225 = alloca i32
  store i32 %x2224, i32* %x_slot2225
  %lhs_or_call2226 = load i32* %x_slot2225
  %bop2227 = add i32 %lhs_or_call2226, 1
  ret i32 %bop2227
}


define %A* @_A_ctor (%A* %_this1){
__fresh460:
  %cast_op2218 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2219 = call i32* @oat_malloc ( i32 8 )
  %obj2220 = bitcast i32* %mem_ptr2219 to %A* 
  %new_obj2221 = call %Object* @_Object_ctor ( %A* %obj2220, %Object* %cast_op2218 )
  %_this1 = bitcast %Object* %new_obj2221 to %A 
  %_name2222 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str439, i8** %_name2222
  %this_vtable2223 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable435, %_A_vtable** %this_vtable2223
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh459:
  %_name2216 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2217 = load i8** %_name2216
  ret i8* %lhs_or_call2217
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh458:
  %_name2214 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str438, i8** %_name2214
  %this_vtable2215 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable434, %_Object_vtable** %this_vtable2215
  ret %Object* %_this1
}


