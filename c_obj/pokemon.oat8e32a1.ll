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
@_const_str606.str. = private unnamed_addr constant [ 2 x i8 ] c "6\00", align 4
@_const_str606 = alias bitcast([ 2 x i8 ]* @_const_str606.str. to i8*)@c604 = global %Charmander* zeroinitializer, align 4		; initialized by @c604.init605
@p602 = global %Pikachu* zeroinitializer, align 4		; initialized by @p602.init603
@_const_str601.str. = private unnamed_addr constant [ 2 x i8 ] c "5\00", align 4
@_const_str601 = alias bitcast([ 2 x i8 ]* @_const_str601.str. to i8*)@_const_str600.str. = private unnamed_addr constant [ 2 x i8 ] c "4\00", align 4
@_const_str600 = alias bitcast([ 2 x i8 ]* @_const_str600.str. to i8*)@_const_str599.str. = private unnamed_addr constant [ 11 x i8 ] c "Charmander\00", align 4
@_const_str599 = alias bitcast([ 11 x i8 ]* @_const_str599.str. to i8*)@_const_str598.str. = private unnamed_addr constant [ 2 x i8 ] c "3\00", align 4
@_const_str598 = alias bitcast([ 2 x i8 ]* @_const_str598.str. to i8*)@_const_str596.str. = private unnamed_addr constant [ 2 x i8 ] c "2\00", align 4
@_const_str596 = alias bitcast([ 2 x i8 ]* @_const_str596.str. to i8*)@_const_str597.str. = private unnamed_addr constant [ 8 x i8 ] c "Pikachu\00", align 4
@_const_str597 = alias bitcast([ 8 x i8 ]* @_const_str597.str. to i8*)@_const_str595.str. = private unnamed_addr constant [ 2 x i8 ] c "9\00", align 4
@_const_str595 = alias bitcast([ 2 x i8 ]* @_const_str595.str. to i8*)@_const_str594.str. = private unnamed_addr constant [ 8 x i8 ] c "Pokemon\00", align 4
@_const_str594 = alias bitcast([ 8 x i8 ]* @_const_str594.str. to i8*)@_const_str593.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str593 = alias bitcast([ 7 x i8 ]* @_const_str593.str. to i8*)@_Charmander_vtable592 = private constant %_Charmander_vtable {%_Pokemon_vtable* @_Pokemon_vtable590, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Charmander*, %Pikachu*)* @_Charmander_attack, void (%Charmander*)* @_Charmander_noise}, align 4
@_Pikachu_vtable591 = private constant %_Pikachu_vtable {%_Pokemon_vtable* @_Pokemon_vtable590, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Pikachu*, %Charmander*)* @_Pikachu_attack, void (%Pikachu*)* @_Pikachu_noise}, align 4
@_Pokemon_vtable590 = private constant %_Pokemon_vtable {%_Object_vtable* @_Object_vtable589, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit}, align 4
@_Object_vtable589 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh703:
  call void @p602.init603(  )
  call void @c604.init605(  )
  ret void
}


