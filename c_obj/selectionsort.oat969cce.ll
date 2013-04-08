%Array = type { %_Array_vtable*, i8*, i32, %ArrayItem* }
%_Array_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%Array*, i32)*, void (%Array*, i32, i32)*, void (%Array*, i32)*, i32 (%Array*)* }
%ArrayItem = type { %_ArrayItem_vtable*, i8*, i32, %ArrayItem* }
%_ArrayItem_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%ArrayItem*, i32)* }
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
@_const_str619.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str619 = alias bitcast([ 24 x i8 ]* @_const_str619.str. to i8*)@_const_str618.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str618 = alias bitcast([ 24 x i8 ]* @_const_str618.str. to i8*)@_const_str617.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str617 = alias bitcast([ 6 x i8 ]* @_const_str617.str. to i8*)@_const_str616.str. = private unnamed_addr constant [ 10 x i8 ] c "ArrayItem\00", align 4
@_const_str616 = alias bitcast([ 10 x i8 ]* @_const_str616.str. to i8*)@_const_str615.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str615 = alias bitcast([ 7 x i8 ]* @_const_str615.str. to i8*)@_Array_vtable614 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable612, i8* (%Object*)* @_Object_get_name, i32 (%Array*, i32)* @_Array_getElement, void (%Array*, i32, i32)* @_Array_setElement, void (%Array*, i32)* @_Array_addElement, i32 (%Array*)* @_Array_getLength}, align 4
@_ArrayItem_vtable613 = private constant %_ArrayItem_vtable {%_Object_vtable* @_Object_vtable612, i8* (%Object*)* @_Object_get_name, void (%ArrayItem*, i32)* @_ArrayItem_set}, align 4
@_Object_vtable612 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh777:
  ret void
}


