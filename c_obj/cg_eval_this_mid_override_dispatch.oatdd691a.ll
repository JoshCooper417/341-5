%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%C*, i32)*, i32 (%C*)* }
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
@_const_str446.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str446 = alias bitcast([ 2 x i8 ]* @_const_str446.str. to i8*)@_const_str445.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str445 = alias bitcast([ 2 x i8 ]* @_const_str445.str. to i8*)@_const_str444.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str444 = alias bitcast([ 2 x i8 ]* @_const_str444.str. to i8*)@_const_str443.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str443 = alias bitcast([ 7 x i8 ]* @_const_str443.str. to i8*)@_C_vtable442 = private constant %_C_vtable {%_B_vtable* @_B_vtable441, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable441 = private constant %_B_vtable {%_A_vtable* @_A_vtable440, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable440 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable439, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable439 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh488:
  ret void
}


define i32 @program (i32 %argc2329, { i32, [ 0 x i8* ] }* %argv2327){
__fresh487:
  %argc_slot2330 = alloca i32
  store i32 %argc2329, i32* %argc_slot2330
  %argv_slot2328 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2327, { i32, [ 0 x i8* ] }** %argv_slot2328
  %mem_ptr2331 = call i32* @oat_malloc ( i32 8 )
  %obj2332 = bitcast i32* %mem_ptr2331 to %C* 
  %new_obj2333 = call %C* @_C_ctor ( %C* %obj2332 )
  %vdecl_slot2334 = alloca %C*
  store %C* %new_obj2333, %C** %vdecl_slot2334
  %lhs_or_call2335 = load %C** %vdecl_slot2334
  %vtable_ptr2336 = getelementptr %C* %lhs_or_call2335, i32 0
  %vtable2337 = load %_C_vtable** %vtable_ptr2336
  %call2339 = getelementptr %_C_vtable* %vtable2337, i32 0, i32 4
  %call2338 = load i32 (%C*)** %call2339
  %cast_op2340 = bitcast %C %lhs_or_call2335 to %C* 
  %ret2341 = call i32 %call2338 ( %C* %cast_op2340 )
  ret i32 %ret2341
}


define i32 @_C_call (%C* %_this1){
__fresh486:
  %vtable_ptr2321 = getelementptr %C* %_this1, i32 0
  %vtable2322 = load %_C_vtable** %vtable_ptr2321
  %over2324 = getelementptr %_C_vtable* %vtable2322, i32 0, i32 2
  %over2323 = load i32 (%B*, i32)** %over2324
  %cast_op2325 = bitcast %C %_this1 to %B* 
  %ret2326 = call i32 %over2323 ( %B* %cast_op2325, i32 3 )
  ret i32 %ret2326
}


define i32 @_C_notover (%C* %_this1, i32 %x2317){
__fresh485:
  %x_slot2318 = alloca i32
  store i32 %x2317, i32* %x_slot2318
  %lhs_or_call2319 = load i32* %x_slot2318
  %bop2320 = add i32 %lhs_or_call2319, 1
  ret i32 %bop2320
}


define %C* @_C_ctor (%C* %_this1){
__fresh484:
  %mem_ptr2312 = call i32* @oat_malloc ( i32 8 )
  %obj2313 = bitcast i32* %mem_ptr2312 to %B* 
  %new_obj2314 = call %B* @_B_ctor ( %B* %obj2313 )
  %_this1 = bitcast %B* %new_obj2314 to %C 
  %_name2315 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str446, i8** %_name2315
  %this_vtable2316 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable442, %_C_vtable** %this_vtable2316
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2308){
__fresh483:
  %x_slot2309 = alloca i32
  store i32 %x2308, i32* %x_slot2309
  %lhs_or_call2310 = load i32* %x_slot2309
  %bop2311 = add i32 %lhs_or_call2310, 2
  ret i32 %bop2311
}


define %B* @_B_ctor (%B* %_this1){
__fresh482:
  %mem_ptr2303 = call i32* @oat_malloc ( i32 8 )
  %obj2304 = bitcast i32* %mem_ptr2303 to %A* 
  %new_obj2305 = call %A* @_A_ctor ( %A* %obj2304 )
  %_this1 = bitcast %A* %new_obj2305 to %B 
  %_name2306 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str445, i8** %_name2306
  %this_vtable2307 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable441, %_B_vtable** %this_vtable2307
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2299){
__fresh481:
  %x_slot2300 = alloca i32
  store i32 %x2299, i32* %x_slot2300
  %lhs_or_call2301 = load i32* %x_slot2300
  %bop2302 = add i32 %lhs_or_call2301, 1
  ret i32 %bop2302
}


define %A* @_A_ctor (%A* %_this1){
__fresh480:
  %mem_ptr2294 = call i32* @oat_malloc ( i32 8 )
  %obj2295 = bitcast i32* %mem_ptr2294 to %Object* 
  %new_obj2296 = call %Object* @_Object_ctor ( %Object* %obj2295 )
  %_this1 = bitcast %Object* %new_obj2296 to %A 
  %_name2297 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str444, i8** %_name2297
  %this_vtable2298 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable440, %_A_vtable** %this_vtable2298
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh479:
  %_name2292 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2293 = load i8** %_name2292
  ret i8* %lhs_or_call2293
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh478:
  %_name2290 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str443, i8** %_name2290
  %this_vtable2291 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable439, %_Object_vtable** %this_vtable2291
  ret %Object* %_this1
}


