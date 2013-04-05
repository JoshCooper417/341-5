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
@_const_str255.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str255 = alias bitcast([ 6 x i8 ]* @_const_str255.str. to i8*)@_Object_vtable254 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh203:
  ret void
}


define i32 @program (i32 %argc391, { i32, [ 0 x i8* ] }* %argv389){
__fresh198:
  %argc_slot392 = alloca i32
  store i32 %argc391, i32* %argc_slot392
  %argv_slot390 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv389, { i32, [ 0 x i8* ] }** %argv_slot390
  %vdecl_slot393 = alloca i8*
  store i8* null, i8** %vdecl_slot393
  %vdecl_slot394 = alloca i8*
  store i8* @_const_str255, i8** %vdecl_slot394
  %vdecl_slot395 = alloca i8*
  store i8* null, i8** %vdecl_slot395
  %vdecl_slot396 = alloca i32
  store i32 0, i32* %vdecl_slot396
  %lhs_or_call397 = load i8** %vdecl_slot393
  %ifnull_slot398 = alloca i8*
  store i8* %lhs_or_call397, i8** %ifnull_slot398
  %ifnull_guard399 = icmp ne i8* %lhs_or_call397, null
  br i1 %ifnull_guard399, label %__then194, label %__else193

__fresh199:
  br label %__then194

__then194:
  %lhs_or_call400 = load i8** %ifnull_slot398
  call void @print_string( i8* %lhs_or_call400 )
  %lhs_or_call401 = load i32* %vdecl_slot396
  %bop402 = add i32 %lhs_or_call401, 2
  store i32 %bop402, i32* %vdecl_slot396
  %lhs_or_call403 = load i8** %vdecl_slot393
  store i8* %lhs_or_call403, i8** %vdecl_slot395
  br label %__merge192

__fresh200:
  br label %__else193

__else193:
  br label %__merge192

__merge192:
  %lhs_or_call404 = load i8** %vdecl_slot394
  %ifnull_slot405 = alloca i8*
  store i8* %lhs_or_call404, i8** %ifnull_slot405
  %ifnull_guard406 = icmp ne i8* %lhs_or_call404, null
  br i1 %ifnull_guard406, label %__then197, label %__else196

__fresh201:
  br label %__then197

__then197:
  %lhs_or_call407 = load i8** %ifnull_slot405
  call void @print_string( i8* %lhs_or_call407 )
  %lhs_or_call408 = load i32* %vdecl_slot396
  %bop409 = add i32 %lhs_or_call408, 40
  store i32 %bop409, i32* %vdecl_slot396
  %lhs_or_call410 = load i8** %vdecl_slot393
  store i8* %lhs_or_call410, i8** %vdecl_slot395
  br label %__merge195

__fresh202:
  br label %__else196

__else196:
  br label %__merge195

__merge195:
  %lhs_or_call411 = load i32* %vdecl_slot396
  ret i32 %lhs_or_call411
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh191:
  %_name386 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call387 = load i8* %_name386
  %cast_op388 = bitcast i8 %lhs_or_call387 to i8* 
  ret i8* %cast_op388
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh190:
  ret %Object* %_this1
}


