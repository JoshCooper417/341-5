%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@_B_vtable243 = private constant %_B_vtable {%_A_vtable* @_A_vtable242, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%B*)* @_B_call}, align 4
@_A_vtable242 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable241, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable241 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh477:
  ret void
}


define i32 @program (i32 %argc2758, { i32, [ 0 x i8* ] }* %argv2756){
__fresh476:
  %argc_slot2759 = alloca i32
  store i32 %argc2758, i32* %argc_slot2759
  %argv_slot2757 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2756, { i32, [ 0 x i8* ] }** %argv_slot2757
  %mem_ptr2760 = call i32* @oat_malloc ( i32 8 )
  %obj2761 = bitcast i32* %mem_ptr2760 to %B* 
  %new_obj2762 = call %B* @_B_ctor ( %B* %obj2761 )
  %vdecl_slot2763 = alloca %B*
  store %B* %new_obj2762, %B** %vdecl_slot2763
  %lhs_or_call2764 = load %B** %vdecl_slot2763
  %call2766 = getelementptr %_B_vtable* @_B_vtable243, i32 0, i32 3
  %call2765 = load i32 (%B*)** %call2766
  %cast_op2767 = bitcast %B %lhs_or_call2764 to %B* 
  %ret2768 = call i32 %call2765 ( %B* %cast_op2767 )
  ret i32 %ret2768
}


define i32 @_B_call (%B* %_this1){
__fresh475:
  %over2753 = getelementptr %_B_vtable* @_B_vtable243, i32 0, i32 2
  %over2752 = load i32 (%B*, i32)** %over2753
  %cast_op2754 = bitcast %B %_this1 to %B* 
  %ret2755 = call i32 %over2752 ( %B* %cast_op2754, i32 3 )
  ret i32 %ret2755
}


define i32 @_B_over (%B* %_this1, i32 %x2748){
__fresh474:
  %x_slot2749 = alloca i32
  store i32 %x2748, i32* %x_slot2749
  %lhs_or_call2750 = load i32* %x_slot2749
  %bop2751 = add i32 %lhs_or_call2750, 2
  ret i32 %bop2751
}


define %B* @_B_ctor (%B* %_this1){
__fresh473:
  %lhs_or_call2739 = load %B* %_this1
  %cast_op2740 = bitcast %B %lhs_or_call2739 to %A* 
  %mem_ptr2741 = call i32* @oat_malloc ( i32 8 )
  %obj2742 = bitcast i32* %mem_ptr2741 to %A* 
  %new_obj2743 = call %A* @_A_ctor ( %A* %obj2742, %A* %cast_op2740 )
  %_name2744 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call2745 = load %B* %_this1
  %cast_op2746 = bitcast %B %lhs_or_call2745 to i8* 
  store i8* %cast_op2746, i8** %_name2744
  %this_vtable2747 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2747
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2735){
__fresh472:
  %x_slot2736 = alloca i32
  store i32 %x2735, i32* %x_slot2736
  %lhs_or_call2737 = load i32* %x_slot2736
  %bop2738 = add i32 %lhs_or_call2737, 1
  ret i32 %bop2738
}


define %A* @_A_ctor (%A* %_this1){
__fresh471:
  %lhs_or_call2726 = load %A* %_this1
  %cast_op2727 = bitcast %A %lhs_or_call2726 to %Object* 
  %mem_ptr2728 = call i32* @oat_malloc ( i32 8 )
  %obj2729 = bitcast i32* %mem_ptr2728 to %Object* 
  %new_obj2730 = call %Object* @_Object_ctor ( %Object* %obj2729, %Object* %cast_op2727 )
  %_name2731 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2732 = load %A* %_this1
  %cast_op2733 = bitcast %A %lhs_or_call2732 to i8* 
  store i8* %cast_op2733, i8** %_name2731
  %this_vtable2734 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2734
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh470:
  %_name2724 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2725 = load i8** %_name2724
  ret i8* %lhs_or_call2725
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh469:
  %_name2720 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2721 = load %Object* %_this1
  %cast_op2722 = bitcast %Object %lhs_or_call2721 to i8* 
  store i8* %cast_op2722, i8** %_name2720
  %this_vtable2723 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2723
  ret %Object* %_this1
}


