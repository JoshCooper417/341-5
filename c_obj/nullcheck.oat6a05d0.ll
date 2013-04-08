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
@s3502 = global i8* zeroinitializer, align 4		; initialized by @s3502.init503
@_const_str501.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str501 = alias bitcast([ 8 x i8 ]* @_const_str501.str. to i8*)@s2499 = global i8* zeroinitializer, align 4		; initialized by @s2499.init500
@s1497 = global i8* zeroinitializer, align 4		; initialized by @s1497.init498
@_const_str496.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str496 = alias bitcast([ 6 x i8 ]* @_const_str496.str. to i8*)@_const_str495.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str495 = alias bitcast([ 7 x i8 ]* @_const_str495.str. to i8*)@_Object_vtable494 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh539:
  call void @s1497.init498(  )
  call void @s2499.init500(  )
  call void @s3502.init503(  )
  ret void
}


define i32 @program (i32 %argc2229, { i32, [ 0 x i8* ] }* %argv2227){
__fresh532:
  %argc_slot2230 = alloca i32
  store i32 %argc2229, i32* %argc_slot2230
  %argv_slot2228 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2227, { i32, [ 0 x i8* ] }** %argv_slot2228
  %vdecl_slot2231 = alloca i32
  store i32 0, i32* %vdecl_slot2231
  %lhs_or_call2232 = load i8** @s1497
  %ifnull_slot2233 = alloca i8*
  store i8* %lhs_or_call2232, i8** %ifnull_slot2233
  %ifnull_guard2234 = icmp ne i8* %lhs_or_call2232, null
  br i1 %ifnull_guard2234, label %__then525, label %__else524

__fresh533:
  br label %__then525

__then525:
  %lhs_or_call2235 = load i8** %ifnull_slot2233
  %ret2236 = call i32 @length_of_string ( i8* %lhs_or_call2235 )
  store i32 %ret2236, i32* %vdecl_slot2231
  br label %__merge523

__fresh534:
  br label %__else524

__else524:
  store i32 0, i32* %vdecl_slot2231
  br label %__merge523

__merge523:
  %lhs_or_call2237 = load i8** @s2499
  %ifnull_slot2238 = alloca i8*
  store i8* %lhs_or_call2237, i8** %ifnull_slot2238
  %ifnull_guard2239 = icmp ne i8* %lhs_or_call2237, null
  br i1 %ifnull_guard2239, label %__then528, label %__else527

__fresh535:
  br label %__then528

__then528:
  %lhs_or_call2240 = load i32* %vdecl_slot2231
  %lhs_or_call2241 = load i8** %ifnull_slot2238
  %ret2242 = call i32 @length_of_string ( i8* %lhs_or_call2241 )
  %bop2243 = add i32 %lhs_or_call2240, %ret2242
  store i32 %bop2243, i32* %vdecl_slot2231
  br label %__merge526

__fresh536:
  br label %__else527

__else527:
  %lhs_or_call2244 = load i32* %vdecl_slot2231
  %bop2245 = add i32 %lhs_or_call2244, 30
  store i32 %bop2245, i32* %vdecl_slot2231
  br label %__merge526

__merge526:
  %lhs_or_call2246 = load i8** @s3502
  %ifnull_slot2247 = alloca i8*
  store i8* %lhs_or_call2246, i8** %ifnull_slot2247
  %ifnull_guard2248 = icmp ne i8* %lhs_or_call2246, null
  br i1 %ifnull_guard2248, label %__then531, label %__else530

__fresh537:
  br label %__then531

__then531:
  %lhs_or_call2249 = load i32* %vdecl_slot2231
  %lhs_or_call2250 = load i8** %ifnull_slot2247
  %ret2251 = call i32 @length_of_string ( i8* %lhs_or_call2250 )
  %bop2252 = add i32 %lhs_or_call2249, %ret2251
  store i32 %bop2252, i32* %vdecl_slot2231
  br label %__merge529

__fresh538:
  br label %__else530

__else530:
  %lhs_or_call2253 = load i32* %vdecl_slot2231
  %bop2254 = add i32 %lhs_or_call2253, 41
  store i32 %bop2254, i32* %vdecl_slot2231
  br label %__merge529

__merge529:
  %lhs_or_call2255 = load i32* %vdecl_slot2231
  ret i32 %lhs_or_call2255
}


define void @s3502.init503 (){
__fresh522:
  store i8* @_const_str501, i8** @s3502
  ret void
}


define void @s2499.init500 (){
__fresh521:
  store i8* null, i8** @s2499
  ret void
}


define void @s1497.init498 (){
__fresh520:
  store i8* @_const_str496, i8** @s1497
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh519:
  %_name2225 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2226 = load i8** %_name2225
  ret i8* %lhs_or_call2226
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh518:
  %_name2223 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str495, i8** %_name2223
  %this_vtable2224 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable494, %_Object_vtable** %this_vtable2224
  ret %Object* %_this1
}


