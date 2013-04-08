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
@s3287 = global i8* zeroinitializer, align 4		; initialized by @s3287.init288
@_const_str286.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str286 = alias bitcast([ 8 x i8 ]* @_const_str286.str. to i8*)@s2284 = global i8* zeroinitializer, align 4		; initialized by @s2284.init285
@s1282 = global i8* zeroinitializer, align 4		; initialized by @s1282.init283
@_const_str281.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str281 = alias bitcast([ 6 x i8 ]* @_const_str281.str. to i8*)@_Object_vtable280 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh557:
  call void @s1282.init283(  )
  call void @s2284.init285(  )
  call void @s3287.init288(  )
  ret void
}


define i32 @program (i32 %argc3143, { i32, [ 0 x i8* ] }* %argv3141){
__fresh550:
  %argc_slot3144 = alloca i32
  store i32 %argc3143, i32* %argc_slot3144
  %argv_slot3142 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3141, { i32, [ 0 x i8* ] }** %argv_slot3142
  %vdecl_slot3145 = alloca i32
  store i32 0, i32* %vdecl_slot3145
  %lhs_or_call3146 = load i8** @s1282
  %ifnull_slot3147 = alloca i8*
  store i8* %lhs_or_call3146, i8** %ifnull_slot3147
  %ifnull_guard3148 = icmp ne i8* %lhs_or_call3146, null
  br i1 %ifnull_guard3148, label %__then543, label %__else542

__fresh551:
  br label %__then543

__then543:
  %lhs_or_call3149 = load i8** %ifnull_slot3147
  %ret3150 = call i32 @length_of_string ( i8* %lhs_or_call3149 )
  store i32 %ret3150, i32* %vdecl_slot3145
  br label %__merge541

__fresh552:
  br label %__else542

__else542:
  store i32 0, i32* %vdecl_slot3145
  br label %__merge541

__merge541:
  %lhs_or_call3151 = load i8** @s2284
  %ifnull_slot3152 = alloca i8*
  store i8* %lhs_or_call3151, i8** %ifnull_slot3152
  %ifnull_guard3153 = icmp ne i8* %lhs_or_call3151, null
  br i1 %ifnull_guard3153, label %__then546, label %__else545

__fresh553:
  br label %__then546

__then546:
  %lhs_or_call3154 = load i32* %vdecl_slot3145
  %lhs_or_call3155 = load i8** %ifnull_slot3152
  %ret3156 = call i32 @length_of_string ( i8* %lhs_or_call3155 )
  %bop3157 = add i32 %lhs_or_call3154, %ret3156
  store i32 %bop3157, i32* %vdecl_slot3145
  br label %__merge544

__fresh554:
  br label %__else545

__else545:
  %lhs_or_call3158 = load i32* %vdecl_slot3145
  %bop3159 = add i32 %lhs_or_call3158, 30
  store i32 %bop3159, i32* %vdecl_slot3145
  br label %__merge544

__merge544:
  %lhs_or_call3160 = load i8** @s3287
  %ifnull_slot3161 = alloca i8*
  store i8* %lhs_or_call3160, i8** %ifnull_slot3161
  %ifnull_guard3162 = icmp ne i8* %lhs_or_call3160, null
  br i1 %ifnull_guard3162, label %__then549, label %__else548

__fresh555:
  br label %__then549

__then549:
  %lhs_or_call3163 = load i32* %vdecl_slot3145
  %lhs_or_call3164 = load i8** %ifnull_slot3161
  %ret3165 = call i32 @length_of_string ( i8* %lhs_or_call3164 )
  %bop3166 = add i32 %lhs_or_call3163, %ret3165
  store i32 %bop3166, i32* %vdecl_slot3145
  br label %__merge547

__fresh556:
  br label %__else548

__else548:
  %lhs_or_call3167 = load i32* %vdecl_slot3145
  %bop3168 = add i32 %lhs_or_call3167, 41
  store i32 %bop3168, i32* %vdecl_slot3145
  br label %__merge547

__merge547:
  %lhs_or_call3169 = load i32* %vdecl_slot3145
  ret i32 %lhs_or_call3169
}


define void @s3287.init288 (){
__fresh540:
  store i8* @_const_str286, i8** @s3287
  ret void
}


define void @s2284.init285 (){
__fresh539:
  store i8* null, i8** @s2284
  ret void
}


define void @s1282.init283 (){
__fresh538:
  store i8* @_const_str281, i8** @s1282
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh537:
  %_name3139 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3140 = load i8** %_name3139
  ret i8* %lhs_or_call3140
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh536:
  %_name3135 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3136 = load %Object* %_this1
  %cast_op3137 = bitcast %Object %lhs_or_call3136 to i8* 
  store i8* %cast_op3137, i8** %_name3135
  %this_vtable3138 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3138
  ret %Object* %_this1
}


