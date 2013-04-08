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
@_const_str457.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str457 = alias bitcast([ 2 x i8 ]* @_const_str457.str. to i8*)@_const_str456.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str456 = alias bitcast([ 2 x i8 ]* @_const_str456.str. to i8*)@_const_str455.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str455 = alias bitcast([ 2 x i8 ]* @_const_str455.str. to i8*)@_const_str454.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str454 = alias bitcast([ 7 x i8 ]* @_const_str454.str. to i8*)@_C_vtable453 = private constant %_C_vtable {%_B_vtable* @_B_vtable452, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable452 = private constant %_B_vtable {%_A_vtable* @_A_vtable451, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable451 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable450, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable450 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh488:
  ret void
}


define i32 @program (i32 %argc2341, { i32, [ 0 x i8* ] }* %argv2339){
__fresh487:
  %argc_slot2342 = alloca i32
  store i32 %argc2341, i32* %argc_slot2342
  %argv_slot2340 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2339, { i32, [ 0 x i8* ] }** %argv_slot2340
  %mem_ptr2343 = call i32* @oat_malloc ( i32 8 )
  %obj2344 = bitcast i32* %mem_ptr2343 to %C* 
  %new_obj2345 = call %C* @_C_ctor ( %C* %obj2344 )
  %vdecl_slot2346 = alloca %C*
  store %C* %new_obj2345, %C** %vdecl_slot2346
  %lhs_or_call2347 = load %C** %vdecl_slot2346
  %vtable_ptr2348 = getelementptr %C* %lhs_or_call2347, i32 0
  %vtable2349 = load %_C_vtable** %vtable_ptr2348
  %call2351 = getelementptr %_C_vtable* %vtable2349, i32 0, i32 4
  %call2350 = load i32 (%C*)** %call2351
  %cast_op2352 = bitcast %C %lhs_or_call2347 to %C* 
  %ret2353 = call i32 %call2350 ( %C* %cast_op2352 )
  ret i32 %ret2353
}


define i32 @_C_call (%C* %_this1){
__fresh486:
  %vtable_ptr2333 = getelementptr %C* %_this1, i32 0
  %vtable2334 = load %_C_vtable** %vtable_ptr2333
  %over2336 = getelementptr %_C_vtable* %vtable2334, i32 0, i32 2
  %over2335 = load i32 (%B*, i32)** %over2336
  %cast_op2337 = bitcast %C %_this1 to %B* 
  %ret2338 = call i32 %over2335 ( %B* %cast_op2337, i32 3 )
  ret i32 %ret2338
}


define i32 @_C_notover (%C* %_this1, i32 %x2329){
__fresh485:
  %x_slot2330 = alloca i32
  store i32 %x2329, i32* %x_slot2330
  %lhs_or_call2331 = load i32* %x_slot2330
  %bop2332 = add i32 %lhs_or_call2331, 1
  ret i32 %bop2332
}


define %C* @_C_ctor (%C* %_this1){
__fresh484:
  %mem_ptr2324 = call i32* @oat_malloc ( i32 8 )
  %obj2325 = bitcast i32* %mem_ptr2324 to %B* 
  %new_obj2326 = call %B* @_B_ctor ( %B* %obj2325 )
  %_this1 = bitcast %B* %new_obj2326 to %C 
  %_name2327 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str457, i8** %_name2327
  %this_vtable2328 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable453, %_C_vtable** %this_vtable2328
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2320){
__fresh483:
  %x_slot2321 = alloca i32
  store i32 %x2320, i32* %x_slot2321
  %lhs_or_call2322 = load i32* %x_slot2321
  %bop2323 = add i32 %lhs_or_call2322, 2
  ret i32 %bop2323
}


define %B* @_B_ctor (%B* %_this1){
__fresh482:
  %mem_ptr2315 = call i32* @oat_malloc ( i32 8 )
  %obj2316 = bitcast i32* %mem_ptr2315 to %A* 
  %new_obj2317 = call %A* @_A_ctor ( %A* %obj2316 )
  %_this1 = bitcast %A* %new_obj2317 to %B 
  %_name2318 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str456, i8** %_name2318
  %this_vtable2319 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable452, %_B_vtable** %this_vtable2319
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2311){
__fresh481:
  %x_slot2312 = alloca i32
  store i32 %x2311, i32* %x_slot2312
  %lhs_or_call2313 = load i32* %x_slot2312
  %bop2314 = add i32 %lhs_or_call2313, 1
  ret i32 %bop2314
}


define %A* @_A_ctor (%A* %_this1){
__fresh480:
  %mem_ptr2306 = call i32* @oat_malloc ( i32 8 )
  %obj2307 = bitcast i32* %mem_ptr2306 to %Object* 
  %new_obj2308 = call %Object* @_Object_ctor ( %Object* %obj2307 )
  %_this1 = bitcast %Object* %new_obj2308 to %A 
  %_name2309 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str455, i8** %_name2309
  %this_vtable2310 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable451, %_A_vtable** %this_vtable2310
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh479:
  %_name2304 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2305 = load i8** %_name2304
  ret i8* %lhs_or_call2305
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh478:
  %_name2302 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %_name2302
  %this_vtable2303 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable450, %_Object_vtable** %this_vtable2303
  ret %Object* %_this1
}


