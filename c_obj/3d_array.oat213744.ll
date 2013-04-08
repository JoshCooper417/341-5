%Array = type { %_Array_vtable*, i8*, { i32, [ 0 x %Array* ] }*, i32, i32 }
%_Array_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Array*, i32)*, void (%Array*)*, void (%Array*)*, i32 (%Array*)* }
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
@a578 = global %Array* zeroinitializer, align 4		; initialized by @a578.init579
@_const_str577.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str577 = alias bitcast([ 6 x i8 ]* @_const_str577.str. to i8*)@_const_str576.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str576 = alias bitcast([ 7 x i8 ]* @_const_str576.str. to i8*)@_Array_vtable575 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable574, i8* (%Object*)* @_Object_get_name, void (%Array*, i32)* @_Array_set_length, void (%Array*)* @_Array_add_dimension, void (%Array*)* @_Array_fill_random_bits, i32 (%Array*)* @_Array_total}, align 4
@_Object_vtable574 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh664:
  call void @a578.init579(  )
  ret void
}


define i32 @program (i32 %argc2943, { i32, [ 0 x i8* ] }* %argv2941){
__fresh663:
  %argc_slot2944 = alloca i32
  store i32 %argc2943, i32* %argc_slot2944
  %argv_slot2942 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2941, { i32, [ 0 x i8* ] }** %argv_slot2942
  %lhs_or_call2945 = load %Array** @a578
  %set_length2947 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 2
  %set_length2946 = load void (%Array*, i32)** %set_length2947
  %cast_op2948 = bitcast %Array %lhs_or_call2945 to %Array* 
  call void %set_length2946( %Array* %cast_op2948, i32 5 )
  %lhs_or_call2949 = load %Array** @a578
  %add_dimension2951 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 3
  %add_dimension2950 = load void (%Array*)** %add_dimension2951
  %cast_op2952 = bitcast %Array %lhs_or_call2949 to %Array* 
  call void %add_dimension2950( %Array* %cast_op2952 )
  %lhs_or_call2953 = load %Array** @a578
  %add_dimension2955 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 3
  %add_dimension2954 = load void (%Array*)** %add_dimension2955
  %cast_op2956 = bitcast %Array %lhs_or_call2953 to %Array* 
  call void %add_dimension2954( %Array* %cast_op2956 )
  %lhs_or_call2957 = load %Array** @a578
  %add_dimension2959 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 3
  %add_dimension2958 = load void (%Array*)** %add_dimension2959
  %cast_op2960 = bitcast %Array %lhs_or_call2957 to %Array* 
  call void %add_dimension2958( %Array* %cast_op2960 )
  %lhs_or_call2961 = load %Array** @a578
  %fill_random_bits2963 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 4
  %fill_random_bits2962 = load void (%Array*)** %fill_random_bits2963
  %cast_op2964 = bitcast %Array %lhs_or_call2961 to %Array* 
  call void %fill_random_bits2962( %Array* %cast_op2964 )
  %lhs_or_call2965 = load %Array** @a578
  %total2967 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 5
  %total2966 = load i32 (%Array*)** %total2967
  %cast_op2968 = bitcast %Array %lhs_or_call2965 to %Array* 
  %ret2969 = call i32 %total2966 ( %Array* %cast_op2968 )
  ret i32 %ret2969
}


