%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)*, i32 (%A*)* }
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
@a473 = global %A* zeroinitializer, align 4		; initialized by @a473.init474
@_const_str472.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str472 = alias bitcast([ 2 x i8 ]* @_const_str472.str. to i8*)@_const_str471.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str471 = alias bitcast([ 2 x i8 ]* @_const_str471.str. to i8*)@_const_str470.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str470 = alias bitcast([ 2 x i8 ]* @_const_str470.str. to i8*)@_const_str469.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str469 = alias bitcast([ 7 x i8 ]* @_const_str469.str. to i8*)@_C_vtable468 = private constant %_C_vtable {%_B_vtable* @_B_vtable467, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*)* @_C_call, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable467 = private constant %_B_vtable {%_A_vtable* @_A_vtable466, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%B*)* @_B_call}, align 4
@_A_vtable466 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable465, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo, i32 (%A*)* @_A_call}, align 4
@_Object_vtable465 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh808:
  call void @a473.init474(  )
  ret void
}


define i32 @program (i32 %argc2765, { i32, [ 0 x i8* ] }* %argv2763){
__fresh807:
  %argc_slot2766 = alloca i32
  store i32 %argc2765, i32* %argc_slot2766
  %argv_slot2764 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2763, { i32, [ 0 x i8* ] }** %argv_slot2764
  %lhs_or_call2767 = load %A** @a473
  %vtable_ptr2768 = getelementptr %A* %lhs_or_call2767, i32 0
  %vtable2769 = load %_A_vtable** %vtable_ptr2768
  %call2771 = getelementptr %_A_vtable* %vtable2769, i32 0, i32 4
  %call2770 = load i32 (%A*)** %call2771
  %cast_op2772 = bitcast %A %lhs_or_call2767 to %A* 
  %ret2773 = call i32 %call2770 ( %A* %cast_op2772 )
  ret i32 %ret2773
}


define void @a473.init474 (){
__fresh806:
  %mem_ptr2759 = call i32* @oat_malloc ( i32 8 )
  %obj2760 = bitcast i32* %mem_ptr2759 to %C* 
  %new_obj2761 = call %C* @_C_ctor ( %C* %obj2760 )
  %cast_op2762 = bitcast %C* %new_obj2761 to %A* 
  store %A* %cast_op2762, %A** @a473
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh805:
  %vtable_ptr2753 = getelementptr %C* %_this1, i32 0
  %vtable2754 = load %_C_vtable** %vtable_ptr2753
  %foo2756 = getelementptr %_C_vtable* %vtable2754, i32 0, i32 3
  %foo2755 = load i32 (%A*, i32)** %foo2756
  %cast_op2757 = bitcast %C %_this1 to %A* 
  %ret2758 = call i32 %foo2755 ( %A* %cast_op2757, i32 3 )
  ret i32 %ret2758
}


define i32 @_C_notover (%C* %_this1, i32 %x2749){
__fresh804:
  %x_slot2750 = alloca i32
  store i32 %x2749, i32* %x_slot2750
  %lhs_or_call2751 = load i32* %x_slot2750
  %bop2752 = add i32 %lhs_or_call2751, 1
  ret i32 %bop2752
}


define %C* @_C_ctor (%C* %_this1){
__fresh803:
  %mem_ptr2744 = call i32* @oat_malloc ( i32 8 )
  %obj2745 = bitcast i32* %mem_ptr2744 to %B* 
  %new_obj2746 = call %B* @_B_ctor ( %B* %obj2745 )
  %_this1 = bitcast %B* %new_obj2746 to %C 
  %_name2747 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str472, i8** %_name2747
  %this_vtable2748 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable468, %_C_vtable** %this_vtable2748
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh802:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2740){
__fresh801:
  %x_slot2741 = alloca i32
  store i32 %x2740, i32* %x_slot2741
  %lhs_or_call2742 = load i32* %x_slot2741
  %bop2743 = add i32 %lhs_or_call2742, 2
  ret i32 %bop2743
}


define %B* @_B_ctor (%B* %_this1){
__fresh800:
  %mem_ptr2735 = call i32* @oat_malloc ( i32 8 )
  %obj2736 = bitcast i32* %mem_ptr2735 to %A* 
  %new_obj2737 = call %A* @_A_ctor ( %A* %obj2736 )
  %_this1 = bitcast %A* %new_obj2737 to %B 
  %_name2738 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str471, i8** %_name2738
  %this_vtable2739 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable467, %_B_vtable** %this_vtable2739
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh799:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2731){
__fresh798:
  %x_slot2732 = alloca i32
  store i32 %x2731, i32* %x_slot2732
  %lhs_or_call2733 = load i32* %x_slot2732
  %bop2734 = add i32 %lhs_or_call2733, 8
  ret i32 %bop2734
}


define i32 @_A_over (%A* %_this1, i32 %x2727){
__fresh797:
  %x_slot2728 = alloca i32
  store i32 %x2727, i32* %x_slot2728
  %lhs_or_call2729 = load i32* %x_slot2728
  %bop2730 = add i32 %lhs_or_call2729, 1
  ret i32 %bop2730
}


define %A* @_A_ctor (%A* %_this1){
__fresh796:
  %mem_ptr2722 = call i32* @oat_malloc ( i32 8 )
  %obj2723 = bitcast i32* %mem_ptr2722 to %Object* 
  %new_obj2724 = call %Object* @_Object_ctor ( %Object* %obj2723 )
  %_this1 = bitcast %Object* %new_obj2724 to %A 
  %_name2725 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str470, i8** %_name2725
  %this_vtable2726 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable466, %_A_vtable** %this_vtable2726
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh795:
  %_name2720 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2721 = load i8** %_name2720
  ret i8* %lhs_or_call2721
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh794:
  %_name2718 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str469, i8** %_name2718
  %this_vtable2719 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable465, %_Object_vtable** %this_vtable2719
  ret %Object* %_this1
}