define i32 @program (i32 %argc3248, { i32, [ 0 x i8* ] }* %argv3246){
__fresh702:
  %argc_slot3249 = alloca i32
  store i32 %argc3248, i32* %argc_slot3249
  %argv_slot3247 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3246, { i32, [ 0 x i8* ] }** %argv_slot3247
  %lhs_or_call3250 = load %Pikachu** @p602
  %lhs_or_call3251 = load %Charmander** @c604
  %attack3253 = getelementptr %_Charmander_vtable* @_Charmander_vtable592, i32 0, i32 3
  %attack3252 = load void (%Charmander*, %Pikachu*)** %attack3253
  %cast_op3254 = bitcast %Charmander %lhs_or_call3251 to %Charmander* 
  call void %attack3252( %Charmander* %cast_op3254, %Pikachu* %lhs_or_call3250 )
  %lhs_or_call3255 = load %Charmander** @c604
  %lhs_or_call3256 = load %Pikachu** @p602
  %attack3258 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable591, i32 0, i32 3
  %attack3257 = load void (%Pikachu*, %Charmander*)** %attack3258
  %cast_op3259 = bitcast %Pikachu %lhs_or_call3256 to %Pikachu* 
  call void %attack3257( %Pikachu* %cast_op3259, %Charmander* %lhs_or_call3255 )
  %lhs_or_call3260 = load %Pikachu** @p602
  %lhs_or_call3261 = load %Charmander** @c604
  %attack3263 = getelementptr %_Charmander_vtable* @_Charmander_vtable592, i32 0, i32 3
  %attack3262 = load void (%Charmander*, %Pikachu*)** %attack3263
  %cast_op3264 = bitcast %Charmander %lhs_or_call3261 to %Charmander* 
  call void %attack3262( %Charmander* %cast_op3264, %Pikachu* %lhs_or_call3260 )
  %lhs_or_call3265 = load %Charmander** @c604
  %lhs_or_call3266 = load %Pikachu** @p602
  %attack3268 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable591, i32 0, i32 3
  %attack3267 = load void (%Pikachu*, %Charmander*)** %attack3268
  %cast_op3269 = bitcast %Pikachu %lhs_or_call3266 to %Pikachu* 
  call void %attack3267( %Pikachu* %cast_op3269, %Charmander* %lhs_or_call3265 )
  %lhs_or_call3270 = load %Pikachu** @p602
  %lhs_or_call3271 = load %Charmander** @c604
  %attack3273 = getelementptr %_Charmander_vtable* @_Charmander_vtable592, i32 0, i32 3
  %attack3272 = load void (%Charmander*, %Pikachu*)** %attack3273
  %cast_op3274 = bitcast %Charmander %lhs_or_call3271 to %Charmander* 
  call void %attack3272( %Charmander* %cast_op3274, %Pikachu* %lhs_or_call3270 )
  %lhs_or_call3275 = load %Charmander** @c604
  %lhs_or_call3276 = load %Pikachu** @p602
  %attack3278 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable591, i32 0, i32 3
  %attack3277 = load void (%Pikachu*, %Charmander*)** %attack3278
  %cast_op3279 = bitcast %Pikachu %lhs_or_call3276 to %Pikachu* 
  call void %attack3277( %Pikachu* %cast_op3279, %Charmander* %lhs_or_call3275 )
  %lhs_or_call3280 = load %Pikachu** @p602
  %lhs_or_call3281 = load %Charmander** @c604
  %attack3283 = getelementptr %_Charmander_vtable* @_Charmander_vtable592, i32 0, i32 3
  %attack3282 = load void (%Charmander*, %Pikachu*)** %attack3283
  %cast_op3284 = bitcast %Charmander %lhs_or_call3281 to %Charmander* 
  call void %attack3282( %Charmander* %cast_op3284, %Pikachu* %lhs_or_call3280 )
  %lhs_or_call3285 = load %Charmander** @c604
  %lhs_or_call3286 = load %Pikachu** @p602
  %attack3288 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable591, i32 0, i32 3
  %attack3287 = load void (%Pikachu*, %Charmander*)** %attack3288
  %cast_op3289 = bitcast %Pikachu %lhs_or_call3286 to %Pikachu* 
  call void %attack3287( %Pikachu* %cast_op3289, %Charmander* %lhs_or_call3285 )
  %lhs_or_call3290 = load %Pikachu** @p602
  %lhs_or_call3291 = load %Charmander** @c604
  %attack3293 = getelementptr %_Charmander_vtable* @_Charmander_vtable592, i32 0, i32 3
  %attack3292 = load void (%Charmander*, %Pikachu*)** %attack3293
  %cast_op3294 = bitcast %Charmander %lhs_or_call3291 to %Charmander* 
  call void %attack3292( %Charmander* %cast_op3294, %Pikachu* %lhs_or_call3290 )
  call void @print_string( i8* @_const_str606 )
  ret i32 0
}


define void @c604.init605 (){
__fresh701:
  %mem_ptr3243 = call i32* @oat_malloc ( i32 20 )
  %obj3244 = bitcast i32* %mem_ptr3243 to %Charmander* 
  %new_obj3245 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3244 )
  store %Charmander* %new_obj3245, %Charmander** @c604
  ret void
}


