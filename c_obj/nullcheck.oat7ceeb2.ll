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
@s3509 = global i8* zeroinitializer, align 4		; initialized by @s3509.init510
@_const_str508.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str508 = alias bitcast([ 8 x i8 ]* @_const_str508.str. to i8*)@s2506 = global i8* zeroinitializer, align 4		; initialized by @s2506.init507
@s1504 = global i8* zeroinitializer, align 4		; initialized by @s1504.init505
@_const_str503.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str503 = alias bitcast([ 6 x i8 ]* @_const_str503.str. to i8*)@_const_str502.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str502 = alias bitcast([ 7 x i8 ]* @_const_str502.str. to i8*)@_Object_vtable501 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh632:
  call void @s1504.init505(  )
  call void @s2506.init507(  )
  call void @s3509.init510(  )
  ret void
}


define i32 @program (i32 %argc2805, { i32, [ 0 x i8* ] }* %argv2803){
__fresh625:
  %argc_slot2806 = alloca i32
  store i32 %argc2805, i32* %argc_slot2806
  %argv_slot2804 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2803, { i32, [ 0 x i8* ] }** %argv_slot2804
  %vdecl_slot2807 = alloca i32
  store i32 0, i32* %vdecl_slot2807
  %lhs_or_call2808 = load i8** @s1504
  %ifnull_slot2809 = alloca i8*
  store i8* %lhs_or_call2808, i8** %ifnull_slot2809
  %ifnull_guard2810 = icmp ne i8* %lhs_or_call2808, null
  br i1 %ifnull_guard2810, label %__then618, label %__else617

__fresh626:
  br label %__then618

__then618:
  %lhs_or_call2811 = load i8** %ifnull_slot2809
  %ret2812 = call i32 @length_of_string ( i8* %lhs_or_call2811 )
  store i32 %ret2812, i32* %vdecl_slot2807
  br label %__merge616

__fresh627:
  br label %__else617

__else617:
  store i32 0, i32* %vdecl_slot2807
  br label %__merge616

__merge616:
  %lhs_or_call2813 = load i8** @s2506
  %ifnull_slot2814 = alloca i8*
  store i8* %lhs_or_call2813, i8** %ifnull_slot2814
  %ifnull_guard2815 = icmp ne i8* %lhs_or_call2813, null
  br i1 %ifnull_guard2815, label %__then621, label %__else620

__fresh628:
  br label %__then621

__then621:
  %lhs_or_call2816 = load i32* %vdecl_slot2807
  %lhs_or_call2817 = load i8** %ifnull_slot2814
  %ret2818 = call i32 @length_of_string ( i8* %lhs_or_call2817 )
  %bop2819 = add i32 %lhs_or_call2816, %ret2818
  store i32 %bop2819, i32* %vdecl_slot2807
  br label %__merge619

__fresh629:
  br label %__else620

__else620:
  %lhs_or_call2820 = load i32* %vdecl_slot2807
  %bop2821 = add i32 %lhs_or_call2820, 30
  store i32 %bop2821, i32* %vdecl_slot2807
  br label %__merge619

__merge619:
  %lhs_or_call2822 = load i8** @s3509
  %ifnull_slot2823 = alloca i8*
  store i8* %lhs_or_call2822, i8** %ifnull_slot2823
  %ifnull_guard2824 = icmp ne i8* %lhs_or_call2822, null
  br i1 %ifnull_guard2824, label %__then624, label %__else623

__fresh630:
  br label %__then624

__then624:
  %lhs_or_call2825 = load i32* %vdecl_slot2807
  %lhs_or_call2826 = load i8** %ifnull_slot2823
  %ret2827 = call i32 @length_of_string ( i8* %lhs_or_call2826 )
  %bop2828 = add i32 %lhs_or_call2825, %ret2827
  store i32 %bop2828, i32* %vdecl_slot2807
  br label %__merge622

__fresh631:
  br label %__else623

__else623:
  %lhs_or_call2829 = load i32* %vdecl_slot2807
  %bop2830 = add i32 %lhs_or_call2829, 41
  store i32 %bop2830, i32* %vdecl_slot2807
  br label %__merge622

__merge622:
  %lhs_or_call2831 = load i32* %vdecl_slot2807
  ret i32 %lhs_or_call2831
}


define void @s3509.init510 (){
__fresh615:
  store i8* @_const_str508, i8** @s3509
  ret void
}


define void @s2506.init507 (){
__fresh614:
  store i8* null, i8** @s2506
  ret void
}


define void @s1504.init505 (){
__fresh613:
  store i8* @_const_str503, i8** @s1504
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh612:
  %_name2801 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2802 = load i8** %_name2801
  ret i8* %lhs_or_call2802
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh611:
  %_name2799 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str502, i8** %_name2799
  %this_vtable2800 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable501, %_Object_vtable** %this_vtable2800
  ret %Object* %_this1
}


