%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%C*, i32)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)* }
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
@_const_str464.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str464 = alias bitcast([ 2 x i8 ]* @_const_str464.str. to i8*)@_const_str463.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str463 = alias bitcast([ 2 x i8 ]* @_const_str463.str. to i8*)@_const_str462.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str462 = alias bitcast([ 2 x i8 ]* @_const_str462.str. to i8*)@_const_str461.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str461 = alias bitcast([ 7 x i8 ]* @_const_str461.str. to i8*)@_C_vtable460 = private constant %_C_vtable {%_B_vtable* @_B_vtable459, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable459 = private constant %_B_vtable {%_A_vtable* @_A_vtable458, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable458 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable457, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable457 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh742:
  ret void
}


define i32 @program (i32 %argc2705, { i32, [ 0 x i8* ] }* %argv2703){
__fresh741:
  %argc_slot2706 = alloca i32
  store i32 %argc2705, i32* %argc_slot2706
  %argv_slot2704 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2703, { i32, [ 0 x i8* ] }** %argv_slot2704
  %mem_ptr2707 = call i32* @oat_malloc ( i32 8 )
  %obj2708 = bitcast i32* %mem_ptr2707 to %C* 
  %new_obj2709 = call %C* @_C_ctor ( %C* %obj2708 )
  %vdecl_slot2710 = alloca %C*
  store %C* %new_obj2709, %C** %vdecl_slot2710
  %lhs_or_call2711 = load %C** %vdecl_slot2710
  %vtable_ptr2712 = getelementptr %C* %lhs_or_call2711, i32 0
  %vtable2713 = load %_C_vtable** %vtable_ptr2712
  %call2715 = getelementptr %_C_vtable* %vtable2713, i32 0, i32 4
  %call2714 = load i32 (%C*)** %call2715
  %cast_op2716 = bitcast %C %lhs_or_call2711 to %C* 
  %ret2717 = call i32 %call2714 ( %C* %cast_op2716 )
  ret i32 %ret2717
}


define i32 @_C_call (%C* %_this1){
__fresh740:
  %vtable_ptr2697 = getelementptr %C* %_this1, i32 0
  %vtable2698 = load %_C_vtable** %vtable_ptr2697
  %over2700 = getelementptr %_C_vtable* %vtable2698, i32 0, i32 2
  %over2699 = load i32 (%B*, i32)** %over2700
  %cast_op2701 = bitcast %C %_this1 to %B* 
  %ret2702 = call i32 %over2699 ( %B* %cast_op2701, i32 3 )
  ret i32 %ret2702
}


define i32 @_C_notover (%C* %_this1, i32 %x2693){
__fresh739:
  %x_slot2694 = alloca i32
  store i32 %x2693, i32* %x_slot2694
  %lhs_or_call2695 = load i32* %x_slot2694
  %bop2696 = add i32 %lhs_or_call2695, 1
  ret i32 %bop2696
}


define %C* @_C_ctor (%C* %_this1){
__fresh738:
  %mem_ptr2688 = call i32* @oat_malloc ( i32 8 )
  %obj2689 = bitcast i32* %mem_ptr2688 to %B* 
  %new_obj2690 = call %B* @_B_ctor ( %B* %obj2689 )
  %_this1 = bitcast %B* %new_obj2690 to %C 
  %_name2691 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str464, i8** %_name2691
  %this_vtable2692 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable460, %_C_vtable** %this_vtable2692
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2684){
__fresh737:
  %x_slot2685 = alloca i32
  store i32 %x2684, i32* %x_slot2685
  %lhs_or_call2686 = load i32* %x_slot2685
  %bop2687 = add i32 %lhs_or_call2686, 2
  ret i32 %bop2687
}


define %B* @_B_ctor (%B* %_this1){
__fresh736:
  %mem_ptr2679 = call i32* @oat_malloc ( i32 8 )
  %obj2680 = bitcast i32* %mem_ptr2679 to %A* 
  %new_obj2681 = call %A* @_A_ctor ( %A* %obj2680 )
  %_this1 = bitcast %A* %new_obj2681 to %B 
  %_name2682 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %_name2682
  %this_vtable2683 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable459, %_B_vtable** %this_vtable2683
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2675){
__fresh735:
  %x_slot2676 = alloca i32
  store i32 %x2675, i32* %x_slot2676
  %lhs_or_call2677 = load i32* %x_slot2676
  %bop2678 = add i32 %lhs_or_call2677, 1
  ret i32 %bop2678
}


define %A* @_A_ctor (%A* %_this1){
__fresh734:
  %mem_ptr2670 = call i32* @oat_malloc ( i32 8 )
  %obj2671 = bitcast i32* %mem_ptr2670 to %Object* 
  %new_obj2672 = call %Object* @_Object_ctor ( %Object* %obj2671 )
  %_this1 = bitcast %Object* %new_obj2672 to %A 
  %_name2673 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str462, i8** %_name2673
  %this_vtable2674 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable458, %_A_vtable** %this_vtable2674
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh733:
  %_name2668 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2669 = load i8** %_name2668
  ret i8* %lhs_or_call2669
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh732:
  %_name2666 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str461, i8** %_name2666
  %this_vtable2667 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable457, %_Object_vtable** %this_vtable2667
  ret %Object* %_this1
}