define void @p602.init603 (){
__fresh700:
  %mem_ptr3240 = call i32* @oat_malloc ( i32 20 )
  %obj3241 = bitcast i32* %mem_ptr3240 to %Pikachu* 
  %new_obj3242 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3241 )
  store %Pikachu* %new_obj3242, %Pikachu** @p602
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh699:
  %voice3238 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3239 = load i8** %voice3238
  call void @print_string( i8* %lhs_or_call3239 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3228){
__fresh698:
  %pi_slot3229 = alloca %Pikachu*
  store %Pikachu* %pi3228, %Pikachu** %pi_slot3229
  call void @print_string( i8* @_const_str601 )
  %voice3230 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3231 = load i8** %voice3230
  call void @print_string( i8* %lhs_or_call3231 )
  %speed3232 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3233 = load i32* %speed3232
  %lhs_or_call3234 = load %Pikachu** %pi_slot3229
  %gethit3236 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable591, i32 0, i32 2
  %gethit3235 = load void (%Pokemon*, i32)** %gethit3236
  %cast_op3237 = bitcast %Pikachu %lhs_or_call3234 to %Pokemon* 
  call void %gethit3235( %Pokemon* %cast_op3237, i32 %lhs_or_call3233 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh697:
  %cast_op3221 = bitcast %Charmander* %_this1 to %Pokemon* 
  %mem_ptr3222 = call i32* @oat_malloc ( i32 20 )
  %obj3223 = bitcast i32* %mem_ptr3222 to %Charmander* 
  %new_obj3224 = call %Pokemon* @_Pokemon_ctor ( %Charmander* %obj3223, %Pokemon* %cast_op3221 )
  %_this1 = bitcast %Pokemon* %new_obj3224 to %Charmander 
  %_name3225 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str599, i8** %_name3225
  %voice3226 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str600, i8** %voice3226
  %this_vtable3227 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable592, %_Charmander_vtable** %this_vtable3227
  %speed3220 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3220
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh696:
  %voice3218 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3219 = load i8** %voice3218
  call void @print_string( i8* %lhs_or_call3219 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3208){
__fresh695:
  %ch_slot3209 = alloca %Charmander*
  store %Charmander* %ch3208, %Charmander** %ch_slot3209
  call void @print_string( i8* @_const_str598 )
  %voice3210 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3211 = load i8** %voice3210
  call void @print_string( i8* %lhs_or_call3211 )
  %speed3212 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3213 = load i32* %speed3212
  %lhs_or_call3214 = load %Charmander** %ch_slot3209
  %gethit3216 = getelementptr %_Charmander_vtable* @_Charmander_vtable592, i32 0, i32 2
  %gethit3215 = load void (%Pokemon*, i32)** %gethit3216
  %cast_op3217 = bitcast %Charmander %lhs_or_call3214 to %Pokemon* 
  call void %gethit3215( %Pokemon* %cast_op3217, i32 %lhs_or_call3213 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh694:
  %cast_op3202 = bitcast %Pikachu* %_this1 to %Pokemon* 
  %mem_ptr3203 = call i32* @oat_malloc ( i32 20 )
  %obj3204 = bitcast i32* %mem_ptr3203 to %Pikachu* 
  %new_obj3205 = call %Pokemon* @_Pokemon_ctor ( %Pikachu* %obj3204, %Pokemon* %cast_op3202 )
  %_this1 = bitcast %Pokemon* %new_obj3205 to %Pikachu 
  %_name3206 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str597, i8** %_name3206
  %this_vtable3207 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable591, %_Pikachu_vtable** %this_vtable3207
  %speed3200 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed3200
  %voice3201 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str596, i8** %voice3201
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3191){
__fresh693:
  %s_slot3192 = alloca i32
  store i32 %s3191, i32* %s_slot3192
  %life3193 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3194 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3195 = load i32* %life3194
  %lhs_or_call3196 = load i32* %s_slot3192
  %bop3197 = sub i32 %lhs_or_call3195, %lhs_or_call3196
  store i32 %bop3197, i32* %life3193
  %voice3198 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3199 = load i8** %voice3198
  call void @print_string( i8* %lhs_or_call3199 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh692:
  %cast_op3184 = bitcast %Pokemon* %_this1 to %Object* 
  %mem_ptr3185 = call i32* @oat_malloc ( i32 16 )
  %obj3186 = bitcast i32* %mem_ptr3185 to %Pokemon* 
  %new_obj3187 = call %Object* @_Object_ctor ( %Pokemon* %obj3186, %Object* %cast_op3184 )
  %_this1 = bitcast %Object* %new_obj3187 to %Pokemon 
  %_name3188 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str594, i8** %_name3188
  %voice3189 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str595, i8** %voice3189
  %this_vtable3190 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable590, %_Pokemon_vtable** %this_vtable3190
  %life3183 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life3183
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh691:
  %_name3181 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3182 = load i8** %_name3181
  ret i8* %lhs_or_call3182
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh690:
  %_name3179 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str593, i8** %_name3179
  %this_vtable3180 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable589, %_Object_vtable** %this_vtable3180
  ret %Object* %_this1
}


