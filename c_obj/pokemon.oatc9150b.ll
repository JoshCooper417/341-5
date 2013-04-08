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
@_const_str586.str. = private unnamed_addr constant [ 2 x i8 ] c "6\00", align 4
@_const_str586 = alias bitcast([ 2 x i8 ]* @_const_str586.str. to i8*)@c584 = global %Charmander* zeroinitializer, align 4		; initialized by @c584.init585
@p582 = global %Pikachu* zeroinitializer, align 4		; initialized by @p582.init583
@_const_str581.str. = private unnamed_addr constant [ 2 x i8 ] c "5\00", align 4
@_const_str581 = alias bitcast([ 2 x i8 ]* @_const_str581.str. to i8*)@_const_str580.str. = private unnamed_addr constant [ 2 x i8 ] c "4\00", align 4
@_const_str580 = alias bitcast([ 2 x i8 ]* @_const_str580.str. to i8*)@_const_str579.str. = private unnamed_addr constant [ 11 x i8 ] c "Charmander\00", align 4
@_const_str579 = alias bitcast([ 11 x i8 ]* @_const_str579.str. to i8*)@_const_str578.str. = private unnamed_addr constant [ 2 x i8 ] c "3\00", align 4
@_const_str578 = alias bitcast([ 2 x i8 ]* @_const_str578.str. to i8*)@_const_str576.str. = private unnamed_addr constant [ 2 x i8 ] c "2\00", align 4
@_const_str576 = alias bitcast([ 2 x i8 ]* @_const_str576.str. to i8*)@_const_str577.str. = private unnamed_addr constant [ 8 x i8 ] c "Pikachu\00", align 4
@_const_str577 = alias bitcast([ 8 x i8 ]* @_const_str577.str. to i8*)@_const_str575.str. = private unnamed_addr constant [ 2 x i8 ] c "9\00", align 4
@_const_str575 = alias bitcast([ 2 x i8 ]* @_const_str575.str. to i8*)@_const_str574.str. = private unnamed_addr constant [ 8 x i8 ] c "Pokemon\00", align 4
@_const_str574 = alias bitcast([ 8 x i8 ]* @_const_str574.str. to i8*)@_const_str573.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str573 = alias bitcast([ 7 x i8 ]* @_const_str573.str. to i8*)@_Charmander_vtable572 = private constant %_Charmander_vtable {%_Pokemon_vtable* @_Pokemon_vtable570, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Charmander*, %Pikachu*)* @_Charmander_attack, void (%Charmander*)* @_Charmander_noise}, align 4
@_Pikachu_vtable571 = private constant %_Pikachu_vtable {%_Pokemon_vtable* @_Pokemon_vtable570, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Pikachu*, %Charmander*)* @_Pikachu_attack, void (%Pikachu*)* @_Pikachu_noise}, align 4
@_Pokemon_vtable570 = private constant %_Pokemon_vtable {%_Object_vtable* @_Object_vtable569, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit}, align 4
@_Object_vtable569 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh678:
  call void @p582.init583(  )
  call void @c584.init585(  )
  ret void
}


