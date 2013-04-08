%B = type { %_B_vtable*, i8*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str120.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str120 = alias bitcast([ 7 x i8 ]* @_const_str120.str. to i8*)@_const_str119.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str119 = alias bitcast([ 2 x i8 ]* @_const_str119.str. to i8*)@_const_str118.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str118 = alias bitcast([ 2 x i8 ]* @_const_str118.str. to i8*)@_const_str117.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str117 = alias bitcast([ 7 x i8 ]* @_const_str117.str. to i8*)@_B_vtable116 = private constant %_B_vtable {%_A_vtable* @_A_vtable115, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable115 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable114, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable114 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh165:
  ret void
}


define i32 @program (i32 %argc655, { i32, [ 0 x i8* ] }* %argv653){
__fresh164:
  %argc_slot656 = alloca i32
  store i32 %argc655, i32* %argc_slot656
  %argv_slot654 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv653, { i32, [ 0 x i8* ] }** %argv_slot654
  %mem_ptr657 = call i32* @oat_malloc ( i32 12 )
  %obj658 = bitcast i32* %mem_ptr657 to %B* 
  %new_obj659 = call %B* @_B_ctor ( %B* %obj658, i8* @_const_str120 )
  %vdecl_slot660 = alloca %B*
  store %B* %new_obj659, %B** %vdecl_slot660
  %lhs_or_call661 = load %B** %vdecl_slot660
  %str662 = getelementptr %B* %lhs_or_call661, i32 0, i32 2
  %lhs_or_call663 = load i8** %str662
  call void @print_string( i8* %lhs_or_call663 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str644){
__fresh163:
  %str_slot645 = alloca i8*
  store i8* %str644, i8** %str_slot645
  %lhs_or_call646 = load i8** %str_slot645
  %cast_op647 = bitcast %B* %_this1 to %A* 
  %mem_ptr648 = call i32* @oat_malloc ( i32 12 )
  %obj649 = bitcast i32* %mem_ptr648 to %B* 
  %new_obj650 = call %A* @_A_ctor ( %B* %obj649, %A* %cast_op647, i8* %lhs_or_call646 )
  %_this1 = bitcast %A* %new_obj650 to %B 
  %_name651 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str119, i8** %_name651
  %this_vtable652 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable116, %_B_vtable** %this_vtable652
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str634){
__fresh162:
  %str_slot635 = alloca i8*
  store i8* %str634, i8** %str_slot635
  %cast_op636 = bitcast %A* %_this1 to %Object* 
  %mem_ptr637 = call i32* @oat_malloc ( i32 12 )
  %obj638 = bitcast i32* %mem_ptr637 to %A* 
  %new_obj639 = call %Object* @_Object_ctor ( %A* %obj638, %Object* %cast_op636 )
  %_this1 = bitcast %Object* %new_obj639 to %A 
  %_name640 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str118, i8** %_name640
  %str641 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call642 = load i8** %str_slot635
  store i8* %lhs_or_call642, i8** %str641
  %this_vtable643 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable115, %_A_vtable** %this_vtable643
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh161:
  %_name632 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call633 = load i8** %_name632
  ret i8* %lhs_or_call633
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh160:
  %_name630 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str117, i8** %_name630
  %this_vtable631 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable114, %_Object_vtable** %this_vtable631
  ret %Object* %_this1
}


