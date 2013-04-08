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


define i32 @program (i32 %argc3350, { i32, [ 0 x i8* ] }* %argv3348){
__fresh821:
  %argc_slot3351 = alloca i32
  store i32 %argc3350, i32* %argc_slot3351
  %argv_slot3349 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3348, { i32, [ 0 x i8* ] }** %argv_slot3349
  %lhs_or_call3352 = load %Array** @a576
  %vtable_ptr3353 = getelementptr %Array* %lhs_or_call3352, i32 0
  %vtable3354 = load %_Array_vtable** %vtable_ptr3353
  %set_length3356 = getelementptr %_Array_vtable* %vtable3354, i32 0, i32 2
  %set_length3355 = load void (%Array*, i32)** %set_length3356
  %cast_op3357 = bitcast %Array %lhs_or_call3352 to %Array* 
  call void %set_length3355( %Array* %cast_op3357, i32 5 )
  %lhs_or_call3358 = load %Array** @a576
  %vtable_ptr3359 = getelementptr %Array* %lhs_or_call3358, i32 0
  %vtable3360 = load %_Array_vtable** %vtable_ptr3359
  %add_dimension3362 = getelementptr %_Array_vtable* %vtable3360, i32 0, i32 3
  %add_dimension3361 = load void (%Array*)** %add_dimension3362
  %cast_op3363 = bitcast %Array %lhs_or_call3358 to %Array* 
  call void %add_dimension3361( %Array* %cast_op3363 )
  %lhs_or_call3364 = load %Array** @a576
  %vtable_ptr3365 = getelementptr %Array* %lhs_or_call3364, i32 0
  %vtable3366 = load %_Array_vtable** %vtable_ptr3365
  %add_dimension3368 = getelementptr %_Array_vtable* %vtable3366, i32 0, i32 3
  %add_dimension3367 = load void (%Array*)** %add_dimension3368
  %cast_op3369 = bitcast %Array %lhs_or_call3364 to %Array* 
  call void %add_dimension3367( %Array* %cast_op3369 )
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
  %fill_random_bits3380 = getelementptr %_Array_vtable* %vtable3378, i32 0, i32 4
  %fill_random_bits3379 = load void (%Array*)** %fill_random_bits3380
  %cast_op3381 = bitcast %Array %lhs_or_call3376 to %Array* 
  call void %fill_random_bits3379( %Array* %cast_op3381 )
  %lhs_or_call3382 = load %Array** @a576
  %vtable_ptr3383 = getelementptr %Array* %lhs_or_call3382, i32 0
  %vtable3384 = load %_Array_vtable** %vtable_ptr3383
  %total3386 = getelementptr %_Array_vtable* %vtable3384, i32 0, i32 5
  %total3385 = load i32 (%Array*)** %total3386
  %cast_op3387 = bitcast %Array %lhs_or_call3382 to %Array* 
  %ret3388 = call i32 %total3385 ( %Array* %cast_op3387 )
  ret i32 %ret3388
}


