%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%B*)* }
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
@_const_str458.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str458 = alias bitcast([ 2 x i8 ]* @_const_str458.str. to i8*)@_const_str457.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str457 = alias bitcast([ 2 x i8 ]* @_const_str457.str. to i8*)@_const_str456.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str456 = alias bitcast([ 7 x i8 ]* @_const_str456.str. to i8*)@_B_vtable455 = private constant %_B_vtable {%_A_vtable* @_A_vtable454, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%B*)* @_B_call}, align 4
@_A_vtable454 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable453, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable453 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh497:
  ret void
}


define i32 @program (i32 %argc2332, { i32, [ 0 x i8* ] }* %argv2330){
__fresh496:
  %argc_slot2333 = alloca i32
  store i32 %argc2332, i32* %argc_slot2333
  %argv_slot2331 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2330, { i32, [ 0 x i8* ] }** %argv_slot2331
  %mem_ptr2334 = call i32* @oat_malloc ( i32 8 )
  %obj2335 = bitcast i32* %mem_ptr2334 to %B* 
  %new_obj2336 = call %B* @_B_ctor ( %B* %obj2335 )
  %vdecl_slot2337 = alloca %B*
  store %B* %new_obj2336, %B** %vdecl_slot2337
  %lhs_or_call2338 = load %B** %vdecl_slot2337
  %call2340 = getelementptr %_B_vtable* @_B_vtable455, i32 0, i32 3
  %call2339 = load i32 (%B*)** %call2340
  %cast_op2341 = bitcast %B %lhs_or_call2338 to %B* 
  %ret2342 = call i32 %call2339 ( %B* %cast_op2341 )
  ret i32 %ret2342
}


define i32 @_B_call (%B* %_this1){
__fresh495:
  %over2327 = getelementptr %_B_vtable* @_B_vtable455, i32 0, i32 2
  %over2326 = load i32 (%B*, i32)** %over2327
  %cast_op2328 = bitcast %B %_this1 to %B* 
  %ret2329 = call i32 %over2326 ( %B* %cast_op2328, i32 3 )
  ret i32 %ret2329
}


define i32 @_B_over (%B* %_this1, i32 %x2322){
__fresh494:
  %x_slot2323 = alloca i32
  store i32 %x2322, i32* %x_slot2323
  %lhs_or_call2324 = load i32* %x_slot2323
  %bop2325 = add i32 %lhs_or_call2324, 2
  ret i32 %bop2325
}


define %B* @_B_ctor (%B* %_this1){
__fresh493:
  %cast_op2316 = bitcast %B* %_this1 to %A* 
  %mem_ptr2317 = call i32* @oat_malloc ( i32 8 )
  %obj2318 = bitcast i32* %mem_ptr2317 to %B* 
  %new_obj2319 = call %A* @_A_ctor ( %B* %obj2318, %A* %cast_op2316 )
  %_this1 = bitcast %A* %new_obj2319 to %B 
  %_name2320 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str458, i8** %_name2320
  %this_vtable2321 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable455, %_B_vtable** %this_vtable2321
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2312){
__fresh492:
  %x_slot2313 = alloca i32
  store i32 %x2312, i32* %x_slot2313
  %lhs_or_call2314 = load i32* %x_slot2313
  %bop2315 = add i32 %lhs_or_call2314, 1
  ret i32 %bop2315
}


define %A* @_A_ctor (%A* %_this1){
__fresh491:
  %cast_op2306 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2307 = call i32* @oat_malloc ( i32 8 )
  %obj2308 = bitcast i32* %mem_ptr2307 to %A* 
  %new_obj2309 = call %Object* @_Object_ctor ( %A* %obj2308, %Object* %cast_op2306 )
  %_this1 = bitcast %Object* %new_obj2309 to %A 
  %_name2310 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str457, i8** %_name2310
  %this_vtable2311 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable454, %_A_vtable** %this_vtable2311
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh490:
  %_name2304 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2305 = load i8** %_name2304
  ret i8* %lhs_or_call2305
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh489:
  %_name2302 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str456, i8** %_name2302
  %this_vtable2303 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable453, %_Object_vtable** %this_vtable2303
  ret %Object* %_this1
}