define i32 @program (i32 %argc3248, { i32, [ 0 x i8* ] }* %argv3246){
__fresh764:
  %argc_slot3249 = alloca i32
  store i32 %argc3248, i32* %argc_slot3249
  %argv_slot3247 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3246, { i32, [ 0 x i8* ] }** %argv_slot3247
  %mem_ptr3250 = call i32* @oat_malloc ( i32 16 )
  %obj3251 = bitcast i32* %mem_ptr3250 to %Array* 
  %new_obj3252 = call %Array* @_Array_ctor ( %Array* %obj3251 )
  %vdecl_slot3253 = alloca %Array*
  store %Array* %new_obj3252, %Array** %vdecl_slot3253
  %vdecl_slot3254 = alloca i32
  store i32 0, i32* %vdecl_slot3254
  %vdecl_slot3255 = alloca i32
  store i32 0, i32* %vdecl_slot3255
  %lhs_or_call3256 = load %Array** %vdecl_slot3253
  %addElement3258 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 4
  %addElement3257 = load void (%Array*, i32)** %addElement3258
  %cast_op3259 = bitcast %Array %lhs_or_call3256 to %Array* 
  call void %addElement3257( %Array* %cast_op3259, i32 79 )
  %lhs_or_call3260 = load %Array** %vdecl_slot3253
  %getLength3262 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 5
  %getLength3261 = load i32 (%Array*)** %getLength3262
  %cast_op3263 = bitcast %Array %lhs_or_call3260 to %Array* 
  %ret3264 = call i32 %getLength3261 ( %Array* %cast_op3263 )
  store i32 %ret3264, i32* %vdecl_slot3254
  %vdecl_slot3265 = alloca i32
  store i32 1, i32* %vdecl_slot3265
  br label %__cond748

__cond748:
  %lhs_or_call3266 = load i32* %vdecl_slot3265
  %lhs_or_call3267 = load i32* %vdecl_slot3254
  %bop3268 = icmp slt i32 %lhs_or_call3266, %lhs_or_call3267
  br i1 %bop3268, label %__body747, label %__post746

__fresh765:
  br label %__body747

__body747:
  %lhs_or_call3269 = load i32* %vdecl_slot3265
  %vdecl_slot3270 = alloca i32
  store i32 %lhs_or_call3269, i32* %vdecl_slot3270
  %lhs_or_call3271 = load i32* %vdecl_slot3265
  %bop3272 = add i32 %lhs_or_call3271, 1
  %vdecl_slot3273 = alloca i32
  store i32 %bop3272, i32* %vdecl_slot3273
  br label %__cond751

__cond751:
  %lhs_or_call3274 = load i32* %vdecl_slot3273
  %lhs_or_call3275 = load i32* %vdecl_slot3254
  %bop3276 = icmp sle i32 %lhs_or_call3274, %lhs_or_call3275
  br i1 %bop3276, label %__body750, label %__post749

__fresh766:
  br label %__body750

__body750:
  %lhs_or_call3277 = load i32* %vdecl_slot3273
  %lhs_or_call3278 = load %Array** %vdecl_slot3253
  %getElement3280 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3279 = load i32 (%Array*, i32)** %getElement3280
  %cast_op3281 = bitcast %Array %lhs_or_call3278 to %Array* 
  %ret3282 = call i32 %getElement3279 ( %Array* %cast_op3281, i32 %lhs_or_call3277 )
  %vdecl_slot3283 = alloca i32
  store i32 %ret3282, i32* %vdecl_slot3283
  %lhs_or_call3284 = load i32* %vdecl_slot3270
  %lhs_or_call3285 = load %Array** %vdecl_slot3253
  %getElement3287 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3286 = load i32 (%Array*, i32)** %getElement3287
  %cast_op3288 = bitcast %Array %lhs_or_call3285 to %Array* 
  %ret3289 = call i32 %getElement3286 ( %Array* %cast_op3288, i32 %lhs_or_call3284 )
  %vdecl_slot3290 = alloca i32
  store i32 %ret3289, i32* %vdecl_slot3290
  %lhs_or_call3291 = load i32* %vdecl_slot3283
  %lhs_or_call3292 = load i32* %vdecl_slot3290
  %bop3293 = icmp slt i32 %lhs_or_call3291, %lhs_or_call3292
  br i1 %bop3293, label %__then754, label %__else753

__fresh767:
  br label %__then754

__then754:
  %lhs_or_call3294 = load i32* %vdecl_slot3273
  store i32 %lhs_or_call3294, i32* %vdecl_slot3270
  br label %__merge752

__fresh768:
  br label %__else753

__else753:
  br label %__merge752

__merge752:
  %lhs_or_call3295 = load i32* %vdecl_slot3273
  %bop3296 = add i32 %lhs_or_call3295, 1
  store i32 %bop3296, i32* %vdecl_slot3273
  br label %__cond751

__fresh769:
  br label %__post749

__post749:
  %lhs_or_call3297 = load i32* %vdecl_slot3270
  %lhs_or_call3298 = load i32* %vdecl_slot3265
  %bop3299 = icmp ne i32 %lhs_or_call3297, %lhs_or_call3298
  br i1 %bop3299, label %__then757, label %__else756

__fresh770:
  br label %__then757

__then757:
  %lhs_or_call3300 = load i32* %vdecl_slot3270
  %lhs_or_call3301 = load %Array** %vdecl_slot3253
  %getElement3303 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3302 = load i32 (%Array*, i32)** %getElement3303
  %cast_op3304 = bitcast %Array %lhs_or_call3301 to %Array* 
  %ret3305 = call i32 %getElement3302 ( %Array* %cast_op3304, i32 %lhs_or_call3300 )
  %vdecl_slot3306 = alloca i32
  store i32 %ret3305, i32* %vdecl_slot3306
  %lhs_or_call3307 = load i32* %vdecl_slot3265
  %lhs_or_call3308 = load %Array** %vdecl_slot3253
  %getElement3310 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3309 = load i32 (%Array*, i32)** %getElement3310
  %cast_op3311 = bitcast %Array %lhs_or_call3308 to %Array* 
  %ret3312 = call i32 %getElement3309 ( %Array* %cast_op3311, i32 %lhs_or_call3307 )
  %vdecl_slot3313 = alloca i32
  store i32 %ret3312, i32* %vdecl_slot3313
  %lhs_or_call3314 = load i32* %vdecl_slot3306
  %lhs_or_call3315 = load i32* %vdecl_slot3265
  %lhs_or_call3316 = load %Array** %vdecl_slot3253
  %setElement3318 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 3
  %setElement3317 = load void (%Array*, i32, i32)** %setElement3318
  %cast_op3319 = bitcast %Array %lhs_or_call3316 to %Array* 
  call void %setElement3317( %Array* %cast_op3319, i32 %lhs_or_call3315, i32 %lhs_or_call3314 )
  %lhs_or_call3320 = load i32* %vdecl_slot3313
  %lhs_or_call3321 = load i32* %vdecl_slot3270
  %lhs_or_call3322 = load %Array** %vdecl_slot3253
  %setElement3324 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 3
  %setElement3323 = load void (%Array*, i32, i32)** %setElement3324
  %cast_op3325 = bitcast %Array %lhs_or_call3322 to %Array* 
  call void %setElement3323( %Array* %cast_op3325, i32 %lhs_or_call3321, i32 %lhs_or_call3320 )
  br label %__merge755

__fresh771:
  br label %__else756

__else756:
  br label %__merge755

__merge755:
  %lhs_or_call3326 = load i32* %vdecl_slot3265
  %bop3327 = add i32 %lhs_or_call3326, 1
  store i32 %bop3327, i32* %vdecl_slot3265
  br label %__cond748

__fresh772:
  br label %__post746

__post746:
  %vdecl_slot3328 = alloca i32
  store i32 1, i32* %vdecl_slot3328
  br label %__cond760

__cond760:
  %lhs_or_call3329 = load i32* %vdecl_slot3328
  %lhs_or_call3330 = load i32* %vdecl_slot3254
  %bop3331 = icmp slt i32 %lhs_or_call3329, %lhs_or_call3330
  br i1 %bop3331, label %__body759, label %__post758

__fresh773:
  br label %__body759

__body759:
  %lhs_or_call3332 = load i32* %vdecl_slot3328
  %lhs_or_call3333 = load %Array** %vdecl_slot3253
  %getElement3335 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3334 = load i32 (%Array*, i32)** %getElement3335
  %cast_op3336 = bitcast %Array %lhs_or_call3333 to %Array* 
  %ret3337 = call i32 %getElement3334 ( %Array* %cast_op3336, i32 %lhs_or_call3332 )
  %vdecl_slot3338 = alloca i32
  store i32 %ret3337, i32* %vdecl_slot3338
  %lhs_or_call3339 = load i32* %vdecl_slot3328
  %bop3340 = add i32 %lhs_or_call3339, 1
  %lhs_or_call3341 = load %Array** %vdecl_slot3253
  %getElement3343 = getelementptr %_Array_vtable* @_Array_vtable614, i32 0, i32 2
  %getElement3342 = load i32 (%Array*, i32)** %getElement3343
  %cast_op3344 = bitcast %Array %lhs_or_call3341 to %Array* 
  %ret3345 = call i32 %getElement3342 ( %Array* %cast_op3344, i32 %bop3340 )
  %vdecl_slot3346 = alloca i32
  store i32 %ret3345, i32* %vdecl_slot3346
  %lhs_or_call3347 = load i32* %vdecl_slot3338
  %lhs_or_call3348 = load i32* %vdecl_slot3346
  %bop3349 = icmp sgt i32 %lhs_or_call3347, %lhs_or_call3348
  br i1 %bop3349, label %__then763, label %__else762

__fresh774:
  br label %__then763

__then763:
  %lhs_or_call3350 = load i32* %vdecl_slot3255
  %bop3351 = add i32 %lhs_or_call3350, 1
  store i32 %bop3351, i32* %vdecl_slot3255
  br label %__merge761

__fresh775:
  br label %__else762

__else762:
  br label %__merge761

__merge761:
  %lhs_or_call3352 = load i32* %vdecl_slot3328
  %bop3353 = add i32 %lhs_or_call3352, 1
  store i32 %bop3353, i32* %vdecl_slot3328
  br label %__cond760

__fresh776:
  br label %__post758

__post758:
  %lhs_or_call3354 = load i32* %vdecl_slot3255
  ret i32 %lhs_or_call3354
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh745:
  %arrayLength3244 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3245 = load i32* %arrayLength3244
  ret i32 %lhs_or_call3245
}


