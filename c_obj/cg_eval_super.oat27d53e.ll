%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*, i32)* }
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
@a239 = global %A* zeroinitializer, align 4		; initialized by @a239.init240
@_C_vtable238 = private constant %_C_vtable {%_B_vtable* @_B_vtable237, i8* (%Object*)* @_Object_get_name, i32 (%C*, i32)* @_C_over}, align 4
@_B_vtable237 = private constant %_B_vtable {%_A_vtable* @_A_vtable236, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable236 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable235, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable235 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh468:
  call void @a239.init240(  )
  ret void
}


define i32 @program (i32 %argc2713, { i32, [ 0 x i8* ] }* %argv2711){
__fresh467:
  %argc_slot2714 = alloca i32
  store i32 %argc2713, i32* %argc_slot2714
  %argv_slot2712 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2711, { i32, [ 0 x i8* ] }** %argv_slot2712
  %lhs_or_call2715 = load %A** @a239
  %over2717 = getelementptr %_A_vtable* @_A_vtable236, i32 0, i32 2
  %over2716 = load i32 (%A*, i32)** %over2717
  %cast_op2718 = bitcast %A %lhs_or_call2715 to %A* 
  %ret2719 = call i32 %over2716 ( %A* %cast_op2718, i32 3 )
  ret i32 %ret2719
}


define void @a239.init240 (){
__fresh466:
  %mem_ptr2707 = call i32* @oat_malloc ( i32 8 )
  %obj2708 = bitcast i32* %mem_ptr2707 to %C* 
  %new_obj2709 = call %C* @_C_ctor ( %C* %obj2708 )
  %cast_op2710 = bitcast %C* %new_obj2709 to %A* 
  store %A* %cast_op2710, %A** @a239
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2697){
__fresh465:
  %x_slot2698 = alloca i32
  store i32 %x2697, i32* %x_slot2698
  %lhs_or_call2699 = load i32* %x_slot2698
  %bop2700 = add i32 %lhs_or_call2699, 1
  %lhs_or_call2701 = load i32* %x_slot2698
  %over2703 = getelementptr %_C_vtable* @_C_vtable238, i32 0, i32 2
  %over2702 = load i32 (%C*, i32)** %over2703
  %cast_op2704 = bitcast %C %_this1 to %C* 
  %ret2705 = call i32 %over2702 ( %C* %cast_op2704, i32 %lhs_or_call2701 )
  %bop2706 = add i32 %bop2700, %ret2705
  ret i32 %bop2706
}


define %C* @_C_ctor (%C* %_this1){
__fresh464:
  %lhs_or_call2688 = load %C* %_this1
  %cast_op2689 = bitcast %C %lhs_or_call2688 to %B* 
  %mem_ptr2690 = call i32* @oat_malloc ( i32 8 )
  %obj2691 = bitcast i32* %mem_ptr2690 to %B* 
  %new_obj2692 = call %B* @_B_ctor ( %B* %obj2691, %B* %cast_op2689 )
  %_name2693 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call2694 = load %C* %_this1
  %cast_op2695 = bitcast %C %lhs_or_call2694 to i8* 
  store i8* %cast_op2695, i8** %_name2693
  %this_vtable2696 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable2696
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2684){
__fresh463:
  %x_slot2685 = alloca i32
  store i32 %x2684, i32* %x_slot2685
  %lhs_or_call2686 = load i32* %x_slot2685
  %bop2687 = add i32 %lhs_or_call2686, 2
  ret i32 %bop2687
}


define %B* @_B_ctor (%B* %_this1){
__fresh462:
  %lhs_or_call2675 = load %B* %_this1
  %cast_op2676 = bitcast %B %lhs_or_call2675 to %A* 
  %mem_ptr2677 = call i32* @oat_malloc ( i32 8 )
  %obj2678 = bitcast i32* %mem_ptr2677 to %A* 
  %new_obj2679 = call %A* @_A_ctor ( %A* %obj2678, %A* %cast_op2676 )
  %_name2680 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call2681 = load %B* %_this1
  %cast_op2682 = bitcast %B %lhs_or_call2681 to i8* 
  store i8* %cast_op2682, i8** %_name2680
  %this_vtable2683 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2683
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2671){
__fresh461:
  %x_slot2672 = alloca i32
  store i32 %x2671, i32* %x_slot2672
  %lhs_or_call2673 = load i32* %x_slot2672
  %bop2674 = add i32 %lhs_or_call2673, 1
  ret i32 %bop2674
}


define %A* @_A_ctor (%A* %_this1){
__fresh460:
  %lhs_or_call2662 = load %A* %_this1
  %cast_op2663 = bitcast %A %lhs_or_call2662 to %Object* 
  %mem_ptr2664 = call i32* @oat_malloc ( i32 8 )
  %obj2665 = bitcast i32* %mem_ptr2664 to %Object* 
  %new_obj2666 = call %Object* @_Object_ctor ( %Object* %obj2665, %Object* %cast_op2663 )
  %_name2667 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2668 = load %A* %_this1
  %cast_op2669 = bitcast %A %lhs_or_call2668 to i8* 
  store i8* %cast_op2669, i8** %_name2667
  %this_vtable2670 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2670
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh459:
  %_name2660 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2661 = load i8** %_name2660
  ret i8* %lhs_or_call2661
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh458:
  %_name2656 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2657 = load %Object* %_this1
  %cast_op2658 = bitcast %Object %lhs_or_call2657 to i8* 
  store i8* %cast_op2658, i8** %_name2656
  %this_vtable2659 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2659
  ret %Object* %_this1
}


