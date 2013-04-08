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
__fresh1004:
  call void @a532.init533(  )
  call void @b534.init535(  )
  call void @bb536.init537(  )
  ret void
}


define i32 @program (i32 %argc3119, { i32, [ 0 x i8* ] }* %argv3117){
__fresh940:
  %argc_slot3120 = alloca i32
  store i32 %argc3119, i32* %argc_slot3120
  %argv_slot3118 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3117, { i32, [ 0 x i8* ] }** %argv_slot3118
  %vdecl_slot3121 = alloca i32
  store i32 0, i32* %vdecl_slot3121
  br label %__init877

__fresh941:
  br label %__init877

__init877:
  %lhs_or_call3123 = load %Object** @a532
  %rvtable3126 = getelementptr %Object* %lhs_or_call3123, i32 0
  br label %__bound_check878

__fresh942:
  br label %__bound_check878

__bound_check878:
  %cast_op3130 = bitcast %_A_vtable* @_A_vtable525 to i8** 
  %lvtable3127 = load i8** %cast_op3130
  %cast_vtable3131 = bitcast i8** %rvtable3126 to i8** 
  %rvtable3129 = load i8** %cast_vtable3131
  %compare3128 = icmp eq i8* %rvtable3129, null
  br i1 %compare3128, label %__end_no881, label %__check_curr880

__fresh943:
  br label %__check_curr880

__check_curr880:
  %compare3128 = icmp eq i8** %lvtable3127, %rvtable3129
  br i1 %compare3128, label %__end_yes882, label %__move_up879

__fresh944:
  br label %__move_up879

__move_up879:
  %rvtable3126 = getelementptr i8* %rvtable3129, i32 0
  br label %__bound_check878

__fresh945:
  br label %__end_yes882

__end_yes882:
  %lhs_or_call3123 = load %Object** @a532
  %cast_ptr3122 = bitcast %Object* %lhs_or_call3123 to %A* 
  %lhs_or_call3124 = load i32* %vdecl_slot3121
  %bop3125 = add i32 %lhs_or_call3124, 1
  store i32 %bop3125, i32* %vdecl_slot3121
  br label %__end883

__fresh946:
  br label %__end_no881

__end_no881:
  br label %__end883

__fresh947:
  br label %__end883

__end883:
  br label %__init884

__fresh948:
  br label %__init884

__init884:
  %lhs_or_call3133 = load %Object** @b534
  %rvtable3136 = getelementptr %Object* %lhs_or_call3133, i32 0
  br label %__bound_check885

__fresh949:
  br label %__bound_check885

__bound_check885:
  %cast_op3140 = bitcast %_A_vtable* @_A_vtable525 to i8** 
  %lvtable3137 = load i8** %cast_op3140
  %cast_vtable3141 = bitcast i8** %rvtable3136 to i8** 
  %rvtable3139 = load i8** %cast_vtable3141
  %compare3138 = icmp eq i8* %rvtable3139, null
  br i1 %compare3138, label %__end_no888, label %__check_curr887

__fresh950:
  br label %__check_curr887

__check_curr887:
  %compare3138 = icmp eq i8** %lvtable3137, %rvtable3139
  br i1 %compare3138, label %__end_yes889, label %__move_up886

__fresh951:
  br label %__move_up886

__move_up886:
  %rvtable3136 = getelementptr i8* %rvtable3139, i32 0
  br label %__bound_check885

__fresh952:
  br label %__end_yes889

__end_yes889:
  %lhs_or_call3133 = load %Object** @b534
  %cast_ptr3132 = bitcast %Object* %lhs_or_call3133 to %A* 
  %lhs_or_call3134 = load i32* %vdecl_slot3121
  %bop3135 = add i32 %lhs_or_call3134, 1
  store i32 %bop3135, i32* %vdecl_slot3121
  br label %__end890

__fresh953:
  br label %__end_no888

__end_no888:
  br label %__end890

__fresh954:
  br label %__end890

__end890:
  br label %__init891

__fresh955:
  br label %__init891

__init891:
  %lhs_or_call3143 = load %Object** @bb536
  %rvtable3146 = getelementptr %Object* %lhs_or_call3143, i32 0
  br label %__bound_check892

__fresh956:
  br label %__bound_check892

__bound_check892:
  %cast_op3150 = bitcast %_A_vtable* @_A_vtable525 to i8** 
  %lvtable3147 = load i8** %cast_op3150
  %cast_vtable3151 = bitcast i8** %rvtable3146 to i8** 
  %rvtable3149 = load i8** %cast_vtable3151
  %compare3148 = icmp eq i8* %rvtable3149, null
  br i1 %compare3148, label %__end_no895, label %__check_curr894

__fresh957:
  br label %__check_curr894

__check_curr894:
  %compare3148 = icmp eq i8** %lvtable3147, %rvtable3149
  br i1 %compare3148, label %__end_yes896, label %__move_up893

__fresh958:
  br label %__move_up893

__move_up893:
  %rvtable3146 = getelementptr i8* %rvtable3149, i32 0
  br label %__bound_check892

__fresh959:
  br label %__end_yes896

__end_yes896:
  %lhs_or_call3143 = load %Object** @bb536
  %cast_ptr3142 = bitcast %Object* %lhs_or_call3143 to %A* 
  %lhs_or_call3144 = load i32* %vdecl_slot3121
  %bop3145 = add i32 %lhs_or_call3144, 1
  store i32 %bop3145, i32* %vdecl_slot3121
  br label %__end897

__fresh960:
  br label %__end_no895

__end_no895:
  br label %__end897

__fresh961:
  br label %__end897

__end897:
  br label %__init898

__fresh962:
  br label %__init898

__init898:
  %lhs_or_call3153 = load %Object** @b534
  %rvtable3156 = getelementptr %Object* %lhs_or_call3153, i32 0
  br label %__bound_check899

__fresh963:
  br label %__bound_check899

__bound_check899:
  %cast_op3160 = bitcast %_B_vtable* @_B_vtable526 to i8** 
  %lvtable3157 = load i8** %cast_op3160
  %cast_vtable3161 = bitcast i8** %rvtable3156 to i8** 
  %rvtable3159 = load i8** %cast_vtable3161
  %compare3158 = icmp eq i8* %rvtable3159, null
  br i1 %compare3158, label %__end_no902, label %__check_curr901

__fresh964:
  br label %__check_curr901

__check_curr901:
  %compare3158 = icmp eq i8** %lvtable3157, %rvtable3159
  br i1 %compare3158, label %__end_yes903, label %__move_up900

__fresh965:
  br label %__move_up900

__move_up900:
  %rvtable3156 = getelementptr i8* %rvtable3159, i32 0
  br label %__bound_check899

__fresh966:
  br label %__end_yes903

__end_yes903:
  %lhs_or_call3153 = load %Object** @b534
  %cast_ptr3152 = bitcast %Object* %lhs_or_call3153 to %B* 
  %lhs_or_call3154 = load i32* %vdecl_slot3121
  %bop3155 = add i32 %lhs_or_call3154, 1
  store i32 %bop3155, i32* %vdecl_slot3121
  br label %__end904

__fresh967:
  br label %__end_no902

__end_no902:
  br label %__end904

__fresh968:
  br label %__end904

__end904:
  br label %__init905

__fresh969:
  br label %__init905

__init905:
  %lhs_or_call3163 = load %Object** @bb536
  %rvtable3166 = getelementptr %Object* %lhs_or_call3163, i32 0
  br label %__bound_check906

__fresh970:
  br label %__bound_check906

__bound_check906:
  %cast_op3170 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8** 
  %lvtable3167 = load i8** %cast_op3170
  %cast_vtable3171 = bitcast i8** %rvtable3166 to i8** 
  %rvtable3169 = load i8** %cast_vtable3171
  %compare3168 = icmp eq i8* %rvtable3169, null
  br i1 %compare3168, label %__end_no909, label %__check_curr908

__fresh971:
  br label %__check_curr908

__check_curr908:
  %compare3168 = icmp eq i8** %lvtable3167, %rvtable3169
  br i1 %compare3168, label %__end_yes910, label %__move_up907

__fresh972:
  br label %__move_up907

__move_up907:
  %rvtable3166 = getelementptr i8* %rvtable3169, i32 0
  br label %__bound_check906

__fresh973:
  br label %__end_yes910

__end_yes910:
  %lhs_or_call3163 = load %Object** @bb536
  %cast_ptr3162 = bitcast %Object* %lhs_or_call3163 to %Bb* 
  %lhs_or_call3164 = load i32* %vdecl_slot3121
  %bop3165 = add i32 %lhs_or_call3164, 1
  store i32 %bop3165, i32* %vdecl_slot3121
  br label %__end911

__fresh974:
  br label %__end_no909

__end_no909:
  br label %__end911

__fresh975:
  br label %__end911

__end911:
  br label %__init912

__fresh976:
  br label %__init912

__init912:
  %lhs_or_call3173 = load %Object** @a532
  %rvtable3176 = getelementptr %Object* %lhs_or_call3173, i32 0
  br label %__bound_check913

__fresh977:
  br label %__bound_check913

__bound_check913:
  %cast_op3180 = bitcast %_B_vtable* @_B_vtable526 to i8** 
  %lvtable3177 = load i8** %cast_op3180
  %cast_vtable3181 = bitcast i8** %rvtable3176 to i8** 
  %rvtable3179 = load i8** %cast_vtable3181
  %compare3178 = icmp eq i8* %rvtable3179, null
  br i1 %compare3178, label %__end_no916, label %__check_curr915

__fresh978:
  br label %__check_curr915

__check_curr915:
  %compare3178 = icmp eq i8** %lvtable3177, %rvtable3179
  br i1 %compare3178, label %__end_yes917, label %__move_up914

__fresh979:
  br label %__move_up914

__move_up914:
  %rvtable3176 = getelementptr i8* %rvtable3179, i32 0
  br label %__bound_check913

__fresh980:
  br label %__end_yes917

__end_yes917:
  %lhs_or_call3173 = load %Object** @a532
  %cast_ptr3172 = bitcast %Object* %lhs_or_call3173 to %B* 
  br label %__end918

__fresh981:
  br label %__end_no916

__end_no916:
  %lhs_or_call3174 = load i32* %vdecl_slot3121
  %bop3175 = add i32 %lhs_or_call3174, 1
  store i32 %bop3175, i32* %vdecl_slot3121
  br label %__end918

__fresh982:
  br label %__end918

__end918:
  br label %__init919

__fresh983:
  br label %__init919

__init919:
  %lhs_or_call3183 = load %Object** @a532
  %rvtable3186 = getelementptr %Object* %lhs_or_call3183, i32 0
  br label %__bound_check920

__fresh984:
  br label %__bound_check920

__bound_check920:
  %cast_op3190 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8** 
  %lvtable3187 = load i8** %cast_op3190
  %cast_vtable3191 = bitcast i8** %rvtable3186 to i8** 
  %rvtable3189 = load i8** %cast_vtable3191
  %compare3188 = icmp eq i8* %rvtable3189, null
  br i1 %compare3188, label %__end_no923, label %__check_curr922

__fresh985:
  br label %__check_curr922

__check_curr922:
  %compare3188 = icmp eq i8** %lvtable3187, %rvtable3189
  br i1 %compare3188, label %__end_yes924, label %__move_up921

__fresh986:
  br label %__move_up921

__move_up921:
  %rvtable3186 = getelementptr i8* %rvtable3189, i32 0
  br label %__bound_check920

__fresh987:
  br label %__end_yes924

__end_yes924:
  %lhs_or_call3183 = load %Object** @a532
  %cast_ptr3182 = bitcast %Object* %lhs_or_call3183 to %Bb* 
  br label %__end925

__fresh988:
  br label %__end_no923

__end_no923:
  %lhs_or_call3184 = load i32* %vdecl_slot3121
  %bop3185 = add i32 %lhs_or_call3184, 1
  store i32 %bop3185, i32* %vdecl_slot3121
  br label %__end925

__fresh989:
  br label %__end925

__end925:
  br label %__init926

__fresh990:
  br label %__init926

__init926:
  %lhs_or_call3193 = load %Object** @b534
  %rvtable3196 = getelementptr %Object* %lhs_or_call3193, i32 0
  br label %__bound_check927

__fresh991:
  br label %__bound_check927

__bound_check927:
  %cast_op3200 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8** 
  %lvtable3197 = load i8** %cast_op3200
  %cast_vtable3201 = bitcast i8** %rvtable3196 to i8** 
  %rvtable3199 = load i8** %cast_vtable3201
  %compare3198 = icmp eq i8* %rvtable3199, null
  br i1 %compare3198, label %__end_no930, label %__check_curr929

__fresh992:
  br label %__check_curr929

__check_curr929:
  %compare3198 = icmp eq i8** %lvtable3197, %rvtable3199
  br i1 %compare3198, label %__end_yes931, label %__move_up928

__fresh993:
  br label %__move_up928

__move_up928:
  %rvtable3196 = getelementptr i8* %rvtable3199, i32 0
  br label %__bound_check927

__fresh994:
  br label %__end_yes931

__end_yes931:
  %lhs_or_call3193 = load %Object** @b534
  %cast_ptr3192 = bitcast %Object* %lhs_or_call3193 to %Bb* 
  br label %__end932

__fresh995:
  br label %__end_no930

__end_no930:
  %lhs_or_call3194 = load i32* %vdecl_slot3121
  %bop3195 = add i32 %lhs_or_call3194, 1
  store i32 %bop3195, i32* %vdecl_slot3121
  br label %__end932

__fresh996:
  br label %__end932

__end932:
  br label %__init933

__fresh997:
  br label %__init933

__init933:
  %lhs_or_call3203 = load %Object** @bb536
  %rvtable3206 = getelementptr %Object* %lhs_or_call3203, i32 0
  br label %__bound_check934

__fresh998:
  br label %__bound_check934

__bound_check934:
  %cast_op3210 = bitcast %_B_vtable* @_B_vtable526 to i8** 
  %lvtable3207 = load i8** %cast_op3210
  %cast_vtable3211 = bitcast i8** %rvtable3206 to i8** 
  %rvtable3209 = load i8** %cast_vtable3211
  %compare3208 = icmp eq i8* %rvtable3209, null
  br i1 %compare3208, label %__end_no937, label %__check_curr936

__fresh999:
  br label %__check_curr936

__check_curr936:
  %compare3208 = icmp eq i8** %lvtable3207, %rvtable3209
  br i1 %compare3208, label %__end_yes938, label %__move_up935

__fresh1000:
  br label %__move_up935

__move_up935:
  %rvtable3206 = getelementptr i8* %rvtable3209, i32 0
  br label %__bound_check934

__fresh1001:
  br label %__end_yes938

__end_yes938:
  %lhs_or_call3203 = load %Object** @bb536
  %cast_ptr3202 = bitcast %Object* %lhs_or_call3203 to %B* 
  br label %__end939

__fresh1002:
  br label %__end_no937

__end_no937:
  %lhs_or_call3204 = load i32* %vdecl_slot3121
  %bop3205 = add i32 %lhs_or_call3204, 1
  store i32 %bop3205, i32* %vdecl_slot3121
  br label %__end939

__fresh1003:
  br label %__end939

__end939:
  %lhs_or_call3212 = load i32* %vdecl_slot3121
  ret i32 %lhs_or_call3212
}


