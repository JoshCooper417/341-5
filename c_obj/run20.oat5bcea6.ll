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


define i32 @program (i32 %argc684, { i32, [ 0 x i8* ] }* %argv682){
__fresh175:
  %argc_slot685 = alloca i32
  store i32 %argc684, i32* %argc_slot685
  %argv_slot683 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv682, { i32, [ 0 x i8* ] }** %argv_slot683
  %mem_ptr686 = call i32* @oat_malloc ( i32 12 )
  %obj687 = bitcast i32* %mem_ptr686 to %B* 
  %new_obj688 = call %B* @_B_ctor ( %B* %obj687, i32 4, i32 109 )
  %vdecl_slot689 = alloca %B*
  store %B* %new_obj688, %B** %vdecl_slot689
  %lhs_or_call690 = load %B** %vdecl_slot689
  %arr691 = getelementptr %B* %lhs_or_call690, i32 0, i32 2
  %lhs_or_call692 = load { i32, [ 0 x i32 ] }** %arr691
  %ret693 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call692 )
  call void @print_string( i8* %ret693 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n671, i32 %c669){
__fresh174:
  %n_slot672 = alloca i32
  store i32 %n671, i32* %n_slot672
  %c_slot670 = alloca i32
  store i32 %c669, i32* %c_slot670
  %lhs_or_call673 = load i32* %n_slot672
  %bop674 = add i32 %lhs_or_call673, 1
  %lhs_or_call675 = load i32* %c_slot670
  %bop676 = add i32 %lhs_or_call675, 1
  %mem_ptr677 = call i32* @oat_malloc ( i32 12 )
  %obj678 = bitcast i32* %mem_ptr677 to %A* 
  %new_obj679 = call %A* @_A_ctor ( %A* %obj678, i32 %bop676, i32 %bop674 )
  %_this1 = bitcast %A* %new_obj679 to %B 
  %_name680 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str115, i8** %_name680
  %this_vtable681 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable112, %_B_vtable** %this_vtable681
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n644, i32 %c642){
__fresh171:
  %n_slot645 = alloca i32
  store i32 %n644, i32* %n_slot645
  %c_slot643 = alloca i32
  store i32 %c642, i32* %c_slot643
  %mem_ptr646 = call i32* @oat_malloc ( i32 8 )
  %obj647 = bitcast i32* %mem_ptr646 to %Object* 
  %new_obj648 = call %Object* @_Object_ctor ( %Object* %obj647 )
  %_this1 = bitcast %Object* %new_obj648 to %A 
  %_name649 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str114, i8** %_name649
  %arr650 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call651 = load i32* %n_slot645
  %array_ptr652 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call651 )
  %array653 = bitcast { i32, [ 0 x i32 ] }* %array_ptr652 to { i32, [ 0 x i32 ] }* 
  %_tmp115654 = alloca i32
  store i32 %lhs_or_call651, i32* %_tmp115654
  %_tmp116655 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array653, { i32, [ 0 x i32 ] }** %_tmp116655
  %vdecl_slot656 = alloca i32
  store i32 0, i32* %vdecl_slot656
  br label %__cond170

__cond170:
  %lhs_or_call657 = load i32* %vdecl_slot656
  %lhs_or_call658 = load i32* %_tmp115654
  %bop659 = icmp slt i32 %lhs_or_call657, %lhs_or_call658
  br i1 %bop659, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call660 = load { i32, [ 0 x i32 ] }** %_tmp116655
  %lhs_or_call661 = load i32* %vdecl_slot656
  %bound_ptr663 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call660, i32 0, i32 0
  %bound664 = load i32* %bound_ptr663
  call void @oat_array_bounds_check( i32 %bound664, i32 %lhs_or_call661 )
  %elt662 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call660, i32 0, i32 1, i32 %lhs_or_call661
  %lhs_or_call665 = load i32* %c_slot643
  store i32 %lhs_or_call665, i32* %elt662
  %lhs_or_call666 = load i32* %vdecl_slot656
  %bop667 = add i32 %lhs_or_call666, 1
  store i32 %bop667, i32* %vdecl_slot656
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array653, { i32, [ 0 x i32 ] }** %arr650
  %this_vtable668 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable111, %_A_vtable** %this_vtable668
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name640 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call641 = load i8** %_name640
  ret i8* %lhs_or_call641
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name638 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name638
  %this_vtable639 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable110, %_Object_vtable** %this_vtable639
  ret %Object* %_this1
}


