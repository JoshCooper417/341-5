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
@a451 = global %A* zeroinitializer, align 4		; initialized by @a451.init452
@_const_str450.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str450 = alias bitcast([ 2 x i8 ]* @_const_str450.str. to i8*)@_const_str449.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str449 = alias bitcast([ 2 x i8 ]* @_const_str449.str. to i8*)@_const_str448.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str448 = alias bitcast([ 2 x i8 ]* @_const_str448.str. to i8*)@_const_str447.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str447 = alias bitcast([ 7 x i8 ]* @_const_str447.str. to i8*)@_C_vtable446 = private constant %_C_vtable {%_B_vtable* @_B_vtable445, i8* (%Object*)* @_Object_get_name, i32 (%C*, i32)* @_C_over}, align 4
@_B_vtable445 = private constant %_B_vtable {%_A_vtable* @_A_vtable444, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable444 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable443, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable443 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh488:
  call void @a451.init452(  )
  ret void
}


define i32 @program (i32 %argc2295, { i32, [ 0 x i8* ] }* %argv2293){
__fresh487:
  %argc_slot2296 = alloca i32
  store i32 %argc2295, i32* %argc_slot2296
  %argv_slot2294 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2293, { i32, [ 0 x i8* ] }** %argv_slot2294
  %lhs_or_call2297 = load %A** @a451
  %over2299 = getelementptr %_A_vtable* @_A_vtable444, i32 0, i32 2
  %over2298 = load i32 (%A*, i32)** %over2299
  %cast_op2300 = bitcast %A %lhs_or_call2297 to %A* 
  %ret2301 = call i32 %over2298 ( %A* %cast_op2300, i32 3 )
  ret i32 %ret2301
}


define void @a451.init452 (){
__fresh486:
  %mem_ptr2289 = call i32* @oat_malloc ( i32 8 )
  %obj2290 = bitcast i32* %mem_ptr2289 to %C* 
  %new_obj2291 = call %C* @_C_ctor ( %C* %obj2290 )
  %cast_op2292 = bitcast %C* %new_obj2291 to %A* 
  store %A* %cast_op2292, %A** @a451
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2279){
__fresh485:
  %x_slot2280 = alloca i32
  store i32 %x2279, i32* %x_slot2280
  %lhs_or_call2281 = load i32* %x_slot2280
  %bop2282 = add i32 %lhs_or_call2281, 1
  %lhs_or_call2283 = load i32* %x_slot2280
  %over2285 = getelementptr %_C_vtable* @_C_vtable446, i32 0, i32 2
  %over2284 = load i32 (%C*, i32)** %over2285
  %cast_op2286 = bitcast %C %_this1 to %C* 
  %ret2287 = call i32 %over2284 ( %C* %cast_op2286, i32 %lhs_or_call2283 )
  %bop2288 = add i32 %bop2282, %ret2287
  ret i32 %bop2288
}


define %C* @_C_ctor (%C* %_this1){
__fresh484:
  %cast_op2273 = bitcast %C* %_this1 to %B* 
  %mem_ptr2274 = call i32* @oat_malloc ( i32 8 )
  %obj2275 = bitcast i32* %mem_ptr2274 to %C* 
  %new_obj2276 = call %B* @_B_ctor ( %C* %obj2275, %B* %cast_op2273 )
  %_this1 = bitcast %B* %new_obj2276 to %C 
  %_name2277 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str450, i8** %_name2277
  %this_vtable2278 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable446, %_C_vtable** %this_vtable2278
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2269){
__fresh483:
  %x_slot2270 = alloca i32
  store i32 %x2269, i32* %x_slot2270
  %lhs_or_call2271 = load i32* %x_slot2270
  %bop2272 = add i32 %lhs_or_call2271, 2
  ret i32 %bop2272
}


define %B* @_B_ctor (%B* %_this1){
__fresh482:
  %cast_op2263 = bitcast %B* %_this1 to %A* 
  %mem_ptr2264 = call i32* @oat_malloc ( i32 8 )
  %obj2265 = bitcast i32* %mem_ptr2264 to %B* 
  %new_obj2266 = call %A* @_A_ctor ( %B* %obj2265, %A* %cast_op2263 )
  %_this1 = bitcast %A* %new_obj2266 to %B 
  %_name2267 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str449, i8** %_name2267
  %this_vtable2268 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable445, %_B_vtable** %this_vtable2268
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2259){
__fresh481:
  %x_slot2260 = alloca i32
  store i32 %x2259, i32* %x_slot2260
  %lhs_or_call2261 = load i32* %x_slot2260
  %bop2262 = add i32 %lhs_or_call2261, 1
  ret i32 %bop2262
}


define %A* @_A_ctor (%A* %_this1){
__fresh480:
  %cast_op2253 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2254 = call i32* @oat_malloc ( i32 8 )
  %obj2255 = bitcast i32* %mem_ptr2254 to %A* 
  %new_obj2256 = call %Object* @_Object_ctor ( %A* %obj2255, %Object* %cast_op2253 )
  %_this1 = bitcast %Object* %new_obj2256 to %A 
  %_name2257 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str448, i8** %_name2257
  %this_vtable2258 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable444, %_A_vtable** %this_vtable2258
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh479:
  %_name2251 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2252 = load i8** %_name2251
  ret i8* %lhs_or_call2252
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh478:
  %_name2249 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str447, i8** %_name2249
  %this_vtable2250 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable443, %_Object_vtable** %this_vtable2250
  ret %Object* %_this1
}