define void @_Array_addElement (%Array* %_this1, i32 %key3207){
__fresh736:
  %key_slot3208 = alloca i32
  store i32 %key3207, i32* %key_slot3208
  %arrayLength3209 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3210 = load i32* %arrayLength3209
  %bop3211 = icmp eq i32 %lhs_or_call3210, 0
  br i1 %bop3211, label %__then735, label %__else734

__fresh737:
  br label %__then735

__then735:
  %headItem3212 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3213 = load i32* %key_slot3208
  %mem_ptr3214 = call i32* @oat_malloc ( i32 16 )
  %obj3215 = bitcast i32* %mem_ptr3214 to %ArrayItem* 
  %new_obj3216 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3215, i32 %lhs_or_call3213 )
  store %ArrayItem* %new_obj3216, %ArrayItem** %headItem3212
  br label %__merge733

__fresh738:
  br label %__else734

__else734:
  %headItem3217 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3218 = load %ArrayItem** %headItem3217
  %ifnull_slot3219 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3218, %ArrayItem** %ifnull_slot3219
  %ifnull_guard3220 = icmp ne %ArrayItem* %lhs_or_call3218, null
  br i1 %ifnull_guard3220, label %__then732, label %__else731

__fresh739:
  br label %__then732

__then732:
  %vdecl_slot3221 = alloca i32
  store i32 1, i32* %vdecl_slot3221
  br label %__cond726

