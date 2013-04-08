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
@s3520 = global i8* zeroinitializer, align 4		; initialized by @s3520.init521
@_const_str519.str. = private unnamed_addr constant [ 8 x i8 ] c "goodbye\00", align 4
@_const_str519 = alias bitcast([ 8 x i8 ]* @_const_str519.str. to i8*)@s2517 = global i8* zeroinitializer, align 4		; initialized by @s2517.init518
@s1515 = global i8* zeroinitializer, align 4		; initialized by @s1515.init516
@_const_str514.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str514 = alias bitcast([ 6 x i8 ]* @_const_str514.str. to i8*)@_const_str513.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str513 = alias bitcast([ 7 x i8 ]* @_const_str513.str. to i8*)@_Object_vtable512 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh577:
  call void @s1515.init516(  )
  call void @s2517.init518(  )
  call void @s3520.init521(  )
  ret void
}


define i32 @program (i32 %argc2676, { i32, [ 0 x i8* ] }* %argv2674){
__fresh570:
  %argc_slot2677 = alloca i32
  store i32 %argc2676, i32* %argc_slot2677
  %argv_slot2675 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2674, { i32, [ 0 x i8* ] }** %argv_slot2675
  %vdecl_slot2678 = alloca i32
  store i32 0, i32* %vdecl_slot2678
  %lhs_or_call2679 = load i8** @s1515
  %ifnull_slot2680 = alloca i8*
  store i8* %lhs_or_call2679, i8** %ifnull_slot2680
  %ifnull_guard2681 = icmp ne i8* %lhs_or_call2679, null
  br i1 %ifnull_guard2681, label %__then563, label %__else562

__fresh571:
  br label %__then563

__then563:
  %lhs_or_call2682 = load i8** %ifnull_slot2680
  %ret2683 = call i32 @length_of_string ( i8* %lhs_or_call2682 )
  store i32 %ret2683, i32* %vdecl_slot2678
  br label %__merge561

__fresh572:
  br label %__else562

__else562:
  store i32 0, i32* %vdecl_slot2678
  br label %__merge561

__merge561:
  %lhs_or_call2684 = load i8** @s2517
  %ifnull_slot2685 = alloca i8*
  store i8* %lhs_or_call2684, i8** %ifnull_slot2685
  %ifnull_guard2686 = icmp ne i8* %lhs_or_call2684, null
  br i1 %ifnull_guard2686, label %__then566, label %__else565

__fresh573:
  br label %__then566

__then566:
  %lhs_or_call2687 = load i32* %vdecl_slot2678
  %lhs_or_call2688 = load i8** %ifnull_slot2685
  %ret2689 = call i32 @length_of_string ( i8* %lhs_or_call2688 )
  %bop2690 = add i32 %lhs_or_call2687, %ret2689
  store i32 %bop2690, i32* %vdecl_slot2678
  br label %__merge564

__fresh574:
  br label %__else565

__else565:
  %lhs_or_call2691 = load i32* %vdecl_slot2678
  %bop2692 = add i32 %lhs_or_call2691, 30
  store i32 %bop2692, i32* %vdecl_slot2678
  br label %__merge564

__merge564:
  %lhs_or_call2693 = load i8** @s3520
  %ifnull_slot2694 = alloca i8*
  store i8* %lhs_or_call2693, i8** %ifnull_slot2694
  %ifnull_guard2695 = icmp ne i8* %lhs_or_call2693, null
  br i1 %ifnull_guard2695, label %__then569, label %__else568

__fresh575:
  br label %__then569

__then569:
  %lhs_or_call2696 = load i32* %vdecl_slot2678
  %lhs_or_call2697 = load i8** %ifnull_slot2694
  %ret2698 = call i32 @length_of_string ( i8* %lhs_or_call2697 )
  %bop2699 = add i32 %lhs_or_call2696, %ret2698
  store i32 %bop2699, i32* %vdecl_slot2678
  br label %__merge567

__fresh576:
  br label %__else568

__else568:
  %lhs_or_call2700 = load i32* %vdecl_slot2678
  %bop2701 = add i32 %lhs_or_call2700, 41
  store i32 %bop2701, i32* %vdecl_slot2678
  br label %__merge567

__merge567:
  %lhs_or_call2702 = load i32* %vdecl_slot2678
  ret i32 %lhs_or_call2702
}


define void @s3520.init521 (){
__fresh560:
  store i8* @_const_str519, i8** @s3520
  ret void
}


define void @s2517.init518 (){
__fresh559:
  store i8* null, i8** @s2517
  ret void
}


define void @s1515.init516 (){
__fresh558:
  store i8* @_const_str514, i8** @s1515
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh557:
  %_name2672 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2673 = load i8** %_name2672
  ret i8* %lhs_or_call2673
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh556:
  %_name2670 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str513, i8** %_name2670
  %this_vtable2671 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable512, %_Object_vtable** %this_vtable2671
  ret %Object* %_this1
}


