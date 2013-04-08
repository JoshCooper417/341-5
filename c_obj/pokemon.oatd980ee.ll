%Charmander = type { %_Charmander_vtable*, i8*, i32, i8*, i32 }
%_Charmander_vtable = type { %_Pokemon_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)*, void (%Charmander*, %Pikachu*)*, void (%Charmander*)* }
%Pikachu = type { %_Pikachu_vtable*, i8*, i32, i8*, i32 }
%_Pikachu_vtable = type { %_Pokemon_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)*, void (%Pikachu*, %Charmander*)*, void (%Pikachu*)* }
%Pokemon = type { %_Pokemon_vtable*, i8*, i32, i8* }
%_Pokemon_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)* }
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
@_const_str597.str. = private unnamed_addr constant [ 2 x i8 ] c "6\00", align 4
@_const_str597 = alias bitcast([ 2 x i8 ]* @_const_str597.str. to i8*)@c595 = global %Charmander* zeroinitializer, align 4		; initialized by @c595.init596
@p593 = global %Pikachu* zeroinitializer, align 4		; initialized by @p593.init594
@_const_str592.str. = private unnamed_addr constant [ 2 x i8 ] c "5\00", align 4
@_const_str592 = alias bitcast([ 2 x i8 ]* @_const_str592.str. to i8*)@_const_str591.str. = private unnamed_addr constant [ 2 x i8 ] c "4\00", align 4
@_const_str591 = alias bitcast([ 2 x i8 ]* @_const_str591.str. to i8*)@_const_str590.str. = private unnamed_addr constant [ 11 x i8 ] c "Charmander\00", align 4
@_const_str590 = alias bitcast([ 11 x i8 ]* @_const_str590.str. to i8*)@_const_str589.str. = private unnamed_addr constant [ 2 x i8 ] c "3\00", align 4
@_const_str589 = alias bitcast([ 2 x i8 ]* @_const_str589.str. to i8*)@_const_str587.str. = private unnamed_addr constant [ 2 x i8 ] c "2\00", align 4
@_const_str587 = alias bitcast([ 2 x i8 ]* @_const_str587.str. to i8*)@_const_str588.str. = private unnamed_addr constant [ 8 x i8 ] c "Pikachu\00", align 4
@_const_str588 = alias bitcast([ 8 x i8 ]* @_const_str588.str. to i8*)@_const_str586.str. = private unnamed_addr constant [ 2 x i8 ] c "9\00", align 4
@_const_str586 = alias bitcast([ 2 x i8 ]* @_const_str586.str. to i8*)@_const_str585.str. = private unnamed_addr constant [ 8 x i8 ] c "Pokemon\00", align 4
@_const_str585 = alias bitcast([ 8 x i8 ]* @_const_str585.str. to i8*)@_const_str584.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str584 = alias bitcast([ 7 x i8 ]* @_const_str584.str. to i8*)@_Charmander_vtable583 = private constant %_Charmander_vtable {%_Pokemon_vtable* @_Pokemon_vtable581, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Charmander*, %Pikachu*)* @_Charmander_attack, void (%Charmander*)* @_Charmander_noise}, align 4
@_Pikachu_vtable582 = private constant %_Pikachu_vtable {%_Pokemon_vtable* @_Pokemon_vtable581, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Pikachu*, %Charmander*)* @_Pikachu_attack, void (%Pikachu*)* @_Pikachu_noise}, align 4
@_Pokemon_vtable581 = private constant %_Pokemon_vtable {%_Object_vtable* @_Object_vtable580, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit}, align 4
@_Object_vtable580 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh678:
  call void @p593.init594(  )
  call void @c595.init596(  )
  ret void
}