__cond726:
  %lhs_or_call3222 = load i32* %vdecl_slot3221
  %arrayLength3223 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3224 = load i32* %arrayLength3223
  %bop3225 = icmp ne i32 %lhs_or_call3222, %lhs_or_call3224
  br i1 %bop3225, label %__body725, label %__post724

__fresh740:
  br label %__body725

__body725:
  %lhs_or_call3226 = load %ArrayItem** %ifnull_slot3219
  %nextItem3227 = getelementptr %ArrayItem* %lhs_or_call3226, i32 0, i32 3
  %lhs_or_call3228 = load %ArrayItem** %nextItem3227
  %ifnull_slot3229 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3228, %ArrayItem** %ifnull_slot3229
  %ifnull_guard3230 = icmp ne %ArrayItem* %lhs_or_call3228, null
  br i1 %ifnull_guard3230, label %__then729, label %__else728

__fresh741:
  br label %__then729

__then729:
  %lhs_or_call3231 = load %ArrayItem** %ifnull_slot3229
  store %ArrayItem* %lhs_or_call3231, %ArrayItem** %ifnull_slot3219
  br label %__merge727

__fresh742:
  br label %__else728

__else728:
  br label %__merge727

__merge727:
  %lhs_or_call3232 = load i32* %vdecl_slot3221
  %bop3233 = add i32 %lhs_or_call3232, 1
  store i32 %bop3233, i32* %vdecl_slot3221
  br label %__cond726

__fresh743:
  br label %__post724

__post724:
  %lhs_or_call3234 = load %ArrayItem** %ifnull_slot3219
  %nextItem3235 = getelementptr %ArrayItem* %lhs_or_call3234, i32 0, i32 3
  %lhs_or_call3236 = load i32* %key_slot3208
  %mem_ptr3237 = call i32* @oat_malloc ( i32 16 )
  %obj3238 = bitcast i32* %mem_ptr3237 to %ArrayItem* 
  %new_obj3239 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj3238, i32 %lhs_or_call3236 )
  store %ArrayItem* %new_obj3239, %ArrayItem** %nextItem3235
  br label %__merge730

