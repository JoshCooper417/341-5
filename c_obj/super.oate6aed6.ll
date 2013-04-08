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


define i32 @program (i32 %argc2781, { i32, [ 0 x i8* ] }* %argv2779){
__fresh580:
  %argc_slot2782 = alloca i32
  store i32 %argc2781, i32* %argc_slot2782
  %argv_slot2780 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2779, { i32, [ 0 x i8* ] }** %argv_slot2780
  %mem_ptr2783 = call i32* @oat_malloc ( i32 8 )
  %obj2784 = bitcast i32* %mem_ptr2783 to %C* 
  %new_obj2785 = call %C* @_C_ctor ( %C* %obj2784 )
  %vdecl_slot2786 = alloca %C*
  store %C* %new_obj2785, %C** %vdecl_slot2786
  %lhs_or_call2787 = load %C** %vdecl_slot2786
  %vtable_ptr2788 = getelementptr %C* %lhs_or_call2787, i32 0
  %vtable2789 = load %_C_vtable** %vtable_ptr2788
  %six2791 = getelementptr %_C_vtable* %vtable2789, i32 0, i32 2
  %six2790 = load i32 (%C*)** %six2791
  %cast_op2792 = bitcast %C %lhs_or_call2787 to %C* 
  %ret2793 = call i32 %six2790 ( %C* %cast_op2792 )
  ret i32 %ret2793
}


define i32 @_C_six (%C* %_this1){
__fresh579:
  %vtable_ptr2772 = getelementptr %C* %_this1, i32 0
  %vtable2773 = load %_C_vtable** %vtable_ptr2772
  %six2775 = getelementptr %_C_vtable* %vtable2773, i32 0, i32 2
  %six2774 = load i32 (%C*)** %six2775
  %cast_op2776 = bitcast %C %_this1 to %C* 
  %ret2777 = call i32 %six2774 ( %C* %cast_op2776 )
  %bop2778 = add i32 %ret2777, 3
  ret i32 %bop2778
}


define %C* @_C_ctor (%C* %_this1){
__fresh578:
  %mem_ptr2767 = call i32* @oat_malloc ( i32 8 )
  %obj2768 = bitcast i32* %mem_ptr2767 to %B* 
  %new_obj2769 = call %B* @_B_ctor ( %B* %obj2768 )
  %_this1 = bitcast %B* %new_obj2769 to %C 
  %_name2770 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str527, i8** %_name2770
  %this_vtable2771 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable523, %_C_vtable** %this_vtable2771
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh577:
  %vtable_ptr2760 = getelementptr %B* %_this1, i32 0
  %vtable2761 = load %_B_vtable** %vtable_ptr2760
  %six2763 = getelementptr %_B_vtable* %vtable2761, i32 0, i32 2
  %six2762 = load i32 (%B*)** %six2763
  %cast_op2764 = bitcast %B %_this1 to %B* 
  %ret2765 = call i32 %six2762 ( %B* %cast_op2764 )
  %bop2766 = add i32 %ret2765, 2
  ret i32 %bop2766
}


define %B* @_B_ctor (%B* %_this1){
__fresh576:
  %mem_ptr2755 = call i32* @oat_malloc ( i32 8 )
  %obj2756 = bitcast i32* %mem_ptr2755 to %A* 
  %new_obj2757 = call %A* @_A_ctor ( %A* %obj2756 )
  %_this1 = bitcast %A* %new_obj2757 to %B 
  %_name2758 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str526, i8** %_name2758
  %this_vtable2759 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable522, %_B_vtable** %this_vtable2759
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh575:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh574:
  %mem_ptr2750 = call i32* @oat_malloc ( i32 8 )
  %obj2751 = bitcast i32* %mem_ptr2750 to %Object* 
  %new_obj2752 = call %Object* @_Object_ctor ( %Object* %obj2751 )
  %_this1 = bitcast %Object* %new_obj2752 to %A 
  %_name2753 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str525, i8** %_name2753
  %this_vtable2754 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable521, %_A_vtable** %this_vtable2754
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh573:
  %_name2748 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2749 = load i8** %_name2748
  ret i8* %lhs_or_call2749
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh572:
  %_name2746 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str524, i8** %_name2746
  %this_vtable2747 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable520, %_Object_vtable** %this_vtable2747
  ret %Object* %_this1
}


