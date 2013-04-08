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
@_const_str126.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str126 = alias bitcast([ 2 x i8 ]* @_const_str126.str. to i8*)@_const_str125.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str125 = alias bitcast([ 2 x i8 ]* @_const_str125.str. to i8*)@_const_str124.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str124 = alias bitcast([ 7 x i8 ]* @_const_str124.str. to i8*)@_B_vtable123 = private constant %_B_vtable {%_A_vtable* @_A_vtable122, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable122 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable121, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable121 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh176:
  ret void
}


define i32 @program (i32 %argc681, { i32, [ 0 x i8* ] }* %argv679){
__fresh175:
  %argc_slot682 = alloca i32
  store i32 %argc681, i32* %argc_slot682
  %argv_slot680 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv679, { i32, [ 0 x i8* ] }** %argv_slot680
  %mem_ptr683 = call i32* @oat_malloc ( i32 12 )
  %obj684 = bitcast i32* %mem_ptr683 to %B* 
  %new_obj685 = call %B* @_B_ctor ( %B* %obj684, i32 4, i32 109 )
  %vdecl_slot686 = alloca %B*
  store %B* %new_obj685, %B** %vdecl_slot686
  %lhs_or_call687 = load %B** %vdecl_slot686
  %arr688 = getelementptr %B* %lhs_or_call687, i32 0, i32 2
  %lhs_or_call689 = load { i32, [ 0 x i32 ] }** %arr688
  %ret690 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call689 )
  call void @print_string( i8* %ret690 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n668, i32 %c666){
__fresh174:
  %n_slot669 = alloca i32
  store i32 %n668, i32* %n_slot669
  %c_slot667 = alloca i32
  store i32 %c666, i32* %c_slot667
  %lhs_or_call670 = load i32* %n_slot669
  %bop671 = add i32 %lhs_or_call670, 1
  %lhs_or_call672 = load i32* %c_slot667
  %bop673 = add i32 %lhs_or_call672, 1
  %mem_ptr674 = call i32* @oat_malloc ( i32 12 )
  %obj675 = bitcast i32* %mem_ptr674 to %A* 
  %new_obj676 = call %A* @_A_ctor ( %A* %obj675, i32 %bop673, i32 %bop671 )
  %_this1 = bitcast %A* %new_obj676 to %B 
  %_name677 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str126, i8** %_name677
  %this_vtable678 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable123, %_B_vtable** %this_vtable678
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n641, i32 %c639){
__fresh171:
  %n_slot642 = alloca i32
  store i32 %n641, i32* %n_slot642
  %c_slot640 = alloca i32
  store i32 %c639, i32* %c_slot640
  %mem_ptr643 = call i32* @oat_malloc ( i32 8 )
  %obj644 = bitcast i32* %mem_ptr643 to %Object* 
  %new_obj645 = call %Object* @_Object_ctor ( %Object* %obj644 )
  %_this1 = bitcast %Object* %new_obj645 to %A 
  %_name646 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str125, i8** %_name646
  %arr647 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call648 = load i32* %n_slot642
  %array_ptr649 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call648 )
  %array650 = bitcast { i32, [ 0 x i32 ] }* %array_ptr649 to { i32, [ 0 x i32 ] }* 
  %_tmp126651 = alloca i32
  store i32 %lhs_or_call648, i32* %_tmp126651
  %_tmp127652 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array650, { i32, [ 0 x i32 ] }** %_tmp127652
  %vdecl_slot653 = alloca i32
  store i32 0, i32* %vdecl_slot653
  br label %__cond170

__cond170:
  %lhs_or_call654 = load i32* %vdecl_slot653
  %lhs_or_call655 = load i32* %_tmp126651
  %bop656 = icmp slt i32 %lhs_or_call654, %lhs_or_call655
  br i1 %bop656, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call657 = load { i32, [ 0 x i32 ] }** %_tmp127652
  %lhs_or_call658 = load i32* %vdecl_slot653
  %bound_ptr660 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call657, i32 0, i32 0
  %bound661 = load i32* %bound_ptr660
  call void @oat_array_bounds_check( i32 %bound661, i32 %lhs_or_call658 )
  %elt659 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call657, i32 0, i32 1, i32 %lhs_or_call658
  %lhs_or_call662 = load i32* %c_slot640
  store i32 %lhs_or_call662, i32* %elt659
  %lhs_or_call663 = load i32* %vdecl_slot653
  %bop664 = add i32 %lhs_or_call663, 1
  store i32 %bop664, i32* %vdecl_slot653
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array650, { i32, [ 0 x i32 ] }** %arr647
  %this_vtable665 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable122, %_A_vtable** %this_vtable665
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name637 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call638 = load i8** %_name637
  ret i8* %lhs_or_call638
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name635 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str124, i8** %_name635
  %this_vtable636 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable121, %_Object_vtable** %this_vtable636
  ret %Object* %_this1
}