__fresh744:
  br label %__else731

__else731:
  br label %__merge730

__merge730:
  br label %__merge733

__merge733:
  %arrayLength3240 = getelementptr %Array* %_this1, i32 0, i32 2
  %arrayLength3241 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3242 = load i32* %arrayLength3241
  %bop3243 = add i32 %lhs_or_call3242, 1
  store i32 %bop3243, i32* %arrayLength3240
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index3186, i32 %key3184){
__fresh717:
  %index_slot3187 = alloca i32
  store i32 %index3186, i32* %index_slot3187
  %key_slot3185 = alloca i32
  store i32 %key3184, i32* %key_slot3185
  %headItem3188 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3189 = load %ArrayItem** %headItem3188
  %ifnull_slot3190 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3189, %ArrayItem** %ifnull_slot3190
  %ifnull_guard3191 = icmp ne %ArrayItem* %lhs_or_call3189, null
  br i1 %ifnull_guard3191, label %__then716, label %__else715

__fresh718:
  br label %__then716

__then716:
  %vdecl_slot3192 = alloca i32
  store i32 1, i32* %vdecl_slot3192
  br label %__cond710

__cond710:
  %lhs_or_call3193 = load i32* %vdecl_slot3192
  %lhs_or_call3194 = load i32* %index_slot3187
  %bop3195 = icmp ne i32 %lhs_or_call3193, %lhs_or_call3194
  br i1 %bop3195, label %__body709, label %__post708

__fresh719:
  br label %__body709

__body709:
  %lhs_or_call3196 = load %ArrayItem** %ifnull_slot3190
  %nextItem3197 = getelementptr %ArrayItem* %lhs_or_call3196, i32 0, i32 3
  %lhs_or_call3198 = load %ArrayItem** %nextItem3197
  %ifnull_slot3199 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3198, %ArrayItem** %ifnull_slot3199
  %ifnull_guard3200 = icmp ne %ArrayItem* %lhs_or_call3198, null
  br i1 %ifnull_guard3200, label %__then713, label %__else712

__fresh720:
  br label %__then713

__then713:
  %lhs_or_call3201 = load %ArrayItem** %ifnull_slot3199
  store %ArrayItem* %lhs_or_call3201, %ArrayItem** %ifnull_slot3190
  br label %__merge711

__fresh721:
  br label %__else712

__else712:
  br label %__merge711

__merge711:
  %lhs_or_call3202 = load i32* %vdecl_slot3192
  %bop3203 = add i32 %lhs_or_call3202, 1
  store i32 %bop3203, i32* %vdecl_slot3192
  br label %__cond710

__fresh722:
  br label %__post708

__post708:
  %lhs_or_call3204 = load %ArrayItem** %ifnull_slot3190
  %keyValue3205 = getelementptr %ArrayItem* %lhs_or_call3204, i32 0, i32 2
  %lhs_or_call3206 = load i32* %key_slot3185
  store i32 %lhs_or_call3206, i32* %keyValue3205
  br label %__merge714

__fresh723:
  br label %__else715

__else715:
  call void @print_string( i8* @_const_str619 )
  call void @oat_abort( i32 -1 )
  br label %__merge714

__merge714:
  ret void
}


