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


define i32 @program (i32 %argc2297, { i32, [ 0 x i8* ] }* %argv2295){
__fresh476:
  %argc_slot2298 = alloca i32
  store i32 %argc2297, i32* %argc_slot2298
  %argv_slot2296 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2295, { i32, [ 0 x i8* ] }** %argv_slot2296
  %mem_ptr2299 = call i32* @oat_malloc ( i32 8 )
  %obj2300 = bitcast i32* %mem_ptr2299 to %B* 
  %new_obj2301 = call %B* @_B_ctor ( %B* %obj2300 )
  %vdecl_slot2302 = alloca %B*
  store %B* %new_obj2301, %B** %vdecl_slot2302
  %lhs_or_call2303 = load %B** %vdecl_slot2302
  %call2305 = getelementptr %_B_vtable* @_B_vtable446, i32 0, i32 3
  %call2304 = load i32 (%B*)** %call2305
  %cast_op2306 = bitcast %B %lhs_or_call2303 to %B* 
  %ret2307 = call i32 %call2304 ( %B* %cast_op2306 )
  ret i32 %ret2307
}


define i32 @_B_call (%B* %_this1){
__fresh475:
  %over2292 = getelementptr %_B_vtable* @_B_vtable446, i32 0, i32 2
  %over2291 = load i32 (%B*, i32)** %over2292
  %cast_op2293 = bitcast %B %_this1 to %B* 
  %ret2294 = call i32 %over2291 ( %B* %cast_op2293, i32 3 )
  ret i32 %ret2294
}


define i32 @_B_over (%B* %_this1, i32 %x2287){
__fresh474:
  %x_slot2288 = alloca i32
  store i32 %x2287, i32* %x_slot2288
  %lhs_or_call2289 = load i32* %x_slot2288
  %bop2290 = add i32 %lhs_or_call2289, 2
  ret i32 %bop2290
}


define %B* @_B_ctor (%B* %_this1){
__fresh473:
  %cast_op2281 = bitcast %B* %_this1 to %A* 
  %mem_ptr2282 = call i32* @oat_malloc ( i32 8 )
  %obj2283 = bitcast i32* %mem_ptr2282 to %B* 
  %new_obj2284 = call %A* @_A_ctor ( %B* %obj2283, %A* %cast_op2281 )
  %_this1 = bitcast %A* %new_obj2284 to %B 
  %_name2285 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str449, i8** %_name2285
  %this_vtable2286 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable446, %_B_vtable** %this_vtable2286
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2277){
__fresh472:
  %x_slot2278 = alloca i32
  store i32 %x2277, i32* %x_slot2278
  %lhs_or_call2279 = load i32* %x_slot2278
  %bop2280 = add i32 %lhs_or_call2279, 1
  ret i32 %bop2280
}


define %A* @_A_ctor (%A* %_this1){
__fresh471:
  %cast_op2271 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2272 = call i32* @oat_malloc ( i32 8 )
  %obj2273 = bitcast i32* %mem_ptr2272 to %A* 
  %new_obj2274 = call %Object* @_Object_ctor ( %A* %obj2273, %Object* %cast_op2271 )
  %_this1 = bitcast %Object* %new_obj2274 to %A 
  %_name2275 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str448, i8** %_name2275
  %this_vtable2276 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable445, %_A_vtable** %this_vtable2276
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh470:
  %_name2269 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2270 = load i8** %_name2269
  ret i8* %lhs_or_call2270
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh469:
  %_name2267 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str447, i8** %_name2267
  %this_vtable2268 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable444, %_Object_vtable** %this_vtable2268
  ret %Object* %_this1
}


