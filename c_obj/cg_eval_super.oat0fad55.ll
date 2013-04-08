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


define i32 @program (i32 %argc2250, { i32, [ 0 x i8* ] }* %argv2248){
__fresh467:
  %argc_slot2251 = alloca i32
  store i32 %argc2250, i32* %argc_slot2251
  %argv_slot2249 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2248, { i32, [ 0 x i8* ] }** %argv_slot2249
  %lhs_or_call2252 = load %A** @a442
  %vtable_ptr2253 = getelementptr %A* %lhs_or_call2252, i32 0
  %vtable2254 = load %_A_vtable** %vtable_ptr2253
  %over2256 = getelementptr %_A_vtable* %vtable2254, i32 0, i32 2
  %over2255 = load i32 (%A*, i32)** %over2256
  %cast_op2257 = bitcast %A %lhs_or_call2252 to %A* 
  %ret2258 = call i32 %over2255 ( %A* %cast_op2257, i32 3 )
  ret i32 %ret2258
}


define void @a442.init443 (){
__fresh466:
  %mem_ptr2244 = call i32* @oat_malloc ( i32 8 )
  %obj2245 = bitcast i32* %mem_ptr2244 to %C* 
  %new_obj2246 = call %C* @_C_ctor ( %C* %obj2245 )
  %cast_op2247 = bitcast %C* %new_obj2246 to %A* 
  store %A* %cast_op2247, %A** @a442
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2232){
__fresh465:
  %x_slot2233 = alloca i32
  store i32 %x2232, i32* %x_slot2233
  %lhs_or_call2234 = load i32* %x_slot2233
  %bop2235 = add i32 %lhs_or_call2234, 1
  %lhs_or_call2236 = load i32* %x_slot2233
  %vtable_ptr2237 = getelementptr %C* %_this1, i32 0
  %vtable2238 = load %_C_vtable** %vtable_ptr2237
  %over2240 = getelementptr %_C_vtable* %vtable2238, i32 0, i32 2
  %over2239 = load i32 (%C*, i32)** %over2240
  %cast_op2241 = bitcast %C %_this1 to %C* 
  %ret2242 = call i32 %over2239 ( %C* %cast_op2241, i32 %lhs_or_call2236 )
  %bop2243 = add i32 %bop2235, %ret2242
  ret i32 %bop2243
}


define %C* @_C_ctor (%C* %_this1){
__fresh464:
  %mem_ptr2227 = call i32* @oat_malloc ( i32 8 )
  %obj2228 = bitcast i32* %mem_ptr2227 to %B* 
  %new_obj2229 = call %B* @_B_ctor ( %B* %obj2228 )
  %_this1 = bitcast %B* %new_obj2229 to %C 
  %_name2230 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str441, i8** %_name2230
  %this_vtable2231 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable437, %_C_vtable** %this_vtable2231
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2223){
__fresh463:
  %x_slot2224 = alloca i32
  store i32 %x2223, i32* %x_slot2224
  %lhs_or_call2225 = load i32* %x_slot2224
  %bop2226 = add i32 %lhs_or_call2225, 2
  ret i32 %bop2226
}


define %B* @_B_ctor (%B* %_this1){
__fresh462:
  %mem_ptr2218 = call i32* @oat_malloc ( i32 8 )
  %obj2219 = bitcast i32* %mem_ptr2218 to %A* 
  %new_obj2220 = call %A* @_A_ctor ( %A* %obj2219 )
  %_this1 = bitcast %A* %new_obj2220 to %B 
  %_name2221 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str440, i8** %_name2221
  %this_vtable2222 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable436, %_B_vtable** %this_vtable2222
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2214){
__fresh461:
  %x_slot2215 = alloca i32
  store i32 %x2214, i32* %x_slot2215
  %lhs_or_call2216 = load i32* %x_slot2215
  %bop2217 = add i32 %lhs_or_call2216, 1
  ret i32 %bop2217
}


define %A* @_A_ctor (%A* %_this1){
__fresh460:
  %mem_ptr2209 = call i32* @oat_malloc ( i32 8 )
  %obj2210 = bitcast i32* %mem_ptr2209 to %Object* 
  %new_obj2211 = call %Object* @_Object_ctor ( %Object* %obj2210 )
  %_this1 = bitcast %Object* %new_obj2211 to %A 
  %_name2212 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str439, i8** %_name2212
  %this_vtable2213 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable435, %_A_vtable** %this_vtable2213
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh459:
  %_name2207 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2208 = load i8** %_name2207
  ret i8* %lhs_or_call2208
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh458:
  %_name2205 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str438, i8** %_name2205
  %this_vtable2206 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable434, %_Object_vtable** %this_vtable2206
  ret %Object* %_this1
}