define i32 @_Array_getElement (%Array* %_this1, i32 %index3161){
__fresh701:
  %index_slot3162 = alloca i32
  store i32 %index3161, i32* %index_slot3162
  %vdecl_slot3163 = alloca i32
  store i32 0, i32* %vdecl_slot3163
  %headItem3164 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3165 = load %ArrayItem** %headItem3164
  %ifnull_slot3166 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3165, %ArrayItem** %ifnull_slot3166
  %ifnull_guard3167 = icmp ne %ArrayItem* %lhs_or_call3165, null
  br i1 %ifnull_guard3167, label %__then700, label %__else699

__fresh702:
  br label %__then700

__then700:
  %vdecl_slot3168 = alloca i32
  store i32 1, i32* %vdecl_slot3168
  br label %__cond694

__cond694:
  %lhs_or_call3169 = load i32* %vdecl_slot3168
  %lhs_or_call3170 = load i32* %index_slot3162
  %bop3171 = icmp ne i32 %lhs_or_call3169, %lhs_or_call3170
  br i1 %bop3171, label %__body693, label %__post692

__fresh703:
  br label %__body693

__body693:
  %lhs_or_call3172 = load %ArrayItem** %ifnull_slot3166
  %nextItem3173 = getelementptr %ArrayItem* %lhs_or_call3172, i32 0, i32 3
  %lhs_or_call3174 = load %ArrayItem** %nextItem3173
  %ifnull_slot3175 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call3174, %ArrayItem** %ifnull_slot3175
  %ifnull_guard3176 = icmp ne %ArrayItem* %lhs_or_call3174, null
  br i1 %ifnull_guard3176, label %__then697, label %__else696

__fresh704:
  br label %__then697

__then697:
  %lhs_or_call3177 = load %ArrayItem** %ifnull_slot3175
  store %ArrayItem* %lhs_or_call3177, %ArrayItem** %ifnull_slot3166
  br label %__merge695

__fresh705:
  br label %__else696

__else696:
  br label %__merge695

__merge695:
  %lhs_or_call3178 = load i32* %vdecl_slot3168
  %bop3179 = add i32 %lhs_or_call3178, 1
  store i32 %bop3179, i32* %vdecl_slot3168
  br label %__cond694

__fresh706:
  br label %__post692

__post692:
  %lhs_or_call3180 = load %ArrayItem** %ifnull_slot3166
  %keyValue3181 = getelementptr %ArrayItem* %lhs_or_call3180, i32 0, i32 2
  %lhs_or_call3182 = load i32* %keyValue3181
  store i32 %lhs_or_call3182, i32* %vdecl_slot3163
  br label %__merge698

__fresh707:
  br label %__else699

__else699:
  call void @print_string( i8* @_const_str618 )
  call void @oat_abort( i32 -1 )
  br label %__merge698

__merge698:
  %lhs_or_call3183 = load i32* %vdecl_slot3163
  ret i32 %lhs_or_call3183
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh691:
  %mem_ptr3156 = call i32* @oat_malloc ( i32 8 )
  %obj3157 = bitcast i32* %mem_ptr3156 to %Object* 
  %new_obj3158 = call %Object* @_Object_ctor ( %Object* %obj3157 )
  %_this1 = bitcast %Object* %new_obj3158 to %Array 
  %_name3159 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str617, i8** %_name3159
  %this_vtable3160 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable614, %_Array_vtable** %this_vtable3160
  %arrayLength3155 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %arrayLength3155
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x3151){
__fresh690:
  %x_slot3152 = alloca i32
  store i32 %x3151, i32* %x_slot3152
  %keyValue3153 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3154 = load i32* %x_slot3152
  store i32 %lhs_or_call3154, i32* %keyValue3153
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x3140){
__fresh689:
  %x_slot3141 = alloca i32
  store i32 %x3140, i32* %x_slot3141
  %mem_ptr3146 = call i32* @oat_malloc ( i32 8 )
  %obj3147 = bitcast i32* %mem_ptr3146 to %Object* 
  %new_obj3148 = call %Object* @_Object_ctor ( %Object* %obj3147 )
  %_this1 = bitcast %Object* %new_obj3148 to %ArrayItem 
  %_name3149 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str616, i8** %_name3149
  %this_vtable3150 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable613, %_ArrayItem_vtable** %this_vtable3150
  %keyValue3142 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call3143 = load i32* %x_slot3141
  store i32 %lhs_or_call3143, i32* %keyValue3142
  %nextItem3144 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op3145 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op3145, %ArrayItem** %nextItem3144
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh688:
  %_name3138 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3139 = load i8** %_name3138
  ret i8* %lhs_or_call3139
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh687:
  %_name3136 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str615, i8** %_name3136
  %this_vtable3137 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable612, %_Object_vtable** %this_vtable3137
  ret %Object* %_this1
}


