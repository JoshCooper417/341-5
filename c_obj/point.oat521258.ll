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
@_const_str525.str. = private unnamed_addr constant [ 6 x i8 ] c "Point\00", align 4
@_const_str525 = alias bitcast([ 6 x i8 ]* @_const_str525.str. to i8*)@_const_str524.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str524 = alias bitcast([ 7 x i8 ]* @_const_str524.str. to i8*)@_Point_vtable523 = private constant %_Point_vtable {%_Object_vtable* @_Object_vtable522, i8* (%Object*)* @_Object_get_name, %Point* (%Point*, i32, i32)* @_Point_move}, align 4
@_Object_vtable522 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh583:
  ret void
}


define i32 @program (i32 %argc2731, { i32, [ 0 x i8* ] }* %argv2729){
__fresh582:
  %argc_slot2732 = alloca i32
  store i32 %argc2731, i32* %argc_slot2732
  %argv_slot2730 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2729, { i32, [ 0 x i8* ] }** %argv_slot2730
  %mem_ptr2733 = call i32* @oat_malloc ( i32 16 )
  %obj2734 = bitcast i32* %mem_ptr2733 to %Point* 
  %new_obj2735 = call %Point* @_Point_ctor ( %Point* %obj2734 )
  %vdecl_slot2736 = alloca %Point*
  store %Point* %new_obj2735, %Point** %vdecl_slot2736
  %lhs_or_call2737 = load %Point** %vdecl_slot2736
  %move2739 = getelementptr %_Point_vtable* @_Point_vtable523, i32 0, i32 2
  %move2738 = load %Point* (%Point*, i32, i32)** %move2739
  %cast_op2740 = bitcast %Point %lhs_or_call2737 to %Point* 
  %ret2741 = call %Point* %move2738 ( %Point* %cast_op2740, i32 3, i32 4 )
  %vdecl_slot2742 = alloca %Point*
  store %Point* %ret2741, %Point** %vdecl_slot2742
  %lhs_or_call2743 = load %Point** %vdecl_slot2742
  %x2744 = getelementptr %Point* %lhs_or_call2743, i32 0, i32 2
  %lhs_or_call2745 = load i32* %x2744
  ret i32 %lhs_or_call2745
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2717, i32 %dy2715){
__fresh581:
  %dx_slot2718 = alloca i32
  store i32 %dx2717, i32* %dx_slot2718
  %dy_slot2716 = alloca i32
  store i32 %dy2715, i32* %dy_slot2716
  %x2719 = getelementptr %Point* %_this1, i32 0, i32 2
  %x2720 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2721 = load i32* %x2720
  %lhs_or_call2722 = load i32* %dx_slot2718
  %bop2723 = add i32 %lhs_or_call2721, %lhs_or_call2722
  store i32 %bop2723, i32* %x2719
  %y2724 = getelementptr %Point* %_this1, i32 0, i32 3
  %y2725 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2726 = load i32* %y2725
  %lhs_or_call2727 = load i32* %dy_slot2716
  %bop2728 = add i32 %lhs_or_call2726, %lhs_or_call2727
  store i32 %bop2728, i32* %y2724
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh580:
  %cast_op2709 = bitcast %Point* %_this1 to %Object* 
  %mem_ptr2710 = call i32* @oat_malloc ( i32 16 )
  %obj2711 = bitcast i32* %mem_ptr2710 to %Point* 
  %new_obj2712 = call %Object* @_Object_ctor ( %Point* %obj2711, %Object* %cast_op2709 )
  %_this1 = bitcast %Object* %new_obj2712 to %Point 
  %_name2713 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str525, i8** %_name2713
  %this_vtable2714 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable523, %_Point_vtable** %this_vtable2714
  %x2707 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x2707
  %y2708 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y2708
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh579:
  %_name2705 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2706 = load i8** %_name2705
  ret i8* %lhs_or_call2706
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh578:
  %_name2703 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str524, i8** %_name2703
  %this_vtable2704 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable522, %_Object_vtable** %this_vtable2704
  ret %Object* %_this1
}


