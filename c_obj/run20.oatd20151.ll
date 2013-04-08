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


define i32 @program (i32 %argc692, { i32, [ 0 x i8* ] }* %argv690){
__fresh175:
  %argc_slot693 = alloca i32
  store i32 %argc692, i32* %argc_slot693
  %argv_slot691 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv690, { i32, [ 0 x i8* ] }** %argv_slot691
  %mem_ptr694 = call i32* @oat_malloc ( i32 12 )
  %obj695 = bitcast i32* %mem_ptr694 to %B* 
  %new_obj696 = call %B* @_B_ctor ( %B* %obj695, i32 4, i32 109 )
  %vdecl_slot697 = alloca %B*
  store %B* %new_obj696, %B** %vdecl_slot697
  %lhs_or_call698 = load %B** %vdecl_slot697
  %arr699 = getelementptr %B* %lhs_or_call698, i32 0, i32 0, i32 2
  %lhs_or_call700 = load { i32, [ 0 x i32 ] }** %arr699
  %ret701 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call700 )
  call void @print_string( i8* %ret701 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n679, i32 %c677){
__fresh174:
  %n_slot680 = alloca i32
  store i32 %n679, i32* %n_slot680
  %c_slot678 = alloca i32
  store i32 %c677, i32* %c_slot678
  %lhs_or_call681 = load i32* %n_slot680
  %bop682 = add i32 %lhs_or_call681, 1
  %lhs_or_call683 = load i32* %c_slot678
  %bop684 = add i32 %lhs_or_call683, 1
  %mem_ptr685 = call i32* @oat_malloc ( i32 12 )
  %obj686 = bitcast i32* %mem_ptr685 to %A* 
  %new_obj687 = call %A* @_A_ctor ( %A* %obj686, i32 %bop684, i32 %bop682 )
  %_this1 = bitcast %A* %new_obj687 to %B 
  %_name688 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str115, i8** %_name688
  %this_vtable689 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable112, %_B_vtable** %this_vtable689
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n652, i32 %c650){
__fresh171:
  %n_slot653 = alloca i32
  store i32 %n652, i32* %n_slot653
  %c_slot651 = alloca i32
  store i32 %c650, i32* %c_slot651
  %mem_ptr654 = call i32* @oat_malloc ( i32 8 )
  %obj655 = bitcast i32* %mem_ptr654 to %Object* 
  %new_obj656 = call %Object* @_Object_ctor ( %Object* %obj655 )
  %_this1 = bitcast %Object* %new_obj656 to %A 
  %_name657 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str114, i8** %_name657
  %arr658 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call659 = load i32* %n_slot653
  %array_ptr660 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call659 )
  %array661 = bitcast { i32, [ 0 x i32 ] }* %array_ptr660 to { i32, [ 0 x i32 ] }* 
  %_tmp115662 = alloca i32
  store i32 %lhs_or_call659, i32* %_tmp115662
  %_tmp116663 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array661, { i32, [ 0 x i32 ] }** %_tmp116663
  %vdecl_slot664 = alloca i32
  store i32 0, i32* %vdecl_slot664
  br label %__cond170

__cond170:
  %lhs_or_call665 = load i32* %vdecl_slot664
  %lhs_or_call666 = load i32* %_tmp115662
  %bop667 = icmp slt i32 %lhs_or_call665, %lhs_or_call666
  br i1 %bop667, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call668 = load { i32, [ 0 x i32 ] }** %_tmp116663
  %lhs_or_call669 = load i32* %vdecl_slot664
  %bound_ptr671 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call668, i32 0, i32 0
  %bound672 = load i32* %bound_ptr671
  call void @oat_array_bounds_check( i32 %bound672, i32 %lhs_or_call669 )
  %elt670 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call668, i32 0, i32 1, i32 %lhs_or_call669
  %lhs_or_call673 = load i32* %c_slot651
  store i32 %lhs_or_call673, i32* %elt670
  %lhs_or_call674 = load i32* %vdecl_slot664
  %bop675 = add i32 %lhs_or_call674, 1
  store i32 %bop675, i32* %vdecl_slot664
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array661, { i32, [ 0 x i32 ] }** %arr658
  %this_vtable676 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable111, %_A_vtable** %this_vtable676
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name648 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call649 = load i8** %_name648
  ret i8* %lhs_or_call649
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name646 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str113, i8** %_name646
  %this_vtable647 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable110, %_Object_vtable** %this_vtable647
  ret %Object* %_this1
}


