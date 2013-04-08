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
@a420 = global %A* zeroinitializer, align 4		; initialized by @a420.init421
@_const_str419.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str419 = alias bitcast([ 2 x i8 ]* @_const_str419.str. to i8*)@_const_str418.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str418 = alias bitcast([ 2 x i8 ]* @_const_str418.str. to i8*)@_const_str417.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str417 = alias bitcast([ 2 x i8 ]* @_const_str417.str. to i8*)@_const_str416.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str416 = alias bitcast([ 7 x i8 ]* @_const_str416.str. to i8*)@_C_vtable415 = private constant %_C_vtable {%_B_vtable* @_B_vtable414, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable414 = private constant %_B_vtable {%_A_vtable* @_A_vtable413, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable413 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable412, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable412 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh520:
  call void @a420.init421(  )
  ret void
}


define i32 @program (i32 %argc2311, { i32, [ 0 x i8* ] }* %argv2309){
__fresh519:
  %argc_slot2312 = alloca i32
  store i32 %argc2311, i32* %argc_slot2312
  %argv_slot2310 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2309, { i32, [ 0 x i8* ] }** %argv_slot2310
  %lhs_or_call2313 = load %A** @a420
  %vtable_ptr2314 = getelementptr %A* %lhs_or_call2313, i32 0
  %vtable2315 = load %_A_vtable** %vtable_ptr2314
  %over2317 = getelementptr %_A_vtable* %vtable2315, i32 0, i32 2
  %over2316 = load i32 (%A*, i32)** %over2317
  %cast_op2318 = bitcast %A %lhs_or_call2313 to %A* 
  %ret2319 = call i32 %over2316 ( %A* %cast_op2318, i32 3 )
  ret i32 %ret2319
}


define void @a420.init421 (){
__fresh518:
  %mem_ptr2305 = call i32* @oat_malloc ( i32 8 )
  %obj2306 = bitcast i32* %mem_ptr2305 to %C* 
  %new_obj2307 = call %C* @_C_ctor ( %C* %obj2306 )
  %cast_op2308 = bitcast %C* %new_obj2307 to %A* 
  store %A* %cast_op2308, %A** @a420
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2301){
__fresh517:
  %x_slot2302 = alloca i32
  store i32 %x2301, i32* %x_slot2302
  %lhs_or_call2303 = load i32* %x_slot2302
  %bop2304 = add i32 %lhs_or_call2303, 1
  ret i32 %bop2304
}


define %C* @_C_ctor (%C* %_this1){
__fresh516:
  %mem_ptr2296 = call i32* @oat_malloc ( i32 8 )
  %obj2297 = bitcast i32* %mem_ptr2296 to %B* 
  %new_obj2298 = call %B* @_B_ctor ( %B* %obj2297 )
  %_this1 = bitcast %B* %new_obj2298 to %C 
  %_name2299 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str419, i8** %_name2299
  %this_vtable2300 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable415, %_C_vtable** %this_vtable2300
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2292){
__fresh515:
  %x_slot2293 = alloca i32
  store i32 %x2292, i32* %x_slot2293
  %lhs_or_call2294 = load i32* %x_slot2293
  %bop2295 = add i32 %lhs_or_call2294, 2
  ret i32 %bop2295
}


define %B* @_B_ctor (%B* %_this1){
__fresh514:
  %mem_ptr2287 = call i32* @oat_malloc ( i32 8 )
  %obj2288 = bitcast i32* %mem_ptr2287 to %A* 
  %new_obj2289 = call %A* @_A_ctor ( %A* %obj2288 )
  %_this1 = bitcast %A* %new_obj2289 to %B 
  %_name2290 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str418, i8** %_name2290
  %this_vtable2291 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable414, %_B_vtable** %this_vtable2291
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2283){
__fresh513:
  %x_slot2284 = alloca i32
  store i32 %x2283, i32* %x_slot2284
  %lhs_or_call2285 = load i32* %x_slot2284
  %bop2286 = add i32 %lhs_or_call2285, 1
  ret i32 %bop2286
}


define %A* @_A_ctor (%A* %_this1){
__fresh512:
  %mem_ptr2278 = call i32* @oat_malloc ( i32 8 )
  %obj2279 = bitcast i32* %mem_ptr2278 to %Object* 
  %new_obj2280 = call %Object* @_Object_ctor ( %Object* %obj2279 )
  %_this1 = bitcast %Object* %new_obj2280 to %A 
  %_name2281 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str417, i8** %_name2281
  %this_vtable2282 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable413, %_A_vtable** %this_vtable2282
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh511:
  %_name2276 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2277 = load i8** %_name2276
  ret i8* %lhs_or_call2277
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh510:
  %_name2274 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str416, i8** %_name2274
  %this_vtable2275 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable412, %_Object_vtable** %this_vtable2275
  ret %Object* %_this1
}


