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


define i32 @program (i32 %argc2693, { i32, [ 0 x i8* ] }* %argv2691){
__fresh562:
  %argc_slot2694 = alloca i32
  store i32 %argc2693, i32* %argc_slot2694
  %argv_slot2692 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2691, { i32, [ 0 x i8* ] }** %argv_slot2692
  %mem_ptr2695 = call i32* @oat_malloc ( i32 16 )
  %obj2696 = bitcast i32* %mem_ptr2695 to %Point* 
  %new_obj2697 = call %Point* @_Point_ctor ( %Point* %obj2696 )
  %vdecl_slot2698 = alloca %Point*
  store %Point* %new_obj2697, %Point** %vdecl_slot2698
  %lhs_or_call2699 = load %Point** %vdecl_slot2698
  %vtable_ptr2700 = getelementptr %Point* %lhs_or_call2699, i32 0
  %vtable2701 = load %_Point_vtable** %vtable_ptr2700
  %move2703 = getelementptr %_Point_vtable* %vtable2701, i32 0, i32 2
  %move2702 = load %Point* (%Point*, i32, i32)** %move2703
  %cast_op2704 = bitcast %Point %lhs_or_call2699 to %Point* 
  %ret2705 = call %Point* %move2702 ( %Point* %cast_op2704, i32 3, i32 4 )
  %vdecl_slot2706 = alloca %Point*
  store %Point* %ret2705, %Point** %vdecl_slot2706
  %lhs_or_call2707 = load %Point** %vdecl_slot2706
  %x2708 = getelementptr %Point* %lhs_or_call2707, i32 0, i32 2
  %lhs_or_call2709 = load i32* %x2708
  ret i32 %lhs_or_call2709
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2679, i32 %dy2677){
__fresh561:
  %dx_slot2680 = alloca i32
  store i32 %dx2679, i32* %dx_slot2680
  %dy_slot2678 = alloca i32
  store i32 %dy2677, i32* %dy_slot2678
  %x2681 = getelementptr %Point* %_this1, i32 0, i32 2
  %x2682 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2683 = load i32* %x2682
  %lhs_or_call2684 = load i32* %dx_slot2680
  %bop2685 = add i32 %lhs_or_call2683, %lhs_or_call2684
  store i32 %bop2685, i32* %x2681
  %y2686 = getelementptr %Point* %_this1, i32 0, i32 3
  %y2687 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2688 = load i32* %y2687
  %lhs_or_call2689 = load i32* %dy_slot2678
  %bop2690 = add i32 %lhs_or_call2688, %lhs_or_call2689
  store i32 %bop2690, i32* %y2686
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh560:
  %mem_ptr2672 = call i32* @oat_malloc ( i32 8 )
  %obj2673 = bitcast i32* %mem_ptr2672 to %Object* 
  %new_obj2674 = call %Object* @_Object_ctor ( %Object* %obj2673 )
  %_this1 = bitcast %Object* %new_obj2674 to %Point 
  %_name2675 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str505, i8** %_name2675
  %this_vtable2676 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable503, %_Point_vtable** %this_vtable2676
  %x2670 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x2670
  %y2671 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y2671
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh559:
  %_name2668 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2669 = load i8** %_name2668
  ret i8* %lhs_or_call2669
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh558:
  %_name2666 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str504, i8** %_name2666
  %this_vtable2667 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable502, %_Object_vtable** %this_vtable2667
  ret %Object* %_this1
}


