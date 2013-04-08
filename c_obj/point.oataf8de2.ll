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
@_const_str514.str. = private unnamed_addr constant [ 6 x i8 ] c "Point\00", align 4
@_const_str514 = alias bitcast([ 6 x i8 ]* @_const_str514.str. to i8*)@_const_str513.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str513 = alias bitcast([ 7 x i8 ]* @_const_str513.str. to i8*)@_Point_vtable512 = private constant %_Point_vtable {%_Object_vtable* @_Object_vtable511, i8* (%Object*)* @_Object_get_name, %Point* (%Point*, i32, i32)* @_Point_move}, align 4
@_Object_vtable511 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh638:
  ret void
}


define i32 @program (i32 %argc2859, { i32, [ 0 x i8* ] }* %argv2857){
__fresh637:
  %argc_slot2860 = alloca i32
  store i32 %argc2859, i32* %argc_slot2860
  %argv_slot2858 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2857, { i32, [ 0 x i8* ] }** %argv_slot2858
  %mem_ptr2861 = call i32* @oat_malloc ( i32 16 )
  %obj2862 = bitcast i32* %mem_ptr2861 to %Point* 
  %new_obj2863 = call %Point* @_Point_ctor ( %Point* %obj2862 )
  %vdecl_slot2864 = alloca %Point*
  store %Point* %new_obj2863, %Point** %vdecl_slot2864
  %lhs_or_call2865 = load %Point** %vdecl_slot2864
  %vtable_ptr2866 = getelementptr %Point* %lhs_or_call2865, i32 0
  %vtable2867 = load %_Point_vtable** %vtable_ptr2866
  %move2869 = getelementptr %_Point_vtable* %vtable2867, i32 0, i32 2
  %move2868 = load %Point* (%Point*, i32, i32)** %move2869
  %cast_op2870 = bitcast %Point %lhs_or_call2865 to %Point* 
  %ret2871 = call %Point* %move2868 ( %Point* %cast_op2870, i32 3, i32 4 )
  %vdecl_slot2872 = alloca %Point*
  store %Point* %ret2871, %Point** %vdecl_slot2872
  %lhs_or_call2873 = load %Point** %vdecl_slot2872
  %x2874 = getelementptr %Point* %lhs_or_call2873, i32 0, i32 2
  %lhs_or_call2875 = load i32* %x2874
  ret i32 %lhs_or_call2875
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2845, i32 %dy2843){
__fresh636:
  %dx_slot2846 = alloca i32
  store i32 %dx2845, i32* %dx_slot2846
  %dy_slot2844 = alloca i32
  store i32 %dy2843, i32* %dy_slot2844
  %x2847 = getelementptr %Point* %_this1, i32 0, i32 2
  %x2848 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2849 = load i32* %x2848
  %lhs_or_call2850 = load i32* %dx_slot2846
  %bop2851 = add i32 %lhs_or_call2849, %lhs_or_call2850
  store i32 %bop2851, i32* %x2847
  %y2852 = getelementptr %Point* %_this1, i32 0, i32 3
  %y2853 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2854 = load i32* %y2853
  %lhs_or_call2855 = load i32* %dy_slot2844
  %bop2856 = add i32 %lhs_or_call2854, %lhs_or_call2855
  store i32 %bop2856, i32* %y2852
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh635:
  %mem_ptr2838 = call i32* @oat_malloc ( i32 8 )
  %obj2839 = bitcast i32* %mem_ptr2838 to %Object* 
  %new_obj2840 = call %Object* @_Object_ctor ( %Object* %obj2839 )
  %_this1 = bitcast %Object* %new_obj2840 to %Point 
  %_name2841 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str514, i8** %_name2841
  %this_vtable2842 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable512, %_Point_vtable** %this_vtable2842
  %x2836 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x2836
  %y2837 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y2837
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh634:
  %_name2834 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2835 = load i8** %_name2834
  ret i8* %lhs_or_call2835
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh633:
  %_name2832 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str513, i8** %_name2832
  %this_vtable2833 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable511, %_Object_vtable** %this_vtable2833
  ret %Object* %_this1
}


