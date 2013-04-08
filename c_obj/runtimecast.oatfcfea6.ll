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


define i32 @program (i32 %argc2909, { i32, [ 0 x i8* ] }* %argv2907){
__fresh692:
  %argc_slot2910 = alloca i32
  store i32 %argc2909, i32* %argc_slot2910
  %argv_slot2908 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2907, { i32, [ 0 x i8* ] }** %argv_slot2908
  %vdecl_slot2911 = alloca i32
  store i32 0, i32* %vdecl_slot2911
  br label %__bound_check647

__fresh693:
  br label %__bound_check647

__bound_check647:
  %cast_op2919 = bitcast %_A_vtable* @_A_vtable516 to i8** 
  %rvtable2918 = load i8** %rvtable2915
  %lvtable2916 = load i8** %cast_op2919
  %compare2917 = icmp eq i8* %rvtable2918, null
  br i1 %compare2917, label %__end_no650, label %__check_curr649

__fresh694:
  br label %__check_curr649

__check_curr649:
  %compare2917 = icmp eq i8** %lvtable2916, %rvtable2918
  br i1 %compare2917, label %__end_yes651, label %__move_up648

__fresh695:
  br label %__move_up648

__move_up648:
  %rvtable2915 = getelementptr i8* %rvtable2918, i32 0
  br label %__bound_check647

__fresh696:
  br label %__end_yes651

__end_yes651:
  %lhs_or_call2913 = load i32* %vdecl_slot2911
  %bop2914 = add i32 %lhs_or_call2913, 1
  store i32 %bop2914, i32* %vdecl_slot2911
  br label %__end_no650

__end_no650:
  br label %__bound_check652

__fresh697:
  br label %__bound_check652

__bound_check652:
  %cast_op2927 = bitcast %_A_vtable* @_A_vtable516 to i8** 
  %rvtable2926 = load i8** %rvtable2923
  %lvtable2924 = load i8** %cast_op2927
  %compare2925 = icmp eq i8* %rvtable2926, null
  br i1 %compare2925, label %__end_no655, label %__check_curr654

__fresh698:
  br label %__check_curr654

__check_curr654:
  %compare2925 = icmp eq i8** %lvtable2924, %rvtable2926
  br i1 %compare2925, label %__end_yes656, label %__move_up653

__fresh699:
  br label %__move_up653

__move_up653:
  %rvtable2923 = getelementptr i8* %rvtable2926, i32 0
  br label %__bound_check652

__fresh700:
  br label %__end_yes656

__end_yes656:
  %lhs_or_call2921 = load i32* %vdecl_slot2911
  %bop2922 = add i32 %lhs_or_call2921, 1
  store i32 %bop2922, i32* %vdecl_slot2911
  br label %__end_no655

__end_no655:
  br label %__bound_check657

__fresh701:
  br label %__bound_check657

__bound_check657:
  %cast_op2935 = bitcast %_A_vtable* @_A_vtable516 to i8** 
  %rvtable2934 = load i8** %rvtable2931
  %lvtable2932 = load i8** %cast_op2935
  %compare2933 = icmp eq i8* %rvtable2934, null
  br i1 %compare2933, label %__end_no660, label %__check_curr659

__fresh702:
  br label %__check_curr659

__check_curr659:
  %compare2933 = icmp eq i8** %lvtable2932, %rvtable2934
  br i1 %compare2933, label %__end_yes661, label %__move_up658

__fresh703:
  br label %__move_up658

__move_up658:
  %rvtable2931 = getelementptr i8* %rvtable2934, i32 0
  br label %__bound_check657

__fresh704:
  br label %__end_yes661

__end_yes661:
  %lhs_or_call2929 = load i32* %vdecl_slot2911
  %bop2930 = add i32 %lhs_or_call2929, 1
  store i32 %bop2930, i32* %vdecl_slot2911
  br label %__end_no660

__end_no660:
  br label %__bound_check662

__fresh705:
  br label %__bound_check662

__bound_check662:
  %cast_op2943 = bitcast %_B_vtable* @_B_vtable517 to i8** 
  %rvtable2942 = load i8** %rvtable2939
  %lvtable2940 = load i8** %cast_op2943
  %compare2941 = icmp eq i8* %rvtable2942, null
  br i1 %compare2941, label %__end_no665, label %__check_curr664

__fresh706:
  br label %__check_curr664

__check_curr664:
  %compare2941 = icmp eq i8** %lvtable2940, %rvtable2942
  br i1 %compare2941, label %__end_yes666, label %__move_up663

__fresh707:
  br label %__move_up663

__move_up663:
  %rvtable2939 = getelementptr i8* %rvtable2942, i32 0
  br label %__bound_check662

__fresh708:
  br label %__end_yes666

__end_yes666:
  %lhs_or_call2937 = load i32* %vdecl_slot2911
  %bop2938 = add i32 %lhs_or_call2937, 1
  store i32 %bop2938, i32* %vdecl_slot2911
  br label %__end_no665

__end_no665:
  br label %__bound_check667

__fresh709:
  br label %__bound_check667

__bound_check667:
  %cast_op2951 = bitcast %_Bb_vtable* @_Bb_vtable518 to i8** 
  %rvtable2950 = load i8** %rvtable2947
  %lvtable2948 = load i8** %cast_op2951
  %compare2949 = icmp eq i8* %rvtable2950, null
  br i1 %compare2949, label %__end_no670, label %__check_curr669

__fresh710:
  br label %__check_curr669

__check_curr669:
  %compare2949 = icmp eq i8** %lvtable2948, %rvtable2950
  br i1 %compare2949, label %__end_yes671, label %__move_up668

__fresh711:
  br label %__move_up668

__move_up668:
  %rvtable2947 = getelementptr i8* %rvtable2950, i32 0
  br label %__bound_check667

__fresh712:
  br label %__end_yes671

__end_yes671:
  %lhs_or_call2945 = load i32* %vdecl_slot2911
  %bop2946 = add i32 %lhs_or_call2945, 1
  store i32 %bop2946, i32* %vdecl_slot2911
  br label %__end_no670

__end_no670:
  br label %__bound_check672

__fresh713:
  br label %__bound_check672

__bound_check672:
  %cast_op2959 = bitcast %_B_vtable* @_B_vtable517 to i8** 
  %rvtable2958 = load i8** %rvtable2955
  %lvtable2956 = load i8** %cast_op2959
  %compare2957 = icmp eq i8* %rvtable2958, null
  br i1 %compare2957, label %__end_no675, label %__check_curr674

__fresh714:
  br label %__check_curr674

__check_curr674:
  %compare2957 = icmp eq i8** %lvtable2956, %rvtable2958
  br i1 %compare2957, label %__end_yes676, label %__move_up673

__fresh715:
  br label %__move_up673

__move_up673:
  %rvtable2955 = getelementptr i8* %rvtable2958, i32 0
  br label %__bound_check672

__fresh716:
  br label %__end_yes676

__end_yes676:
  br label %__end_no675

__end_no675:
  %lhs_or_call2953 = load i32* %vdecl_slot2911
  %bop2954 = add i32 %lhs_or_call2953, 1
  store i32 %bop2954, i32* %vdecl_slot2911
  br label %__bound_check677

__fresh717:
  br label %__bound_check677

__bound_check677:
  %cast_op2967 = bitcast %_Bb_vtable* @_Bb_vtable518 to i8** 
  %rvtable2966 = load i8** %rvtable2963
  %lvtable2964 = load i8** %cast_op2967
  %compare2965 = icmp eq i8* %rvtable2966, null
  br i1 %compare2965, label %__end_no680, label %__check_curr679

__fresh718:
  br label %__check_curr679

__check_curr679:
  %compare2965 = icmp eq i8** %lvtable2964, %rvtable2966
  br i1 %compare2965, label %__end_yes681, label %__move_up678

__fresh719:
  br label %__move_up678

__move_up678:
  %rvtable2963 = getelementptr i8* %rvtable2966, i32 0
  br label %__bound_check677

__fresh720:
  br label %__end_yes681

__end_yes681:
  br label %__end_no680

__end_no680:
  %lhs_or_call2961 = load i32* %vdecl_slot2911
  %bop2962 = add i32 %lhs_or_call2961, 1
  store i32 %bop2962, i32* %vdecl_slot2911
  br label %__bound_check682

__fresh721:
  br label %__bound_check682

__bound_check682:
  %cast_op2975 = bitcast %_Bb_vtable* @_Bb_vtable518 to i8** 
  %rvtable2974 = load i8** %rvtable2971
  %lvtable2972 = load i8** %cast_op2975
  %compare2973 = icmp eq i8* %rvtable2974, null
  br i1 %compare2973, label %__end_no685, label %__check_curr684

__fresh722:
  br label %__check_curr684

__check_curr684:
  %compare2973 = icmp eq i8** %lvtable2972, %rvtable2974
  br i1 %compare2973, label %__end_yes686, label %__move_up683

__fresh723:
  br label %__move_up683

__move_up683:
  %rvtable2971 = getelementptr i8* %rvtable2974, i32 0
  br label %__bound_check682

__fresh724:
  br label %__end_yes686

__end_yes686:
  br label %__end_no685

__end_no685:
  %lhs_or_call2969 = load i32* %vdecl_slot2911
  %bop2970 = add i32 %lhs_or_call2969, 1
  store i32 %bop2970, i32* %vdecl_slot2911
  br label %__bound_check687

__fresh725:
  br label %__bound_check687

__bound_check687:
  %cast_op2983 = bitcast %_B_vtable* @_B_vtable517 to i8** 
  %rvtable2982 = load i8** %rvtable2979
  %lvtable2980 = load i8** %cast_op2983
  %compare2981 = icmp eq i8* %rvtable2982, null
  br i1 %compare2981, label %__end_no690, label %__check_curr689

__fresh726:
  br label %__check_curr689

__check_curr689:
  %compare2981 = icmp eq i8** %lvtable2980, %rvtable2982
  br i1 %compare2981, label %__end_yes691, label %__move_up688

__fresh727:
  br label %__move_up688

__move_up688:
  %rvtable2979 = getelementptr i8* %rvtable2982, i32 0
  br label %__bound_check687

__fresh728:
  br label %__end_yes691

__end_yes691:
  br label %__end_no690

__end_no690:
  %lhs_or_call2977 = load i32* %vdecl_slot2911
  %bop2978 = add i32 %lhs_or_call2977, 1
  store i32 %bop2978, i32* %vdecl_slot2911
  %lhs_or_call2984 = load i32* %vdecl_slot2911
  ret i32 %lhs_or_call2984
}


