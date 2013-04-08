%Array = type { %_Array_vtable*, i8*, { i32, [ 0 x %Array* ] }*, i32, i32 }
%_Array_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Array*, i32)*, void (%Array*)*, void (%Array*)*, i32 (%Array*)* }
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
@a576 = global %Array* zeroinitializer, align 4		; initialized by @a576.init577
@_const_str575.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str575 = alias bitcast([ 6 x i8 ]* @_const_str575.str. to i8*)@_const_str574.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str574 = alias bitcast([ 7 x i8 ]* @_const_str574.str. to i8*)@_Array_vtable573 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable572, i8* (%Object*)* @_Object_get_name, void (%Array*, i32)* @_Array_set_length, void (%Array*)* @_Array_add_dimension, void (%Array*)* @_Array_fill_random_bits, i32 (%Array*)* @_Array_total}, align 4
@_Object_vtable572 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh822:
  call void @a576.init577(  )
  ret void
}


define i32 @program (i32 %argc3362, { i32, [ 0 x i8* ] }* %argv3360){
__fresh821:
  %argc_slot3363 = alloca i32
  store i32 %argc3362, i32* %argc_slot3363
  %argv_slot3361 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3360, { i32, [ 0 x i8* ] }** %argv_slot3361
  %lhs_or_call3364 = load %Array** @a576
  %vtable_ptr3365 = getelementptr %Array* %lhs_or_call3364, i32 0
  %vtable3366 = load %_Array_vtable** %vtable_ptr3365
  %set_length3368 = getelementptr %_Array_vtable* %vtable3366, i32 0, i32 2
  %set_length3367 = load void (%Array*, i32)** %set_length3368
  %cast_op3369 = bitcast %Array %lhs_or_call3364 to %Array* 
  call void %set_length3367( %Array* %cast_op3369, i32 5 )
  %lhs_or_call3370 = load %Array** @a576
  %vtable_ptr3371 = getelementptr %Array* %lhs_or_call3370, i32 0
  %vtable3372 = load %_Array_vtable** %vtable_ptr3371
  %add_dimension3374 = getelementptr %_Array_vtable* %vtable3372, i32 0, i32 3
  %add_dimension3373 = load void (%Array*)** %add_dimension3374
  %cast_op3375 = bitcast %Array %lhs_or_call3370 to %Array* 
  call void %add_dimension3373( %Array* %cast_op3375 )
  %lhs_or_call3376 = load %Array** @a576
  %vtable_ptr3377 = getelementptr %Array* %lhs_or_call3376, i32 0
  %vtable3378 = load %_Array_vtable** %vtable_ptr3377
  %add_dimension3380 = getelementptr %_Array_vtable* %vtable3378, i32 0, i32 3
  %add_dimension3379 = load void (%Array*)** %add_dimension3380
  %cast_op3381 = bitcast %Array %lhs_or_call3376 to %Array* 
  call void %add_dimension3379( %Array* %cast_op3381 )
  %lhs_or_call3382 = load %Array** @a576
  %vtable_ptr3383 = getelementptr %Array* %lhs_or_call3382, i32 0
  %vtable3384 = load %_Array_vtable** %vtable_ptr3383
  %add_dimension3386 = getelementptr %_Array_vtable* %vtable3384, i32 0, i32 3
  %add_dimension3385 = load void (%Array*)** %add_dimension3386
  %cast_op3387 = bitcast %Array %lhs_or_call3382 to %Array* 
  call void %add_dimension3385( %Array* %cast_op3387 )
  %lhs_or_call3388 = load %Array** @a576
  %vtable_ptr3389 = getelementptr %Array* %lhs_or_call3388, i32 0
  %vtable3390 = load %_Array_vtable** %vtable_ptr3389
  %fill_random_bits3392 = getelementptr %_Array_vtable* %vtable3390, i32 0, i32 4
  %fill_random_bits3391 = load void (%Array*)** %fill_random_bits3392
  %cast_op3393 = bitcast %Array %lhs_or_call3388 to %Array* 
  call void %fill_random_bits3391( %Array* %cast_op3393 )
  %lhs_or_call3394 = load %Array** @a576
  %vtable_ptr3395 = getelementptr %Array* %lhs_or_call3394, i32 0
  %vtable3396 = load %_Array_vtable** %vtable_ptr3395
  %total3398 = getelementptr %_Array_vtable* %vtable3396, i32 0, i32 5
  %total3397 = load i32 (%Array*)** %total3398
  %cast_op3399 = bitcast %Array %lhs_or_call3394 to %Array* 
  %ret3400 = call i32 %total3397 ( %Array* %cast_op3399 )
  ret i32 %ret3400
}


