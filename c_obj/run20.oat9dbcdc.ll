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
__fresh176:
  ret void
}


define i32 @program (i32 %argc691, { i32, [ 0 x i8* ] }* %argv689){
__fresh175:
  %argc_slot692 = alloca i32
  store i32 %argc691, i32* %argc_slot692
  %argv_slot690 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv689, { i32, [ 0 x i8* ] }** %argv_slot690
  %mem_ptr693 = call i32* @oat_malloc ( i32 12 )
  %obj694 = bitcast i32* %mem_ptr693 to %B* 
  %new_obj695 = call %B* @_B_ctor ( %B* %obj694, i32 4, i32 109 )
  %vdecl_slot696 = alloca %B*
  store %B* %new_obj695, %B** %vdecl_slot696
  %lhs_or_call697 = load %B** %vdecl_slot696
  %arr698 = getelementptr %B* %lhs_or_call697, i32 0, i32 2
  %lhs_or_call699 = load { i32, [ 0 x i32 ] }** %arr698
  %ret700 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call699 )
  call void @print_string( i8* %ret700 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n678, i32 %c676){
__fresh174:
  %n_slot679 = alloca i32
  store i32 %n678, i32* %n_slot679
  %c_slot677 = alloca i32
  store i32 %c676, i32* %c_slot677
  %lhs_or_call680 = load i32* %n_slot679
  %bop681 = add i32 %lhs_or_call680, 1
  %lhs_or_call682 = load i32* %c_slot677
  %bop683 = add i32 %lhs_or_call682, 1
  %mem_ptr684 = call i32* @oat_malloc ( i32 12 )
  %obj685 = bitcast i32* %mem_ptr684 to %A* 
  %new_obj686 = call %A* @_A_ctor ( %A* %obj685, i32 %bop683, i32 %bop681 )
  %_this1 = bitcast %A* %new_obj686 to %B 
  %_name687 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str115, i8** %_name687
  %this_vtable688 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable112, %_B_vtable** %this_vtable688
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n651, i32 %c649){
__fresh171:
  %n_slot652 = alloca i32
  store i32 %n651, i32* %n_slot652
  %c_slot650 = alloca i32
  store i32 %c649, i32* %c_slot650
  %mem_ptr653 = call i32* @oat_malloc ( i32 8 )
  %obj654 = bitcast i32* %mem_ptr653 to %Object* 
  %new_obj655 = call %Object* @_Object_ctor ( %Object* %obj654 )
  %_this1 = bitcast %Object* %new_obj655 to %A 
  %_name656 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str114, i8** %_name656
  %arr657 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call658 = load i32* %n_slot652
  %array_ptr659 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call658 )
  %array660 = bitcast { i32, [ 0 x i32 ] }* %array_ptr659 to { i32, [ 0 x i32 ] }* 
  %_tmp115661 = alloca i32
  store i32 %lhs_or_call658, i32* %_tmp115661
  %_tmp116662 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array660, { i32, [ 0 x i32 ] }** %_tmp116662
  %vdecl_slot663 = alloca i32
  store i32 0, i32* %vdecl_slot663
  br label %__cond170

__cond170:
  %lhs_or_call664 = load i32* %vdecl_slot663
  %lhs_or_call665 = load i32* %_tmp115661
  %bop666 = icmp slt i32 %lhs_or_call664, %lhs_or_call665
  br i1 %bop666, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call667 = load { i32, [ 0 x i32 ] }** %_tmp116662
  %lhs_or_call668 = load i32* %vdecl_slot663
  %bound_ptr670 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call667, i32 0, i32 0
  %bound671 = load i32* %bound_ptr670
  call void @oat_array_bounds_check( i32 %bound671, i32 %lhs_or_call668 )
  %elt669 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call667, i32 0, i32 1, i32 %lhs_or_call668
  %lhs_or_call672 = load i32* %c_slot650
  store i32 %lhs_or_call672, i32* %elt669
  %lhs_or_call673 = load i32* %vdecl_slot663
  %bop674 = add i32 %lhs_or_call673, 1
  store i32 %bop674, i32* %vdecl_slot663
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array660, { i32, [ 0 x i32 ] }** %arr657
  %this_vtable675 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable111, %_A_vtable** %this_vtable675
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name647 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call648 = load i8** %_name647
  ret i8* %lhs_or_call648
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name645 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name645
  %this_vtable646 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable110, %_Object_vtable** %this_vtable646
  ret %Object* %_this1
}