define void @bb536.init537 (){
__fresh876:
  %mem_ptr3113 = call i32* @oat_malloc ( i32 8 )
  %obj3114 = bitcast i32* %mem_ptr3113 to %Bb* 
  %new_obj3115 = call %Bb* @_Bb_ctor ( %Bb* %obj3114 )
  %cast_op3116 = bitcast %Bb* %new_obj3115 to %Object* 
  store %Object* %cast_op3116, %Object** @bb536
  ret void
}


define void @b534.init535 (){
__fresh875:
  %mem_ptr3109 = call i32* @oat_malloc ( i32 8 )
  %obj3110 = bitcast i32* %mem_ptr3109 to %B* 
  %new_obj3111 = call %B* @_B_ctor ( %B* %obj3110 )
  %cast_op3112 = bitcast %B* %new_obj3111 to %Object* 
  store %Object* %cast_op3112, %Object** @b534
  ret void
}


define void @a532.init533 (){
__fresh874:
  %mem_ptr3105 = call i32* @oat_malloc ( i32 8 )
  %obj3106 = bitcast i32* %mem_ptr3105 to %A* 
  %new_obj3107 = call %A* @_A_ctor ( %A* %obj3106 )
  %cast_op3108 = bitcast %A* %new_obj3107 to %Object* 
  store %Object* %cast_op3108, %Object** @a532
  ret void
}


define %Bb* @_Bb_ctor (%Bb* %_this1){
__fresh873:
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
__fresh872:
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
__fresh871:
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
__fresh870:
  %_name3088 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3089 = load i8** %_name3088
  ret i8* %lhs_or_call3089
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh869:
  %_name3086 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str528, i8** %_name3086
  %this_vtable3087 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable524, %_Object_vtable** %this_vtable3087
  ret %Object* %_this1
}