define void @a576.init577 (){
__fresh820:
  %mem_ptr3357 = call i32* @oat_malloc ( i32 20 )
  %obj3358 = bitcast i32* %mem_ptr3357 to %Array* 
  %new_obj3359 = call %Array* @_Array_ctor ( %Array* %obj3358 )
  store %Array* %new_obj3359, %Array** @a576
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh817:
  %value3331 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call3332 = load i32* %value3331
  %vdecl_slot3333 = alloca i32
  store i32 %lhs_or_call3332, i32* %vdecl_slot3333
  %vdecl_slot3334 = alloca i32
  store i32 0, i32* %vdecl_slot3334
  br label %__cond816

__cond816:
  %lhs_or_call3335 = load i32* %vdecl_slot3334
  %length3336 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3337 = load i32* %length3336
  %bop3338 = icmp slt i32 %lhs_or_call3335, %lhs_or_call3337
  br i1 %bop3338, label %__body815, label %__post814

__fresh818:
  br label %__body815

__body815:
  %lhs_or_call3339 = load i32* %vdecl_slot3333
  %a3340 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3341 = load { i32, [ 0 x %Array* ] }** %a3340
  %lhs_or_call3342 = load i32* %vdecl_slot3334
  %bound_ptr3344 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3341, i32 0, i32 0
  %bound3345 = load i32* %bound_ptr3344
  call void @oat_array_bounds_check( i32 %bound3345, i32 %lhs_or_call3342 )
  %elt3343 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3341, i32 0, i32 1, i32 %lhs_or_call3342
  %lhs_or_call3346 = load %Array** %elt3343
  %vtable_ptr3347 = getelementptr %Array* %lhs_or_call3346, i32 0
  %vtable3348 = load %_Array_vtable** %vtable_ptr3347
  %total3350 = getelementptr %_Array_vtable* %vtable3348, i32 0, i32 5
  %total3349 = load i32 (%Array*)** %total3350
  %cast_op3351 = bitcast %Array %lhs_or_call3346 to %Array* 
  %ret3352 = call i32 %total3349 ( %Array* %cast_op3351 )
  %bop3353 = add i32 %lhs_or_call3339, %ret3352
  store i32 %bop3353, i32* %vdecl_slot3333
  %lhs_or_call3354 = load i32* %vdecl_slot3334
  %bop3355 = add i32 %lhs_or_call3354, 1
  store i32 %bop3355, i32* %vdecl_slot3334
  br label %__cond816

__fresh819:
  br label %__post814

__post814:
  %lhs_or_call3356 = load i32* %vdecl_slot3333
  ret i32 %lhs_or_call3356
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh811:
  %vdecl_slot3311 = alloca i32
  store i32 0, i32* %vdecl_slot3311
  br label %__cond810

__cond810:
  %lhs_or_call3312 = load i32* %vdecl_slot3311
  %length3313 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3314 = load i32* %length3313
  %bop3315 = icmp slt i32 %lhs_or_call3312, %lhs_or_call3314
  br i1 %bop3315, label %__body809, label %__post808

__fresh812:
  br label %__body809

__body809:
  %a3316 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3317 = load { i32, [ 0 x %Array* ] }** %a3316
  %lhs_or_call3318 = load i32* %vdecl_slot3311
  %bound_ptr3320 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3317, i32 0, i32 0
  %bound3321 = load i32* %bound_ptr3320
  call void @oat_array_bounds_check( i32 %bound3321, i32 %lhs_or_call3318 )
  %elt3319 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3317, i32 0, i32 1, i32 %lhs_or_call3318
  %lhs_or_call3322 = load %Array** %elt3319
  %vtable_ptr3323 = getelementptr %Array* %lhs_or_call3322, i32 0
  %vtable3324 = load %_Array_vtable** %vtable_ptr3323
  %fill_random_bits3326 = getelementptr %_Array_vtable* %vtable3324, i32 0, i32 4
  %fill_random_bits3325 = load void (%Array*)** %fill_random_bits3326
  %cast_op3327 = bitcast %Array %lhs_or_call3322 to %Array* 
  call void %fill_random_bits3325( %Array* %cast_op3327 )
  %lhs_or_call3328 = load i32* %vdecl_slot3311
  %bop3329 = add i32 %lhs_or_call3328, 1
  store i32 %bop3329, i32* %vdecl_slot3311
  br label %__cond810

__fresh813:
  br label %__post808

__post808:
  %value3330 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %value3330
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh803:
  %a3269 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3270 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3271 = load i32* %length3270
  %array_ptr3272 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3271 )
  %array3273 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3272 to { i32, [ 0 x %Array* ] }* 
  %_tmp5403274 = alloca i32
  store i32 %lhs_or_call3271, i32* %_tmp5403274
  %_tmp5413275 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3273, { i32, [ 0 x %Array* ] }** %_tmp5413275
  %vdecl_slot3276 = alloca i32
  store i32 0, i32* %vdecl_slot3276
  br label %__cond799