define void @bb527.init528 (){
__fresh646:
  %mem_ptr2903 = call i32* @oat_malloc ( i32 8 )
  %obj2904 = bitcast i32* %mem_ptr2903 to %Bb* 
  %new_obj2905 = call %Bb* @_Bb_ctor ( %Bb* %obj2904 )
  %cast_op2906 = bitcast %Bb* %new_obj2905 to %Object* 
  store %Object* %cast_op2906, %Object** @bb527
  ret void
}


define void @b525.init526 (){
__fresh645:
  %mem_ptr2899 = call i32* @oat_malloc ( i32 8 )
  %obj2900 = bitcast i32* %mem_ptr2899 to %B* 
  %new_obj2901 = call %B* @_B_ctor ( %B* %obj2900 )
  %cast_op2902 = bitcast %B* %new_obj2901 to %Object* 
  store %Object* %cast_op2902, %Object** @b525
  ret void
}


define void @a523.init524 (){
__fresh644:
  %mem_ptr2895 = call i32* @oat_malloc ( i32 8 )
  %obj2896 = bitcast i32* %mem_ptr2895 to %A* 
  %new_obj2897 = call %A* @_A_ctor ( %A* %obj2896 )
  %cast_op2898 = bitcast %A* %new_obj2897 to %Object* 
  store %Object* %cast_op2898, %Object** @a523
  ret void
}


