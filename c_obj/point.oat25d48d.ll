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


define i32 @program (i32 %argc2696, { i32, [ 0 x i8* ] }* %argv2694){
__fresh562:
  %argc_slot2697 = alloca i32
  store i32 %argc2696, i32* %argc_slot2697
  %argv_slot2695 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2694, { i32, [ 0 x i8* ] }** %argv_slot2695
  %mem_ptr2698 = call i32* @oat_malloc ( i32 16 )
  %obj2699 = bitcast i32* %mem_ptr2698 to %Point* 
  %new_obj2700 = call %Point* @_Point_ctor ( %Point* %obj2699 )
  %vdecl_slot2701 = alloca %Point*
  store %Point* %new_obj2700, %Point** %vdecl_slot2701
  %lhs_or_call2702 = load %Point** %vdecl_slot2701
  %move2704 = getelementptr %_Point_vtable* @_Point_vtable514, i32 0, i32 2
  %move2703 = load %Point* (%Point*, i32, i32)** %move2704
  %cast_op2705 = bitcast %Point %lhs_or_call2702 to %Point* 
  %ret2706 = call %Point* %move2703 ( %Point* %cast_op2705, i32 3, i32 4 )
  %vdecl_slot2707 = alloca %Point*
  store %Point* %ret2706, %Point** %vdecl_slot2707
  %lhs_or_call2708 = load %Point** %vdecl_slot2707
  %x2709 = getelementptr %Point* %lhs_or_call2708, i32 0, i32 2
  %lhs_or_call2710 = load i32* %x2709
  ret i32 %lhs_or_call2710
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2682, i32 %dy2680){
__fresh561:
  %dx_slot2683 = alloca i32
  store i32 %dx2682, i32* %dx_slot2683
  %dy_slot2681 = alloca i32
  store i32 %dy2680, i32* %dy_slot2681
  %x2684 = getelementptr %Point* %_this1, i32 0, i32 2
  %x2685 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2686 = load i32* %x2685
  %lhs_or_call2687 = load i32* %dx_slot2683
  %bop2688 = add i32 %lhs_or_call2686, %lhs_or_call2687
  store i32 %bop2688, i32* %x2684
  %y2689 = getelementptr %Point* %_this1, i32 0, i32 3
  %y2690 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2691 = load i32* %y2690
  %lhs_or_call2692 = load i32* %dy_slot2681
  %bop2693 = add i32 %lhs_or_call2691, %lhs_or_call2692
  store i32 %bop2693, i32* %y2689
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh560:
  %cast_op2674 = bitcast %Point* %_this1 to %Object* 
  %mem_ptr2675 = call i32* @oat_malloc ( i32 16 )
  %obj2676 = bitcast i32* %mem_ptr2675 to %Point* 
  %new_obj2677 = call %Object* @_Object_ctor ( %Point* %obj2676, %Object* %cast_op2674 )
  %_this1 = bitcast %Object* %new_obj2677 to %Point 
  %_name2678 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str516, i8** %_name2678
  %this_vtable2679 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable514, %_Point_vtable** %this_vtable2679
  %x2672 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x2672
  %y2673 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y2673
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh559:
  %_name2670 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2671 = load i8** %_name2670
  ret i8* %lhs_or_call2671
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh558:
  %_name2668 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str515, i8** %_name2668
  %this_vtable2669 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable513, %_Object_vtable** %this_vtable2669
  ret %Object* %_this1
}


