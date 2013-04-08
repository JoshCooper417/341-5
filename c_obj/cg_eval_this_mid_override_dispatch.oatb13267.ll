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


define i32 @program (i32 %argc2322, { i32, [ 0 x i8* ] }* %argv2320){
__fresh487:
  %argc_slot2323 = alloca i32
  store i32 %argc2322, i32* %argc_slot2323
  %argv_slot2321 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2320, { i32, [ 0 x i8* ] }** %argv_slot2321
  %mem_ptr2324 = call i32* @oat_malloc ( i32 8 )
  %obj2325 = bitcast i32* %mem_ptr2324 to %C* 
  %new_obj2326 = call %C* @_C_ctor ( %C* %obj2325 )
  %vdecl_slot2327 = alloca %C*
  store %C* %new_obj2326, %C** %vdecl_slot2327
  %lhs_or_call2328 = load %C** %vdecl_slot2327
  %vtable_ptr2329 = getelementptr %C* %lhs_or_call2328, i32 0
  %vtable2330 = load %_C_vtable** %vtable_ptr2329
  %call2332 = getelementptr %_C_vtable* %vtable2330, i32 0, i32 4
  %call2331 = load i32 (%C*)** %call2332
  %cast_op2333 = bitcast %C %lhs_or_call2328 to %C* 
  %ret2334 = call i32 %call2331 ( %C* %cast_op2333 )
  ret i32 %ret2334
}


define i32 @_C_call (%C* %_this1){
__fresh486:
  %vtable_ptr2314 = getelementptr %C* %_this1, i32 0
  %vtable2315 = load %_C_vtable** %vtable_ptr2314
  %over2317 = getelementptr %_C_vtable* %vtable2315, i32 0, i32 2
  %over2316 = load i32 (%B*, i32)** %over2317
  %cast_op2318 = bitcast %C %_this1 to %B* 
  %ret2319 = call i32 %over2316 ( %B* %cast_op2318, i32 3 )
  ret i32 %ret2319
}


define i32 @_C_notover (%C* %_this1, i32 %x2310){
__fresh485:
  %x_slot2311 = alloca i32
  store i32 %x2310, i32* %x_slot2311
  %lhs_or_call2312 = load i32* %x_slot2311
  %bop2313 = add i32 %lhs_or_call2312, 1
  ret i32 %bop2313
}


define %C* @_C_ctor (%C* %_this1){
__fresh484:
  %mem_ptr2305 = call i32* @oat_malloc ( i32 8 )
  %obj2306 = bitcast i32* %mem_ptr2305 to %B* 
  %new_obj2307 = call %B* @_B_ctor ( %B* %obj2306 )
  %_this1 = bitcast %B* %new_obj2307 to %C 
  %_name2308 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str446, i8** %_name2308
  %this_vtable2309 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable442, %_C_vtable** %this_vtable2309
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2301){
__fresh483:
  %x_slot2302 = alloca i32
  store i32 %x2301, i32* %x_slot2302
  %lhs_or_call2303 = load i32* %x_slot2302
  %bop2304 = add i32 %lhs_or_call2303, 2
  ret i32 %bop2304
}


define %B* @_B_ctor (%B* %_this1){
__fresh482:
  %mem_ptr2296 = call i32* @oat_malloc ( i32 8 )
  %obj2297 = bitcast i32* %mem_ptr2296 to %A* 
  %new_obj2298 = call %A* @_A_ctor ( %A* %obj2297 )
  %_this1 = bitcast %A* %new_obj2298 to %B 
  %_name2299 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str445, i8** %_name2299
  %this_vtable2300 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable441, %_B_vtable** %this_vtable2300
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2292){
__fresh481:
  %x_slot2293 = alloca i32
  store i32 %x2292, i32* %x_slot2293
  %lhs_or_call2294 = load i32* %x_slot2293
  %bop2295 = add i32 %lhs_or_call2294, 1
  ret i32 %bop2295
}


define %A* @_A_ctor (%A* %_this1){
__fresh480:
  %mem_ptr2287 = call i32* @oat_malloc ( i32 8 )
  %obj2288 = bitcast i32* %mem_ptr2287 to %Object* 
  %new_obj2289 = call %Object* @_Object_ctor ( %Object* %obj2288 )
  %_this1 = bitcast %Object* %new_obj2289 to %A 
  %_name2290 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str444, i8** %_name2290
  %this_vtable2291 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable440, %_A_vtable** %this_vtable2291
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh479:
  %_name2285 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2286 = load i8** %_name2285
  ret i8* %lhs_or_call2286
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh478:
  %_name2283 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str443, i8** %_name2283
  %this_vtable2284 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable439, %_Object_vtable** %this_vtable2284
  ret %Object* %_this1
}


