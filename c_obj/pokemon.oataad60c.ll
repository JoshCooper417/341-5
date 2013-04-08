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


define i32 @program (i32 %argc3203, { i32, [ 0 x i8* ] }* %argv3201){
__fresh677:
  %argc_slot3204 = alloca i32
  store i32 %argc3203, i32* %argc_slot3204
  %argv_slot3202 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3201, { i32, [ 0 x i8* ] }** %argv_slot3202
  %lhs_or_call3205 = load %Pikachu** @p593
  %lhs_or_call3206 = load %Charmander** @c595
  %attack3208 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3207 = load void (%Charmander*, %Pikachu*)** %attack3208
  %cast_op3209 = bitcast %Charmander %lhs_or_call3206 to %Charmander* 
  call void %attack3207( %Charmander* %cast_op3209, %Pikachu* %lhs_or_call3205 )
  %lhs_or_call3210 = load %Charmander** @c595
  %lhs_or_call3211 = load %Pikachu** @p593
  %attack3213 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 3
  %attack3212 = load void (%Pikachu*, %Charmander*)** %attack3213
  %cast_op3214 = bitcast %Pikachu %lhs_or_call3211 to %Pikachu* 
  call void %attack3212( %Pikachu* %cast_op3214, %Charmander* %lhs_or_call3210 )
  %lhs_or_call3215 = load %Pikachu** @p593
  %lhs_or_call3216 = load %Charmander** @c595
  %attack3218 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3217 = load void (%Charmander*, %Pikachu*)** %attack3218
  %cast_op3219 = bitcast %Charmander %lhs_or_call3216 to %Charmander* 
  call void %attack3217( %Charmander* %cast_op3219, %Pikachu* %lhs_or_call3215 )
  %lhs_or_call3220 = load %Charmander** @c595
  %lhs_or_call3221 = load %Pikachu** @p593
  %attack3223 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 3
  %attack3222 = load void (%Pikachu*, %Charmander*)** %attack3223
  %cast_op3224 = bitcast %Pikachu %lhs_or_call3221 to %Pikachu* 
  call void %attack3222( %Pikachu* %cast_op3224, %Charmander* %lhs_or_call3220 )
  %lhs_or_call3225 = load %Pikachu** @p593
  %lhs_or_call3226 = load %Charmander** @c595
  %attack3228 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3227 = load void (%Charmander*, %Pikachu*)** %attack3228
  %cast_op3229 = bitcast %Charmander %lhs_or_call3226 to %Charmander* 
  call void %attack3227( %Charmander* %cast_op3229, %Pikachu* %lhs_or_call3225 )
  %lhs_or_call3230 = load %Charmander** @c595
  %lhs_or_call3231 = load %Pikachu** @p593
  %attack3233 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 3
  %attack3232 = load void (%Pikachu*, %Charmander*)** %attack3233
  %cast_op3234 = bitcast %Pikachu %lhs_or_call3231 to %Pikachu* 
  call void %attack3232( %Pikachu* %cast_op3234, %Charmander* %lhs_or_call3230 )
  %lhs_or_call3235 = load %Pikachu** @p593
  %lhs_or_call3236 = load %Charmander** @c595
  %attack3238 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3237 = load void (%Charmander*, %Pikachu*)** %attack3238
  %cast_op3239 = bitcast %Charmander %lhs_or_call3236 to %Charmander* 
  call void %attack3237( %Charmander* %cast_op3239, %Pikachu* %lhs_or_call3235 )
  %lhs_or_call3240 = load %Charmander** @c595
  %lhs_or_call3241 = load %Pikachu** @p593
  %attack3243 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 3
  %attack3242 = load void (%Pikachu*, %Charmander*)** %attack3243
  %cast_op3244 = bitcast %Pikachu %lhs_or_call3241 to %Pikachu* 
  call void %attack3242( %Pikachu* %cast_op3244, %Charmander* %lhs_or_call3240 )
  %lhs_or_call3245 = load %Pikachu** @p593
  %lhs_or_call3246 = load %Charmander** @c595
  %attack3248 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 3
  %attack3247 = load void (%Charmander*, %Pikachu*)** %attack3248
  %cast_op3249 = bitcast %Charmander %lhs_or_call3246 to %Charmander* 
  call void %attack3247( %Charmander* %cast_op3249, %Pikachu* %lhs_or_call3245 )
  call void @print_string( i8* @_const_str597 )
  ret i32 0
}


define void @c595.init596 (){
__fresh676:
  %mem_ptr3198 = call i32* @oat_malloc ( i32 20 )
  %obj3199 = bitcast i32* %mem_ptr3198 to %Charmander* 
  %new_obj3200 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj3199 )
  store %Charmander* %new_obj3200, %Charmander** @c595
  ret void
}


