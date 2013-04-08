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


define i32 @program (i32 %argc711, { i32, [ 0 x i8* ] }* %argv709){
__fresh175:
  %argc_slot712 = alloca i32
  store i32 %argc711, i32* %argc_slot712
  %argv_slot710 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv709, { i32, [ 0 x i8* ] }** %argv_slot710
  %mem_ptr713 = call i32* @oat_malloc ( i32 12 )
  %obj714 = bitcast i32* %mem_ptr713 to %B* 
  %new_obj715 = call %B* @_B_ctor ( %B* %obj714, i32 4, i32 109 )
  %vdecl_slot716 = alloca %B*
  store %B* %new_obj715, %B** %vdecl_slot716
  %lhs_or_call717 = load %B** %vdecl_slot716
  %arr718 = getelementptr %B* %lhs_or_call717, i32 0, i32 2
  %lhs_or_call719 = load { i32, [ 0 x i32 ] }** %arr718
  %ret720 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call719 )
  call void @print_string( i8* %ret720 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n697, i32 %c695){
__fresh174:
  %n_slot698 = alloca i32
  store i32 %n697, i32* %n_slot698
  %c_slot696 = alloca i32
  store i32 %c695, i32* %c_slot696
  %lhs_or_call699 = load i32* %n_slot698
  %bop700 = add i32 %lhs_or_call699, 1
  %lhs_or_call701 = load i32* %c_slot696
  %bop702 = add i32 %lhs_or_call701, 1
  %cast_op703 = bitcast %B* %_this1 to %A* 
  %mem_ptr704 = call i32* @oat_malloc ( i32 12 )
  %obj705 = bitcast i32* %mem_ptr704 to %B* 
  %new_obj706 = call %A* @_A_ctor ( %B* %obj705, %A* %cast_op703, i32 %bop702, i32 %bop700 )
  %_this1 = bitcast %A* %new_obj706 to %B 
  %_name707 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str126, i8** %_name707
  %this_vtable708 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable123, %_B_vtable** %this_vtable708
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n669, i32 %c667){
__fresh171:
  %n_slot670 = alloca i32
  store i32 %n669, i32* %n_slot670
  %c_slot668 = alloca i32
  store i32 %c667, i32* %c_slot668
  %cast_op671 = bitcast %A* %_this1 to %Object* 
  %mem_ptr672 = call i32* @oat_malloc ( i32 12 )
  %obj673 = bitcast i32* %mem_ptr672 to %A* 
  %new_obj674 = call %Object* @_Object_ctor ( %A* %obj673, %Object* %cast_op671 )
  %_this1 = bitcast %Object* %new_obj674 to %A 
  %_name675 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str125, i8** %_name675
  %arr676 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call677 = load i32* %n_slot670
  %array_ptr678 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call677 )
  %array679 = bitcast { i32, [ 0 x i32 ] }* %array_ptr678 to { i32, [ 0 x i32 ] }* 
  %_tmp126680 = alloca i32
  store i32 %lhs_or_call677, i32* %_tmp126680
  %_tmp127681 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array679, { i32, [ 0 x i32 ] }** %_tmp127681
  %vdecl_slot682 = alloca i32
  store i32 0, i32* %vdecl_slot682
  br label %__cond170

__cond170:
  %lhs_or_call683 = load i32* %vdecl_slot682
  %lhs_or_call684 = load i32* %_tmp126680
  %bop685 = icmp slt i32 %lhs_or_call683, %lhs_or_call684
  br i1 %bop685, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call686 = load { i32, [ 0 x i32 ] }** %_tmp127681
  %lhs_or_call687 = load i32* %vdecl_slot682
  %bound_ptr689 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call686, i32 0, i32 0
  %bound690 = load i32* %bound_ptr689
  call void @oat_array_bounds_check( i32 %bound690, i32 %lhs_or_call687 )
  %elt688 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call686, i32 0, i32 1, i32 %lhs_or_call687
  %lhs_or_call691 = load i32* %c_slot668
  store i32 %lhs_or_call691, i32* %elt688
  %lhs_or_call692 = load i32* %vdecl_slot682
  %bop693 = add i32 %lhs_or_call692, 1
  store i32 %bop693, i32* %vdecl_slot682
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array679, { i32, [ 0 x i32 ] }** %arr676
  %this_vtable694 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable122, %_A_vtable** %this_vtable694
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name665 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call666 = load i8** %_name665
  ret i8* %lhs_or_call666
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name663 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str124, i8** %_name663
  %this_vtable664 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable121, %_Object_vtable** %this_vtable664
  ret %Object* %_this1
}


