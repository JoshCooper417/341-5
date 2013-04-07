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
@_const_str309.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str309 = alias bitcast([ 6 x i8 ]* @_const_str309.str. to i8*)@_Object_vtable308 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh457:
  ret void
}


define i32 @program (i32 %argc2013, { i32, [ 0 x i8* ] }* %argv2011){
__fresh452:
  %argc_slot2014 = alloca i32
  store i32 %argc2013, i32* %argc_slot2014
  %argv_slot2012 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2011, { i32, [ 0 x i8* ] }** %argv_slot2012
  %vdecl_slot2015 = alloca i8*
  store i8* null, i8** %vdecl_slot2015
  %vdecl_slot2016 = alloca i8*
  store i8* @_const_str309, i8** %vdecl_slot2016
  %vdecl_slot2017 = alloca i8*
  store i8* null, i8** %vdecl_slot2017
  %vdecl_slot2018 = alloca i32
  store i32 0, i32* %vdecl_slot2018
  %lhs_or_call2019 = load i8** %vdecl_slot2015
  %ifnull_slot2020 = alloca i8*
  store i8* %lhs_or_call2019, i8** %ifnull_slot2020
  %ifnull_guard2021 = icmp ne i8* %lhs_or_call2019, null
  br i1 %ifnull_guard2021, label %__then448, label %__else447

__fresh453:
  br label %__then448

__then448:
  %lhs_or_call2022 = load i8** %ifnull_slot2020
  call void @print_string( i8* %lhs_or_call2022 )
  %lhs_or_call2023 = load i32* %vdecl_slot2018
  %bop2024 = add i32 %lhs_or_call2023, 2
  store i32 %bop2024, i32* %vdecl_slot2018
  %lhs_or_call2025 = load i8** %vdecl_slot2015
  store i8* %lhs_or_call2025, i8** %vdecl_slot2017
  br label %__merge446

__fresh454:
  br label %__else447

__else447:
  br label %__merge446

__merge446:
  %lhs_or_call2026 = load i8** %vdecl_slot2016
  %ifnull_slot2027 = alloca i8*
  store i8* %lhs_or_call2026, i8** %ifnull_slot2027
  %ifnull_guard2028 = icmp ne i8* %lhs_or_call2026, null
  br i1 %ifnull_guard2028, label %__then451, label %__else450

__fresh455:
  br label %__then451

__then451:
  %lhs_or_call2029 = load i8** %ifnull_slot2027
  call void @print_string( i8* %lhs_or_call2029 )
  %lhs_or_call2030 = load i32* %vdecl_slot2018
  %bop2031 = add i32 %lhs_or_call2030, 40
  store i32 %bop2031, i32* %vdecl_slot2018
  %lhs_or_call2032 = load i8** %vdecl_slot2015
  store i8* %lhs_or_call2032, i8** %vdecl_slot2017
  br label %__merge449

__fresh456:
  br label %__else450

__else450:
  br label %__merge449

__merge449:
  %lhs_or_call2033 = load i32* %vdecl_slot2018
  ret i32 %lhs_or_call2033
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh445:
  %_name2008 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2009 = load i8* %_name2008
  %cast_op2010 = bitcast i8 %lhs_or_call2009 to i8* 
  ret i8* %cast_op2010
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh444:
  ret %Object* %_this1
}