__cond799:
  %lhs_or_call3277 = load i32* %vdecl_slot3276
  %lhs_or_call3278 = load i32* %_tmp5403274
  %bop3279 = icmp slt i32 %lhs_or_call3277, %lhs_or_call3278
  br i1 %bop3279, label %__body798, label %__post797

__fresh804:
  br label %__body798

__body798:
  %lhs_or_call3280 = load { i32, [ 0 x %Array* ] }** %_tmp5413275
  %lhs_or_call3281 = load i32* %vdecl_slot3276
  %bound_ptr3283 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3280, i32 0, i32 0
  %bound3284 = load i32* %bound_ptr3283
  call void @oat_array_bounds_check( i32 %bound3284, i32 %lhs_or_call3281 )
  %elt3282 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3280, i32 0, i32 1, i32 %lhs_or_call3281
  %mem_ptr3285 = call i32* @oat_malloc ( i32 20 )
  %obj3286 = bitcast i32* %mem_ptr3285 to %Array* 
  %new_obj3287 = call %Array* @_Array_ctor ( %Array* %obj3286 )
  store %Array* %new_obj3287, %Array** %elt3282
  %lhs_or_call3288 = load i32* %vdecl_slot3276
  %bop3289 = add i32 %lhs_or_call3288, 1
  store i32 %bop3289, i32* %vdecl_slot3276
  br label %__cond799

__fresh805:
  br label %__post797

__post797:
  store { i32, [ 0 x %Array* ] }* %array3273, { i32, [ 0 x %Array* ] }** %a3269
  %vdecl_slot3290 = alloca i32
  store i32 0, i32* %vdecl_slot3290
  br label %__cond802

__cond802:
  %lhs_or_call3291 = load i32* %vdecl_slot3290
  %length3292 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3293 = load i32* %length3292
  %bop3294 = icmp slt i32 %lhs_or_call3291, %lhs_or_call3293
  br i1 %bop3294, label %__body801, label %__post800

__fresh806:
  br label %__body801

__body801:
  %length3295 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3296 = load i32* %length3295
  %a3297 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3298 = load { i32, [ 0 x %Array* ] }** %a3297
  %lhs_or_call3299 = load i32* %vdecl_slot3290
  %bound_ptr3301 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3298, i32 0, i32 0
  %bound3302 = load i32* %bound_ptr3301
  call void @oat_array_bounds_check( i32 %bound3302, i32 %lhs_or_call3299 )
  %elt3300 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3298, i32 0, i32 1, i32 %lhs_or_call3299
  %lhs_or_call3303 = load %Array** %elt3300
  %vtable_ptr3304 = getelementptr %Array* %lhs_or_call3303, i32 0
  %vtable3305 = load %_Array_vtable** %vtable_ptr3304
  %set_length3307 = getelementptr %_Array_vtable* %vtable3305, i32 0, i32 2
  %set_length3306 = load void (%Array*, i32)** %set_length3307
  %cast_op3308 = bitcast %Array %lhs_or_call3303 to %Array* 
  call void %set_length3306( %Array* %cast_op3308, i32 %lhs_or_call3296 )
  %lhs_or_call3309 = load i32* %vdecl_slot3290
  %bop3310 = add i32 %lhs_or_call3309, 1
  store i32 %bop3310, i32* %vdecl_slot3290
  br label %__cond802

__fresh807:
  br label %__post800

__post800:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l3244){
__fresh794:
  %l_slot3245 = alloca i32
  store i32 %l3244, i32* %l_slot3245
  %length3246 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3247 = load i32* %l_slot3245
  store i32 %lhs_or_call3247, i32* %length3246
  %a3248 = getelementptr %Array* %_this1, i32 0, i32 2
  %length3249 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3250 = load i32* %length3249
  %array_ptr3251 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3250 )
  %array3252 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3251 to { i32, [ 0 x %Array* ] }* 
  %_tmp5383253 = alloca i32
  store i32 %lhs_or_call3250, i32* %_tmp5383253
  %_tmp5393254 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3252, { i32, [ 0 x %Array* ] }** %_tmp5393254
  %vdecl_slot3255 = alloca i32
  store i32 0, i32* %vdecl_slot3255
  br label %__cond793