define i32 @program (i32 %argc3230, { i32, [ 0 x i8* ] }* %argv3228){
__fresh677:
  %argc_slot3231 = alloca i32
  store i32 %argc3230, i32* %argc_slot3231
  %argv_slot3229 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3228, { i32, [ 0 x i8* ] }** %argv_slot3229
  %lhs_or_call3232 = load %Pikachu** @p593
  %lhs_or_call3233 = load %Charmander** @c595
  %vtable_ptr3234 = getelementptr %Charmander* %lhs_or_call3233, i32 0
  %vtable3235 = load %_Charmander_vtable** %vtable_ptr3234
  %attack3237 = getelementptr %_Charmander_vtable* %vtable3235, i32 0, i32 3
  %attack3236 = load void (%Charmander*, %Pikachu*)** %attack3237
  %cast_op3238 = bitcast %Charmander %lhs_or_call3233 to %Charmander* 
  call void %attack3236( %Charmander* %cast_op3238, %Pikachu* %lhs_or_call3232 )
  %lhs_or_call3239 = load %Charmander** @c595
  %lhs_or_call3240 = load %Pikachu** @p593
  %vtable_ptr3241 = getelementptr %Pikachu* %lhs_or_call3240, i32 0
  %vtable3242 = load %_Pikachu_vtable** %vtable_ptr3241
  %attack3244 = getelementptr %_Pikachu_vtable* %vtable3242, i32 0, i32 3
  %attack3243 = load void (%Pikachu*, %Charmander*)** %attack3244
  %cast_op3245 = bitcast %Pikachu %lhs_or_call3240 to %Pikachu* 
  call void %attack3243( %Pikachu* %cast_op3245, %Charmander* %lhs_or_call3239 )
  %lhs_or_call3246 = load %Pikachu** @p593
  %lhs_or_call3247 = load %Charmander** @c595
  %vtable_ptr3248 = getelementptr %Charmander* %lhs_or_call3247, i32 0
  %vtable3249 = load %_Charmander_vtable** %vtable_ptr3248
  %attack3251 = getelementptr %_Charmander_vtable* %vtable3249, i32 0, i32 3
  %attack3250 = load void (%Charmander*, %Pikachu*)** %attack3251
  %cast_op3252 = bitcast %Charmander %lhs_or_call3247 to %Charmander* 
  call void %attack3250( %Charmander* %cast_op3252, %Pikachu* %lhs_or_call3246 )
  %lhs_or_call3253 = load %Charmander** @c595
  %lhs_or_call3254 = load %Pikachu** @p593
  %vtable_ptr3255 = getelementptr %Pikachu* %lhs_or_call3254, i32 0
  %vtable3256 = load %_Pikachu_vtable** %vtable_ptr3255
  %attack3258 = getelementptr %_Pikachu_vtable* %vtable3256, i32 0, i32 3
  %attack3257 = load void (%Pikachu*, %Charmander*)** %attack3258
  %cast_op3259 = bitcast %Pikachu %lhs_or_call3254 to %Pikachu* 
  call void %attack3257( %Pikachu* %cast_op3259, %Charmander* %lhs_or_call3253 )
  %lhs_or_call3260 = load %Pikachu** @p593
  %lhs_or_call3261 = load %Charmander** @c595
  %vtable_ptr3262 = getelementptr %Charmander* %lhs_or_call3261, i32 0
  %vtable3263 = load %_Charmander_vtable** %vtable_ptr3262
  %attack3265 = getelementptr %_Charmander_vtable* %vtable3263, i32 0, i32 3
  %attack3264 = load void (%Charmander*, %Pikachu*)** %attack3265
  %cast_op3266 = bitcast %Charmander %lhs_or_call3261 to %Charmander* 
  call void %attack3264( %Charmander* %cast_op3266, %Pikachu* %lhs_or_call3260 )
  %lhs_or_call3267 = load %Charmander** @c595
  %lhs_or_call3268 = load %Pikachu** @p593
  %vtable_ptr3269 = getelementptr %Pikachu* %lhs_or_call3268, i32 0
  %vtable3270 = load %_Pikachu_vtable** %vtable_ptr3269
  %attack3272 = getelementptr %_Pikachu_vtable* %vtable3270, i32 0, i32 3
  %attack3271 = load void (%Pikachu*, %Charmander*)** %attack3272
  %cast_op3273 = bitcast %Pikachu %lhs_or_call3268 to %Pikachu* 
  call void %attack3271( %Pikachu* %cast_op3273, %Charmander* %lhs_or_call3267 )
  %lhs_or_call3274 = load %Pikachu** @p593
  %lhs_or_call3275 = load %Charmander** @c595
  %vtable_ptr3276 = getelementptr %Charmander* %lhs_or_call3275, i32 0
  %vtable3277 = load %_Charmander_vtable** %vtable_ptr3276
  %attack3279 = getelementptr %_Charmander_vtable* %vtable3277, i32 0, i32 3
  %attack3278 = load void (%Charmander*, %Pikachu*)** %attack3279
  %cast_op3280 = bitcast %Charmander %lhs_or_call3275 to %Charmander* 
  call void %attack3278( %Charmander* %cast_op3280, %Pikachu* %lhs_or_call3274 )
  %lhs_or_call3281 = load %Charmander** @c595
  %lhs_or_call3282 = load %Pikachu** @p593
  %vtable_ptr3283 = getelementptr %Pikachu* %lhs_or_call3282, i32 0
  %vtable3284 = load %_Pikachu_vtable** %vtable_ptr3283
  %attack3286 = getelementptr %_Pikachu_vtable* %vtable3284, i32 0, i32 3
  %attack3285 = load void (%Pikachu*, %Charmander*)** %attack3286
  %cast_op3287 = bitcast %Pikachu %lhs_or_call3282 to %Pikachu* 
  call void %attack3285( %Pikachu* %cast_op3287, %Charmander* %lhs_or_call3281 )
  %lhs_or_call3288 = load %Pikachu** @p593
  %lhs_or_call3289 = load %Charmander** @c595
  %vtable_ptr3290 = getelementptr %Charmander* %lhs_or_call3289, i32 0
  %vtable3291 = load %_Charmander_vtable** %vtable_ptr3290
  %attack3293 = getelementptr %_Charmander_vtable* %vtable3291, i32 0, i32 3
  %attack3292 = load void (%Charmander*, %Pikachu*)** %attack3293
  %cast_op3294 = bitcast %Charmander %lhs_or_call3289 to %Charmander* 
  call void %attack3292( %Charmander* %cast_op3294, %Pikachu* %lhs_or_call3288 )
  call void @print_string( i8* @_const_str597 )
  ret i32 0
}