define void @a576.init577 (){
__fresh820:
  %mem_ptr3345 = call i32* @oat_malloc ( i32 20 )
  %obj3346 = bitcast i32* %mem_ptr3345 to %Array* 
  %new_obj3347 = call %Array* @_Array_ctor ( %Array* %obj3346 )
  store %Array* %new_obj3347, %Array** @a576
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh817:
  %value3319 = getelementptr %Array* %_this1, i32 0, i32 0, i32 4
  %lhs_or_call3320 = load i32* %value3319
  %vdecl_slot3321 = alloca i32
  store i32 %lhs_or_call3320, i32* %vdecl_slot3321
  %vdecl_slot3322 = alloca i32
  store i32 0, i32* %vdecl_slot3322
  br label %__cond816

__cond816:
  %lhs_or_call3323 = load i32* %vdecl_slot3322
  %length3324 = getelementptr %Array* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call3325 = load i32* %length3324
  %bop3326 = icmp slt i32 %lhs_or_call3323, %lhs_or_call3325
  br i1 %bop3326, label %__body815, label %__post814

__fresh818:
  br label %__body815

__body815:
  %lhs_or_call3327 = load i32* %vdecl_slot3321
  %a3328 = getelementptr %Array* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call3329 = load { i32, [ 0 x %Array* ] }** %a3328
  %lhs_or_call3330 = load i32* %vdecl_slot3322
  %bound_ptr3332 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3329, i32 0, i32 0
  %bound3333 = load i32* %bound_ptr3332
  call void @oat_array_bounds_check( i32 %bound3333, i32 %lhs_or_call3330 )
  %elt3331 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3329, i32 0, i32 1, i32 %lhs_or_call3330
  %lhs_or_call3334 = load %Array** %elt3331
  %vtable_ptr3335 = getelementptr %Array* %lhs_or_call3334, i32 0
  %vtable3336 = load %_Array_vtable** %vtable_ptr3335
  %total3338 = getelementptr %_Array_vtable* %vtable3336, i32 0, i32 5
  %total3337 = load i32 (%Array*)** %total3338
  %cast_op3339 = bitcast %Array %lhs_or_call3334 to %Array* 
  %ret3340 = call i32 %total3337 ( %Array* %cast_op3339 )
  %bop3341 = add i32 %lhs_or_call3327, %ret3340
  store i32 %bop3341, i32* %vdecl_slot3321
  %lhs_or_call3342 = load i32* %vdecl_slot3322
  %bop3343 = add i32 %lhs_or_call3342, 1
  store i32 %bop3343, i32* %vdecl_slot3322
  br label %__cond816

__fresh819:
  br label %__post814

__post814:
  %lhs_or_call3344 = load i32* %vdecl_slot3321
  ret i32 %lhs_or_call3344
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh811:
  %vdecl_slot3299 = alloca i32
  store i32 0, i32* %vdecl_slot3299
  br label %__cond810

__cond810:
  %lhs_or_call3300 = load i32* %vdecl_slot3299
  %length3301 = getelementptr %Array* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call3302 = load i32* %length3301
  %bop3303 = icmp slt i32 %lhs_or_call3300, %lhs_or_call3302
  br i1 %bop3303, label %__body809, label %__post808

__fresh812:
  br label %__body809

__body809:
  %a3304 = getelementptr %Array* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call3305 = load { i32, [ 0 x %Array* ] }** %a3304
  %lhs_or_call3306 = load i32* %vdecl_slot3299
  %bound_ptr3308 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3305, i32 0, i32 0
  %bound3309 = load i32* %bound_ptr3308
  call void @oat_array_bounds_check( i32 %bound3309, i32 %lhs_or_call3306 )
  %elt3307 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3305, i32 0, i32 1, i32 %lhs_or_call3306
  %lhs_or_call3310 = load %Array** %elt3307
  %vtable_ptr3311 = getelementptr %Array* %lhs_or_call3310, i32 0
  %vtable3312 = load %_Array_vtable** %vtable_ptr3311
  %fill_random_bits3314 = getelementptr %_Array_vtable* %vtable3312, i32 0, i32 4
  %fill_random_bits3313 = load void (%Array*)** %fill_random_bits3314
  %cast_op3315 = bitcast %Array %lhs_or_call3310 to %Array* 
  call void %fill_random_bits3313( %Array* %cast_op3315 )
  %lhs_or_call3316 = load i32* %vdecl_slot3299
  %bop3317 = add i32 %lhs_or_call3316, 1
  store i32 %bop3317, i32* %vdecl_slot3299
  br label %__cond810

__fresh813:
  br label %__post808

__post808:
  %value3318 = getelementptr %Array* %_this1, i32 0, i32 0, i32 4
  store i32 2, i32* %value3318
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh803:
  %a3257 = getelementptr %Array* %_this1, i32 0, i32 0, i32 2
  %length3258 = getelementptr %Array* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call3259 = load i32* %length3258
  %array_ptr3260 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3259 )
  %array3261 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3260 to { i32, [ 0 x %Array* ] }* 
  %_tmp5403262 = alloca i32
  store i32 %lhs_or_call3259, i32* %_tmp5403262
  %_tmp5413263 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3261, { i32, [ 0 x %Array* ] }** %_tmp5413263
  %vdecl_slot3264 = alloca i32
  store i32 0, i32* %vdecl_slot3264
  br label %__cond799

__cond799:
  %lhs_or_call3265 = load i32* %vdecl_slot3264
  %lhs_or_call3266 = load i32* %_tmp5403262
  %bop3267 = icmp slt i32 %lhs_or_call3265, %lhs_or_call3266
  br i1 %bop3267, label %__body798, label %__post797

