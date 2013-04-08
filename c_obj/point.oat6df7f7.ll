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
@_const_str505.str. = private unnamed_addr constant [ 6 x i8 ] c "Point\00", align 4
@_const_str505 = alias bitcast([ 6 x i8 ]* @_const_str505.str. to i8*)@_const_str504.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str504 = alias bitcast([ 7 x i8 ]* @_const_str504.str. to i8*)@_Point_vtable503 = private constant %_Point_vtable {%_Object_vtable* @_Object_vtable502, i8* (%Object*)* @_Object_get_name, %Point* (%Point*, i32, i32)* @_Point_move}, align 4
@_Object_vtable502 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh563:
  ret void
}


define i32 @program (i32 %argc2686, { i32, [ 0 x i8* ] }* %argv2684){
__fresh562:
  %argc_slot2687 = alloca i32
  store i32 %argc2686, i32* %argc_slot2687
  %argv_slot2685 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2684, { i32, [ 0 x i8* ] }** %argv_slot2685
  %mem_ptr2688 = call i32* @oat_malloc ( i32 16 )
  %obj2689 = bitcast i32* %mem_ptr2688 to %Point* 
  %new_obj2690 = call %Point* @_Point_ctor ( %Point* %obj2689 )
  %vdecl_slot2691 = alloca %Point*
  store %Point* %new_obj2690, %Point** %vdecl_slot2691
  %lhs_or_call2692 = load %Point** %vdecl_slot2691
  %vtable_ptr2693 = getelementptr %Point* %lhs_or_call2692, i32 0
  %vtable2694 = load %_Point_vtable** %vtable_ptr2693
  %move2696 = getelementptr %_Point_vtable* %vtable2694, i32 0, i32 2
  %move2695 = load %Point* (%Point*, i32, i32)** %move2696
  %cast_op2697 = bitcast %Point %lhs_or_call2692 to %Point* 
  %ret2698 = call %Point* %move2695 ( %Point* %cast_op2697, i32 3, i32 4 )
  %vdecl_slot2699 = alloca %Point*
  store %Point* %ret2698, %Point** %vdecl_slot2699
  %lhs_or_call2700 = load %Point** %vdecl_slot2699
  %x2701 = getelementptr %Point* %lhs_or_call2700, i32 0, i32 2
  %lhs_or_call2702 = load i32* %x2701
  ret i32 %lhs_or_call2702
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2672, i32 %dy2670){
__fresh561:
  %dx_slot2673 = alloca i32
  store i32 %dx2672, i32* %dx_slot2673
  %dy_slot2671 = alloca i32
  store i32 %dy2670, i32* %dy_slot2671
  %x2674 = getelementptr %Point* %_this1, i32 0, i32 2
  %x2675 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2676 = load i32* %x2675
  %lhs_or_call2677 = load i32* %dx_slot2673
  %bop2678 = add i32 %lhs_or_call2676, %lhs_or_call2677
  store i32 %bop2678, i32* %x2674
  %y2679 = getelementptr %Point* %_this1, i32 0, i32 3
  %y2680 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2681 = load i32* %y2680
  %lhs_or_call2682 = load i32* %dy_slot2671
  %bop2683 = add i32 %lhs_or_call2681, %lhs_or_call2682
  store i32 %bop2683, i32* %y2679
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh560:
  %mem_ptr2665 = call i32* @oat_malloc ( i32 8 )
  %obj2666 = bitcast i32* %mem_ptr2665 to %Object* 
  %new_obj2667 = call %Object* @_Object_ctor ( %Object* %obj2666 )
  %_this1 = bitcast %Object* %new_obj2667 to %Point 
  %_name2668 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str505, i8** %_name2668
  %this_vtable2669 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable503, %_Point_vtable** %this_vtable2669
  %x2663 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x2663
  %y2664 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y2664
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh559:
  %_name2661 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2662 = load i8** %_name2661
  ret i8* %lhs_or_call2662
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh558:
  %_name2659 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str504, i8** %_name2659
  %this_vtable2660 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable502, %_Object_vtable** %this_vtable2660
  ret %Object* %_this1
}


