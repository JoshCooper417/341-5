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


define i32 @program (i32 %argc2716, { i32, [ 0 x i8* ] }* %argv2714){
__fresh601:
  %argc_slot2717 = alloca i32
  store i32 %argc2716, i32* %argc_slot2717
  %argv_slot2715 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2714, { i32, [ 0 x i8* ] }** %argv_slot2715
  %mem_ptr2718 = call i32* @oat_malloc ( i32 8 )
  %obj2719 = bitcast i32* %mem_ptr2718 to %A* 
  %new_obj2720 = call %A* @_A_ctor ( %A* %obj2719 )
  %vdecl_slot2721 = alloca %A*
  store %A* %new_obj2720, %A** %vdecl_slot2721
  %mem_ptr2722 = call i32* @oat_malloc ( i32 8 )
  %obj2723 = bitcast i32* %mem_ptr2722 to %B* 
  %new_obj2724 = call %B* @_B_ctor ( %B* %obj2723 )
  %vdecl_slot2725 = alloca %B*
  store %B* %new_obj2724, %B** %vdecl_slot2725
  %mem_ptr2726 = call i32* @oat_malloc ( i32 8 )
  %obj2727 = bitcast i32* %mem_ptr2726 to %C1* 
  %new_obj2728 = call %C1* @_C1_ctor ( %C1* %obj2727 )
  %vdecl_slot2729 = alloca %C1*
  store %C1* %new_obj2728, %C1** %vdecl_slot2729
  %mem_ptr2730 = call i32* @oat_malloc ( i32 8 )
  %obj2731 = bitcast i32* %mem_ptr2730 to %C2* 
  %new_obj2732 = call %C2* @_C2_ctor ( %C2* %obj2731 )
  %vdecl_slot2733 = alloca %C2*
  store %C2* %new_obj2732, %C2** %vdecl_slot2733
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh600:
  %mem_ptr2709 = call i32* @oat_malloc ( i32 8 )
  %obj2710 = bitcast i32* %mem_ptr2709 to %B* 
  %new_obj2711 = call %B* @_B_ctor ( %B* %obj2710 )
  %_this1 = bitcast %B* %new_obj2711 to %C2 
  %_name2712 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str559, i8** %_name2712
  %this_vtable2713 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable554, %_C2_vtable** %this_vtable2713
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh599:
  %mem_ptr2704 = call i32* @oat_malloc ( i32 8 )
  %obj2705 = bitcast i32* %mem_ptr2704 to %B* 
  %new_obj2706 = call %B* @_B_ctor ( %B* %obj2705 )
  %_this1 = bitcast %B* %new_obj2706 to %C1 
  %_name2707 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str558, i8** %_name2707
  %this_vtable2708 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable553, %_C1_vtable** %this_vtable2708
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh598:
  %mem_ptr2699 = call i32* @oat_malloc ( i32 8 )
  %obj2700 = bitcast i32* %mem_ptr2699 to %A* 
  %new_obj2701 = call %A* @_A_ctor ( %A* %obj2700 )
  %_this1 = bitcast %A* %new_obj2701 to %B 
  %_name2702 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str557, i8** %_name2702
  %this_vtable2703 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable552, %_B_vtable** %this_vtable2703
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh597:
  %mem_ptr2694 = call i32* @oat_malloc ( i32 8 )
  %obj2695 = bitcast i32* %mem_ptr2694 to %Object* 
  %new_obj2696 = call %Object* @_Object_ctor ( %Object* %obj2695 )
  %_this1 = bitcast %Object* %new_obj2696 to %A 
  %_name2697 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str556, i8** %_name2697
  %this_vtable2698 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable551, %_A_vtable** %this_vtable2698
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh596:
  %_name2692 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2693 = load i8** %_name2692
  ret i8* %lhs_or_call2693
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh595:
  %_name2690 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str555, i8** %_name2690
  %this_vtable2691 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable550, %_Object_vtable** %this_vtable2691
  ret %Object* %_this1
}