define %Bb* @_Bb_ctor (%Bb* %_this1){
__fresh643:
  %mem_ptr2890 = call i32* @oat_malloc ( i32 8 )
  %obj2891 = bitcast i32* %mem_ptr2890 to %A* 
  %new_obj2892 = call %A* @_A_ctor ( %A* %obj2891 )
  %_this1 = bitcast %A* %new_obj2892 to %Bb 
  %_name2893 = getelementptr %Bb* %_this1, i32 0, i32 1
  store i8* @_const_str522, i8** %_name2893
  %this_vtable2894 = getelementptr %Bb* %_this1, i32 0, i32 0
  store %_Bb_vtable* @_Bb_vtable518, %_Bb_vtable** %this_vtable2894
  ret %Bb* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh642:
  %mem_ptr2885 = call i32* @oat_malloc ( i32 8 )
  %obj2886 = bitcast i32* %mem_ptr2885 to %A* 
  %new_obj2887 = call %A* @_A_ctor ( %A* %obj2886 )
  %_this1 = bitcast %A* %new_obj2887 to %B 
  %_name2888 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str521, i8** %_name2888
  %this_vtable2889 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable517, %_B_vtable** %this_vtable2889
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh641:
  %mem_ptr2880 = call i32* @oat_malloc ( i32 8 )
  %obj2881 = bitcast i32* %mem_ptr2880 to %Object* 
  %new_obj2882 = call %Object* @_Object_ctor ( %Object* %obj2881 )
  %_this1 = bitcast %Object* %new_obj2882 to %A 
  %_name2883 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str520, i8** %_name2883
  %this_vtable2884 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable516, %_A_vtable** %this_vtable2884
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh640:
  %_name2878 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2879 = load i8** %_name2878
  ret i8* %lhs_or_call2879
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh639:
  %_name2876 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str519, i8** %_name2876
  %this_vtable2877 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable515, %_Object_vtable** %this_vtable2877
  ret %Object* %_this1
}