define void @a578.init579 (){
__fresh662:
  %mem_ptr2938 = call i32* @oat_malloc ( i32 20 )
  %obj2939 = bitcast i32* %mem_ptr2938 to %Array* 
  %new_obj2940 = call %Array* @_Array_ctor ( %Array* %obj2939 )
  store %Array* %new_obj2940, %Array** @a578
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh659:
  %value2914 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call2915 = load i32* %value2914
  %vdecl_slot2916 = alloca i32
  store i32 %lhs_or_call2915, i32* %vdecl_slot2916
  %vdecl_slot2917 = alloca i32
  store i32 0, i32* %vdecl_slot2917
  br label %__cond658

__cond658:
  %lhs_or_call2918 = load i32* %vdecl_slot2917
  %length2919 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2920 = load i32* %length2919
  %bop2921 = icmp slt i32 %lhs_or_call2918, %lhs_or_call2920
  br i1 %bop2921, label %__body657, label %__post656

__fresh660:
  br label %__body657

__body657:
  %lhs_or_call2922 = load i32* %vdecl_slot2916
  %a2923 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call2924 = load { i32, [ 0 x %Array* ] }** %a2923
  %lhs_or_call2925 = load i32* %vdecl_slot2917
  %bound_ptr2927 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2924, i32 0, i32 0
  %bound2928 = load i32* %bound_ptr2927
  call void @oat_array_bounds_check( i32 %bound2928, i32 %lhs_or_call2925 )
  %elt2926 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2924, i32 0, i32 1, i32 %lhs_or_call2925
  %lhs_or_call2929 = load %Array** %elt2926
  %total2931 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 5
  %total2930 = load i32 (%Array*)** %total2931
  %cast_op2932 = bitcast %Array %lhs_or_call2929 to %Array* 
  %ret2933 = call i32 %total2930 ( %Array* %cast_op2932 )
  %bop2934 = add i32 %lhs_or_call2922, %ret2933
  store i32 %bop2934, i32* %vdecl_slot2916
  %lhs_or_call2935 = load i32* %vdecl_slot2917
  %bop2936 = add i32 %lhs_or_call2935, 1
  store i32 %bop2936, i32* %vdecl_slot2917
  br label %__cond658

__fresh661:
  br label %__post656

__post656:
  %lhs_or_call2937 = load i32* %vdecl_slot2916
  ret i32 %lhs_or_call2937
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh653:
  %vdecl_slot2896 = alloca i32
  store i32 0, i32* %vdecl_slot2896
  br label %__cond652

__cond652:
  %lhs_or_call2897 = load i32* %vdecl_slot2896
  %length2898 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2899 = load i32* %length2898
  %bop2900 = icmp slt i32 %lhs_or_call2897, %lhs_or_call2899
  br i1 %bop2900, label %__body651, label %__post650

__fresh654:
  br label %__body651

__body651:
  %a2901 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call2902 = load { i32, [ 0 x %Array* ] }** %a2901
  %lhs_or_call2903 = load i32* %vdecl_slot2896
  %bound_ptr2905 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2902, i32 0, i32 0
  %bound2906 = load i32* %bound_ptr2905
  call void @oat_array_bounds_check( i32 %bound2906, i32 %lhs_or_call2903 )
  %elt2904 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2902, i32 0, i32 1, i32 %lhs_or_call2903
  %lhs_or_call2907 = load %Array** %elt2904
  %fill_random_bits2909 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 4
  %fill_random_bits2908 = load void (%Array*)** %fill_random_bits2909
  %cast_op2910 = bitcast %Array %lhs_or_call2907 to %Array* 
  call void %fill_random_bits2908( %Array* %cast_op2910 )
  %lhs_or_call2911 = load i32* %vdecl_slot2896
  %bop2912 = add i32 %lhs_or_call2911, 1
  store i32 %bop2912, i32* %vdecl_slot2896
  br label %__cond652

__fresh655:
  br label %__post650

__post650:
  %value2913 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %value2913
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh645:
  %a2856 = getelementptr %Array* %_this1, i32 0, i32 2
  %length2857 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2858 = load i32* %length2857
  %array_ptr2859 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call2858 )
  %array2860 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2859 to { i32, [ 0 x %Array* ] }* 
  %_tmp5492861 = alloca i32
  store i32 %lhs_or_call2858, i32* %_tmp5492861
  %_tmp5502862 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2860, { i32, [ 0 x %Array* ] }** %_tmp5502862
  %vdecl_slot2863 = alloca i32
  store i32 0, i32* %vdecl_slot2863
  br label %__cond641

__cond641:
  %lhs_or_call2864 = load i32* %vdecl_slot2863
  %lhs_or_call2865 = load i32* %_tmp5492861
  %bop2866 = icmp slt i32 %lhs_or_call2864, %lhs_or_call2865
  br i1 %bop2866, label %__body640, label %__post639

