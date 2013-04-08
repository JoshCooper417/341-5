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


define i32 @program (i32 %argc703, { i32, [ 0 x i8* ] }* %argv701){
__fresh175:
  %argc_slot704 = alloca i32
  store i32 %argc703, i32* %argc_slot704
  %argv_slot702 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv701, { i32, [ 0 x i8* ] }** %argv_slot702
  %mem_ptr705 = call i32* @oat_malloc ( i32 12 )
  %obj706 = bitcast i32* %mem_ptr705 to %B* 
  %new_obj707 = call %B* @_B_ctor ( %B* %obj706, i32 4, i32 109 )
  %vdecl_slot708 = alloca %B*
  store %B* %new_obj707, %B** %vdecl_slot708
  %lhs_or_call709 = load %B** %vdecl_slot708
  %arr710 = getelementptr %B* %lhs_or_call709, i32 0, i32 2
  %lhs_or_call711 = load { i32, [ 0 x i32 ] }** %arr710
  %ret712 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call711 )
  call void @print_string( i8* %ret712 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n690, i32 %c688){
__fresh174:
  %n_slot691 = alloca i32
  store i32 %n690, i32* %n_slot691
  %c_slot689 = alloca i32
  store i32 %c688, i32* %c_slot689
  %lhs_or_call692 = load i32* %n_slot691
  %bop693 = add i32 %lhs_or_call692, 1
  %lhs_or_call694 = load i32* %c_slot689
  %bop695 = add i32 %lhs_or_call694, 1
  %mem_ptr696 = call i32* @oat_malloc ( i32 12 )
  %obj697 = bitcast i32* %mem_ptr696 to %A* 
  %new_obj698 = call %A* @_A_ctor ( %A* %obj697, i32 %bop695, i32 %bop693 )
  %_this1 = bitcast %A* %new_obj698 to %B 
  %_name699 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str126, i8** %_name699
  %this_vtable700 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable123, %_B_vtable** %this_vtable700
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n663, i32 %c661){
__fresh171:
  %n_slot664 = alloca i32
  store i32 %n663, i32* %n_slot664
  %c_slot662 = alloca i32
  store i32 %c661, i32* %c_slot662
  %mem_ptr665 = call i32* @oat_malloc ( i32 8 )
  %obj666 = bitcast i32* %mem_ptr665 to %Object* 
  %new_obj667 = call %Object* @_Object_ctor ( %Object* %obj666 )
  %_this1 = bitcast %Object* %new_obj667 to %A 
  %_name668 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str125, i8** %_name668
  %arr669 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call670 = load i32* %n_slot664
  %array_ptr671 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call670 )
  %array672 = bitcast { i32, [ 0 x i32 ] }* %array_ptr671 to { i32, [ 0 x i32 ] }* 
  %_tmp126673 = alloca i32
  store i32 %lhs_or_call670, i32* %_tmp126673
  %_tmp127674 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array672, { i32, [ 0 x i32 ] }** %_tmp127674
  %vdecl_slot675 = alloca i32
  store i32 0, i32* %vdecl_slot675
  br label %__cond170

__cond170:
  %lhs_or_call676 = load i32* %vdecl_slot675
  %lhs_or_call677 = load i32* %_tmp126673
  %bop678 = icmp slt i32 %lhs_or_call676, %lhs_or_call677
  br i1 %bop678, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call679 = load { i32, [ 0 x i32 ] }** %_tmp127674
  %lhs_or_call680 = load i32* %vdecl_slot675
  %bound_ptr682 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call679, i32 0, i32 0
  %bound683 = load i32* %bound_ptr682
  call void @oat_array_bounds_check( i32 %bound683, i32 %lhs_or_call680 )
  %elt681 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call679, i32 0, i32 1, i32 %lhs_or_call680
  %lhs_or_call684 = load i32* %c_slot662
  store i32 %lhs_or_call684, i32* %elt681
  %lhs_or_call685 = load i32* %vdecl_slot675
  %bop686 = add i32 %lhs_or_call685, 1
  store i32 %bop686, i32* %vdecl_slot675
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array672, { i32, [ 0 x i32 ] }** %arr669
  %this_vtable687 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable122, %_A_vtable** %this_vtable687
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name659 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call660 = load i8** %_name659
  ret i8* %lhs_or_call660
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name657 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str124, i8** %_name657
  %this_vtable658 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable121, %_Object_vtable** %this_vtable658
  ret %Object* %_this1
}


