%Point = type { %_Point_vtable*, i8*, i32, i32 }
%_Point_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Point* (%Point*, i32, i32)* }
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
@_const_str516.str. = private unnamed_addr constant [ 6 x i8 ] c "Point\00", align 4
@_const_str516 = alias bitcast([ 6 x i8 ]* @_const_str516.str. to i8*)@_const_str515.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str515 = alias bitcast([ 7 x i8 ]* @_const_str515.str. to i8*)@_Point_vtable514 = private constant %_Point_vtable {%_Object_vtable* @_Object_vtable513, i8* (%Object*)* @_Object_get_name, %Point* (%Point*, i32, i32)* @_Point_move}, align 4
@_Object_vtable513 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh563:
  ret void
}


define i32 @program (i32 %argc2705, { i32, [ 0 x i8* ] }* %argv2703){
__fresh562:
  %argc_slot2706 = alloca i32
  store i32 %argc2705, i32* %argc_slot2706
  %argv_slot2704 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2703, { i32, [ 0 x i8* ] }** %argv_slot2704
  %mem_ptr2707 = call i32* @oat_malloc ( i32 16 )
  %obj2708 = bitcast i32* %mem_ptr2707 to %Point* 
  %new_obj2709 = call %Point* @_Point_ctor ( %Point* %obj2708 )
  %vdecl_slot2710 = alloca %Point*
  store %Point* %new_obj2709, %Point** %vdecl_slot2710
  %lhs_or_call2711 = load %Point** %vdecl_slot2710
  %vtable_ptr2712 = getelementptr %Point* %lhs_or_call2711, i32 0
  %vtable2713 = load %_Point_vtable** %vtable_ptr2712
  %move2715 = getelementptr %_Point_vtable* %vtable2713, i32 0, i32 2
  %move2714 = load %Point* (%Point*, i32, i32)** %move2715
  %cast_op2716 = bitcast %Point %lhs_or_call2711 to %Point* 
  %ret2717 = call %Point* %move2714 ( %Point* %cast_op2716, i32 3, i32 4 )
  %vdecl_slot2718 = alloca %Point*
  store %Point* %ret2717, %Point** %vdecl_slot2718
  %lhs_or_call2719 = load %Point** %vdecl_slot2718
  %x2720 = getelementptr %Point* %lhs_or_call2719, i32 0, i32 2
  %lhs_or_call2721 = load i32* %x2720
  ret i32 %lhs_or_call2721
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2691, i32 %dy2689){
__fresh561:
  %dx_slot2692 = alloca i32
  store i32 %dx2691, i32* %dx_slot2692
  %dy_slot2690 = alloca i32
  store i32 %dy2689, i32* %dy_slot2690
  %x2693 = getelementptr %Point* %_this1, i32 0, i32 2
  %x2694 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2695 = load i32* %x2694
  %lhs_or_call2696 = load i32* %dx_slot2692
  %bop2697 = add i32 %lhs_or_call2695, %lhs_or_call2696
  store i32 %bop2697, i32* %x2693
  %y2698 = getelementptr %Point* %_this1, i32 0, i32 3
  %y2699 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2700 = load i32* %y2699
  %lhs_or_call2701 = load i32* %dy_slot2690
  %bop2702 = add i32 %lhs_or_call2700, %lhs_or_call2701
  store i32 %bop2702, i32* %y2698
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh560:
  %mem_ptr2684 = call i32* @oat_malloc ( i32 8 )
  %obj2685 = bitcast i32* %mem_ptr2684 to %Object* 
  %new_obj2686 = call %Object* @_Object_ctor ( %Object* %obj2685 )
  %_this1 = bitcast %Object* %new_obj2686 to %Point 
  %_name2687 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str516, i8** %_name2687
  %this_vtable2688 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable514, %_Point_vtable** %this_vtable2688
  %x2682 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x2682
  %y2683 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y2683
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh559:
  %_name2680 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2681 = load i8** %_name2680
  ret i8* %lhs_or_call2681
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh558:
  %_name2678 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str515, i8** %_name2678
  %this_vtable2679 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable513, %_Object_vtable** %this_vtable2679
  ret %Object* %_this1
}


