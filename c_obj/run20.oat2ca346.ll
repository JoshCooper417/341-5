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


define i32 @program (i32 %argc712, { i32, [ 0 x i8* ] }* %argv710){
__fresh175:
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


define %B* @_B_ctor (%B* %_this1, i32 %n698, i32 %c696){
__fresh174:
  %n_slot699 = alloca i32
  store i32 %n698, i32* %n_slot699
  %c_slot697 = alloca i32
  store i32 %c696, i32* %c_slot697
  %lhs_or_call700 = load i32* %n_slot699
  %bop701 = add i32 %lhs_or_call700, 1
  %lhs_or_call702 = load i32* %c_slot697
  %bop703 = add i32 %lhs_or_call702, 1
  %cast_op704 = bitcast %B* %_this1 to %A* 
  %mem_ptr705 = call i32* @oat_malloc ( i32 12 )
  %obj706 = bitcast i32* %mem_ptr705 to %B* 
  %new_obj707 = call %A* @_A_ctor ( %B* %obj706, %A* %cast_op704, i32 %bop703, i32 %bop701 )
  %_this1 = bitcast %A* %new_obj707 to %B 
  %_name708 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str126, i8** %_name708
  %this_vtable709 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable123, %_B_vtable** %this_vtable709
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n670, i32 %c668){
__fresh171:
  %n_slot671 = alloca i32
  store i32 %n670, i32* %n_slot671
  %c_slot669 = alloca i32
  store i32 %c668, i32* %c_slot669
  %cast_op672 = bitcast %A* %_this1 to %Object* 
  %mem_ptr673 = call i32* @oat_malloc ( i32 12 )
  %obj674 = bitcast i32* %mem_ptr673 to %A* 
  %new_obj675 = call %Object* @_Object_ctor ( %A* %obj674, %Object* %cast_op672 )
  %_this1 = bitcast %Object* %new_obj675 to %A 
  %_name676 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str125, i8** %_name676
  %arr677 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call678 = load i32* %n_slot671
  %array_ptr679 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call678 )
  %array680 = bitcast { i32, [ 0 x i32 ] }* %array_ptr679 to { i32, [ 0 x i32 ] }* 
  %_tmp126681 = alloca i32
  store i32 %lhs_or_call678, i32* %_tmp126681
  %_tmp127682 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array680, { i32, [ 0 x i32 ] }** %_tmp127682
  %vdecl_slot683 = alloca i32
  store i32 0, i32* %vdecl_slot683
  br label %__cond170

__cond170:
  %lhs_or_call684 = load i32* %vdecl_slot683
  %lhs_or_call685 = load i32* %_tmp126681
  %bop686 = icmp slt i32 %lhs_or_call684, %lhs_or_call685
  br i1 %bop686, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call687 = load { i32, [ 0 x i32 ] }** %_tmp127682
  %lhs_or_call688 = load i32* %vdecl_slot683
  %bound_ptr690 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call687, i32 0, i32 0
  %bound691 = load i32* %bound_ptr690
  call void @oat_array_bounds_check( i32 %bound691, i32 %lhs_or_call688 )
  %elt689 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call687, i32 0, i32 1, i32 %lhs_or_call688
  %lhs_or_call692 = load i32* %c_slot669
  store i32 %lhs_or_call692, i32* %elt689
  %lhs_or_call693 = load i32* %vdecl_slot683
  %bop694 = add i32 %lhs_or_call693, 1
  store i32 %bop694, i32* %vdecl_slot683
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array680, { i32, [ 0 x i32 ] }** %arr677
  %this_vtable695 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable122, %_A_vtable** %this_vtable695
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name666 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call667 = load i8** %_name666
  ret i8* %lhs_or_call667
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name664 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str124, i8** %_name664
  %this_vtable665 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable121, %_Object_vtable** %this_vtable665
  ret %Object* %_this1
}


