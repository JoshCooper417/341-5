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


define i32 @program (i32 %argc2270, { i32, [ 0 x i8* ] }* %argv2268){
__fresh476:
  %argc_slot2271 = alloca i32
  store i32 %argc2270, i32* %argc_slot2271
  %argv_slot2269 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2268, { i32, [ 0 x i8* ] }** %argv_slot2269
  %mem_ptr2272 = call i32* @oat_malloc ( i32 8 )
  %obj2273 = bitcast i32* %mem_ptr2272 to %B* 
  %new_obj2274 = call %B* @_B_ctor ( %B* %obj2273 )
  %vdecl_slot2275 = alloca %B*
  store %B* %new_obj2274, %B** %vdecl_slot2275
  %lhs_or_call2276 = load %B** %vdecl_slot2275
  %vtable_ptr2277 = getelementptr %B* %lhs_or_call2276, i32 0
  %vtable2278 = load %_B_vtable** %vtable_ptr2277
  %call2280 = getelementptr %_B_vtable* %vtable2278, i32 0, i32 3
  %call2279 = load i32 (%B*)** %call2280
  %cast_op2281 = bitcast %B %lhs_or_call2276 to %B* 
  %ret2282 = call i32 %call2279 ( %B* %cast_op2281 )
  ret i32 %ret2282
}


define i32 @_B_call (%B* %_this1){
__fresh475:
  %vtable_ptr2262 = getelementptr %B* %_this1, i32 0
  %vtable2263 = load %_B_vtable** %vtable_ptr2262
  %over2265 = getelementptr %_B_vtable* %vtable2263, i32 0, i32 2
  %over2264 = load i32 (%B*, i32)** %over2265
  %cast_op2266 = bitcast %B %_this1 to %B* 
  %ret2267 = call i32 %over2264 ( %B* %cast_op2266, i32 3 )
  ret i32 %ret2267
}


define i32 @_B_over (%B* %_this1, i32 %x2258){
__fresh474:
  %x_slot2259 = alloca i32
  store i32 %x2258, i32* %x_slot2259
  %lhs_or_call2260 = load i32* %x_slot2259
  %bop2261 = add i32 %lhs_or_call2260, 2
  ret i32 %bop2261
}


define %B* @_B_ctor (%B* %_this1){
__fresh473:
  %mem_ptr2253 = call i32* @oat_malloc ( i32 8 )
  %obj2254 = bitcast i32* %mem_ptr2253 to %A* 
  %new_obj2255 = call %A* @_A_ctor ( %A* %obj2254 )
  %_this1 = bitcast %A* %new_obj2255 to %B 
  %_name2256 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str438, i8** %_name2256
  %this_vtable2257 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable435, %_B_vtable** %this_vtable2257
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2249){
__fresh472:
  %x_slot2250 = alloca i32
  store i32 %x2249, i32* %x_slot2250
  %lhs_or_call2251 = load i32* %x_slot2250
  %bop2252 = add i32 %lhs_or_call2251, 1
  ret i32 %bop2252
}


define %A* @_A_ctor (%A* %_this1){
__fresh471:
  %mem_ptr2244 = call i32* @oat_malloc ( i32 8 )
  %obj2245 = bitcast i32* %mem_ptr2244 to %Object* 
  %new_obj2246 = call %Object* @_Object_ctor ( %Object* %obj2245 )
  %_this1 = bitcast %Object* %new_obj2246 to %A 
  %_name2247 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str437, i8** %_name2247
  %this_vtable2248 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable434, %_A_vtable** %this_vtable2248
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh470:
  %_name2242 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2243 = load i8** %_name2242
  ret i8* %lhs_or_call2243
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh469:
  %_name2240 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str436, i8** %_name2240
  %this_vtable2241 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable433, %_Object_vtable** %this_vtable2241
  ret %Object* %_this1
}


