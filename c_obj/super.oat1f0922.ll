%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str527.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str527 = alias bitcast([ 2 x i8 ]* @_const_str527.str. to i8*)@_const_str526.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str526 = alias bitcast([ 2 x i8 ]* @_const_str526.str. to i8*)@_const_str525.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str525 = alias bitcast([ 2 x i8 ]* @_const_str525.str. to i8*)@_const_str524.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str524 = alias bitcast([ 7 x i8 ]* @_const_str524.str. to i8*)@_C_vtable523 = private constant %_C_vtable {%_B_vtable* @_B_vtable522, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six}, align 4
@_B_vtable522 = private constant %_B_vtable {%_A_vtable* @_A_vtable521, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six}, align 4
@_A_vtable521 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable520, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six}, align 4
@_Object_vtable520 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh581:
  ret void
}


define i32 @program (i32 %argc2774, { i32, [ 0 x i8* ] }* %argv2772){
__fresh580:
  %argc_slot2775 = alloca i32
  store i32 %argc2774, i32* %argc_slot2775
  %argv_slot2773 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2772, { i32, [ 0 x i8* ] }** %argv_slot2773
  %mem_ptr2776 = call i32* @oat_malloc ( i32 8 )
  %obj2777 = bitcast i32* %mem_ptr2776 to %C* 
  %new_obj2778 = call %C* @_C_ctor ( %C* %obj2777 )
  %vdecl_slot2779 = alloca %C*
  store %C* %new_obj2778, %C** %vdecl_slot2779
  %lhs_or_call2780 = load %C** %vdecl_slot2779
  %vtable_ptr2781 = getelementptr %C* %lhs_or_call2780, i32 0
  %vtable2782 = load %_C_vtable** %vtable_ptr2781
  %six2784 = getelementptr %_C_vtable* %vtable2782, i32 0, i32 2
  %six2783 = load i32 (%C*)** %six2784
  %cast_op2785 = bitcast %C %lhs_or_call2780 to %C* 
  %ret2786 = call i32 %six2783 ( %C* %cast_op2785 )
  ret i32 %ret2786
}


define i32 @_C_six (%C* %_this1){
__fresh579:
  %vtable_ptr2765 = getelementptr %C* %_this1, i32 0
  %vtable2766 = load %_C_vtable** %vtable_ptr2765
  %six2768 = getelementptr %_C_vtable* %vtable2766, i32 0, i32 2
  %six2767 = load i32 (%C*)** %six2768
  %cast_op2769 = bitcast %C %_this1 to %C* 
  %ret2770 = call i32 %six2767 ( %C* %cast_op2769 )
  %bop2771 = add i32 %ret2770, 3
  ret i32 %bop2771
}


define %C* @_C_ctor (%C* %_this1){
__fresh578:
  %mem_ptr2760 = call i32* @oat_malloc ( i32 8 )
  %obj2761 = bitcast i32* %mem_ptr2760 to %B* 
  %new_obj2762 = call %B* @_B_ctor ( %B* %obj2761 )
  %_this1 = bitcast %B* %new_obj2762 to %C 
  %_name2763 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str527, i8** %_name2763
  %this_vtable2764 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable523, %_C_vtable** %this_vtable2764
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh577:
  %vtable_ptr2753 = getelementptr %B* %_this1, i32 0
  %vtable2754 = load %_B_vtable** %vtable_ptr2753
  %six2756 = getelementptr %_B_vtable* %vtable2754, i32 0, i32 2
  %six2755 = load i32 (%B*)** %six2756
  %cast_op2757 = bitcast %B %_this1 to %B* 
  %ret2758 = call i32 %six2755 ( %B* %cast_op2757 )
  %bop2759 = add i32 %ret2758, 2
  ret i32 %bop2759
}


define %B* @_B_ctor (%B* %_this1){
__fresh576:
  %mem_ptr2748 = call i32* @oat_malloc ( i32 8 )
  %obj2749 = bitcast i32* %mem_ptr2748 to %A* 
  %new_obj2750 = call %A* @_A_ctor ( %A* %obj2749 )
  %_this1 = bitcast %A* %new_obj2750 to %B 
  %_name2751 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str526, i8** %_name2751
  %this_vtable2752 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable522, %_B_vtable** %this_vtable2752
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh575:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh574:
  %mem_ptr2743 = call i32* @oat_malloc ( i32 8 )
  %obj2744 = bitcast i32* %mem_ptr2743 to %Object* 
  %new_obj2745 = call %Object* @_Object_ctor ( %Object* %obj2744 )
  %_this1 = bitcast %Object* %new_obj2745 to %A 
  %_name2746 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str525, i8** %_name2746
  %this_vtable2747 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable521, %_A_vtable** %this_vtable2747
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh573:
  %_name2741 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2742 = load i8** %_name2741
  ret i8* %lhs_or_call2742
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh572:
  %_name2739 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str524, i8** %_name2739
  %this_vtable2740 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable520, %_Object_vtable** %this_vtable2740
  ret %Object* %_this1
}