__fresh646:
  br label %__body640

__body640:
  %lhs_or_call2867 = load { i32, [ 0 x %Array* ] }** %_tmp5502862
  %lhs_or_call2868 = load i32* %vdecl_slot2863
  %bound_ptr2870 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2867, i32 0, i32 0
  %bound2871 = load i32* %bound_ptr2870
  call void @oat_array_bounds_check( i32 %bound2871, i32 %lhs_or_call2868 )
  %elt2869 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2867, i32 0, i32 1, i32 %lhs_or_call2868
  %mem_ptr2872 = call i32* @oat_malloc ( i32 20 )
  %obj2873 = bitcast i32* %mem_ptr2872 to %Array* 
  %new_obj2874 = call %Array* @_Array_ctor ( %Array* %obj2873 )
  store %Array* %new_obj2874, %Array** %elt2869
  %lhs_or_call2875 = load i32* %vdecl_slot2863
  %bop2876 = add i32 %lhs_or_call2875, 1
  store i32 %bop2876, i32* %vdecl_slot2863
  br label %__cond641

__fresh647:
  br label %__post639

__post639:
  store { i32, [ 0 x %Array* ] }* %array2860, { i32, [ 0 x %Array* ] }** %a2856
  %vdecl_slot2877 = alloca i32
  store i32 0, i32* %vdecl_slot2877
  br label %__cond644

__cond644:
  %lhs_or_call2878 = load i32* %vdecl_slot2877
  %length2879 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2880 = load i32* %length2879
  %bop2881 = icmp slt i32 %lhs_or_call2878, %lhs_or_call2880
  br i1 %bop2881, label %__body643, label %__post642

__fresh648:
  br label %__body643

__body643:
  %length2882 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2883 = load i32* %length2882
  %a2884 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call2885 = load { i32, [ 0 x %Array* ] }** %a2884
  %lhs_or_call2886 = load i32* %vdecl_slot2877
  %bound_ptr2888 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2885, i32 0, i32 0
  %bound2889 = load i32* %bound_ptr2888
  call void @oat_array_bounds_check( i32 %bound2889, i32 %lhs_or_call2886 )
  %elt2887 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2885, i32 0, i32 1, i32 %lhs_or_call2886
  %lhs_or_call2890 = load %Array** %elt2887
  %set_length2892 = getelementptr %_Array_vtable* @_Array_vtable575, i32 0, i32 2
  %set_length2891 = load void (%Array*, i32)** %set_length2892
  %cast_op2893 = bitcast %Array %lhs_or_call2890 to %Array* 
  call void %set_length2891( %Array* %cast_op2893, i32 %lhs_or_call2883 )
  %lhs_or_call2894 = load i32* %vdecl_slot2877
  %bop2895 = add i32 %lhs_or_call2894, 1
  store i32 %bop2895, i32* %vdecl_slot2877
  br label %__cond644

__fresh649:
  br label %__post642

__post642:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l2831){
__fresh636:
  %l_slot2832 = alloca i32
  store i32 %l2831, i32* %l_slot2832
  %length2833 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2834 = load i32* %l_slot2832
  store i32 %lhs_or_call2834, i32* %length2833
  %a2835 = getelementptr %Array* %_this1, i32 0, i32 2
  %length2836 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call2837 = load i32* %length2836
  %array_ptr2838 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call2837 )
  %array2839 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2838 to { i32, [ 0 x %Array* ] }* 
  %_tmp5472840 = alloca i32
  store i32 %lhs_or_call2837, i32* %_tmp5472840
  %_tmp5482841 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2839, { i32, [ 0 x %Array* ] }** %_tmp5482841
  %vdecl_slot2842 = alloca i32
  store i32 0, i32* %vdecl_slot2842
  br label %__cond635

__cond635:
  %lhs_or_call2843 = load i32* %vdecl_slot2842
  %lhs_or_call2844 = load i32* %_tmp5472840
  %bop2845 = icmp slt i32 %lhs_or_call2843, %lhs_or_call2844
  br i1 %bop2845, label %__body634, label %__post633

