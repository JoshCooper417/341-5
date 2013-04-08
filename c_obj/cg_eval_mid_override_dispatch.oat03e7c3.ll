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


define i32 @program (i32 %argc2300, { i32, [ 0 x i8* ] }* %argv2298){
__fresh519:
  %argc_slot2301 = alloca i32
  store i32 %argc2300, i32* %argc_slot2301
  %argv_slot2299 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2298, { i32, [ 0 x i8* ] }** %argv_slot2299
  %lhs_or_call2302 = load %A** @a420
  %vtable_ptr2303 = getelementptr %A* %lhs_or_call2302, i32 0
  %vtable2304 = load %_A_vtable** %vtable_ptr2303
  %over2306 = getelementptr %_A_vtable* %vtable2304, i32 0, i32 2
  %over2305 = load i32 (%A*, i32)** %over2306
  %cast_op2307 = bitcast %A %lhs_or_call2302 to %A* 
  %ret2308 = call i32 %over2305 ( %A* %cast_op2307, i32 3 )
  ret i32 %ret2308
}


define void @a420.init421 (){
__fresh518:
  %mem_ptr2294 = call i32* @oat_malloc ( i32 8 )
  %obj2295 = bitcast i32* %mem_ptr2294 to %C* 
  %new_obj2296 = call %C* @_C_ctor ( %C* %obj2295 )
  %cast_op2297 = bitcast %C* %new_obj2296 to %A* 
  store %A* %cast_op2297, %A** @a420
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2290){
__fresh517:
  %x_slot2291 = alloca i32
  store i32 %x2290, i32* %x_slot2291
  %lhs_or_call2292 = load i32* %x_slot2291
  %bop2293 = add i32 %lhs_or_call2292, 1
  ret i32 %bop2293
}


define %C* @_C_ctor (%C* %_this1){
__fresh516:
  %mem_ptr2285 = call i32* @oat_malloc ( i32 8 )
  %obj2286 = bitcast i32* %mem_ptr2285 to %B* 
  %new_obj2287 = call %B* @_B_ctor ( %B* %obj2286 )
  %_this1 = bitcast %B* %new_obj2287 to %C 
  %_name2288 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str419, i8** %_name2288
  %this_vtable2289 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable415, %_C_vtable** %this_vtable2289
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2281){
__fresh515:
  %x_slot2282 = alloca i32
  store i32 %x2281, i32* %x_slot2282
  %lhs_or_call2283 = load i32* %x_slot2282
  %bop2284 = add i32 %lhs_or_call2283, 2
  ret i32 %bop2284
}


define %B* @_B_ctor (%B* %_this1){
__fresh514:
  %mem_ptr2276 = call i32* @oat_malloc ( i32 8 )
  %obj2277 = bitcast i32* %mem_ptr2276 to %A* 
  %new_obj2278 = call %A* @_A_ctor ( %A* %obj2277 )
  %_this1 = bitcast %A* %new_obj2278 to %B 
  %_name2279 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str418, i8** %_name2279
  %this_vtable2280 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable414, %_B_vtable** %this_vtable2280
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2272){
__fresh513:
  %x_slot2273 = alloca i32
  store i32 %x2272, i32* %x_slot2273
  %lhs_or_call2274 = load i32* %x_slot2273
  %bop2275 = add i32 %lhs_or_call2274, 1
  ret i32 %bop2275
}


define %A* @_A_ctor (%A* %_this1){
__fresh512:
  %mem_ptr2267 = call i32* @oat_malloc ( i32 8 )
  %obj2268 = bitcast i32* %mem_ptr2267 to %Object* 
  %new_obj2269 = call %Object* @_Object_ctor ( %Object* %obj2268 )
  %_this1 = bitcast %Object* %new_obj2269 to %A 
  %_name2270 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str417, i8** %_name2270
  %this_vtable2271 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable413, %_A_vtable** %this_vtable2271
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh511:
  %_name2265 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2266 = load i8** %_name2265
  ret i8* %lhs_or_call2266
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh510:
  %_name2263 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str416, i8** %_name2263
  %this_vtable2264 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable412, %_Object_vtable** %this_vtable2264
  ret %Object* %_this1
}


