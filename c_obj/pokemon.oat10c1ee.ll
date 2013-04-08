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


define i32 @program (i32 %argc3211, { i32, [ 0 x i8* ] }* %argv3209){
__fresh677:
  %argc_slot3212 = alloca i32
  store i32 %argc3211, i32* %argc_slot3212
  %argv_slot3210 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3209, { i32, [ 0 x i8* ] }** %argv_slot3210
  %lhs_or_call3213 = load %Pikachu** @p582
  %lhs_or_call3214 = load %Charmander** @c584
  %vtable_ptr3215 = getelementptr %Charmander* %lhs_or_call3214, i32 0
  %vtable3216 = load %_Charmander_vtable** %vtable_ptr3215
  %attack3218 = getelementptr %_Charmander_vtable* %vtable3216, i32 0, i32 3
  %attack3217 = load void (%Charmander*, %Pikachu*)** %attack3218
  %cast_op3219 = bitcast %Charmander %lhs_or_call3214 to %Charmander* 
  call void %attack3217( %Charmander* %cast_op3219, %Pikachu* %lhs_or_call3213 )
  %lhs_or_call3220 = load %Charmander** @c584
  %lhs_or_call3221 = load %Pikachu** @p582
  %vtable_ptr3222 = getelementptr %Pikachu* %lhs_or_call3221, i32 0
  %vtable3223 = load %_Pikachu_vtable** %vtable_ptr3222
  %attack3225 = getelementptr %_Pikachu_vtable* %vtable3223, i32 0, i32 3
  %attack3224 = load void (%Pikachu*, %Charmander*)** %attack3225
  %cast_op3226 = bitcast %Pikachu %lhs_or_call3221 to %Pikachu* 
  call void %attack3224( %Pikachu* %cast_op3226, %Charmander* %lhs_or_call3220 )
  %lhs_or_call3227 = load %Pikachu** @p582
  %lhs_or_call3228 = load %Charmander** @c584
  %vtable_ptr3229 = getelementptr %Charmander* %lhs_or_call3228, i32 0
  %vtable3230 = load %_Charmander_vtable** %vtable_ptr3229
  %attack3232 = getelementptr %_Charmander_vtable* %vtable3230, i32 0, i32 3
  %attack3231 = load void (%Charmander*, %Pikachu*)** %attack3232
  %cast_op3233 = bitcast %Charmander %lhs_or_call3228 to %Charmander* 
  call void %attack3231( %Charmander* %cast_op3233, %Pikachu* %lhs_or_call3227 )
  %lhs_or_call3234 = load %Charmander** @c584
  %lhs_or_call3235 = load %Pikachu** @p582
  %vtable_ptr3236 = getelementptr %Pikachu* %lhs_or_call3235, i32 0
  %vtable3237 = load %_Pikachu_vtable** %vtable_ptr3236
  %attack3239 = getelementptr %_Pikachu_vtable* %vtable3237, i32 0, i32 3
  %attack3238 = load void (%Pikachu*, %Charmander*)** %attack3239
  %cast_op3240 = bitcast %Pikachu %lhs_or_call3235 to %Pikachu* 
  call void %attack3238( %Pikachu* %cast_op3240, %Charmander* %lhs_or_call3234 )
  %lhs_or_call3241 = load %Pikachu** @p582
  %lhs_or_call3242 = load %Charmander** @c584
  %vtable_ptr3243 = getelementptr %Charmander* %lhs_or_call3242, i32 0
  %vtable3244 = load %_Charmander_vtable** %vtable_ptr3243
  %attack3246 = getelementptr %_Charmander_vtable* %vtable3244, i32 0, i32 3
  %attack3245 = load void (%Charmander*, %Pikachu*)** %attack3246
  %cast_op3247 = bitcast %Charmander %lhs_or_call3242 to %Charmander* 
  call void %attack3245( %Charmander* %cast_op3247, %Pikachu* %lhs_or_call3241 )
  %lhs_or_call3248 = load %Charmander** @c584
  %lhs_or_call3249 = load %Pikachu** @p582
  %vtable_ptr3250 = getelementptr %Pikachu* %lhs_or_call3249, i32 0
  %vtable3251 = load %_Pikachu_vtable** %vtable_ptr3250
  %attack3253 = getelementptr %_Pikachu_vtable* %vtable3251, i32 0, i32 3
  %attack3252 = load void (%Pikachu*, %Charmander*)** %attack3253
  %cast_op3254 = bitcast %Pikachu %lhs_or_call3249 to %Pikachu* 
  call void %attack3252( %Pikachu* %cast_op3254, %Charmander* %lhs_or_call3248 )
  %lhs_or_call3255 = load %Pikachu** @p582
  %lhs_or_call3256 = load %Charmander** @c584
  %vtable_ptr3257 = getelementptr %Charmander* %lhs_or_call3256, i32 0
  %vtable3258 = load %_Charmander_vtable** %vtable_ptr3257
  %attack3260 = getelementptr %_Charmander_vtable* %vtable3258, i32 0, i32 3
  %attack3259 = load void (%Charmander*, %Pikachu*)** %attack3260
  %cast_op3261 = bitcast %Charmander %lhs_or_call3256 to %Charmander* 
  call void %attack3259( %Charmander* %cast_op3261, %Pikachu* %lhs_or_call3255 )
  %lhs_or_call3262 = load %Charmander** @c584
  %lhs_or_call3263 = load %Pikachu** @p582
  %vtable_ptr3264 = getelementptr %Pikachu* %lhs_or_call3263, i32 0
  %vtable3265 = load %_Pikachu_vtable** %vtable_ptr3264
  %attack3267 = getelementptr %_Pikachu_vtable* %vtable3265, i32 0, i32 3
  %attack3266 = load void (%Pikachu*, %Charmander*)** %attack3267
  %cast_op3268 = bitcast %Pikachu %lhs_or_call3263 to %Pikachu* 
  call void %attack3266( %Pikachu* %cast_op3268, %Charmander* %lhs_or_call3262 )
  %lhs_or_call3269 = load %Pikachu** @p582
  %lhs_or_call3270 = load %Charmander** @c584
  %vtable_ptr3271 = getelementptr %Charmander* %lhs_or_call3270, i32 0
  %vtable3272 = load %_Charmander_vtable** %vtable_ptr3271
  %attack3274 = getelementptr %_Charmander_vtable* %vtable3272, i32 0, i32 3
  %attack3273 = load void (%Charmander*, %Pikachu*)** %attack3274
  %cast_op3275 = bitcast %Charmander %lhs_or_call3270 to %Charmander* 
  call void %attack3273( %Charmander* %cast_op3275, %Pikachu* %lhs_or_call3269 )
  call void @print_string( i8* @_const_str586 )
  ret i32 0
}