define void @c595.init596 (){
__fresh676:
  %mem_ptr3225 = call i32* @oat_malloc ( i32 20 )
  %obj3226 = bitcast i32* %mem_ptr3225 to %Charmander* 
  %new_obj3227 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3226 )
  store %Charmander* %new_obj3227, %Charmander** @c595
  ret void
}


define void @p593.init594 (){
__fresh675:
  %mem_ptr3222 = call i32* @oat_malloc ( i32 20 )
  %obj3223 = bitcast i32* %mem_ptr3222 to %Pikachu* 
  %new_obj3224 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3223 )
  store %Pikachu* %new_obj3224, %Pikachu** @p593
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh674:
  %voice3220 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3221 = load i8** %voice3220
  call void @print_string( i8* %lhs_or_call3221 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3208){
__fresh673:
  %pi_slot3209 = alloca %Pikachu*
  store %Pikachu* %pi3208, %Pikachu** %pi_slot3209
  call void @print_string( i8* @_const_str592 )
  %voice3210 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3211 = load i8** %voice3210
  call void @print_string( i8* %lhs_or_call3211 )
  %speed3212 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3213 = load i32* %speed3212
  %lhs_or_call3214 = load %Pikachu** %pi_slot3209
  %vtable_ptr3215 = getelementptr %Pikachu* %lhs_or_call3214, i32 0
  %vtable3216 = load %_Pikachu_vtable** %vtable_ptr3215
  %gethit3218 = getelementptr %_Pikachu_vtable* %vtable3216, i32 0, i32 2
  %gethit3217 = load void (%Pokemon*, i32)** %gethit3218
  %cast_op3219 = bitcast %Pikachu %lhs_or_call3214 to %Pokemon* 
  call void %gethit3217( %Pokemon* %cast_op3219, i32 %lhs_or_call3213 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh672:
  %mem_ptr3202 = call i32* @oat_malloc ( i32 16 )
  %obj3203 = bitcast i32* %mem_ptr3202 to %Pokemon* 
  %new_obj3204 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3203 )
  %_this1 = bitcast %Pokemon* %new_obj3204 to %Charmander 
  %_name3205 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str590, i8** %_name3205
  %voice3206 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str591, i8** %voice3206
  %this_vtable3207 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable583, %_Charmander_vtable** %this_vtable3207
  %speed3201 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3201
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh671:
  %voice3199 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3200 = load i8** %voice3199
  call void @print_string( i8* %lhs_or_call3200 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3187){
__fresh670:
  %ch_slot3188 = alloca %Charmander*
  store %Charmander* %ch3187, %Charmander** %ch_slot3188
  call void @print_string( i8* @_const_str589 )
  %voice3189 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3190 = load i8** %voice3189
  call void @print_string( i8* %lhs_or_call3190 )
  %speed3191 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3192 = load i32* %speed3191
  %lhs_or_call3193 = load %Charmander** %ch_slot3188
  %vtable_ptr3194 = getelementptr %Charmander* %lhs_or_call3193, i32 0
  %vtable3195 = load %_Charmander_vtable** %vtable_ptr3194
  %gethit3197 = getelementptr %_Charmander_vtable* %vtable3195, i32 0, i32 2
  %gethit3196 = load void (%Pokemon*, i32)** %gethit3197
  %cast_op3198 = bitcast %Charmander %lhs_or_call3193 to %Pokemon* 
  call void %gethit3196( %Pokemon* %cast_op3198, i32 %lhs_or_call3192 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh669:
  %mem_ptr3182 = call i32* @oat_malloc ( i32 16 )
  %obj3183 = bitcast i32* %mem_ptr3182 to %Pokemon* 
  %new_obj3184 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3183 )
  %_this1 = bitcast %Pokemon* %new_obj3184 to %Pikachu 
  %_name3185 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str588, i8** %_name3185
  %this_vtable3186 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable582, %_Pikachu_vtable** %this_vtable3186
  %speed3180 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed3180
  %voice3181 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str587, i8** %voice3181
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3171){
__fresh668:
  %s_slot3172 = alloca i32
  store i32 %s3171, i32* %s_slot3172
  %life3173 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3174 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3175 = load i32* %life3174
  %lhs_or_call3176 = load i32* %s_slot3172
  %bop3177 = sub i32 %lhs_or_call3175, %lhs_or_call3176
  store i32 %bop3177, i32* %life3173
  %voice3178 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3179 = load i8** %voice3178
  call void @print_string( i8* %lhs_or_call3179 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh667:
  %mem_ptr3165 = call i32* @oat_malloc ( i32 8 )
  %obj3166 = bitcast i32* %mem_ptr3165 to %Object* 
  %new_obj3167 = call %Object* @_Object_ctor ( %Object* %obj3166 )
  %_this1 = bitcast %Object* %new_obj3167 to %Pokemon 
  %_name3168 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str585, i8** %_name3168
  %voice3169 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str586, i8** %voice3169
  %this_vtable3170 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable581, %_Pokemon_vtable** %this_vtable3170
  %life3164 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life3164
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh666:
  %_name3162 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3163 = load i8** %_name3162
  ret i8* %lhs_or_call3163
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh665:
  %_name3160 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str584, i8** %_name3160
  %this_vtable3161 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable580, %_Object_vtable** %this_vtable3161
  ret %Object* %_this1
}


