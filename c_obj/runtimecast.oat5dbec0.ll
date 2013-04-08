%Bb = type { %_Bb_vtable*, i8* }
%_Bb_vtable = type { %_A_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@bb527 = global %Object* zeroinitializer, align 4		; initialized by @bb527.init528
@b525 = global %Object* zeroinitializer, align 4		; initialized by @b525.init526
@a523 = global %Object* zeroinitializer, align 4		; initialized by @a523.init524
@_const_str522.str. = private unnamed_addr constant [ 3 x i8 ] c "Bb\00", align 4
@_const_str522 = alias bitcast([ 3 x i8 ]* @_const_str522.str. to i8*)@_const_str521.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str521 = alias bitcast([ 2 x i8 ]* @_const_str521.str. to i8*)@_const_str520.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str520 = alias bitcast([ 2 x i8 ]* @_const_str520.str. to i8*)@_const_str519.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str519 = alias bitcast([ 7 x i8 ]* @_const_str519.str. to i8*)@_Bb_vtable518 = private constant %_Bb_vtable {%_A_vtable* @_A_vtable516, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable517 = private constant %_B_vtable {%_A_vtable* @_A_vtable516, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable516 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable515, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable515 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh729:
  call void @a523.init524(  )
  call void @b525.init526(  )
  call void @bb527.init528(  )
  ret void
}


define i32 @program (i32 %argc2920, { i32, [ 0 x i8* ] }* %argv2918){
__fresh692:
  %argc_slot2921 = alloca i32
  store i32 %argc2920, i32* %argc_slot2921
  %argv_slot2919 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2918, { i32, [ 0 x i8* ] }** %argv_slot2919
  %vdecl_slot2922 = alloca i32
  store i32 0, i32* %vdecl_slot2922
  br label %__bound_check647

__fresh693:
  br label %__bound_check647

__bound_check647:
  %cast_op2930 = bitcast %_A_vtable* @_A_vtable516 to i8** 
  %rvtable2929 = load i8** %rvtable2926
  %lvtable2927 = load i8** %cast_op2930
  %compare2928 = icmp eq i8* %rvtable2929, null
  br i1 %compare2928, label %__end_no650, label %__check_curr649

__fresh694:
  br label %__check_curr649

__check_curr649:
  %compare2928 = icmp eq i8** %lvtable2927, %rvtable2929
  br i1 %compare2928, label %__end_yes651, label %__move_up648

__fresh695:
  br label %__move_up648

__move_up648:
  %rvtable2926 = getelementptr i8* %rvtable2929, i32 0
  br label %__bound_check647

__fresh696:
  br label %__end_yes651

__end_yes651:
  %lhs_or_call2924 = load i32* %vdecl_slot2922
  %bop2925 = add i32 %lhs_or_call2924, 1
  store i32 %bop2925, i32* %vdecl_slot2922
  br label %__end_no650

__end_no650:
  br label %__bound_check652

__fresh697:
  br label %__bound_check652

__bound_check652:
  %cast_op2938 = bitcast %_A_vtable* @_A_vtable516 to i8** 
  %rvtable2937 = load i8** %rvtable2934
  %lvtable2935 = load i8** %cast_op2938
  %compare2936 = icmp eq i8* %rvtable2937, null
  br i1 %compare2936, label %__end_no655, label %__check_curr654

__fresh698:
  br label %__check_curr654

__check_curr654:
  %compare2936 = icmp eq i8** %lvtable2935, %rvtable2937
  br i1 %compare2936, label %__end_yes656, label %__move_up653

__fresh699:
  br label %__move_up653

__move_up653:
  %rvtable2934 = getelementptr i8* %rvtable2937, i32 0
  br label %__bound_check652

__fresh700:
  br label %__end_yes656

__end_yes656:
  %lhs_or_call2932 = load i32* %vdecl_slot2922
  %bop2933 = add i32 %lhs_or_call2932, 1
  store i32 %bop2933, i32* %vdecl_slot2922
  br label %__end_no655

__end_no655:
  br label %__bound_check657

__fresh701:
  br label %__bound_check657

__bound_check657:
  %cast_op2946 = bitcast %_A_vtable* @_A_vtable516 to i8** 
  %rvtable2945 = load i8** %rvtable2942
  %lvtable2943 = load i8** %cast_op2946
  %compare2944 = icmp eq i8* %rvtable2945, null
  br i1 %compare2944, label %__end_no660, label %__check_curr659

__fresh702:
  br label %__check_curr659

__check_curr659:
  %compare2944 = icmp eq i8** %lvtable2943, %rvtable2945
  br i1 %compare2944, label %__end_yes661, label %__move_up658

__fresh703:
  br label %__move_up658

__move_up658:
  %rvtable2942 = getelementptr i8* %rvtable2945, i32 0
  br label %__bound_check657

__fresh704:
  br label %__end_yes661

__end_yes661:
  %lhs_or_call2940 = load i32* %vdecl_slot2922
  %bop2941 = add i32 %lhs_or_call2940, 1
  store i32 %bop2941, i32* %vdecl_slot2922
  br label %__end_no660

__end_no660:
  br label %__bound_check662

__fresh705:
  br label %__bound_check662

__bound_check662:
  %cast_op2954 = bitcast %_B_vtable* @_B_vtable517 to i8** 
  %rvtable2953 = load i8** %rvtable2950
  %lvtable2951 = load i8** %cast_op2954
  %compare2952 = icmp eq i8* %rvtable2953, null
  br i1 %compare2952, label %__end_no665, label %__check_curr664

__fresh706:
  br label %__check_curr664

__check_curr664:
  %compare2952 = icmp eq i8** %lvtable2951, %rvtable2953
  br i1 %compare2952, label %__end_yes666, label %__move_up663

__fresh707:
  br label %__move_up663

__move_up663:
  %rvtable2950 = getelementptr i8* %rvtable2953, i32 0
  br label %__bound_check662

__fresh708:
  br label %__end_yes666

__end_yes666:
  %lhs_or_call2948 = load i32* %vdecl_slot2922
  %bop2949 = add i32 %lhs_or_call2948, 1
  store i32 %bop2949, i32* %vdecl_slot2922
  br label %__end_no665

__end_no665:
  br label %__bound_check667

__fresh709:
  br label %__bound_check667

__bound_check667:
  %cast_op2962 = bitcast %_Bb_vtable* @_Bb_vtable518 to i8** 
  %rvtable2961 = load i8** %rvtable2958
  %lvtable2959 = load i8** %cast_op2962
  %compare2960 = icmp eq i8* %rvtable2961, null
  br i1 %compare2960, label %__end_no670, label %__check_curr669

__fresh710:
  br label %__check_curr669

__check_curr669:
  %compare2960 = icmp eq i8** %lvtable2959, %rvtable2961
  br i1 %compare2960, label %__end_yes671, label %__move_up668

__fresh711:
  br label %__move_up668

__move_up668:
  %rvtable2958 = getelementptr i8* %rvtable2961, i32 0
  br label %__bound_check667

__fresh712:
  br label %__end_yes671

__end_yes671:
  %lhs_or_call2956 = load i32* %vdecl_slot2922
  %bop2957 = add i32 %lhs_or_call2956, 1
  store i32 %bop2957, i32* %vdecl_slot2922
  br label %__end_no670

__end_no670:
  br label %__bound_check672

__fresh713:
  br label %__bound_check672

__bound_check672:
  %cast_op2970 = bitcast %_B_vtable* @_B_vtable517 to i8** 
  %rvtable2969 = load i8** %rvtable2966
  %lvtable2967 = load i8** %cast_op2970
  %compare2968 = icmp eq i8* %rvtable2969, null
  br i1 %compare2968, label %__end_no675, label %__check_curr674

__fresh714:
  br label %__check_curr674

__check_curr674:
  %compare2968 = icmp eq i8** %lvtable2967, %rvtable2969
  br i1 %compare2968, label %__end_yes676, label %__move_up673

__fresh715:
  br label %__move_up673

__move_up673:
  %rvtable2966 = getelementptr i8* %rvtable2969, i32 0
  br label %__bound_check672

__fresh716:
  br label %__end_yes676

__end_yes676:
  br label %__end_no675

__end_no675:
  %lhs_or_call2964 = load i32* %vdecl_slot2922
  %bop2965 = add i32 %lhs_or_call2964, 1
  store i32 %bop2965, i32* %vdecl_slot2922
  br label %__bound_check677

__fresh717:
  br label %__bound_check677

__bound_check677:
  %cast_op2978 = bitcast %_Bb_vtable* @_Bb_vtable518 to i8** 
  %rvtable2977 = load i8** %rvtable2974
  %lvtable2975 = load i8** %cast_op2978
  %compare2976 = icmp eq i8* %rvtable2977, null
  br i1 %compare2976, label %__end_no680, label %__check_curr679

__fresh718:
  br label %__check_curr679

__check_curr679:
  %compare2976 = icmp eq i8** %lvtable2975, %rvtable2977
  br i1 %compare2976, label %__end_yes681, label %__move_up678

__fresh719:
  br label %__move_up678

__move_up678:
  %rvtable2974 = getelementptr i8* %rvtable2977, i32 0
  br label %__bound_check677

__fresh720:
  br label %__end_yes681

__end_yes681:
  br label %__end_no680

__end_no680:
  %lhs_or_call2972 = load i32* %vdecl_slot2922
  %bop2973 = add i32 %lhs_or_call2972, 1
  store i32 %bop2973, i32* %vdecl_slot2922
  br label %__bound_check682

__fresh721:
  br label %__bound_check682

__bound_check682:
  %cast_op2986 = bitcast %_Bb_vtable* @_Bb_vtable518 to i8** 
  %rvtable2985 = load i8** %rvtable2982
  %lvtable2983 = load i8** %cast_op2986
  %compare2984 = icmp eq i8* %rvtable2985, null
  br i1 %compare2984, label %__end_no685, label %__check_curr684

__fresh722:
  br label %__check_curr684

__check_curr684:
  %compare2984 = icmp eq i8** %lvtable2983, %rvtable2985
  br i1 %compare2984, label %__end_yes686, label %__move_up683

__fresh723:
  br label %__move_up683

__move_up683:
  %rvtable2982 = getelementptr i8* %rvtable2985, i32 0
  br label %__bound_check682

__fresh724:
  br label %__end_yes686

__end_yes686:
  br label %__end_no685

__end_no685:
  %lhs_or_call2980 = load i32* %vdecl_slot2922
  %bop2981 = add i32 %lhs_or_call2980, 1
  store i32 %bop2981, i32* %vdecl_slot2922
  br label %__bound_check687

__fresh725:
  br label %__bound_check687

__bound_check687:
  %cast_op2994 = bitcast %_B_vtable* @_B_vtable517 to i8** 
  %rvtable2993 = load i8** %rvtable2990
  %lvtable2991 = load i8** %cast_op2994
  %compare2992 = icmp eq i8* %rvtable2993, null
  br i1 %compare2992, label %__end_no690, label %__check_curr689

__fresh726:
  br label %__check_curr689

__check_curr689:
  %compare2992 = icmp eq i8** %lvtable2991, %rvtable2993
  br i1 %compare2992, label %__end_yes691, label %__move_up688

__fresh727:
  br label %__move_up688

__move_up688:
  %rvtable2990 = getelementptr i8* %rvtable2993, i32 0
  br label %__bound_check687

__fresh728:
  br label %__end_yes691

__end_yes691:
  br label %__end_no690

__end_no690:
  %lhs_or_call2988 = load i32* %vdecl_slot2922
  %bop2989 = add i32 %lhs_or_call2988, 1
  store i32 %bop2989, i32* %vdecl_slot2922
  %lhs_or_call2995 = load i32* %vdecl_slot2922
  ret i32 %lhs_or_call2995
}


define void @bb527.init528 (){
__fresh646:
  %mem_ptr2914 = call i32* @oat_malloc ( i32 8 )
  %obj2915 = bitcast i32* %mem_ptr2914 to %Bb* 
  %new_obj2916 = call %Bb* @_Bb_ctor ( %Bb* %obj2915 )
  %cast_op2917 = bitcast %Bb* %new_obj2916 to %Object* 
  store %Object* %cast_op2917, %Object** @bb527
  ret void
}


define void @b525.init526 (){
__fresh645:
  %mem_ptr2910 = call i32* @oat_malloc ( i32 8 )
  %obj2911 = bitcast i32* %mem_ptr2910 to %B* 
  %new_obj2912 = call %B* @_B_ctor ( %B* %obj2911 )
  %cast_op2913 = bitcast %B* %new_obj2912 to %Object* 
  store %Object* %cast_op2913, %Object** @b525
  ret void
}


define void @a523.init524 (){
__fresh644:
  %mem_ptr2906 = call i32* @oat_malloc ( i32 8 )
  %obj2907 = bitcast i32* %mem_ptr2906 to %A* 
  %new_obj2908 = call %A* @_A_ctor ( %A* %obj2907 )
  %cast_op2909 = bitcast %A* %new_obj2908 to %Object* 
  store %Object* %cast_op2909, %Object** @a523
  ret void
}


define %Bb* @_Bb_ctor (%Bb* %_this1){
__fresh643:
  %mem_ptr2901 = call i32* @oat_malloc ( i32 8 )
  %obj2902 = bitcast i32* %mem_ptr2901 to %A* 
  %new_obj2903 = call %A* @_A_ctor ( %A* %obj2902 )
  %_this1 = bitcast %A* %new_obj2903 to %Bb 
  %_name2904 = getelementptr %Bb* %_this1, i32 0, i32 1
  store i8* @_const_str522, i8** %_name2904
  %this_vtable2905 = getelementptr %Bb* %_this1, i32 0, i32 0
  store %_Bb_vtable* @_Bb_vtable518, %_Bb_vtable** %this_vtable2905
  ret %Bb* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh642:
  %mem_ptr2896 = call i32* @oat_malloc ( i32 8 )
  %obj2897 = bitcast i32* %mem_ptr2896 to %A* 
  %new_obj2898 = call %A* @_A_ctor ( %A* %obj2897 )
  %_this1 = bitcast %A* %new_obj2898 to %B 
  %_name2899 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str521, i8** %_name2899
  %this_vtable2900 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable517, %_B_vtable** %this_vtable2900
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh641:
  %mem_ptr2891 = call i32* @oat_malloc ( i32 8 )
  %obj2892 = bitcast i32* %mem_ptr2891 to %Object* 
  %new_obj2893 = call %Object* @_Object_ctor ( %Object* %obj2892 )
  %_this1 = bitcast %Object* %new_obj2893 to %A 
  %_name2894 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str520, i8** %_name2894
  %this_vtable2895 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable516, %_A_vtable** %this_vtable2895
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh640:
  %_name2889 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2890 = load i8** %_name2889
  ret i8* %lhs_or_call2890
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh639:
  %_name2887 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str519, i8** %_name2887
  %this_vtable2888 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable515, %_Object_vtable** %this_vtable2888
  ret %Object* %_this1
}