define i32 @program (i32 %argc3218, { i32, [ 0 x i8* ] }* %argv3216){
__fresh677:
  %argc_slot3219 = alloca i32
  store i32 %argc3218, i32* %argc_slot3219
  %argv_slot3217 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3216, { i32, [ 0 x i8* ] }** %argv_slot3217
  %lhs_or_call3220 = load %Pikachu** @p582
  %lhs_or_call3221 = load %Charmander** @c584
  %vtable_ptr3222 = getelementptr %Charmander* %lhs_or_call3221, i32 0
  %vtable3223 = load %_Charmander_vtable** %vtable_ptr3222
  %attack3225 = getelementptr %_Charmander_vtable* %vtable3223, i32 0, i32 3
  %attack3224 = load void (%Charmander*, %Pikachu*)** %attack3225
  %cast_op3226 = bitcast %Charmander %lhs_or_call3221 to %Charmander* 
  call void %attack3224( %Charmander* %cast_op3226, %Pikachu* %lhs_or_call3220 )
  %lhs_or_call3227 = load %Charmander** @c584
  %lhs_or_call3228 = load %Pikachu** @p582
  %vtable_ptr3229 = getelementptr %Pikachu* %lhs_or_call3228, i32 0
  %vtable3230 = load %_Pikachu_vtable** %vtable_ptr3229
  %attack3232 = getelementptr %_Pikachu_vtable* %vtable3230, i32 0, i32 3
  %attack3231 = load void (%Pikachu*, %Charmander*)** %attack3232
  %cast_op3233 = bitcast %Pikachu %lhs_or_call3228 to %Pikachu* 
  call void %attack3231( %Pikachu* %cast_op3233, %Charmander* %lhs_or_call3227 )
  %lhs_or_call3234 = load %Pikachu** @p582
  %lhs_or_call3235 = load %Charmander** @c584
  %vtable_ptr3236 = getelementptr %Charmander* %lhs_or_call3235, i32 0
  %vtable3237 = load %_Charmander_vtable** %vtable_ptr3236
  %attack3239 = getelementptr %_Charmander_vtable* %vtable3237, i32 0, i32 3
  %attack3238 = load void (%Charmander*, %Pikachu*)** %attack3239
  %cast_op3240 = bitcast %Charmander %lhs_or_call3235 to %Charmander* 
  call void %attack3238( %Charmander* %cast_op3240, %Pikachu* %lhs_or_call3234 )
  %lhs_or_call3241 = load %Charmander** @c584
  %lhs_or_call3242 = load %Pikachu** @p582
  %vtable_ptr3243 = getelementptr %Pikachu* %lhs_or_call3242, i32 0
  %vtable3244 = load %_Pikachu_vtable** %vtable_ptr3243
  %attack3246 = getelementptr %_Pikachu_vtable* %vtable3244, i32 0, i32 3
  %attack3245 = load void (%Pikachu*, %Charmander*)** %attack3246
  %cast_op3247 = bitcast %Pikachu %lhs_or_call3242 to %Pikachu* 
  call void %attack3245( %Pikachu* %cast_op3247, %Charmander* %lhs_or_call3241 )
  %lhs_or_call3248 = load %Pikachu** @p582
  %lhs_or_call3249 = load %Charmander** @c584
  %vtable_ptr3250 = getelementptr %Charmander* %lhs_or_call3249, i32 0
  %vtable3251 = load %_Charmander_vtable** %vtable_ptr3250
  %attack3253 = getelementptr %_Charmander_vtable* %vtable3251, i32 0, i32 3
  %attack3252 = load void (%Charmander*, %Pikachu*)** %attack3253
  %cast_op3254 = bitcast %Charmander %lhs_or_call3249 to %Charmander* 
  call void %attack3252( %Charmander* %cast_op3254, %Pikachu* %lhs_or_call3248 )
  %lhs_or_call3255 = load %Charmander** @c584
  %lhs_or_call3256 = load %Pikachu** @p582
  %vtable_ptr3257 = getelementptr %Pikachu* %lhs_or_call3256, i32 0
  %vtable3258 = load %_Pikachu_vtable** %vtable_ptr3257
  %attack3260 = getelementptr %_Pikachu_vtable* %vtable3258, i32 0, i32 3
  %attack3259 = load void (%Pikachu*, %Charmander*)** %attack3260
  %cast_op3261 = bitcast %Pikachu %lhs_or_call3256 to %Pikachu* 
  call void %attack3259( %Pikachu* %cast_op3261, %Charmander* %lhs_or_call3255 )
  %lhs_or_call3262 = load %Pikachu** @p582
  %lhs_or_call3263 = load %Charmander** @c584
  %vtable_ptr3264 = getelementptr %Charmander* %lhs_or_call3263, i32 0
  %vtable3265 = load %_Charmander_vtable** %vtable_ptr3264
  %attack3267 = getelementptr %_Charmander_vtable* %vtable3265, i32 0, i32 3
  %attack3266 = load void (%Charmander*, %Pikachu*)** %attack3267
  %cast_op3268 = bitcast %Charmander %lhs_or_call3263 to %Charmander* 
  call void %attack3266( %Charmander* %cast_op3268, %Pikachu* %lhs_or_call3262 )
  %lhs_or_call3269 = load %Charmander** @c584
  %lhs_or_call3270 = load %Pikachu** @p582
  %vtable_ptr3271 = getelementptr %Pikachu* %lhs_or_call3270, i32 0
  %vtable3272 = load %_Pikachu_vtable** %vtable_ptr3271
  %attack3274 = getelementptr %_Pikachu_vtable* %vtable3272, i32 0, i32 3
  %attack3273 = load void (%Pikachu*, %Charmander*)** %attack3274
  %cast_op3275 = bitcast %Pikachu %lhs_or_call3270 to %Pikachu* 
  call void %attack3273( %Pikachu* %cast_op3275, %Charmander* %lhs_or_call3269 )
  %lhs_or_call3276 = load %Pikachu** @p582
  %lhs_or_call3277 = load %Charmander** @c584
  %vtable_ptr3278 = getelementptr %Charmander* %lhs_or_call3277, i32 0
  %vtable3279 = load %_Charmander_vtable** %vtable_ptr3278
  %attack3281 = getelementptr %_Charmander_vtable* %vtable3279, i32 0, i32 3
  %attack3280 = load void (%Charmander*, %Pikachu*)** %attack3281
  %cast_op3282 = bitcast %Charmander %lhs_or_call3277 to %Charmander* 
  call void %attack3280( %Charmander* %cast_op3282, %Pikachu* %lhs_or_call3276 )
  call void @print_string( i8* @_const_str586 )
  ret i32 0
}


define void @c584.init585 (){
__fresh676:
  %mem_ptr3213 = call i32* @oat_malloc ( i32 20 )
  %obj3214 = bitcast i32* %mem_ptr3213 to %Charmander* 
  %new_obj3215 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3214 )
  store %Charmander* %new_obj3215, %Charmander** @c584
  ret void
}


