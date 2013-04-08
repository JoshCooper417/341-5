%B = type { %_B_vtable*, i8*, { i32, [ 0 x i32 ] }* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, { i32, [ 0 x i32 ] }* }
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
@_const_str115.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str115 = alias bitcast([ 2 x i8 ]* @_const_str115.str. to i8*)@_const_str114.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str114 = alias bitcast([ 2 x i8 ]* @_const_str114.str. to i8*)@_const_str113.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str113 = alias bitcast([ 7 x i8 ]* @_const_str113.str. to i8*)@_B_vtable112 = private constant %_B_vtable {%_A_vtable* @_A_vtable111, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable111 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable110, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable110 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh194:
  ret void
}


define i32 @program (i32 %argc712, { i32, [ 0 x i8* ] }* %argv710){
__fresh193:
  %argc_slot713 = alloca i32
  store i32 %argc712, i32* %argc_slot713
  %argv_slot711 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv710, { i32, [ 0 x i8* ] }** %argv_slot711
  %mem_ptr714 = call i32* @oat_malloc ( i32 12 )
  %obj715 = bitcast i32* %mem_ptr714 to %B* 
  %new_obj716 = call %B* @_B_ctor ( %B* %obj715, i32 4, i32 109 )
  %vdecl_slot717 = alloca %B*
  store %B* %new_obj716, %B** %vdecl_slot717
  %lhs_or_call718 = load %B** %vdecl_slot717
  %arr719 = getelementptr %B* %lhs_or_call718, i32 0, i32 2
  %lhs_or_call720 = load { i32, [ 0 x i32 ] }** %arr719
  %ret721 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call720 )
  call void @print_string( i8* %ret721 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n699, i32 %c697){
__fresh192:
  %n_slot700 = alloca i32
  store i32 %n699, i32* %n_slot700
  %c_slot698 = alloca i32
  store i32 %c697, i32* %c_slot698
  %lhs_or_call701 = load i32* %n_slot700
  %bop702 = add i32 %lhs_or_call701, 1
  %lhs_or_call703 = load i32* %c_slot698
  %bop704 = add i32 %lhs_or_call703, 1
  %mem_ptr705 = call i32* @oat_malloc ( i32 12 )
  %obj706 = bitcast i32* %mem_ptr705 to %A* 
  %new_obj707 = call %A* @_A_ctor ( %A* %obj706, i32 %bop704, i32 %bop702 )
  %_this1 = bitcast %A* %new_obj707 to %B 
  %_name708 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str115, i8** %_name708
  %this_vtable709 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable112, %_B_vtable** %this_vtable709
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n672, i32 %c670){
__fresh189:
  %n_slot673 = alloca i32
  store i32 %n672, i32* %n_slot673
  %c_slot671 = alloca i32
  store i32 %c670, i32* %c_slot671
  %mem_ptr674 = call i32* @oat_malloc ( i32 8 )
  %obj675 = bitcast i32* %mem_ptr674 to %Object* 
  %new_obj676 = call %Object* @_Object_ctor ( %Object* %obj675 )
  %_this1 = bitcast %Object* %new_obj676 to %A 
  %_name677 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str114, i8** %_name677
  %arr678 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call679 = load i32* %n_slot673
  %array_ptr680 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call679 )
  %array681 = bitcast { i32, [ 0 x i32 ] }* %array_ptr680 to { i32, [ 0 x i32 ] }* 
  %_tmp115682 = alloca i32
  store i32 %lhs_or_call679, i32* %_tmp115682
  %_tmp116683 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array681, { i32, [ 0 x i32 ] }** %_tmp116683
  %vdecl_slot684 = alloca i32
  store i32 0, i32* %vdecl_slot684
  br label %__cond188

__cond188:
  %lhs_or_call685 = load i32* %vdecl_slot684
  %lhs_or_call686 = load i32* %_tmp115682
  %bop687 = icmp slt i32 %lhs_or_call685, %lhs_or_call686
  br i1 %bop687, label %__body187, label %__post186

__fresh190:
  br label %__body187

__body187:
  %lhs_or_call688 = load { i32, [ 0 x i32 ] }** %_tmp116683
  %lhs_or_call689 = load i32* %vdecl_slot684
  %bound_ptr691 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call688, i32 0, i32 0
  %bound692 = load i32* %bound_ptr691
  call void @oat_array_bounds_check( i32 %bound692, i32 %lhs_or_call689 )
  %elt690 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call688, i32 0, i32 1, i32 %lhs_or_call689
  %lhs_or_call693 = load i32* %c_slot671
  store i32 %lhs_or_call693, i32* %elt690
  %lhs_or_call694 = load i32* %vdecl_slot684
  %bop695 = add i32 %lhs_or_call694, 1
  store i32 %bop695, i32* %vdecl_slot684
  br label %__cond188

__fresh191:
  br label %__post186

__post186:
  store { i32, [ 0 x i32 ] }* %array681, { i32, [ 0 x i32 ] }** %arr678
  %this_vtable696 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable111, %_A_vtable** %this_vtable696
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh185:
  %_name668 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call669 = load i8** %_name668
  ret i8* %lhs_or_call669
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh184:
  %_name666 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name666
  %this_vtable667 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable110, %_Object_vtable** %this_vtable667
  ret %Object* %_this1
}


