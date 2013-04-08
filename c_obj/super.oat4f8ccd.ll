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


define i32 @program (i32 %argc2784, { i32, [ 0 x i8* ] }* %argv2782){
__fresh580:
  %argc_slot2785 = alloca i32
  store i32 %argc2784, i32* %argc_slot2785
  %argv_slot2783 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2782, { i32, [ 0 x i8* ] }** %argv_slot2783
  %mem_ptr2786 = call i32* @oat_malloc ( i32 8 )
  %obj2787 = bitcast i32* %mem_ptr2786 to %C* 
  %new_obj2788 = call %C* @_C_ctor ( %C* %obj2787 )
  %vdecl_slot2789 = alloca %C*
  store %C* %new_obj2788, %C** %vdecl_slot2789
  %lhs_or_call2790 = load %C** %vdecl_slot2789
  %six2792 = getelementptr %_C_vtable* @_C_vtable534, i32 0, i32 2
  %six2791 = load i32 (%C*)** %six2792
  %cast_op2793 = bitcast %C %lhs_or_call2790 to %C* 
  %ret2794 = call i32 %six2791 ( %C* %cast_op2793 )
  ret i32 %ret2794
}


define i32 @_C_six (%C* %_this1){
__fresh579:
  %six2778 = getelementptr %_C_vtable* @_C_vtable534, i32 0, i32 2
  %six2777 = load i32 (%C*)** %six2778
  %cast_op2779 = bitcast %C %_this1 to %C* 
  %ret2780 = call i32 %six2777 ( %C* %cast_op2779 )
  %bop2781 = add i32 %ret2780, 3
  ret i32 %bop2781
}


define %C* @_C_ctor (%C* %_this1){
__fresh578:
  %cast_op2771 = bitcast %C* %_this1 to %B* 
  %mem_ptr2772 = call i32* @oat_malloc ( i32 8 )
  %obj2773 = bitcast i32* %mem_ptr2772 to %C* 
  %new_obj2774 = call %B* @_B_ctor ( %C* %obj2773, %B* %cast_op2771 )
  %_this1 = bitcast %B* %new_obj2774 to %C 
  %_name2775 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str538, i8** %_name2775
  %this_vtable2776 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable534, %_C_vtable** %this_vtable2776
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh577:
  %six2767 = getelementptr %_B_vtable* @_B_vtable533, i32 0, i32 2
  %six2766 = load i32 (%B*)** %six2767
  %cast_op2768 = bitcast %B %_this1 to %B* 
  %ret2769 = call i32 %six2766 ( %B* %cast_op2768 )
  %bop2770 = add i32 %ret2769, 2
  ret i32 %bop2770
}


define %B* @_B_ctor (%B* %_this1){
__fresh576:
  %cast_op2760 = bitcast %B* %_this1 to %A* 
  %mem_ptr2761 = call i32* @oat_malloc ( i32 8 )
  %obj2762 = bitcast i32* %mem_ptr2761 to %B* 
  %new_obj2763 = call %A* @_A_ctor ( %B* %obj2762, %A* %cast_op2760 )
  %_this1 = bitcast %A* %new_obj2763 to %B 
  %_name2764 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str537, i8** %_name2764
  %this_vtable2765 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable533, %_B_vtable** %this_vtable2765
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh575:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh574:
  %cast_op2754 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2755 = call i32* @oat_malloc ( i32 8 )
  %obj2756 = bitcast i32* %mem_ptr2755 to %A* 
  %new_obj2757 = call %Object* @_Object_ctor ( %A* %obj2756, %Object* %cast_op2754 )
  %_this1 = bitcast %Object* %new_obj2757 to %A 
  %_name2758 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str536, i8** %_name2758
  %this_vtable2759 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable532, %_A_vtable** %this_vtable2759
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh573:
  %_name2752 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2753 = load i8** %_name2752
  ret i8* %lhs_or_call2753
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh572:
  %_name2750 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str535, i8** %_name2750
  %this_vtable2751 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable531, %_Object_vtable** %this_vtable2751
  ret %Object* %_this1
}


