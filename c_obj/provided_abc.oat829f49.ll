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


define i32 @program (i32 %argc2876, { i32, [ 0 x i8* ] }* %argv2874){
__fresh601:
  %argc_slot2877 = alloca i32
  store i32 %argc2876, i32* %argc_slot2877
  %argv_slot2875 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2874, { i32, [ 0 x i8* ] }** %argv_slot2875
  %mem_ptr2878 = call i32* @oat_malloc ( i32 8 )
  %obj2879 = bitcast i32* %mem_ptr2878 to %A* 
  %new_obj2880 = call %A* @_A_ctor ( %A* %obj2879 )
  %vdecl_slot2881 = alloca %A*
  store %A* %new_obj2880, %A** %vdecl_slot2881
  %mem_ptr2882 = call i32* @oat_malloc ( i32 8 )
  %obj2883 = bitcast i32* %mem_ptr2882 to %B* 
  %new_obj2884 = call %B* @_B_ctor ( %B* %obj2883 )
  %vdecl_slot2885 = alloca %B*
  store %B* %new_obj2884, %B** %vdecl_slot2885
  %mem_ptr2886 = call i32* @oat_malloc ( i32 8 )
  %obj2887 = bitcast i32* %mem_ptr2886 to %C1* 
  %new_obj2888 = call %C1* @_C1_ctor ( %C1* %obj2887 )
  %vdecl_slot2889 = alloca %C1*
  store %C1* %new_obj2888, %C1** %vdecl_slot2889
  %mem_ptr2890 = call i32* @oat_malloc ( i32 8 )
  %obj2891 = bitcast i32* %mem_ptr2890 to %C2* 
  %new_obj2892 = call %C2* @_C2_ctor ( %C2* %obj2891 )
  %vdecl_slot2893 = alloca %C2*
  store %C2* %new_obj2892, %C2** %vdecl_slot2893
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh600:
  %cast_op2868 = bitcast %C2* %_this1 to %B* 
  %mem_ptr2869 = call i32* @oat_malloc ( i32 8 )
  %obj2870 = bitcast i32* %mem_ptr2869 to %C2* 
  %new_obj2871 = call %B* @_B_ctor ( %C2* %obj2870, %B* %cast_op2868 )
  %_this1 = bitcast %B* %new_obj2871 to %C2 
  %_name2872 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str559, i8** %_name2872
  %this_vtable2873 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable554, %_C2_vtable** %this_vtable2873
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh599:
  %cast_op2862 = bitcast %C1* %_this1 to %B* 
  %mem_ptr2863 = call i32* @oat_malloc ( i32 8 )
  %obj2864 = bitcast i32* %mem_ptr2863 to %C1* 
  %new_obj2865 = call %B* @_B_ctor ( %C1* %obj2864, %B* %cast_op2862 )
  %_this1 = bitcast %B* %new_obj2865 to %C1 
  %_name2866 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str558, i8** %_name2866
  %this_vtable2867 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable553, %_C1_vtable** %this_vtable2867
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh598:
  %cast_op2856 = bitcast %B* %_this1 to %A* 
  %mem_ptr2857 = call i32* @oat_malloc ( i32 8 )
  %obj2858 = bitcast i32* %mem_ptr2857 to %B* 
  %new_obj2859 = call %A* @_A_ctor ( %B* %obj2858, %A* %cast_op2856 )
  %_this1 = bitcast %A* %new_obj2859 to %B 
  %_name2860 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str557, i8** %_name2860
  %this_vtable2861 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable552, %_B_vtable** %this_vtable2861
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh597:
  %cast_op2850 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2851 = call i32* @oat_malloc ( i32 8 )
  %obj2852 = bitcast i32* %mem_ptr2851 to %A* 
  %new_obj2853 = call %Object* @_Object_ctor ( %A* %obj2852, %Object* %cast_op2850 )
  %_this1 = bitcast %Object* %new_obj2853 to %A 
  %_name2854 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str556, i8** %_name2854
  %this_vtable2855 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable551, %_A_vtable** %this_vtable2855
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh596:
  %_name2848 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2849 = load i8** %_name2848
  ret i8* %lhs_or_call2849
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh595:
  %_name2846 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str555, i8** %_name2846
  %this_vtable2847 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable550, %_Object_vtable** %this_vtable2847
  ret %Object* %_this1
}


