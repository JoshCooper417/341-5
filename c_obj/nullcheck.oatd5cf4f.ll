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
@s3271 = global i8* zeroinitializer, align 4		; initialized by @s3271.init272
@_const_str270.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str270 = alias bitcast([ 8 x i8 ]* @_const_str270.str. to i8*)@s2268 = global i8* zeroinitializer, align 4		; initialized by @s2268.init269
@s1266 = global i8* zeroinitializer, align 4		; initialized by @s1266.init267
@_const_str265.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str265 = alias bitcast([ 6 x i8 ]* @_const_str265.str. to i8*)@_Object_vtable264 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh405:
  call void @s1266.init267(  )
  call void @s2268.init269(  )
  call void @s3271.init272(  )
  ret void
}


define i32 @program (i32 %argc1810, { i32, [ 0 x i8* ] }* %argv1808){
__fresh398:
  %argc_slot1811 = alloca i32
  store i32 %argc1810, i32* %argc_slot1811
  %argv_slot1809 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1808, { i32, [ 0 x i8* ] }** %argv_slot1809
  %vdecl_slot1812 = alloca i32
  store i32 0, i32* %vdecl_slot1812
  %lhs_or_call1813 = load i8** @s1266
  %ifnull_slot1814 = alloca i8*
  store i8* %lhs_or_call1813, i8** %ifnull_slot1814
  %ifnull_guard1815 = icmp ne i8* %lhs_or_call1813, null
  br i1 %ifnull_guard1815, label %__then391, label %__else390

__fresh399:
  br label %__then391

__then391:
  %lhs_or_call1816 = load i8** %ifnull_slot1814
  %ret1817 = call i32 @length_of_string ( i8* %lhs_or_call1816 )
  store i32 %ret1817, i32* %vdecl_slot1812
  br label %__merge389

__fresh400:
  br label %__else390

__else390:
  store i32 0, i32* %vdecl_slot1812
  br label %__merge389

__merge389:
  %lhs_or_call1818 = load i8** @s2268
  %ifnull_slot1819 = alloca i8*
  store i8* %lhs_or_call1818, i8** %ifnull_slot1819
  %ifnull_guard1820 = icmp ne i8* %lhs_or_call1818, null
  br i1 %ifnull_guard1820, label %__then394, label %__else393

__fresh401:
  br label %__then394

__then394:
  %lhs_or_call1821 = load i32* %vdecl_slot1812
  %lhs_or_call1822 = load i8** %ifnull_slot1819
  %ret1823 = call i32 @length_of_string ( i8* %lhs_or_call1822 )
  %bop1824 = add i32 %lhs_or_call1821, %ret1823
  store i32 %bop1824, i32* %vdecl_slot1812
  br label %__merge392

__fresh402:
  br label %__else393

__else393:
  %lhs_or_call1825 = load i32* %vdecl_slot1812
  %bop1826 = add i32 %lhs_or_call1825, 30
  store i32 %bop1826, i32* %vdecl_slot1812
  br label %__merge392

__merge392:
  %lhs_or_call1827 = load i8** @s3271
  %ifnull_slot1828 = alloca i8*
  store i8* %lhs_or_call1827, i8** %ifnull_slot1828
  %ifnull_guard1829 = icmp ne i8* %lhs_or_call1827, null
  br i1 %ifnull_guard1829, label %__then397, label %__else396

__fresh403:
  br label %__then397

__then397:
  %lhs_or_call1830 = load i32* %vdecl_slot1812
  %lhs_or_call1831 = load i8** %ifnull_slot1828
  %ret1832 = call i32 @length_of_string ( i8* %lhs_or_call1831 )
  %bop1833 = add i32 %lhs_or_call1830, %ret1832
  store i32 %bop1833, i32* %vdecl_slot1812
  br label %__merge395

__fresh404:
  br label %__else396

__else396:
  %lhs_or_call1834 = load i32* %vdecl_slot1812
  %bop1835 = add i32 %lhs_or_call1834, 41
  store i32 %bop1835, i32* %vdecl_slot1812
  br label %__merge395

__merge395:
  %lhs_or_call1836 = load i32* %vdecl_slot1812
  ret i32 %lhs_or_call1836
}


define void @s3271.init272 (){
__fresh388:
  store i8* @_const_str270, i8** @s3271
  ret void
}


define void @s2268.init269 (){
__fresh387:
  store i8* null, i8** @s2268
  ret void
}


define void @s1266.init267 (){
__fresh386:
  store i8* @_const_str265, i8** @s1266
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh385:
  %_name1805 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1806 = load i8* %_name1805
  %cast_op1807 = bitcast i8 %lhs_or_call1806 to i8* 
  ret i8* %cast_op1807
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh384:
  ret %Object* %_this1
}


