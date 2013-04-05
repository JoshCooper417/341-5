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


define i32 @program (i32 %argc529, { i32, [ 0 x i8* ] }* %argv527){
__fresh170:
  %argc_slot530 = alloca i32
  store i32 %argc529, i32* %argc_slot530
  %argv_slot528 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv527, { i32, [ 0 x i8* ] }** %argv_slot528
  %vdecl_slot531 = alloca i32
  store i32 0, i32* %vdecl_slot531
  %lhs_or_call532 = load i8** @s1224
  %ifnull_slot533 = alloca i8*
  store i8* %lhs_or_call532, i8** %ifnull_slot533
  %ifnull_guard534 = icmp ne i8* %lhs_or_call532, null
  br i1 %ifnull_guard534, label %__then163, label %__else162

__fresh171:
  br label %__then163

__then163:
  %lhs_or_call535 = load i8** %ifnull_slot533
  %ret536 = call i32 @length_of_string ( i8* %lhs_or_call535 )
  store i32 %ret536, i32* %vdecl_slot531
  br label %__merge161

__fresh172:
  br label %__else162

__else162:
  store i32 0, i32* %vdecl_slot531
  br label %__merge161

__merge161:
  %lhs_or_call537 = load i8** @s2226
  %ifnull_slot538 = alloca i8*
  store i8* %lhs_or_call537, i8** %ifnull_slot538
  %ifnull_guard539 = icmp ne i8* %lhs_or_call537, null
  br i1 %ifnull_guard539, label %__then166, label %__else165

__fresh173:
  br label %__then166

__then166:
  %lhs_or_call540 = load i32* %vdecl_slot531
  %lhs_or_call541 = load i8** %ifnull_slot538
  %ret542 = call i32 @length_of_string ( i8* %lhs_or_call541 )
  %bop543 = add i32 %lhs_or_call540, %ret542
  store i32 %bop543, i32* %vdecl_slot531
  br label %__merge164

__fresh174:
  br label %__else165

__else165:
  %lhs_or_call544 = load i32* %vdecl_slot531
  %bop545 = add i32 %lhs_or_call544, 30
  store i32 %bop545, i32* %vdecl_slot531
  br label %__merge164

__merge164:
  %lhs_or_call546 = load i8** @s3229
  %ifnull_slot547 = alloca i8*
  store i8* %lhs_or_call546, i8** %ifnull_slot547
  %ifnull_guard548 = icmp ne i8* %lhs_or_call546, null
  br i1 %ifnull_guard548, label %__then169, label %__else168

__fresh175:
  br label %__then169

__then169:
  %lhs_or_call549 = load i32* %vdecl_slot531
  %lhs_or_call550 = load i8** %ifnull_slot547
  %ret551 = call i32 @length_of_string ( i8* %lhs_or_call550 )
  %bop552 = add i32 %lhs_or_call549, %ret551
  store i32 %bop552, i32* %vdecl_slot531
  br label %__merge167

__fresh176:
  br label %__else168

__else168:
  %lhs_or_call553 = load i32* %vdecl_slot531
  %bop554 = add i32 %lhs_or_call553, 41
  store i32 %bop554, i32* %vdecl_slot531
  br label %__merge167

__merge167:
  %lhs_or_call555 = load i32* %vdecl_slot531
  ret i32 %lhs_or_call555
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
  %_name524 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call525 = load i8* %_name524
  %cast_op526 = bitcast i8 %lhs_or_call525 to i8* 
  ret i8* %cast_op526
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh156:
  ret %Object* %_this1
}


