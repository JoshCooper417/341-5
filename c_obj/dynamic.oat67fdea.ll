%Owl = type { %_Owl_vtable*, i8* }
%_Owl_vtable = type { %_Wl_vtable*, i8* (%Object*)*, i8* (%Owl*)*, i32 (%Wl*)*, i32 (%Owl*)*, i32 (%Owl*)* }
%Wl = type { %_Wl_vtable*, i8* }
%_Wl_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Wl*)*, i32 (%Wl*)*, i32 (%Wl*)* }
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
@o476 = global %Owl* zeroinitializer, align 4		; initialized by @o476.init477
@_const_str475.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str475 = alias bitcast([ 6 x i8 ]* @_const_str475.str. to i8*)@_const_str474.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str474 = alias bitcast([ 4 x i8 ]* @_const_str474.str. to i8*)@_const_str473.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str473 = alias bitcast([ 5 x i8 ]* @_const_str473.str. to i8*)@_const_str472.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str472 = alias bitcast([ 3 x i8 ]* @_const_str472.str. to i8*)@_const_str471.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str471 = alias bitcast([ 7 x i8 ]* @_const_str471.str. to i8*)@_Owl_vtable470 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable469, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable469 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable468, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable468 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh517:
  call void @o476.init477(  )
  ret void
}


define i32 @program (i32 %argc2306, { i32, [ 0 x i8* ] }* %argv2304){
__fresh516:
  %argc_slot2307 = alloca i32
  store i32 %argc2306, i32* %argc_slot2307
  %argv_slot2305 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2304, { i32, [ 0 x i8* ] }** %argv_slot2305
  %lhs_or_call2308 = load %Owl** @o476
  %cast_op2309 = bitcast %Owl* %lhs_or_call2308 to %Wl* 
  %ret2310 = call i8* @getNoise ( %Wl* %cast_op2309 )
  call void @print_string( i8* %ret2310 )
  %lhs_or_call2311 = load %Owl** @o476
  %childmethod2313 = getelementptr %_Owl_vtable* @_Owl_vtable470, i32 0, i32 5
  %childmethod2312 = load i32 (%Owl*)** %childmethod2313
  %cast_op2314 = bitcast %Owl %lhs_or_call2311 to %Owl* 
  %ret2315 = call i32 %childmethod2312 ( %Owl* %cast_op2314 )
  %lhs_or_call2316 = load %Owl** @o476
  %parentmethod2318 = getelementptr %_Owl_vtable* @_Owl_vtable470, i32 0, i32 3
  %parentmethod2317 = load i32 (%Wl*)** %parentmethod2318
  %cast_op2319 = bitcast %Owl %lhs_or_call2316 to %Wl* 
  %ret2320 = call i32 %parentmethod2317 ( %Wl* %cast_op2319 )
  %bop2321 = add i32 %ret2315, %ret2320
  %lhs_or_call2322 = load %Owl** @o476
  %secondoverride2324 = getelementptr %_Owl_vtable* @_Owl_vtable470, i32 0, i32 4
  %secondoverride2323 = load i32 (%Owl*)** %secondoverride2324
  %cast_op2325 = bitcast %Owl %lhs_or_call2322 to %Owl* 
  %ret2326 = call i32 %secondoverride2323 ( %Owl* %cast_op2325 )
  %bop2327 = add i32 %bop2321, %ret2326
  ret i32 %bop2327
}


define void @o476.init477 (){
__fresh515:
  %mem_ptr2301 = call i32* @oat_malloc ( i32 8 )
  %obj2302 = bitcast i32* %mem_ptr2301 to %Owl* 
  %new_obj2303 = call %Owl* @_Owl_ctor ( %Owl* %obj2302 )
  store %Owl* %new_obj2303, %Owl** @o476
  ret void
}


define i8* @getNoise (%Wl* %thing2294){
__fresh514:
  %thing_slot2295 = alloca %Wl*
  store %Wl* %thing2294, %Wl** %thing_slot2295
  %lhs_or_call2296 = load %Wl** %thing_slot2295
  %noise2298 = getelementptr %_Wl_vtable* @_Wl_vtable469, i32 0, i32 2
  %noise2297 = load i8* (%Wl*)** %noise2298
  %cast_op2299 = bitcast %Wl %lhs_or_call2296 to %Wl* 
  %ret2300 = call i8* %noise2297 ( %Wl* %cast_op2299 )
  ret i8* %ret2300
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh513:
  %secondoverride2290 = getelementptr %_Owl_vtable* @_Owl_vtable470, i32 0, i32 4
  %secondoverride2289 = load i32 (%Owl*)** %secondoverride2290
  %cast_op2291 = bitcast %Owl %_this1 to %Owl* 
  %ret2292 = call i32 %secondoverride2289 ( %Owl* %cast_op2291 )
  %bop2293 = add i32 %ret2292, 1
  ret i32 %bop2293
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh512:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh511:
  ret i8* @_const_str475
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh510:
  %mem_ptr2284 = call i32* @oat_malloc ( i32 8 )
  %obj2285 = bitcast i32* %mem_ptr2284 to %Wl* 
  %new_obj2286 = call %Wl* @_Wl_ctor ( %Wl* %obj2285 )
  %_this1 = bitcast %Wl* %new_obj2286 to %Owl 
  %_name2287 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str474, i8** %_name2287
  %this_vtable2288 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable470, %_Owl_vtable** %this_vtable2288
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh509:
  %unop2283 = sub i32 0, 2
  ret i32 %unop2283
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh508:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh507:
  ret i8* @_const_str473
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh506:
  %mem_ptr2278 = call i32* @oat_malloc ( i32 8 )
  %obj2279 = bitcast i32* %mem_ptr2278 to %Object* 
  %new_obj2280 = call %Object* @_Object_ctor ( %Object* %obj2279 )
  %_this1 = bitcast %Object* %new_obj2280 to %Wl 
  %_name2281 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str472, i8** %_name2281
  %this_vtable2282 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable469, %_Wl_vtable** %this_vtable2282
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh505:
  %_name2276 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2277 = load i8** %_name2276
  ret i8* %lhs_or_call2277
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh504:
  %_name2274 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str471, i8** %_name2274
  %this_vtable2275 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable468, %_Object_vtable** %this_vtable2275
  ret %Object* %_this1
}


