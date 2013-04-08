%C2 = type { %_C2_vtable*, i8* }
%_C2_vtable = type { %_B_vtable*, i8* (%Object*)* }
%C1 = type { %_C1_vtable*, i8* }
%_C1_vtable = type { %_B_vtable*, i8* (%Object*)* }
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
@_const_str548.str. = private unnamed_addr constant [ 3 x i8 ] c "C2\00", align 4
@_const_str548 = alias bitcast([ 3 x i8 ]* @_const_str548.str. to i8*)@_const_str547.str. = private unnamed_addr constant [ 3 x i8 ] c "C1\00", align 4
@_const_str547 = alias bitcast([ 3 x i8 ]* @_const_str547.str. to i8*)@_const_str546.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str546 = alias bitcast([ 2 x i8 ]* @_const_str546.str. to i8*)@_const_str545.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str545 = alias bitcast([ 2 x i8 ]* @_const_str545.str. to i8*)@_const_str544.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str544 = alias bitcast([ 7 x i8 ]* @_const_str544.str. to i8*)@_C2_vtable543 = private constant %_C2_vtable {%_B_vtable* @_B_vtable541, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable542 = private constant %_C1_vtable {%_B_vtable* @_B_vtable541, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable541 = private constant %_B_vtable {%_A_vtable* @_A_vtable540, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable540 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable539, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable539 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh602:
  ret void
}


define i32 @program (i32 %argc2869, { i32, [ 0 x i8* ] }* %argv2867){
__fresh601:
  %argc_slot2870 = alloca i32
  store i32 %argc2869, i32* %argc_slot2870
  %argv_slot2868 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2867, { i32, [ 0 x i8* ] }** %argv_slot2868
  %mem_ptr2871 = call i32* @oat_malloc ( i32 8 )
  %obj2872 = bitcast i32* %mem_ptr2871 to %A* 
  %new_obj2873 = call %A* @_A_ctor ( %A* %obj2872 )
  %vdecl_slot2874 = alloca %A*
  store %A* %new_obj2873, %A** %vdecl_slot2874
  %mem_ptr2875 = call i32* @oat_malloc ( i32 8 )
  %obj2876 = bitcast i32* %mem_ptr2875 to %B* 
  %new_obj2877 = call %B* @_B_ctor ( %B* %obj2876 )
  %vdecl_slot2878 = alloca %B*
  store %B* %new_obj2877, %B** %vdecl_slot2878
  %mem_ptr2879 = call i32* @oat_malloc ( i32 8 )
  %obj2880 = bitcast i32* %mem_ptr2879 to %C1* 
  %new_obj2881 = call %C1* @_C1_ctor ( %C1* %obj2880 )
  %vdecl_slot2882 = alloca %C1*
  store %C1* %new_obj2881, %C1** %vdecl_slot2882
  %mem_ptr2883 = call i32* @oat_malloc ( i32 8 )
  %obj2884 = bitcast i32* %mem_ptr2883 to %C2* 
  %new_obj2885 = call %C2* @_C2_ctor ( %C2* %obj2884 )
  %vdecl_slot2886 = alloca %C2*
  store %C2* %new_obj2885, %C2** %vdecl_slot2886
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh600:
  %mem_ptr2862 = call i32* @oat_malloc ( i32 8 )
  %obj2863 = bitcast i32* %mem_ptr2862 to %B* 
  %new_obj2864 = call %B* @_B_ctor ( %B* %obj2863 )
  %_this1 = bitcast %B* %new_obj2864 to %C2 
  %_name2865 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str548, i8** %_name2865
  %this_vtable2866 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable543, %_C2_vtable** %this_vtable2866
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh599:
  %mem_ptr2857 = call i32* @oat_malloc ( i32 8 )
  %obj2858 = bitcast i32* %mem_ptr2857 to %B* 
  %new_obj2859 = call %B* @_B_ctor ( %B* %obj2858 )
  %_this1 = bitcast %B* %new_obj2859 to %C1 
  %_name2860 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str547, i8** %_name2860
  %this_vtable2861 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable542, %_C1_vtable** %this_vtable2861
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh598:
  %mem_ptr2852 = call i32* @oat_malloc ( i32 8 )
  %obj2853 = bitcast i32* %mem_ptr2852 to %A* 
  %new_obj2854 = call %A* @_A_ctor ( %A* %obj2853 )
  %_this1 = bitcast %A* %new_obj2854 to %B 
  %_name2855 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str546, i8** %_name2855
  %this_vtable2856 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable541, %_B_vtable** %this_vtable2856
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh597:
  %mem_ptr2847 = call i32* @oat_malloc ( i32 8 )
  %obj2848 = bitcast i32* %mem_ptr2847 to %Object* 
  %new_obj2849 = call %Object* @_Object_ctor ( %Object* %obj2848 )
  %_this1 = bitcast %Object* %new_obj2849 to %A 
  %_name2850 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str545, i8** %_name2850
  %this_vtable2851 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable540, %_A_vtable** %this_vtable2851
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh596:
  %_name2845 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2846 = load i8** %_name2845
  ret i8* %lhs_or_call2846
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh595:
  %_name2843 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %_name2843
  %this_vtable2844 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable539, %_Object_vtable** %this_vtable2844
  ret %Object* %_this1
}