__cond793:
  %lhs_or_call3256 = load i32* %vdecl_slot3255
  %lhs_or_call3257 = load i32* %_tmp5383253
  %bop3258 = icmp slt i32 %lhs_or_call3256, %lhs_or_call3257
  br i1 %bop3258, label %__body792, label %__post791

__fresh795:
  br label %__body792

__body792:
  %lhs_or_call3259 = load { i32, [ 0 x %Array* ] }** %_tmp5393254
  %lhs_or_call3260 = load i32* %vdecl_slot3255
  %bound_ptr3262 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3259, i32 0, i32 0
  %bound3263 = load i32* %bound_ptr3262
  call void @oat_array_bounds_check( i32 %bound3263, i32 %lhs_or_call3260 )
  %elt3261 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3259, i32 0, i32 1, i32 %lhs_or_call3260
  %mem_ptr3264 = call i32* @oat_malloc ( i32 20 )
  %obj3265 = bitcast i32* %mem_ptr3264 to %Array* 
  %new_obj3266 = call %Array* @_Array_ctor ( %Array* %obj3265 )
  store %Array* %new_obj3266, %Array** %elt3261
  %lhs_or_call3267 = load i32* %vdecl_slot3255
  %bop3268 = add i32 %lhs_or_call3267, 1
  store i32 %bop3268, i32* %vdecl_slot3255
  br label %__cond793

__fresh796:
  br label %__post791

__post791:
  store { i32, [ 0 x %Array* ] }* %array3252, { i32, [ 0 x %Array* ] }** %a3248
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh788:
  %mem_ptr3220 = call i32* @oat_malloc ( i32 8 )
  %obj3221 = bitcast i32* %mem_ptr3220 to %Object* 
  %new_obj3222 = call %Object* @_Object_ctor ( %Object* %obj3221 )
  %_this1 = bitcast %Object* %new_obj3222 to %Array 
  %_name3223 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str575, i8** %_name3223
  %a3224 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr3225 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array3226 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3225 to { i32, [ 0 x %Array* ] }* 
  %_tmp5353227 = alloca i32
  store i32 0, i32* %_tmp5353227
  %_tmp5363228 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3226, { i32, [ 0 x %Array* ] }** %_tmp5363228
  %vdecl_slot3229 = alloca i32
  store i32 0, i32* %vdecl_slot3229
  br label %__cond787

__cond787:
  %lhs_or_call3230 = load i32* %vdecl_slot3229
  %lhs_or_call3231 = load i32* %_tmp5353227
  %bop3232 = icmp slt i32 %lhs_or_call3230, %lhs_or_call3231
  br i1 %bop3232, label %__body786, label %__post785

__fresh789:
  br label %__body786

__body786:
  %lhs_or_call3233 = load { i32, [ 0 x %Array* ] }** %_tmp5363228
  %lhs_or_call3234 = load i32* %vdecl_slot3229
  %bound_ptr3236 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3233, i32 0, i32 0
  %bound3237 = load i32* %bound_ptr3236
  call void @oat_array_bounds_check( i32 %bound3237, i32 %lhs_or_call3234 )
  %elt3235 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3233, i32 0, i32 1, i32 %lhs_or_call3234
  %mem_ptr3238 = call i32* @oat_malloc ( i32 20 )
  %obj3239 = bitcast i32* %mem_ptr3238 to %Array* 
  %new_obj3240 = call %Array* @_Array_ctor ( %Array* %obj3239 )
  store %Array* %new_obj3240, %Array** %elt3235
  %lhs_or_call3241 = load i32* %vdecl_slot3229
  %bop3242 = add i32 %lhs_or_call3241, 1
  store i32 %bop3242, i32* %vdecl_slot3229
  br label %__cond787

__fresh790:
  br label %__post785

__post785:
  store { i32, [ 0 x %Array* ] }* %array3226, { i32, [ 0 x %Array* ] }** %a3224
  %this_vtable3243 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable573, %_Array_vtable** %this_vtable3243
  %value3218 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %value3218
  %length3219 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %length3219
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh784:
  %_name3216 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3217 = load i8** %_name3216
  ret i8* %lhs_or_call3217
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh783:
  %_name3214 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str574, i8** %_name3214
  %this_vtable3215 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable572, %_Object_vtable** %this_vtable3215
  ret %Object* %_this1
}


