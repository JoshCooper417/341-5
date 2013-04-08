%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_C_vtable304 = private constant %_C_vtable {%_B_vtable* @_B_vtable303, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six}, align 4
@_B_vtable303 = private constant %_B_vtable {%_A_vtable* @_A_vtable302, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six}, align 4
@_A_vtable302 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable301, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six}, align 4
@_Object_vtable301 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh581:
  ret void
}


define i32 @program (i32 %argc3311, { i32, [ 0 x i8* ] }* %argv3309){
__fresh580:
  %argc_slot3312 = alloca i32
  store i32 %argc3311, i32* %argc_slot3312
  %argv_slot3310 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3309, { i32, [ 0 x i8* ] }** %argv_slot3310
  %mem_ptr3313 = call i32* @oat_malloc ( i32 8 )
  %obj3314 = bitcast i32* %mem_ptr3313 to %C* 
  %new_obj3315 = call %C* @_C_ctor ( %C* %obj3314 )
  %vdecl_slot3316 = alloca %C*
  store %C* %new_obj3315, %C** %vdecl_slot3316
  %lhs_or_call3317 = load %C** %vdecl_slot3316
  %six3319 = getelementptr %_C_vtable* @_C_vtable304, i32 0, i32 2
  %six3318 = load i32 (%C*)** %six3319
  %cast_op3320 = bitcast %C %lhs_or_call3317 to %C* 
  %ret3321 = call i32 %six3318 ( %C* %cast_op3320 )
  ret i32 %ret3321
}


define i32 @_C_six (%C* %_this1){
__fresh579:
  %six3305 = getelementptr %_C_vtable* @_C_vtable304, i32 0, i32 2
  %six3304 = load i32 (%C*)** %six3305
  %cast_op3306 = bitcast %C %_this1 to %C* 
  %ret3307 = call i32 %six3304 ( %C* %cast_op3306 )
  %bop3308 = add i32 %ret3307, 3
  ret i32 %bop3308
}


define %C* @_C_ctor (%C* %_this1){
__fresh578:
  %lhs_or_call3295 = load %C* %_this1
  %cast_op3296 = bitcast %C %lhs_or_call3295 to %B* 
  %mem_ptr3297 = call i32* @oat_malloc ( i32 8 )
  %obj3298 = bitcast i32* %mem_ptr3297 to %B* 
  %new_obj3299 = call %B* @_B_ctor ( %B* %obj3298, %B* %cast_op3296 )
  %_name3300 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call3301 = load %C* %_this1
  %cast_op3302 = bitcast %C %lhs_or_call3301 to i8* 
  store i8* %cast_op3302, i8** %_name3300
  %this_vtable3303 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable3303
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh577:
  %six3291 = getelementptr %_B_vtable* @_B_vtable303, i32 0, i32 2
  %six3290 = load i32 (%B*)** %six3291
  %cast_op3292 = bitcast %B %_this1 to %B* 
  %ret3293 = call i32 %six3290 ( %B* %cast_op3292 )
  %bop3294 = add i32 %ret3293, 2
  ret i32 %bop3294
}


define %B* @_B_ctor (%B* %_this1){
__fresh576:
  %lhs_or_call3281 = load %B* %_this1
  %cast_op3282 = bitcast %B %lhs_or_call3281 to %A* 
  %mem_ptr3283 = call i32* @oat_malloc ( i32 8 )
  %obj3284 = bitcast i32* %mem_ptr3283 to %A* 
  %new_obj3285 = call %A* @_A_ctor ( %A* %obj3284, %A* %cast_op3282 )
  %_name3286 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call3287 = load %B* %_this1
  %cast_op3288 = bitcast %B %lhs_or_call3287 to i8* 
  store i8* %cast_op3288, i8** %_name3286
  %this_vtable3289 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable3289
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh575:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh574:
  %lhs_or_call3272 = load %A* %_this1
  %cast_op3273 = bitcast %A %lhs_or_call3272 to %Object* 
  %mem_ptr3274 = call i32* @oat_malloc ( i32 8 )
  %obj3275 = bitcast i32* %mem_ptr3274 to %Object* 
  %new_obj3276 = call %Object* @_Object_ctor ( %Object* %obj3275, %Object* %cast_op3273 )
  %_name3277 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call3278 = load %A* %_this1
  %cast_op3279 = bitcast %A %lhs_or_call3278 to i8* 
  store i8* %cast_op3279, i8** %_name3277
  %this_vtable3280 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable3280
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh573:
  %_name3270 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3271 = load i8** %_name3270
  ret i8* %lhs_or_call3271
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh572:
  %_name3266 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3267 = load %Object* %_this1
  %cast_op3268 = bitcast %Object %lhs_or_call3267 to i8* 
  store i8* %cast_op3268, i8** %_name3266
  %this_vtable3269 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3269
  ret %Object* %_this1
}