__fresh804:
  br label %__body798

__body798:
  %lhs_or_call3268 = load { i32, [ 0 x %Array* ] }** %_tmp5413263
  %lhs_or_call3269 = load i32* %vdecl_slot3264
  %bound_ptr3271 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3268, i32 0, i32 0
  %bound3272 = load i32* %bound_ptr3271
  call void @oat_array_bounds_check( i32 %bound3272, i32 %lhs_or_call3269 )
  %elt3270 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3268, i32 0, i32 1, i32 %lhs_or_call3269
  %mem_ptr3273 = call i32* @oat_malloc ( i32 20 )
  %obj3274 = bitcast i32* %mem_ptr3273 to %Array* 
  %new_obj3275 = call %Array* @_Array_ctor ( %Array* %obj3274 )
  store %Array* %new_obj3275, %Array** %elt3270
  %lhs_or_call3276 = load i32* %vdecl_slot3264
  %bop3277 = add i32 %lhs_or_call3276, 1
  store i32 %bop3277, i32* %vdecl_slot3264
  br label %__cond799

__fresh805:
  br label %__post797

__post797:
  store { i32, [ 0 x %Array* ] }* %array3261, { i32, [ 0 x %Array* ] }** %a3257
  %vdecl_slot3278 = alloca i32
  store i32 0, i32* %vdecl_slot3278
  br label %__cond802

__cond802:
  %lhs_or_call3279 = load i32* %vdecl_slot3278
  %length3280 = getelementptr %Array* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call3281 = load i32* %length3280
  %bop3282 = icmp slt i32 %lhs_or_call3279, %lhs_or_call3281
  br i1 %bop3282, label %__body801, label %__post800

__fresh806:
  br label %__body801

__body801:
  %length3283 = getelementptr %Array* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call3284 = load i32* %length3283
  %a3285 = getelementptr %Array* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call3286 = load { i32, [ 0 x %Array* ] }** %a3285
  %lhs_or_call3287 = load i32* %vdecl_slot3278
  %bound_ptr3289 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3286, i32 0, i32 0
  %bound3290 = load i32* %bound_ptr3289
  call void @oat_array_bounds_check( i32 %bound3290, i32 %lhs_or_call3287 )
  %elt3288 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3286, i32 0, i32 1, i32 %lhs_or_call3287
  %lhs_or_call3291 = load %Array** %elt3288
  %vtable_ptr3292 = getelementptr %Array* %lhs_or_call3291, i32 0
  %vtable3293 = load %_Array_vtable** %vtable_ptr3292
  %set_length3295 = getelementptr %_Array_vtable* %vtable3293, i32 0, i32 2
  %set_length3294 = load void (%Array*, i32)** %set_length3295
  %cast_op3296 = bitcast %Array %lhs_or_call3291 to %Array* 
  call void %set_length3294( %Array* %cast_op3296, i32 %lhs_or_call3284 )
  %lhs_or_call3297 = load i32* %vdecl_slot3278
  %bop3298 = add i32 %lhs_or_call3297, 1
  store i32 %bop3298, i32* %vdecl_slot3278
  br label %__cond802

__fresh807:
  br label %__post800

__post800:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l3232){
__fresh794:
  %l_slot3233 = alloca i32
  store i32 %l3232, i32* %l_slot3233
  %length3234 = getelementptr %Array* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call3235 = load i32* %l_slot3233
  store i32 %lhs_or_call3235, i32* %length3234
  %a3236 = getelementptr %Array* %_this1, i32 0, i32 0, i32 2
  %length3237 = getelementptr %Array* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call3238 = load i32* %length3237
  %array_ptr3239 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3238 )
  %array3240 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3239 to { i32, [ 0 x %Array* ] }* 
  %_tmp5383241 = alloca i32
  store i32 %lhs_or_call3238, i32* %_tmp5383241
  %_tmp5393242 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3240, { i32, [ 0 x %Array* ] }** %_tmp5393242
  %vdecl_slot3243 = alloca i32
  store i32 0, i32* %vdecl_slot3243
  br label %__cond793

__cond793:
  %lhs_or_call3244 = load i32* %vdecl_slot3243
  %lhs_or_call3245 = load i32* %_tmp5383241
  %bop3246 = icmp slt i32 %lhs_or_call3244, %lhs_or_call3245
  br i1 %bop3246, label %__body792, label %__post791

