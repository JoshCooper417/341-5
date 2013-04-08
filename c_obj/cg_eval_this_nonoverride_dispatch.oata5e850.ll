%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)*, i32 (%A*)* }
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
@a466 = global %A* zeroinitializer, align 4		; initialized by @a466.init467
@_const_str465.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str465 = alias bitcast([ 2 x i8 ]* @_const_str465.str. to i8*)@_const_str464.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str464 = alias bitcast([ 2 x i8 ]* @_const_str464.str. to i8*)@_const_str463.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str463 = alias bitcast([ 2 x i8 ]* @_const_str463.str. to i8*)@_const_str462.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str462 = alias bitcast([ 7 x i8 ]* @_const_str462.str. to i8*)@_C_vtable461 = private constant %_C_vtable {%_B_vtable* @_B_vtable460, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*)* @_C_call, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable460 = private constant %_B_vtable {%_A_vtable* @_A_vtable459, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%B*)* @_B_call}, align 4
@_A_vtable459 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable458, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo, i32 (%A*)* @_A_call}, align 4
@_Object_vtable458 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh503:
  call void @a466.init467(  )
  ret void
}


define i32 @program (i32 %argc2267, { i32, [ 0 x i8* ] }* %argv2265){
__fresh502:
  %argc_slot2268 = alloca i32
  store i32 %argc2267, i32* %argc_slot2268
  %argv_slot2266 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2265, { i32, [ 0 x i8* ] }** %argv_slot2266
  %lhs_or_call2269 = load %A** @a466
  %call2271 = getelementptr %_A_vtable* @_A_vtable459, i32 0, i32 4
  %call2270 = load i32 (%A*)** %call2271
  %cast_op2272 = bitcast %A %lhs_or_call2269 to %A* 
  %ret2273 = call i32 %call2270 ( %A* %cast_op2272 )
  ret i32 %ret2273
}


define void @a466.init467 (){
__fresh501:
  %mem_ptr2261 = call i32* @oat_malloc ( i32 8 )
  %obj2262 = bitcast i32* %mem_ptr2261 to %C* 
  %new_obj2263 = call %C* @_C_ctor ( %C* %obj2262 )
  %cast_op2264 = bitcast %C* %new_obj2263 to %A* 
  store %A* %cast_op2264, %A** @a466
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh500:
  %foo2258 = getelementptr %_C_vtable* @_C_vtable461, i32 0, i32 3
  %foo2257 = load i32 (%A*, i32)** %foo2258
  %cast_op2259 = bitcast %C %_this1 to %A* 
  %ret2260 = call i32 %foo2257 ( %A* %cast_op2259, i32 3 )
  ret i32 %ret2260
}


define i32 @_C_notover (%C* %_this1, i32 %x2253){
__fresh499:
  %x_slot2254 = alloca i32
  store i32 %x2253, i32* %x_slot2254
  %lhs_or_call2255 = load i32* %x_slot2254
  %bop2256 = add i32 %lhs_or_call2255, 1
  ret i32 %bop2256
}


define %C* @_C_ctor (%C* %_this1){
__fresh498:
  %mem_ptr2248 = call i32* @oat_malloc ( i32 8 )
  %obj2249 = bitcast i32* %mem_ptr2248 to %B* 
  %new_obj2250 = call %B* @_B_ctor ( %B* %obj2249 )
  %_this1 = bitcast %B* %new_obj2250 to %C 
  %_name2251 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str465, i8** %_name2251
  %this_vtable2252 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable461, %_C_vtable** %this_vtable2252
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh497:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2244){
__fresh496:
  %x_slot2245 = alloca i32
  store i32 %x2244, i32* %x_slot2245
  %lhs_or_call2246 = load i32* %x_slot2245
  %bop2247 = add i32 %lhs_or_call2246, 2
  ret i32 %bop2247
}


define %B* @_B_ctor (%B* %_this1){
__fresh495:
  %mem_ptr2239 = call i32* @oat_malloc ( i32 8 )
  %obj2240 = bitcast i32* %mem_ptr2239 to %A* 
  %new_obj2241 = call %A* @_A_ctor ( %A* %obj2240 )
  %_this1 = bitcast %A* %new_obj2241 to %B 
  %_name2242 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str464, i8** %_name2242
  %this_vtable2243 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable460, %_B_vtable** %this_vtable2243
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh494:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2235){
__fresh493:
  %x_slot2236 = alloca i32
  store i32 %x2235, i32* %x_slot2236
  %lhs_or_call2237 = load i32* %x_slot2236
  %bop2238 = add i32 %lhs_or_call2237, 8
  ret i32 %bop2238
}


define i32 @_A_over (%A* %_this1, i32 %x2231){
__fresh492:
  %x_slot2232 = alloca i32
  store i32 %x2231, i32* %x_slot2232
  %lhs_or_call2233 = load i32* %x_slot2232
  %bop2234 = add i32 %lhs_or_call2233, 1
  ret i32 %bop2234
}


define %A* @_A_ctor (%A* %_this1){
__fresh491:
  %mem_ptr2226 = call i32* @oat_malloc ( i32 8 )
  %obj2227 = bitcast i32* %mem_ptr2226 to %Object* 
  %new_obj2228 = call %Object* @_Object_ctor ( %Object* %obj2227 )
  %_this1 = bitcast %Object* %new_obj2228 to %A 
  %_name2229 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2229
  %this_vtable2230 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable459, %_A_vtable** %this_vtable2230
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh490:
  %_name2224 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2225 = load i8** %_name2224
  ret i8* %lhs_or_call2225
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh489:
  %_name2222 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str462, i8** %_name2222
  %this_vtable2223 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable458, %_Object_vtable** %this_vtable2223
  ret %Object* %_this1
}


