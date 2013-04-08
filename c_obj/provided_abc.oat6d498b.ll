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
@_const_str559.str. = private unnamed_addr constant [ 3 x i8 ] c "C2\00", align 4
@_const_str559 = alias bitcast([ 3 x i8 ]* @_const_str559.str. to i8*)@_const_str558.str. = private unnamed_addr constant [ 3 x i8 ] c "C1\00", align 4
@_const_str558 = alias bitcast([ 3 x i8 ]* @_const_str558.str. to i8*)@_const_str557.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str557 = alias bitcast([ 2 x i8 ]* @_const_str557.str. to i8*)@_const_str556.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str556 = alias bitcast([ 2 x i8 ]* @_const_str556.str. to i8*)@_const_str555.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str555 = alias bitcast([ 7 x i8 ]* @_const_str555.str. to i8*)@_C2_vtable554 = private constant %_C2_vtable {%_B_vtable* @_B_vtable552, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable553 = private constant %_C1_vtable {%_B_vtable* @_B_vtable552, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable552 = private constant %_B_vtable {%_A_vtable* @_A_vtable551, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable551 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable550, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable550 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh602:
  ret void
}


define i32 @program (i32 %argc2888, { i32, [ 0 x i8* ] }* %argv2886){
__fresh601:
  %argc_slot2889 = alloca i32
  store i32 %argc2888, i32* %argc_slot2889
  %argv_slot2887 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2886, { i32, [ 0 x i8* ] }** %argv_slot2887
  %mem_ptr2890 = call i32* @oat_malloc ( i32 8 )
  %obj2891 = bitcast i32* %mem_ptr2890 to %A* 
  %new_obj2892 = call %A* @_A_ctor ( %A* %obj2891 )
  %vdecl_slot2893 = alloca %A*
  store %A* %new_obj2892, %A** %vdecl_slot2893
  %mem_ptr2894 = call i32* @oat_malloc ( i32 8 )
  %obj2895 = bitcast i32* %mem_ptr2894 to %B* 
  %new_obj2896 = call %B* @_B_ctor ( %B* %obj2895 )
  %vdecl_slot2897 = alloca %B*
  store %B* %new_obj2896, %B** %vdecl_slot2897
  %mem_ptr2898 = call i32* @oat_malloc ( i32 8 )
  %obj2899 = bitcast i32* %mem_ptr2898 to %C1* 
  %new_obj2900 = call %C1* @_C1_ctor ( %C1* %obj2899 )
  %vdecl_slot2901 = alloca %C1*
  store %C1* %new_obj2900, %C1** %vdecl_slot2901
  %mem_ptr2902 = call i32* @oat_malloc ( i32 8 )
  %obj2903 = bitcast i32* %mem_ptr2902 to %C2* 
  %new_obj2904 = call %C2* @_C2_ctor ( %C2* %obj2903 )
  %vdecl_slot2905 = alloca %C2*
  store %C2* %new_obj2904, %C2** %vdecl_slot2905
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh600:
  %mem_ptr2881 = call i32* @oat_malloc ( i32 8 )
  %obj2882 = bitcast i32* %mem_ptr2881 to %B* 
  %new_obj2883 = call %B* @_B_ctor ( %B* %obj2882 )
  %_this1 = bitcast %B* %new_obj2883 to %C2 
  %_name2884 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str559, i8** %_name2884
  %this_vtable2885 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable554, %_C2_vtable** %this_vtable2885
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh599:
  %mem_ptr2876 = call i32* @oat_malloc ( i32 8 )
  %obj2877 = bitcast i32* %mem_ptr2876 to %B* 
  %new_obj2878 = call %B* @_B_ctor ( %B* %obj2877 )
  %_this1 = bitcast %B* %new_obj2878 to %C1 
  %_name2879 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str558, i8** %_name2879
  %this_vtable2880 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable553, %_C1_vtable** %this_vtable2880
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh598:
  %mem_ptr2871 = call i32* @oat_malloc ( i32 8 )
  %obj2872 = bitcast i32* %mem_ptr2871 to %A* 
  %new_obj2873 = call %A* @_A_ctor ( %A* %obj2872 )
  %_this1 = bitcast %A* %new_obj2873 to %B 
  %_name2874 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str557, i8** %_name2874
  %this_vtable2875 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable552, %_B_vtable** %this_vtable2875
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh597:
  %mem_ptr2866 = call i32* @oat_malloc ( i32 8 )
  %obj2867 = bitcast i32* %mem_ptr2866 to %Object* 
  %new_obj2868 = call %Object* @_Object_ctor ( %Object* %obj2867 )
  %_this1 = bitcast %Object* %new_obj2868 to %A 
  %_name2869 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str556, i8** %_name2869
  %this_vtable2870 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable551, %_A_vtable** %this_vtable2870
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh596:
  %_name2864 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2865 = load i8** %_name2864
  ret i8* %lhs_or_call2865
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh595:
  %_name2862 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str555, i8** %_name2862
  %this_vtable2863 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable550, %_Object_vtable** %this_vtable2863
  ret %Object* %_this1
}