__fresh795:
  br label %__body792

__body792:
  %lhs_or_call3247 = load { i32, [ 0 x %Array* ] }** %_tmp5393242
  %lhs_or_call3248 = load i32* %vdecl_slot3243
  %bound_ptr3250 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3247, i32 0, i32 0
  %bound3251 = load i32* %bound_ptr3250
  call void @oat_array_bounds_check( i32 %bound3251, i32 %lhs_or_call3248 )
  %elt3249 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3247, i32 0, i32 1, i32 %lhs_or_call3248
  %mem_ptr3252 = call i32* @oat_malloc ( i32 20 )
  %obj3253 = bitcast i32* %mem_ptr3252 to %Array* 
  %new_obj3254 = call %Array* @_Array_ctor ( %Array* %obj3253 )
  store %Array* %new_obj3254, %Array** %elt3249
  %lhs_or_call3255 = load i32* %vdecl_slot3243
  %bop3256 = add i32 %lhs_or_call3255, 1
  store i32 %bop3256, i32* %vdecl_slot3243
  br label %__cond793

__fresh796:
  br label %__post791

__post791:
  store { i32, [ 0 x %Array* ] }* %array3240, { i32, [ 0 x %Array* ] }** %a3236
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh788:
  %mem_ptr3208 = call i32* @oat_malloc ( i32 8 )
  %obj3209 = bitcast i32* %mem_ptr3208 to %Object* 
  %new_obj3210 = call %Object* @_Object_ctor ( %Object* %obj3209 )
  %_this1 = bitcast %Object* %new_obj3210 to %Array 
  %_name3211 = getelementptr %Array* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str575, i8** %_name3211
  %a3212 = getelementptr %Array* %_this1, i32 0, i32 0, i32 2
  %array_ptr3213 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array3214 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3213 to { i32, [ 0 x %Array* ] }* 
  %_tmp5353215 = alloca i32
  store i32 0, i32* %_tmp5353215
  %_tmp5363216 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3214, { i32, [ 0 x %Array* ] }** %_tmp5363216
  %vdecl_slot3217 = alloca i32
  store i32 0, i32* %vdecl_slot3217
  br label %__cond787

__cond787:
  %lhs_or_call3218 = load i32* %vdecl_slot3217
  %lhs_or_call3219 = load i32* %_tmp5353215
  %bop3220 = icmp slt i32 %lhs_or_call3218, %lhs_or_call3219
  br i1 %bop3220, label %__body786, label %__post785

__fresh789:
  br label %__body786

__body786:
  %lhs_or_call3221 = load { i32, [ 0 x %Array* ] }** %_tmp5363216
  %lhs_or_call3222 = load i32* %vdecl_slot3217
  %bound_ptr3224 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3221, i32 0, i32 0
  %bound3225 = load i32* %bound_ptr3224
  call void @oat_array_bounds_check( i32 %bound3225, i32 %lhs_or_call3222 )
  %elt3223 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3221, i32 0, i32 1, i32 %lhs_or_call3222
  %mem_ptr3226 = call i32* @oat_malloc ( i32 20 )
  %obj3227 = bitcast i32* %mem_ptr3226 to %Array* 
  %new_obj3228 = call %Array* @_Array_ctor ( %Array* %obj3227 )
  store %Array* %new_obj3228, %Array** %elt3223
  %lhs_or_call3229 = load i32* %vdecl_slot3217
  %bop3230 = add i32 %lhs_or_call3229, 1
  store i32 %bop3230, i32* %vdecl_slot3217
  br label %__cond787

__fresh790:
  br label %__post785

__post785:
  store { i32, [ 0 x %Array* ] }* %array3214, { i32, [ 0 x %Array* ] }** %a3212
  %this_vtable3231 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable573, %_Array_vtable** %this_vtable3231
  %value3206 = getelementptr %Array* %_this1, i32 0, i32 0, i32 4
  store i32 0, i32* %value3206
  %length3207 = getelementptr %Array* %_this1, i32 0, i32 0, i32 3
  store i32 0, i32* %length3207
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh784:
  %_name3204 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call3205 = load i8** %_name3204
  ret i8* %lhs_or_call3205
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh783:
  %_name3202 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str574, i8** %_name3202
  %this_vtable3203 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable572, %_Object_vtable** %this_vtable3203
  ret %Object* %_this1
}