__fresh637:
  br label %__body634

__body634:
  %lhs_or_call2846 = load { i32, [ 0 x %Array* ] }** %_tmp5482841
  %lhs_or_call2847 = load i32* %vdecl_slot2842
  %bound_ptr2849 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2846, i32 0, i32 0
  %bound2850 = load i32* %bound_ptr2849
  call void @oat_array_bounds_check( i32 %bound2850, i32 %lhs_or_call2847 )
  %elt2848 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2846, i32 0, i32 1, i32 %lhs_or_call2847
  %mem_ptr2851 = call i32* @oat_malloc ( i32 20 )
  %obj2852 = bitcast i32* %mem_ptr2851 to %Array* 
  %new_obj2853 = call %Array* @_Array_ctor ( %Array* %obj2852 )
  store %Array* %new_obj2853, %Array** %elt2848
  %lhs_or_call2854 = load i32* %vdecl_slot2842
  %bop2855 = add i32 %lhs_or_call2854, 1
  store i32 %bop2855, i32* %vdecl_slot2842
  br label %__cond635

__fresh638:
  br label %__post633

__post633:
  store { i32, [ 0 x %Array* ] }* %array2839, { i32, [ 0 x %Array* ] }** %a2835
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh630:
  %mem_ptr2807 = call i32* @oat_malloc ( i32 8 )
  %obj2808 = bitcast i32* %mem_ptr2807 to %Object* 
  %new_obj2809 = call %Object* @_Object_ctor ( %Object* %obj2808 )
  %_this1 = bitcast %Object* %new_obj2809 to %Array 
  %_name2810 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str577, i8** %_name2810
  %a2811 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr2812 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array2813 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2812 to { i32, [ 0 x %Array* ] }* 
  %_tmp5442814 = alloca i32
  store i32 0, i32* %_tmp5442814
  %_tmp5452815 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array2813, { i32, [ 0 x %Array* ] }** %_tmp5452815
  %vdecl_slot2816 = alloca i32
  store i32 0, i32* %vdecl_slot2816
  br label %__cond629

__cond629:
  %lhs_or_call2817 = load i32* %vdecl_slot2816
  %lhs_or_call2818 = load i32* %_tmp5442814
  %bop2819 = icmp slt i32 %lhs_or_call2817, %lhs_or_call2818
  br i1 %bop2819, label %__body628, label %__post627

__fresh631:
  br label %__body628

__body628:
  %lhs_or_call2820 = load { i32, [ 0 x %Array* ] }** %_tmp5452815
  %lhs_or_call2821 = load i32* %vdecl_slot2816
  %bound_ptr2823 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2820, i32 0, i32 0
  %bound2824 = load i32* %bound_ptr2823
  call void @oat_array_bounds_check( i32 %bound2824, i32 %lhs_or_call2821 )
  %elt2822 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call2820, i32 0, i32 1, i32 %lhs_or_call2821
  %mem_ptr2825 = call i32* @oat_malloc ( i32 20 )
  %obj2826 = bitcast i32* %mem_ptr2825 to %Array* 
  %new_obj2827 = call %Array* @_Array_ctor ( %Array* %obj2826 )
  store %Array* %new_obj2827, %Array** %elt2822
  %lhs_or_call2828 = load i32* %vdecl_slot2816
  %bop2829 = add i32 %lhs_or_call2828, 1
  store i32 %bop2829, i32* %vdecl_slot2816
  br label %__cond629

__fresh632:
  br label %__post627

__post627:
  store { i32, [ 0 x %Array* ] }* %array2813, { i32, [ 0 x %Array* ] }** %a2811
  %this_vtable2830 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable575, %_Array_vtable** %this_vtable2830
  %value2805 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %value2805
  %length2806 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %length2806
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh626:
  %_name2803 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2804 = load i8** %_name2803
  ret i8* %lhs_or_call2804
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh625:
  %_name2801 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str576, i8** %_name2801
  %this_vtable2802 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable574, %_Object_vtable** %this_vtable2802
  ret %Object* %_this1
}


