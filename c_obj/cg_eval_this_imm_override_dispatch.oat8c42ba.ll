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
@_const_str449.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str449 = alias bitcast([ 2 x i8 ]* @_const_str449.str. to i8*)@_const_str448.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str448 = alias bitcast([ 2 x i8 ]* @_const_str448.str. to i8*)@_const_str447.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str447 = alias bitcast([ 7 x i8 ]* @_const_str447.str. to i8*)@_B_vtable446 = private constant %_B_vtable {%_A_vtable* @_A_vtable445, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%B*)* @_B_call}, align 4
@_A_vtable445 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable444, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable444 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh477:
  ret void
}


define i32 @program (i32 %argc2289, { i32, [ 0 x i8* ] }* %argv2287){
__fresh476:
  %argc_slot2290 = alloca i32
  store i32 %argc2289, i32* %argc_slot2290
  %argv_slot2288 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2287, { i32, [ 0 x i8* ] }** %argv_slot2288
  %mem_ptr2291 = call i32* @oat_malloc ( i32 8 )
  %obj2292 = bitcast i32* %mem_ptr2291 to %B* 
  %new_obj2293 = call %B* @_B_ctor ( %B* %obj2292 )
  %vdecl_slot2294 = alloca %B*
  store %B* %new_obj2293, %B** %vdecl_slot2294
  %lhs_or_call2295 = load %B** %vdecl_slot2294
  %vtable_ptr2296 = getelementptr %B* %lhs_or_call2295, i32 0
  %vtable2297 = load %_B_vtable** %vtable_ptr2296
  %call2299 = getelementptr %_B_vtable* %vtable2297, i32 0, i32 3
  %call2298 = load i32 (%B*)** %call2299
  %cast_op2300 = bitcast %B %lhs_or_call2295 to %B* 
  %ret2301 = call i32 %call2298 ( %B* %cast_op2300 )
  ret i32 %ret2301
}


define i32 @_B_call (%B* %_this1){
__fresh475:
  %vtable_ptr2281 = getelementptr %B* %_this1, i32 0
  %vtable2282 = load %_B_vtable** %vtable_ptr2281
  %over2284 = getelementptr %_B_vtable* %vtable2282, i32 0, i32 2
  %over2283 = load i32 (%B*, i32)** %over2284
  %cast_op2285 = bitcast %B %_this1 to %B* 
  %ret2286 = call i32 %over2283 ( %B* %cast_op2285, i32 3 )
  ret i32 %ret2286
}


define i32 @_B_over (%B* %_this1, i32 %x2277){
__fresh474:
  %x_slot2278 = alloca i32
  store i32 %x2277, i32* %x_slot2278
  %lhs_or_call2279 = load i32* %x_slot2278
  %bop2280 = add i32 %lhs_or_call2279, 2
  ret i32 %bop2280
}


define %B* @_B_ctor (%B* %_this1){
__fresh473:
  %mem_ptr2272 = call i32* @oat_malloc ( i32 8 )
  %obj2273 = bitcast i32* %mem_ptr2272 to %A* 
  %new_obj2274 = call %A* @_A_ctor ( %A* %obj2273 )
  %_this1 = bitcast %A* %new_obj2274 to %B 
  %_name2275 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str449, i8** %_name2275
  %this_vtable2276 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable446, %_B_vtable** %this_vtable2276
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2268){
__fresh472:
  %x_slot2269 = alloca i32
  store i32 %x2268, i32* %x_slot2269
  %lhs_or_call2270 = load i32* %x_slot2269
  %bop2271 = add i32 %lhs_or_call2270, 1
  ret i32 %bop2271
}


define %A* @_A_ctor (%A* %_this1){
__fresh471:
  %mem_ptr2263 = call i32* @oat_malloc ( i32 8 )
  %obj2264 = bitcast i32* %mem_ptr2263 to %Object* 
  %new_obj2265 = call %Object* @_Object_ctor ( %Object* %obj2264 )
  %_this1 = bitcast %Object* %new_obj2265 to %A 
  %_name2266 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str448, i8** %_name2266
  %this_vtable2267 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable445, %_A_vtable** %this_vtable2267
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh470:
  %_name2261 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2262 = load i8** %_name2261
  ret i8* %lhs_or_call2262
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh469:
  %_name2259 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str447, i8** %_name2259
  %this_vtable2260 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable444, %_Object_vtable** %this_vtable2260
  ret %Object* %_this1
}


