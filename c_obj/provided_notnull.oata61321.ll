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
@_const_str573.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str573 = alias bitcast([ 6 x i8 ]* @_const_str573.str. to i8*)@_const_str572.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str572 = alias bitcast([ 7 x i8 ]* @_const_str572.str. to i8*)@_Object_vtable571 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh624:
  ret void
}


define i32 @program (i32 %argc2780, { i32, [ 0 x i8* ] }* %argv2778){
__fresh619:
  %argc_slot2781 = alloca i32
  store i32 %argc2780, i32* %argc_slot2781
  %argv_slot2779 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2778, { i32, [ 0 x i8* ] }** %argv_slot2779
  %vdecl_slot2782 = alloca i8*
  store i8* null, i8** %vdecl_slot2782
  %vdecl_slot2783 = alloca i8*
  store i8* @_const_str573, i8** %vdecl_slot2783
  %vdecl_slot2784 = alloca i8*
  store i8* null, i8** %vdecl_slot2784
  %vdecl_slot2785 = alloca i32
  store i32 0, i32* %vdecl_slot2785
  %lhs_or_call2786 = load i8** %vdecl_slot2782
  %ifnull_slot2787 = alloca i8*
  store i8* %lhs_or_call2786, i8** %ifnull_slot2787
  %ifnull_guard2788 = icmp ne i8* %lhs_or_call2786, null
  br i1 %ifnull_guard2788, label %__then615, label %__else614

__fresh620:
  br label %__then615

__then615:
  %lhs_or_call2789 = load i8** %ifnull_slot2787
  call void @print_string( i8* %lhs_or_call2789 )
  %lhs_or_call2790 = load i32* %vdecl_slot2785
  %bop2791 = add i32 %lhs_or_call2790, 2
  store i32 %bop2791, i32* %vdecl_slot2785
  %lhs_or_call2792 = load i8** %vdecl_slot2782
  store i8* %lhs_or_call2792, i8** %vdecl_slot2784
  br label %__merge613

__fresh621:
  br label %__else614

__else614:
  br label %__merge613

__merge613:
  %lhs_or_call2793 = load i8** %vdecl_slot2783
  %ifnull_slot2794 = alloca i8*
  store i8* %lhs_or_call2793, i8** %ifnull_slot2794
  %ifnull_guard2795 = icmp ne i8* %lhs_or_call2793, null
  br i1 %ifnull_guard2795, label %__then618, label %__else617

__fresh622:
  br label %__then618

__then618:
  %lhs_or_call2796 = load i8** %ifnull_slot2794
  call void @print_string( i8* %lhs_or_call2796 )
  %lhs_or_call2797 = load i32* %vdecl_slot2785
  %bop2798 = add i32 %lhs_or_call2797, 40
  store i32 %bop2798, i32* %vdecl_slot2785
  %lhs_or_call2799 = load i8** %vdecl_slot2782
  store i8* %lhs_or_call2799, i8** %vdecl_slot2784
  br label %__merge616

__fresh623:
  br label %__else617

__else617:
  br label %__merge616

__merge616:
  %lhs_or_call2800 = load i32* %vdecl_slot2785
  ret i32 %lhs_or_call2800
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh612:
  %_name2776 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2777 = load i8** %_name2776
  ret i8* %lhs_or_call2777
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh611:
  %_name2774 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str572, i8** %_name2774
  %this_vtable2775 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable571, %_Object_vtable** %this_vtable2775
  ret %Object* %_this1
}


