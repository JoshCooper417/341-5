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
@_const_str538.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str538 = alias bitcast([ 2 x i8 ]* @_const_str538.str. to i8*)@_const_str537.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str537 = alias bitcast([ 2 x i8 ]* @_const_str537.str. to i8*)@_const_str536.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str536 = alias bitcast([ 2 x i8 ]* @_const_str536.str. to i8*)@_const_str535.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str535 = alias bitcast([ 7 x i8 ]* @_const_str535.str. to i8*)@_C_vtable534 = private constant %_C_vtable {%_B_vtable* @_B_vtable533, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six}, align 4
@_B_vtable533 = private constant %_B_vtable {%_A_vtable* @_A_vtable532, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six}, align 4
@_A_vtable532 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable531, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six}, align 4
@_Object_vtable531 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh581:
  ret void
}


define i32 @program (i32 %argc2793, { i32, [ 0 x i8* ] }* %argv2791){
__fresh580:
  %argc_slot2794 = alloca i32
  store i32 %argc2793, i32* %argc_slot2794
  %argv_slot2792 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2791, { i32, [ 0 x i8* ] }** %argv_slot2792
  %mem_ptr2795 = call i32* @oat_malloc ( i32 8 )
  %obj2796 = bitcast i32* %mem_ptr2795 to %C* 
  %new_obj2797 = call %C* @_C_ctor ( %C* %obj2796 )
  %vdecl_slot2798 = alloca %C*
  store %C* %new_obj2797, %C** %vdecl_slot2798
  %lhs_or_call2799 = load %C** %vdecl_slot2798
  %vtable_ptr2800 = getelementptr %C* %lhs_or_call2799, i32 0
  %vtable2801 = load %_C_vtable** %vtable_ptr2800
  %six2803 = getelementptr %_C_vtable* %vtable2801, i32 0, i32 2
  %six2802 = load i32 (%C*)** %six2803
  %cast_op2804 = bitcast %C %lhs_or_call2799 to %C* 
  %ret2805 = call i32 %six2802 ( %C* %cast_op2804 )
  ret i32 %ret2805
}


define i32 @_C_six (%C* %_this1){
__fresh579:
  %vtable_ptr2784 = getelementptr %C* %_this1, i32 0
  %vtable2785 = load %_C_vtable** %vtable_ptr2784
  %six2787 = getelementptr %_C_vtable* %vtable2785, i32 0, i32 2
  %six2786 = load i32 (%C*)** %six2787
  %cast_op2788 = bitcast %C %_this1 to %C* 
  %ret2789 = call i32 %six2786 ( %C* %cast_op2788 )
  %bop2790 = add i32 %ret2789, 3
  ret i32 %bop2790
}


define %C* @_C_ctor (%C* %_this1){
__fresh578:
  %mem_ptr2779 = call i32* @oat_malloc ( i32 8 )
  %obj2780 = bitcast i32* %mem_ptr2779 to %B* 
  %new_obj2781 = call %B* @_B_ctor ( %B* %obj2780 )
  %_this1 = bitcast %B* %new_obj2781 to %C 
  %_name2782 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str538, i8** %_name2782
  %this_vtable2783 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable534, %_C_vtable** %this_vtable2783
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh577:
  %vtable_ptr2772 = getelementptr %B* %_this1, i32 0
  %vtable2773 = load %_B_vtable** %vtable_ptr2772
  %six2775 = getelementptr %_B_vtable* %vtable2773, i32 0, i32 2
  %six2774 = load i32 (%B*)** %six2775
  %cast_op2776 = bitcast %B %_this1 to %B* 
  %ret2777 = call i32 %six2774 ( %B* %cast_op2776 )
  %bop2778 = add i32 %ret2777, 2
  ret i32 %bop2778
}


define %B* @_B_ctor (%B* %_this1){
__fresh576:
  %mem_ptr2767 = call i32* @oat_malloc ( i32 8 )
  %obj2768 = bitcast i32* %mem_ptr2767 to %A* 
  %new_obj2769 = call %A* @_A_ctor ( %A* %obj2768 )
  %_this1 = bitcast %A* %new_obj2769 to %B 
  %_name2770 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str537, i8** %_name2770
  %this_vtable2771 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable533, %_B_vtable** %this_vtable2771
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh575:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh574:
  %mem_ptr2762 = call i32* @oat_malloc ( i32 8 )
  %obj2763 = bitcast i32* %mem_ptr2762 to %Object* 
  %new_obj2764 = call %Object* @_Object_ctor ( %Object* %obj2763 )
  %_this1 = bitcast %Object* %new_obj2764 to %A 
  %_name2765 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str536, i8** %_name2765
  %this_vtable2766 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable532, %_A_vtable** %this_vtable2766
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh573:
  %_name2760 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2761 = load i8** %_name2760
  ret i8* %lhs_or_call2761
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh572:
  %_name2758 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str535, i8** %_name2758
  %this_vtable2759 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable531, %_Object_vtable** %this_vtable2759
  ret %Object* %_this1
}