define void @p593.init594 (){
__fresh675:
  %mem_ptr3195 = call i32* @oat_malloc ( i32 20 )
  %obj3196 = bitcast i32* %mem_ptr3195 to %Pikachu* 
  %new_obj3197 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj3196 )
  store %Pikachu* %new_obj3197, %Pikachu** @p593
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh674:
  %voice3193 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3194 = load i8** %voice3193
  call void @print_string( i8* %lhs_or_call3194 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi3183){
__fresh673:
  %pi_slot3184 = alloca %Pikachu*
  store %Pikachu* %pi3183, %Pikachu** %pi_slot3184
  call void @print_string( i8* @_const_str592 )
  %voice3185 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call3186 = load i8** %voice3185
  call void @print_string( i8* %lhs_or_call3186 )
  %speed3187 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call3188 = load i32* %speed3187
  %lhs_or_call3189 = load %Pikachu** %pi_slot3184
  %gethit3191 = getelementptr %_Pikachu_vtable* @_Pikachu_vtable582, i32 0, i32 2
  %gethit3190 = load void (%Pokemon*, i32)** %gethit3191
  %cast_op3192 = bitcast %Pikachu %lhs_or_call3189 to %Pokemon* 
  call void %gethit3190( %Pokemon* %cast_op3192, i32 %lhs_or_call3188 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh672:
  %cast_op3176 = bitcast %Charmander* %_this1 to %Pokemon* 
  %mem_ptr3177 = call i32* @oat_malloc ( i32 20 )
  %obj3178 = bitcast i32* %mem_ptr3177 to %Charmander* 
  %new_obj3179 = call %Pokemon* @_Pokemon_ctor ( %Charmander* %obj3178, %Pokemon* %cast_op3176 )
  %_this1 = bitcast %Pokemon* %new_obj3179 to %Charmander 
  %_name3180 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str590, i8** %_name3180
  %voice3181 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str591, i8** %voice3181
  %this_vtable3182 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable583, %_Charmander_vtable** %this_vtable3182
  %speed3175 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %speed3175
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh671:
  %voice3173 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3174 = load i8** %voice3173
  call void @print_string( i8* %lhs_or_call3174 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch3163){
__fresh670:
  %ch_slot3164 = alloca %Charmander*
  store %Charmander* %ch3163, %Charmander** %ch_slot3164
  call void @print_string( i8* @_const_str589 )
  %voice3165 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call3166 = load i8** %voice3165
  call void @print_string( i8* %lhs_or_call3166 )
  %speed3167 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call3168 = load i32* %speed3167
  %lhs_or_call3169 = load %Charmander** %ch_slot3164
  %gethit3171 = getelementptr %_Charmander_vtable* @_Charmander_vtable583, i32 0, i32 2
  %gethit3170 = load void (%Pokemon*, i32)** %gethit3171
  %cast_op3172 = bitcast %Charmander %lhs_or_call3169 to %Pokemon* 
  call void %gethit3170( %Pokemon* %cast_op3172, i32 %lhs_or_call3168 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh669:
  %cast_op3157 = bitcast %Pikachu* %_this1 to %Pokemon* 
  %mem_ptr3158 = call i32* @oat_malloc ( i32 20 )
  %obj3159 = bitcast i32* %mem_ptr3158 to %Pikachu* 
  %new_obj3160 = call %Pokemon* @_Pokemon_ctor ( %Pikachu* %obj3159, %Pokemon* %cast_op3157 )
  %_this1 = bitcast %Pokemon* %new_obj3160 to %Pikachu 
  %_name3161 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str588, i8** %_name3161
  %this_vtable3162 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable582, %_Pikachu_vtable** %this_vtable3162
  %speed3155 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %speed3155
  %voice3156 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str587, i8** %voice3156
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s3146){
__fresh668:
  %s_slot3147 = alloca i32
  store i32 %s3146, i32* %s_slot3147
  %life3148 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %life3149 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call3150 = load i32* %life3149
  %lhs_or_call3151 = load i32* %s_slot3147
  %bop3152 = sub i32 %lhs_or_call3150, %lhs_or_call3151
  store i32 %bop3152, i32* %life3148
  %voice3153 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call3154 = load i8** %voice3153
  call void @print_string( i8* %lhs_or_call3154 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh667:
  %cast_op3139 = bitcast %Pokemon* %_this1 to %Object* 
  %mem_ptr3140 = call i32* @oat_malloc ( i32 16 )
  %obj3141 = bitcast i32* %mem_ptr3140 to %Pokemon* 
  %new_obj3142 = call %Object* @_Object_ctor ( %Pokemon* %obj3141, %Object* %cast_op3139 )
  %_this1 = bitcast %Object* %new_obj3142 to %Pokemon 
  %_name3143 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str585, i8** %_name3143
  %voice3144 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str586, i8** %voice3144
  %this_vtable3145 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable581, %_Pokemon_vtable** %this_vtable3145
  %life3138 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %life3138
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh666:
  %_name3136 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3137 = load i8** %_name3136
  ret i8* %lhs_or_call3137
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh665:
  %_name3134 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str584, i8** %_name3134
  %this_vtable3135 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable580, %_Object_vtable** %this_vtable3135
  ret %Object* %_this1
}


