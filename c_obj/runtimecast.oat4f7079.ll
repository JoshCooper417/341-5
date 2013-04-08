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
@bb536 = global %Object* zeroinitializer, align 4		; initialized by @bb536.init537
@b534 = global %Object* zeroinitializer, align 4		; initialized by @b534.init535
@a532 = global %Object* zeroinitializer, align 4		; initialized by @a532.init533
@_const_str531.str. = private unnamed_addr constant [ 3 x i8 ] c "Bb\00", align 4
@_const_str531 = alias bitcast([ 3 x i8 ]* @_const_str531.str. to i8*)@_const_str530.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str530 = alias bitcast([ 2 x i8 ]* @_const_str530.str. to i8*)@_const_str529.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str529 = alias bitcast([ 2 x i8 ]* @_const_str529.str. to i8*)@_const_str528.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str528 = alias bitcast([ 7 x i8 ]* @_const_str528.str. to i8*)@_Bb_vtable527 = private constant %_Bb_vtable {%_A_vtable* @_A_vtable525, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable526 = private constant %_B_vtable {%_A_vtable* @_A_vtable525, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable525 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable524, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable524 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh926:
  call void @a532.init533(  )
  call void @b534.init535(  )
  call void @bb536.init537(  )
  ret void
}


define i32 @program (i32 %argc3119, { i32, [ 0 x i8* ] }* %argv3117){
__fresh880:
  %argc_slot3120 = alloca i32
  store i32 %argc3119, i32* %argc_slot3120
  %argv_slot3118 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3117, { i32, [ 0 x i8* ] }** %argv_slot3118
  %vdecl_slot3121 = alloca i32
  store i32 0, i32* %vdecl_slot3121
  br label %__init826

__fresh881:
  br label %__init826

__init826:
  %lhs_or_call3123 = load %Object** @a532
  %rvtable3126 = getelementptr %Object* %lhs_or_call3123, i32 0
  br label %__bound_check827

__fresh882:
  br label %__bound_check827

__bound_check827:
  %cast_op3130 = bitcast %_A_vtable* @_A_vtable525 to i8** 
  %lvtable3127 = load i8** %cast_op3130
  %cast_vtable3131 = bitcast i8** %rvtable3126 to i8** 
  %rvtable3129 = load i8** %cast_vtable3131
  %compare3128 = icmp eq i8* %rvtable3129, null
  br i1 %compare3128, label %__end_no830, label %__check_curr829

__fresh883:
  br label %__check_curr829

__check_curr829:
  %compare3128 = icmp eq i8** %lvtable3127, %rvtable3129
  br i1 %compare3128, label %__end_yes831, label %__move_up828

__fresh884:
  br label %__move_up828

__move_up828:
  %rvtable3126 = getelementptr i8* %rvtable3129, i32 0
  br label %__bound_check827

__fresh885:
  br label %__end_yes831

__end_yes831:
  %lhs_or_call3123 = load %Object** @a532
  %cast_ptr3122 = bitcast %Object* %lhs_or_call3123 to %A* 
  %lhs_or_call3124 = load i32* %vdecl_slot3121
  %bop3125 = add i32 %lhs_or_call3124, 1
  store i32 %bop3125, i32* %vdecl_slot3121
  br label %__end_no830

__end_no830:
  br label %__init832

__fresh886:
  br label %__init832

__init832:
  %lhs_or_call3133 = load %Object** @b534
  %rvtable3136 = getelementptr %Object* %lhs_or_call3133, i32 0
  br label %__bound_check833

__fresh887:
  br label %__bound_check833

__bound_check833:
  %cast_op3140 = bitcast %_A_vtable* @_A_vtable525 to i8** 
  %lvtable3137 = load i8** %cast_op3140
  %cast_vtable3141 = bitcast i8** %rvtable3136 to i8** 
  %rvtable3139 = load i8** %cast_vtable3141
  %compare3138 = icmp eq i8* %rvtable3139, null
  br i1 %compare3138, label %__end_no836, label %__check_curr835

__fresh888:
  br label %__check_curr835

__check_curr835:
  %compare3138 = icmp eq i8** %lvtable3137, %rvtable3139
  br i1 %compare3138, label %__end_yes837, label %__move_up834

__fresh889:
  br label %__move_up834

__move_up834:
  %rvtable3136 = getelementptr i8* %rvtable3139, i32 0
  br label %__bound_check833

__fresh890:
  br label %__end_yes837

__end_yes837:
  %lhs_or_call3133 = load %Object** @b534
  %cast_ptr3132 = bitcast %Object* %lhs_or_call3133 to %A* 
  %lhs_or_call3134 = load i32* %vdecl_slot3121
  %bop3135 = add i32 %lhs_or_call3134, 1
  store i32 %bop3135, i32* %vdecl_slot3121
  br label %__end_no836

__end_no836:
  br label %__init838

__fresh891:
  br label %__init838

__init838:
  %lhs_or_call3143 = load %Object** @bb536
  %rvtable3146 = getelementptr %Object* %lhs_or_call3143, i32 0
  br label %__bound_check839

__fresh892:
  br label %__bound_check839

__bound_check839:
  %cast_op3150 = bitcast %_A_vtable* @_A_vtable525 to i8** 
  %lvtable3147 = load i8** %cast_op3150
  %cast_vtable3151 = bitcast i8** %rvtable3146 to i8** 
  %rvtable3149 = load i8** %cast_vtable3151
  %compare3148 = icmp eq i8* %rvtable3149, null
  br i1 %compare3148, label %__end_no842, label %__check_curr841

__fresh893:
  br label %__check_curr841

__check_curr841:
  %compare3148 = icmp eq i8** %lvtable3147, %rvtable3149
  br i1 %compare3148, label %__end_yes843, label %__move_up840

__fresh894:
  br label %__move_up840

__move_up840:
  %rvtable3146 = getelementptr i8* %rvtable3149, i32 0
  br label %__bound_check839

__fresh895:
  br label %__end_yes843

__end_yes843:
  %lhs_or_call3143 = load %Object** @bb536
  %cast_ptr3142 = bitcast %Object* %lhs_or_call3143 to %A* 
  %lhs_or_call3144 = load i32* %vdecl_slot3121
  %bop3145 = add i32 %lhs_or_call3144, 1
  store i32 %bop3145, i32* %vdecl_slot3121
  br label %__end_no842

__end_no842:
  br label %__init844

__fresh896:
  br label %__init844

__init844:
  %lhs_or_call3153 = load %Object** @b534
  %rvtable3156 = getelementptr %Object* %lhs_or_call3153, i32 0
  br label %__bound_check845

__fresh897:
  br label %__bound_check845

__bound_check845:
  %cast_op3160 = bitcast %_B_vtable* @_B_vtable526 to i8** 
  %lvtable3157 = load i8** %cast_op3160
  %cast_vtable3161 = bitcast i8** %rvtable3156 to i8** 
  %rvtable3159 = load i8** %cast_vtable3161
  %compare3158 = icmp eq i8* %rvtable3159, null
  br i1 %compare3158, label %__end_no848, label %__check_curr847

__fresh898:
  br label %__check_curr847

__check_curr847:
  %compare3158 = icmp eq i8** %lvtable3157, %rvtable3159
  br i1 %compare3158, label %__end_yes849, label %__move_up846

__fresh899:
  br label %__move_up846

__move_up846:
  %rvtable3156 = getelementptr i8* %rvtable3159, i32 0
  br label %__bound_check845

__fresh900:
  br label %__end_yes849

__end_yes849:
  %lhs_or_call3153 = load %Object** @b534
  %cast_ptr3152 = bitcast %Object* %lhs_or_call3153 to %B* 
  %lhs_or_call3154 = load i32* %vdecl_slot3121
  %bop3155 = add i32 %lhs_or_call3154, 1
  store i32 %bop3155, i32* %vdecl_slot3121
  br label %__end_no848

__end_no848:
  br label %__init850

__fresh901:
  br label %__init850

__init850:
  %lhs_or_call3163 = load %Object** @bb536
  %rvtable3166 = getelementptr %Object* %lhs_or_call3163, i32 0
  br label %__bound_check851

__fresh902:
  br label %__bound_check851

__bound_check851:
  %cast_op3170 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8** 
  %lvtable3167 = load i8** %cast_op3170
  %cast_vtable3171 = bitcast i8** %rvtable3166 to i8** 
  %rvtable3169 = load i8** %cast_vtable3171
  %compare3168 = icmp eq i8* %rvtable3169, null
  br i1 %compare3168, label %__end_no854, label %__check_curr853

__fresh903:
  br label %__check_curr853

__check_curr853:
  %compare3168 = icmp eq i8** %lvtable3167, %rvtable3169
  br i1 %compare3168, label %__end_yes855, label %__move_up852

__fresh904:
  br label %__move_up852

__move_up852:
  %rvtable3166 = getelementptr i8* %rvtable3169, i32 0
  br label %__bound_check851

__fresh905:
  br label %__end_yes855

__end_yes855:
  %lhs_or_call3163 = load %Object** @bb536
  %cast_ptr3162 = bitcast %Object* %lhs_or_call3163 to %Bb* 
  %lhs_or_call3164 = load i32* %vdecl_slot3121
  %bop3165 = add i32 %lhs_or_call3164, 1
  store i32 %bop3165, i32* %vdecl_slot3121
  br label %__end_no854

__end_no854:
  br label %__init856

__fresh906:
  br label %__init856

__init856:
  %lhs_or_call3173 = load %Object** @a532
  %rvtable3176 = getelementptr %Object* %lhs_or_call3173, i32 0
  br label %__bound_check857

__fresh907:
  br label %__bound_check857

__bound_check857:
  %cast_op3180 = bitcast %_B_vtable* @_B_vtable526 to i8** 
  %lvtable3177 = load i8** %cast_op3180
  %cast_vtable3181 = bitcast i8** %rvtable3176 to i8** 
  %rvtable3179 = load i8** %cast_vtable3181
  %compare3178 = icmp eq i8* %rvtable3179, null
  br i1 %compare3178, label %__end_no860, label %__check_curr859

__fresh908:
  br label %__check_curr859

__check_curr859:
  %compare3178 = icmp eq i8** %lvtable3177, %rvtable3179
  br i1 %compare3178, label %__end_yes861, label %__move_up858

__fresh909:
  br label %__move_up858

__move_up858:
  %rvtable3176 = getelementptr i8* %rvtable3179, i32 0
  br label %__bound_check857

__fresh910:
  br label %__end_yes861

__end_yes861:
  %lhs_or_call3173 = load %Object** @a532
  %cast_ptr3172 = bitcast %Object* %lhs_or_call3173 to %B* 
  br label %__end_no860

__end_no860:
  %lhs_or_call3174 = load i32* %vdecl_slot3121
  %bop3175 = add i32 %lhs_or_call3174, 1
  store i32 %bop3175, i32* %vdecl_slot3121
  br label %__init862

__fresh911:
  br label %__init862

__init862:
  %lhs_or_call3183 = load %Object** @a532
  %rvtable3186 = getelementptr %Object* %lhs_or_call3183, i32 0
  br label %__bound_check863

__fresh912:
  br label %__bound_check863

__bound_check863:
  %cast_op3190 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8** 
  %lvtable3187 = load i8** %cast_op3190
  %cast_vtable3191 = bitcast i8** %rvtable3186 to i8** 
  %rvtable3189 = load i8** %cast_vtable3191
  %compare3188 = icmp eq i8* %rvtable3189, null
  br i1 %compare3188, label %__end_no866, label %__check_curr865

__fresh913:
  br label %__check_curr865

__check_curr865:
  %compare3188 = icmp eq i8** %lvtable3187, %rvtable3189
  br i1 %compare3188, label %__end_yes867, label %__move_up864

__fresh914:
  br label %__move_up864

__move_up864:
  %rvtable3186 = getelementptr i8* %rvtable3189, i32 0
  br label %__bound_check863

__fresh915:
  br label %__end_yes867

__end_yes867:
  %lhs_or_call3183 = load %Object** @a532
  %cast_ptr3182 = bitcast %Object* %lhs_or_call3183 to %Bb* 
  br label %__end_no866

__end_no866:
  %lhs_or_call3184 = load i32* %vdecl_slot3121
  %bop3185 = add i32 %lhs_or_call3184, 1
  store i32 %bop3185, i32* %vdecl_slot3121
  br label %__init868

__fresh916:
  br label %__init868

__init868:
  %lhs_or_call3193 = load %Object** @b534
  %rvtable3196 = getelementptr %Object* %lhs_or_call3193, i32 0
  br label %__bound_check869

__fresh917:
  br label %__bound_check869

__bound_check869:
  %cast_op3200 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8** 
  %lvtable3197 = load i8** %cast_op3200
  %cast_vtable3201 = bitcast i8** %rvtable3196 to i8** 
  %rvtable3199 = load i8** %cast_vtable3201
  %compare3198 = icmp eq i8* %rvtable3199, null
  br i1 %compare3198, label %__end_no872, label %__check_curr871

__fresh918:
  br label %__check_curr871

__check_curr871:
  %compare3198 = icmp eq i8** %lvtable3197, %rvtable3199
  br i1 %compare3198, label %__end_yes873, label %__move_up870

__fresh919:
  br label %__move_up870

__move_up870:
  %rvtable3196 = getelementptr i8* %rvtable3199, i32 0
  br label %__bound_check869

__fresh920:
  br label %__end_yes873

__end_yes873:
  %lhs_or_call3193 = load %Object** @b534
  %cast_ptr3192 = bitcast %Object* %lhs_or_call3193 to %Bb* 
  br label %__end_no872

__end_no872:
  %lhs_or_call3194 = load i32* %vdecl_slot3121
  %bop3195 = add i32 %lhs_or_call3194, 1
  store i32 %bop3195, i32* %vdecl_slot3121
  br label %__init874

__fresh921:
  br label %__init874

__init874:
  %lhs_or_call3203 = load %Object** @bb536
  %rvtable3206 = getelementptr %Object* %lhs_or_call3203, i32 0
  br label %__bound_check875

__fresh922:
  br label %__bound_check875

__bound_check875:
  %cast_op3210 = bitcast %_B_vtable* @_B_vtable526 to i8** 
  %lvtable3207 = load i8** %cast_op3210
  %cast_vtable3211 = bitcast i8** %rvtable3206 to i8** 
  %rvtable3209 = load i8** %cast_vtable3211
  %compare3208 = icmp eq i8* %rvtable3209, null
  br i1 %compare3208, label %__end_no878, label %__check_curr877

__fresh923:
  br label %__check_curr877

__check_curr877:
  %compare3208 = icmp eq i8** %lvtable3207, %rvtable3209
  br i1 %compare3208, label %__end_yes879, label %__move_up876

__fresh924:
  br label %__move_up876

__move_up876:
  %rvtable3206 = getelementptr i8* %rvtable3209, i32 0
  br label %__bound_check875

__fresh925:
  br label %__end_yes879

__end_yes879:
  %lhs_or_call3203 = load %Object** @bb536
  %cast_ptr3202 = bitcast %Object* %lhs_or_call3203 to %B* 
  br label %__end_no878

__end_no878:
  %lhs_or_call3204 = load i32* %vdecl_slot3121
  %bop3205 = add i32 %lhs_or_call3204, 1
  store i32 %bop3205, i32* %vdecl_slot3121
  %lhs_or_call3212 = load i32* %vdecl_slot3121
  ret i32 %lhs_or_call3212
}


define void @bb536.init537 (){
__fresh825:
  %mem_ptr3113 = call i32* @oat_malloc ( i32 8 )
  %obj3114 = bitcast i32* %mem_ptr3113 to %Bb* 
  %new_obj3115 = call %Bb* @_Bb_ctor ( %Bb* %obj3114 )
  %cast_op3116 = bitcast %Bb* %new_obj3115 to %Object* 
  store %Object* %cast_op3116, %Object** @bb536
  ret void
}


define void @b534.init535 (){
__fresh824:
  %mem_ptr3109 = call i32* @oat_malloc ( i32 8 )
  %obj3110 = bitcast i32* %mem_ptr3109 to %B* 
  %new_obj3111 = call %B* @_B_ctor ( %B* %obj3110 )
  %cast_op3112 = bitcast %B* %new_obj3111 to %Object* 
  store %Object* %cast_op3112, %Object** @b534
  ret void
}


define void @a532.init533 (){
__fresh823:
  %mem_ptr3105 = call i32* @oat_malloc ( i32 8 )
  %obj3106 = bitcast i32* %mem_ptr3105 to %A* 
  %new_obj3107 = call %A* @_A_ctor ( %A* %obj3106 )
  %cast_op3108 = bitcast %A* %new_obj3107 to %Object* 
  store %Object* %cast_op3108, %Object** @a532
  ret void
}


define %Bb* @_Bb_ctor (%Bb* %_this1){
__fresh822:
  %mem_ptr3100 = call i32* @oat_malloc ( i32 8 )
  %obj3101 = bitcast i32* %mem_ptr3100 to %A* 
  %new_obj3102 = call %A* @_A_ctor ( %A* %obj3101 )
  %_this1 = bitcast %A* %new_obj3102 to %Bb 
  %_name3103 = getelementptr %Bb* %_this1, i32 0, i32 1
  store i8* @_const_str531, i8** %_name3103
  %this_vtable3104 = getelementptr %Bb* %_this1, i32 0, i32 0
  store %_Bb_vtable* @_Bb_vtable527, %_Bb_vtable** %this_vtable3104
  ret %Bb* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh821:
  %mem_ptr3095 = call i32* @oat_malloc ( i32 8 )
  %obj3096 = bitcast i32* %mem_ptr3095 to %A* 
  %new_obj3097 = call %A* @_A_ctor ( %A* %obj3096 )
  %_this1 = bitcast %A* %new_obj3097 to %B 
  %_name3098 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str530, i8** %_name3098
  %this_vtable3099 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable526, %_B_vtable** %this_vtable3099
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh820:
  %mem_ptr3090 = call i32* @oat_malloc ( i32 8 )
  %obj3091 = bitcast i32* %mem_ptr3090 to %Object* 
  %new_obj3092 = call %Object* @_Object_ctor ( %Object* %obj3091 )
  %_this1 = bitcast %Object* %new_obj3092 to %A 
  %_name3093 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str529, i8** %_name3093
  %this_vtable3094 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable525, %_A_vtable** %this_vtable3094
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh819:
  %_name3088 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3089 = load i8** %_name3088
  ret i8* %lhs_or_call3089
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh818:
  %_name3086 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str528, i8** %_name3086
  %this_vtable3087 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable524, %_Object_vtable** %this_vtable3087
  ret %Object* %_this1
}


