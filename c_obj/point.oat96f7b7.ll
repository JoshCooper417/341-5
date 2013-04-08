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


define i32 @program (i32 %argc2870, { i32, [ 0 x i8* ] }* %argv2868){
__fresh637:
  %argc_slot2871 = alloca i32
  store i32 %argc2870, i32* %argc_slot2871
  %argv_slot2869 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2868, { i32, [ 0 x i8* ] }** %argv_slot2869
  %mem_ptr2872 = call i32* @oat_malloc ( i32 16 )
  %obj2873 = bitcast i32* %mem_ptr2872 to %Point* 
  %new_obj2874 = call %Point* @_Point_ctor ( %Point* %obj2873 )
  %vdecl_slot2875 = alloca %Point*
  store %Point* %new_obj2874, %Point** %vdecl_slot2875
  %lhs_or_call2876 = load %Point** %vdecl_slot2875
  %vtable_ptr2877 = getelementptr %Point* %lhs_or_call2876, i32 0
  %vtable2878 = load %_Point_vtable** %vtable_ptr2877
  %move2880 = getelementptr %_Point_vtable* %vtable2878, i32 0, i32 2
  %move2879 = load %Point* (%Point*, i32, i32)** %move2880
  %cast_op2881 = bitcast %Point %lhs_or_call2876 to %Point* 
  %ret2882 = call %Point* %move2879 ( %Point* %cast_op2881, i32 3, i32 4 )
  %vdecl_slot2883 = alloca %Point*
  store %Point* %ret2882, %Point** %vdecl_slot2883
  %lhs_or_call2884 = load %Point** %vdecl_slot2883
  %x2885 = getelementptr %Point* %lhs_or_call2884, i32 0, i32 2
  %lhs_or_call2886 = load i32* %x2885
  ret i32 %lhs_or_call2886
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2856, i32 %dy2854){
__fresh636:
  %dx_slot2857 = alloca i32
  store i32 %dx2856, i32* %dx_slot2857
  %dy_slot2855 = alloca i32
  store i32 %dy2854, i32* %dy_slot2855
  %x2858 = getelementptr %Point* %_this1, i32 0, i32 2
  %x2859 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2860 = load i32* %x2859
  %lhs_or_call2861 = load i32* %dx_slot2857
  %bop2862 = add i32 %lhs_or_call2860, %lhs_or_call2861
  store i32 %bop2862, i32* %x2858
  %y2863 = getelementptr %Point* %_this1, i32 0, i32 3
  %y2864 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2865 = load i32* %y2864
  %lhs_or_call2866 = load i32* %dy_slot2855
  %bop2867 = add i32 %lhs_or_call2865, %lhs_or_call2866
  store i32 %bop2867, i32* %y2863
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh635:
  %mem_ptr2849 = call i32* @oat_malloc ( i32 8 )
  %obj2850 = bitcast i32* %mem_ptr2849 to %Object* 
  %new_obj2851 = call %Object* @_Object_ctor ( %Object* %obj2850 )
  %_this1 = bitcast %Object* %new_obj2851 to %Point 
  %_name2852 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str514, i8** %_name2852
  %this_vtable2853 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable512, %_Point_vtable** %this_vtable2853
  %x2847 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x2847
  %y2848 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y2848
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh634:
  %_name2845 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2846 = load i8** %_name2845
  ret i8* %lhs_or_call2846
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh633:
  %_name2843 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str513, i8** %_name2843
  %this_vtable2844 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable511, %_Object_vtable** %this_vtable2844
  ret %Object* %_this1
}