define void @c584.init585 (){
__fresh676:
  %mem_ptr3206 = call i32* @oat_malloc ( i32 20 )
  %obj3207 = bitcast i32* %mem_ptr3206 to %Charmander* 
  %new_obj3208 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3207 )
  store %Charmander* %new_obj3208, %Charmander** @c584
  ret void
}


define void @p582.init583 (){
__fresh675:
  %mem_ptr3203 = call i32* @oat_malloc ( i32 20 )
  %obj3204 = bitcast i32* %mem_ptr3203 to %Pikachu* 
  %new_obj3205 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3204 )
  store %Pikachu* %new_obj3205, %Pikachu** @p582
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh674:
  %voice3201 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3202 = load i8** %voice3201
  call void @print_string( i8* %lhs_or_call3202 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3189){
__fresh673:
  %pi_slot3190 = alloca %Pikachu*
  store %Pikachu* %pi3189, %Pikachu** %pi_slot3190
  call void @print_string( i8* @_const_str581 )
  %voice3191 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3192 = load i8** %voice3191
  call void @print_string( i8* %lhs_or_call3192 )
  %speed3193 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3194 = load i32* %speed3193
  %lhs_or_call3195 = load %Pikachu** %pi_slot3190
  %vtable_ptr3196 = getelementptr %Pikachu* %lhs_or_call3195, i32 0
  %vtable3197 = load %_Pikachu_vtable** %vtable_ptr3196
  %gethit3199 = getelementptr %_Pikachu_vtable* %vtable3197, i32 0, i32 2
  %gethit3198 = load void (%Pokemon*, i32)** %gethit3199
  %cast_op3200 = bitcast %Pikachu %lhs_or_call3195 to %Pokemon* 
  call void %gethit3198( %Pokemon* %cast_op3200, i32 %lhs_or_call3194 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh672:
  %mem_ptr3183 = call i32* @oat_malloc ( i32 16 )
  %obj3184 = bitcast i32* %mem_ptr3183 to %Pokemon* 
  %new_obj3185 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3184 )
  %_this1 = bitcast %Pokemon* %new_obj3185 to %Charmander 
  %_name3186 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str579, i8** %_name3186
  %voice3187 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str580, i8** %voice3187
  %this_vtable3188 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable572, %_Charmander_vtable** %this_vtable3188
  %speed3182 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3182
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh671:
  %voice3180 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3181 = load i8** %voice3180
  call void @print_string( i8* %lhs_or_call3181 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3168){
__fresh670:
  %ch_slot3169 = alloca %Charmander*
  store %Charmander* %ch3168, %Charmander** %ch_slot3169
  call void @print_string( i8* @_const_str578 )
  %voice3170 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3171 = load i8** %voice3170
  call void @print_string( i8* %lhs_or_call3171 )
  %speed3172 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3173 = load i32* %speed3172
  %lhs_or_call3174 = load %Charmander** %ch_slot3169
  %vtable_ptr3175 = getelementptr %Charmander* %lhs_or_call3174, i32 0
  %vtable3176 = load %_Charmander_vtable** %vtable_ptr3175
  %gethit3178 = getelementptr %_Charmander_vtable* %vtable3176, i32 0, i32 2
  %gethit3177 = load void (%Pokemon*, i32)** %gethit3178
  %cast_op3179 = bitcast %Charmander %lhs_or_call3174 to %Pokemon* 
  call void %gethit3177( %Pokemon* %cast_op3179, i32 %lhs_or_call3173 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh669:
  %mem_ptr3163 = call i32* @oat_malloc ( i32 16 )
  %obj3164 = bitcast i32* %mem_ptr3163 to %Pokemon* 
  %new_obj3165 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %obj3164 )
  %_this1 = bitcast %Pokemon* %new_obj3165 to %Pikachu 
  %_name3166 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str577, i8** %_name3166
  %this_vtable3167 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable571, %_Pikachu_vtable** %this_vtable3167
  %speed3161 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed3161
  %voice3162 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str576, i8** %voice3162
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3152){
__fresh668:
  %s_slot3153 = alloca i32
  store i32 %s3152, i32* %s_slot3153
  %life3154 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3155 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3156 = load i32* %life3155
  %lhs_or_call3157 = load i32* %s_slot3153
  %bop3158 = sub i32 %lhs_or_call3156, %lhs_or_call3157
  store i32 %bop3158, i32* %life3154
  %voice3159 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3160 = load i8** %voice3159
  call void @print_string( i8* %lhs_or_call3160 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh667:
  %mem_ptr3146 = call i32* @oat_malloc ( i32 8 )
  %obj3147 = bitcast i32* %mem_ptr3146 to %Object* 
  %new_obj3148 = call %Object* @_Object_ctor ( %Object* %obj3147 )
  %_this1 = bitcast %Object* %new_obj3148 to %Pokemon 
  %_name3149 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str574, i8** %_name3149
  %voice3150 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str575, i8** %voice3150
  %this_vtable3151 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable570, %_Pokemon_vtable** %this_vtable3151
  %life3145 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life3145
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh666:
  %_name3143 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3144 = load i8** %_name3143
  ret i8* %lhs_or_call3144
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh665:
  %_name3141 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str573, i8** %_name3141
  %this_vtable3142 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable569, %_Object_vtable** %this_vtable3142
  ret %Object* %_this1
}


