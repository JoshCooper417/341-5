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
@_const_str438.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str438 = alias bitcast([ 2 x i8 ]* @_const_str438.str. to i8*)@_const_str437.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str437 = alias bitcast([ 2 x i8 ]* @_const_str437.str. to i8*)@_const_str436.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str436 = alias bitcast([ 7 x i8 ]* @_const_str436.str. to i8*)@_B_vtable435 = private constant %_B_vtable {%_A_vtable* @_A_vtable434, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%B*)* @_B_call}, align 4
@_A_vtable434 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable433, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable433 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh477:
  ret void
}


define i32 @program (i32 %argc2277, { i32, [ 0 x i8* ] }* %argv2275){
__fresh476:
  %argc_slot2278 = alloca i32
  store i32 %argc2277, i32* %argc_slot2278
  %argv_slot2276 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2275, { i32, [ 0 x i8* ] }** %argv_slot2276
  %mem_ptr2279 = call i32* @oat_malloc ( i32 8 )
  %obj2280 = bitcast i32* %mem_ptr2279 to %B* 
  %new_obj2281 = call %B* @_B_ctor ( %B* %obj2280 )
  %vdecl_slot2282 = alloca %B*
  store %B* %new_obj2281, %B** %vdecl_slot2282
  %lhs_or_call2283 = load %B** %vdecl_slot2282
  %vtable_ptr2284 = getelementptr %B* %lhs_or_call2283, i32 0
  %vtable2285 = load %_B_vtable** %vtable_ptr2284
  %call2287 = getelementptr %_B_vtable* %vtable2285, i32 0, i32 3
  %call2286 = load i32 (%B*)** %call2287
  %cast_op2288 = bitcast %B %lhs_or_call2283 to %B* 
  %ret2289 = call i32 %call2286 ( %B* %cast_op2288 )
  ret i32 %ret2289
}


define i32 @_B_call (%B* %_this1){
__fresh475:
  %vtable_ptr2269 = getelementptr %B* %_this1, i32 0
  %vtable2270 = load %_B_vtable** %vtable_ptr2269
  %over2272 = getelementptr %_B_vtable* %vtable2270, i32 0, i32 2
  %over2271 = load i32 (%B*, i32)** %over2272
  %cast_op2273 = bitcast %B %_this1 to %B* 
  %ret2274 = call i32 %over2271 ( %B* %cast_op2273, i32 3 )
  ret i32 %ret2274
}


define i32 @_B_over (%B* %_this1, i32 %x2265){
__fresh474:
  %x_slot2266 = alloca i32
  store i32 %x2265, i32* %x_slot2266
  %lhs_or_call2267 = load i32* %x_slot2266
  %bop2268 = add i32 %lhs_or_call2267, 2
  ret i32 %bop2268
}


define %B* @_B_ctor (%B* %_this1){
__fresh473:
  %mem_ptr2260 = call i32* @oat_malloc ( i32 8 )
  %obj2261 = bitcast i32* %mem_ptr2260 to %A* 
  %new_obj2262 = call %A* @_A_ctor ( %A* %obj2261 )
  %_this1 = bitcast %A* %new_obj2262 to %B 
  %_name2263 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str438, i8** %_name2263
  %this_vtable2264 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable435, %_B_vtable** %this_vtable2264
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2256){
__fresh472:
  %x_slot2257 = alloca i32
  store i32 %x2256, i32* %x_slot2257
  %lhs_or_call2258 = load i32* %x_slot2257
  %bop2259 = add i32 %lhs_or_call2258, 1
  ret i32 %bop2259
}


define %A* @_A_ctor (%A* %_this1){
__fresh471:
  %mem_ptr2251 = call i32* @oat_malloc ( i32 8 )
  %obj2252 = bitcast i32* %mem_ptr2251 to %Object* 
  %new_obj2253 = call %Object* @_Object_ctor ( %Object* %obj2252 )
  %_this1 = bitcast %Object* %new_obj2253 to %A 
  %_name2254 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str437, i8** %_name2254
  %this_vtable2255 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable434, %_A_vtable** %this_vtable2255
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh470:
  %_name2249 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2250 = load i8** %_name2249
  ret i8* %lhs_or_call2250
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh469:
  %_name2247 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str436, i8** %_name2247
  %this_vtable2248 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable433, %_Object_vtable** %this_vtable2248
  ret %Object* %_this1
}


