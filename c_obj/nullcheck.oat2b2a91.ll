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
@s3229 = global i8* zeroinitializer, align 4		; initialized by @s3229.init230
@_const_str228.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str228 = alias bitcast([ 8 x i8 ]* @_const_str228.str. to i8*)@s2226 = global i8* zeroinitializer, align 4		; initialized by @s2226.init227
@s1224 = global i8* zeroinitializer, align 4		; initialized by @s1224.init225
@_const_str223.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str223 = alias bitcast([ 6 x i8 ]* @_const_str223.str. to i8*)@_Object_vtable222 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh177:
  call void @s1224.init225(  )
  call void @s2226.init227(  )
  call void @s3229.init230(  )
  ret void
}


define i32 @program (i32 %argc334, { i32, [ 0 x i8* ] }* %argv332){
__fresh170:
  %argc_slot335 = alloca i32
  store i32 %argc334, i32* %argc_slot335
  %argv_slot333 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv332, { i32, [ 0 x i8* ] }** %argv_slot333
  %vdecl_slot336 = alloca i32
  store i32 0, i32* %vdecl_slot336
  %lhs_or_call337 = load i8** @s1224
  %ifnull_slot338 = alloca i8*
  store i8* %lhs_or_call337, i8** %ifnull_slot338
  %ifnull_guard339 = icmp ne i8* %lhs_or_call337, null
  br i1 %ifnull_guard339, label %__then163, label %__else162

__fresh171:
  br label %__then163

__then163:
  %lhs_or_call340 = load i8** %ifnull_slot338
  %ret341 = call i32 @length_of_string ( i8* %lhs_or_call340 )
  store i32 %ret341, i32* %vdecl_slot336
  br label %__merge161

__fresh172:
  br label %__else162

__else162:
  store i32 0, i32* %vdecl_slot336
  br label %__merge161

__merge161:
  %lhs_or_call342 = load i8** @s2226
  %ifnull_slot343 = alloca i8*
  store i8* %lhs_or_call342, i8** %ifnull_slot343
  %ifnull_guard344 = icmp ne i8* %lhs_or_call342, null
  br i1 %ifnull_guard344, label %__then166, label %__else165

__fresh173:
  br label %__then166

__then166:
  %lhs_or_call345 = load i32* %vdecl_slot336
  %lhs_or_call346 = load i8** %ifnull_slot343
  %ret347 = call i32 @length_of_string ( i8* %lhs_or_call346 )
  %bop348 = add i32 %lhs_or_call345, %ret347
  store i32 %bop348, i32* %vdecl_slot336
  br label %__merge164

__fresh174:
  br label %__else165

__else165:
  %lhs_or_call349 = load i32* %vdecl_slot336
  %bop350 = add i32 %lhs_or_call349, 30
  store i32 %bop350, i32* %vdecl_slot336
  br label %__merge164

__merge164:
  %lhs_or_call351 = load i8** @s3229
  %ifnull_slot352 = alloca i8*
  store i8* %lhs_or_call351, i8** %ifnull_slot352
  %ifnull_guard353 = icmp ne i8* %lhs_or_call351, null
  br i1 %ifnull_guard353, label %__then169, label %__else168

__fresh175:
  br label %__then169

__then169:
  %lhs_or_call354 = load i32* %vdecl_slot336
  %lhs_or_call355 = load i8** %ifnull_slot352
  %ret356 = call i32 @length_of_string ( i8* %lhs_or_call355 )
  %bop357 = add i32 %lhs_or_call354, %ret356
  store i32 %bop357, i32* %vdecl_slot336
  br label %__merge167

__fresh176:
  br label %__else168

__else168:
  %lhs_or_call358 = load i32* %vdecl_slot336
  %bop359 = add i32 %lhs_or_call358, 41
  store i32 %bop359, i32* %vdecl_slot336
  br label %__merge167

__merge167:
  %lhs_or_call360 = load i32* %vdecl_slot336
  ret i32 %lhs_or_call360
}


define void @s3229.init230 (){
__fresh160:
  store i8* @_const_str228, i8** @s3229
  ret void
}


define void @s2226.init227 (){
__fresh159:
  store i8* null, i8** @s2226
  ret void
}


define void @s1224.init225 (){
__fresh158:
  store i8* @_const_str223, i8** @s1224
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh157:
  %_name329 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call330 = load i8* %_name329
  %cast_op331 = bitcast i8 %lhs_or_call330 to i8* 
  ret i8* %cast_op331
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh156:
  ret %Object* %_this1
}