define void @p582.init583 (){
__fresh675:
  %mem_ptr3210 = call i32* @oat_malloc ( i32 20 )
  %obj3211 = bitcast i32* %mem_ptr3210 to %Pikachu* 
  %new_obj3212 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3211 )
  store %Pikachu* %new_obj3212, %Pikachu** @p582
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh674:
  %voice3208 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3209 = load i8** %voice3208
  call void @print_string( i8* %lhs_or_call3209 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3196){
__fresh673:
  %pi_slot3197 = alloca %Pikachu*
  store %Pikachu* %pi3196, %Pikachu** %pi_slot3197
  call void @print_string( i8* @_const_str581 )
  %voice3198 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3199 = load i8** %voice3198
  call void @print_string( i8* %lhs_or_call3199 )
  %speed3200 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3201 = load i32* %speed3200
  %lhs_or_call3202 = load %Pikachu** %pi_slot3197
  %vtable_ptr3203 = getelementptr %Pikachu* %lhs_or_call3202, i32 0
  %vtable3204 = load %_Pikachu_vtable** %vtable_ptr3203
  %gethit3206 = getelementptr %_Pikachu_vtable* %vtable3204, i32 0, i32 2
  %gethit3205 = load void (%Pokemon*, i32)** %gethit3206
  %cast_op3207 = bitcast %Pikachu %lhs_or_call3202 to %Pokemon* 
  call void %gethit3205( %Pokemon* %cast_op3207, i32 %lhs_or_call3201 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh672:
  %mem_ptr3190 = call i32* @oat_malloc ( i32 16 )
  %obj3191 = bitcast i32* %mem_ptr3190 to %Pokemon* 
  %new_obj3192 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3191 )
  %_this1 = bitcast %Pokemon* %new_obj3192 to %Charmander 
  %_name3193 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str579, i8** %_name3193
  %voice3194 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str580, i8** %voice3194
  %this_vtable3195 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable572, %_Charmander_vtable** %this_vtable3195
  %speed3189 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3189
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh671:
  %voice3187 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3188 = load i8** %voice3187
  call void @print_string( i8* %lhs_or_call3188 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3175){
__fresh670:
  %ch_slot3176 = alloca %Charmander*
  store %Charmander* %ch3175, %Charmander** %ch_slot3176
  call void @print_string( i8* @_const_str578 )
  %voice3177 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3178 = load i8** %voice3177
  call void @print_string( i8* %lhs_or_call3178 )
  %speed3179 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3180 = load i32* %speed3179
  %lhs_or_call3181 = load %Charmander** %ch_slot3176
  %vtable_ptr3182 = getelementptr %Charmander* %lhs_or_call3181, i32 0
  %vtable3183 = load %_Charmander_vtable** %vtable_ptr3182
  %gethit3185 = getelementptr %_Charmander_vtable* %vtable3183, i32 0, i32 2
  %gethit3184 = load void (%Pokemon*, i32)** %gethit3185
  %cast_op3186 = bitcast %Charmander %lhs_or_call3181 to %Pokemon* 
  call void %gethit3184( %Pokemon* %cast_op3186, i32 %lhs_or_call3180 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh669:
  %mem_ptr3170 = call i32* @oat_malloc ( i32 16 )
  %obj3171 = bitcast i32* %mem_ptr3170 to %Pokemon* 
  %new_obj3172 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3171 )
  %_this1 = bitcast %Pokemon* %new_obj3172 to %Pikachu 
  %_name3173 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str577, i8** %_name3173
  %this_vtable3174 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable571, %_Pikachu_vtable** %this_vtable3174
  %speed3168 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed3168
  %voice3169 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str576, i8** %voice3169
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3159){
__fresh668:
  %s_slot3160 = alloca i32
  store i32 %s3159, i32* %s_slot3160
  %life3161 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3162 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3163 = load i32* %life3162
  %lhs_or_call3164 = load i32* %s_slot3160
  %bop3165 = sub i32 %lhs_or_call3163, %lhs_or_call3164
  store i32 %bop3165, i32* %life3161
  %voice3166 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3167 = load i8** %voice3166
  call void @print_string( i8* %lhs_or_call3167 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh667:
  %mem_ptr3153 = call i32* @oat_malloc ( i32 8 )
  %obj3154 = bitcast i32* %mem_ptr3153 to %Object* 
  %new_obj3155 = call %Object* @_Object_ctor ( %Object* %obj3154 )
  %_this1 = bitcast %Object* %new_obj3155 to %Pokemon 
  %_name3156 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str574, i8** %_name3156
  %voice3157 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str575, i8** %voice3157
  %this_vtable3158 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable570, %_Pokemon_vtable** %this_vtable3158
  %life3152 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life3152
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh666:
  %_name3150 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3151 = load i8** %_name3150
  ret i8* %lhs_or_call3151
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh665:
  %_name3148 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str573, i8** %_name3148
  %this_vtable3149 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable569, %_Object_vtable** %this_vtable3149
  ret %Object* %_this1
}


