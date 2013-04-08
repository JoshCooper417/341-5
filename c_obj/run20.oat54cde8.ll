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


define i32 @program (i32 %argc693, { i32, [ 0 x i8* ] }* %argv691){
__fresh175:
  %argc_slot694 = alloca i32
  store i32 %argc693, i32* %argc_slot694
  %argv_slot692 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv691, { i32, [ 0 x i8* ] }** %argv_slot692
  %mem_ptr695 = call i32* @oat_malloc ( i32 12 )
  %obj696 = bitcast i32* %mem_ptr695 to %B* 
  %new_obj697 = call %B* @_B_ctor ( %B* %obj696, i32 4, i32 109 )
  %vdecl_slot698 = alloca %B*
  store %B* %new_obj697, %B** %vdecl_slot698
  %lhs_or_call699 = load %B** %vdecl_slot698
  %arr700 = getelementptr %B* %lhs_or_call699, i32 0, i32 2
  %lhs_or_call701 = load { i32, [ 0 x i32 ] }** %arr700
  %ret702 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call701 )
  call void @print_string( i8* %ret702 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n680, i32 %c678){
__fresh174:
  %n_slot681 = alloca i32
  store i32 %n680, i32* %n_slot681
  %c_slot679 = alloca i32
  store i32 %c678, i32* %c_slot679
  %lhs_or_call682 = load i32* %n_slot681
  %bop683 = add i32 %lhs_or_call682, 1
  %lhs_or_call684 = load i32* %c_slot679
  %bop685 = add i32 %lhs_or_call684, 1
  %mem_ptr686 = call i32* @oat_malloc ( i32 12 )
  %obj687 = bitcast i32* %mem_ptr686 to %A* 
  %new_obj688 = call %A* @_A_ctor ( %A* %obj687, i32 %bop685, i32 %bop683 )
  %_this1 = bitcast %A* %new_obj688 to %B 
  %_name689 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str115, i8** %_name689
  %this_vtable690 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable112, %_B_vtable** %this_vtable690
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n653, i32 %c651){
__fresh171:
  %n_slot654 = alloca i32
  store i32 %n653, i32* %n_slot654
  %c_slot652 = alloca i32
  store i32 %c651, i32* %c_slot652
  %mem_ptr655 = call i32* @oat_malloc ( i32 8 )
  %obj656 = bitcast i32* %mem_ptr655 to %Object* 
  %new_obj657 = call %Object* @_Object_ctor ( %Object* %obj656 )
  %_this1 = bitcast %Object* %new_obj657 to %A 
  %_name658 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str114, i8** %_name658
  %arr659 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call660 = load i32* %n_slot654
  %array_ptr661 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call660 )
  %array662 = bitcast { i32, [ 0 x i32 ] }* %array_ptr661 to { i32, [ 0 x i32 ] }* 
  %_tmp115663 = alloca i32
  store i32 %lhs_or_call660, i32* %_tmp115663
  %_tmp116664 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array662, { i32, [ 0 x i32 ] }** %_tmp116664
  %vdecl_slot665 = alloca i32
  store i32 0, i32* %vdecl_slot665
  br label %__cond170

__cond170:
  %lhs_or_call666 = load i32* %vdecl_slot665
  %lhs_or_call667 = load i32* %_tmp115663
  %bop668 = icmp slt i32 %lhs_or_call666, %lhs_or_call667
  br i1 %bop668, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call669 = load { i32, [ 0 x i32 ] }** %_tmp116664
  %lhs_or_call670 = load i32* %vdecl_slot665
  %bound_ptr672 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call669, i32 0, i32 0
  %bound673 = load i32* %bound_ptr672
  call void @oat_array_bounds_check( i32 %bound673, i32 %lhs_or_call670 )
  %elt671 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call669, i32 0, i32 1, i32 %lhs_or_call670
  %lhs_or_call674 = load i32* %c_slot652
  store i32 %lhs_or_call674, i32* %elt671
  %lhs_or_call675 = load i32* %vdecl_slot665
  %bop676 = add i32 %lhs_or_call675, 1
  store i32 %bop676, i32* %vdecl_slot665
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array662, { i32, [ 0 x i32 ] }** %arr659
  %this_vtable677 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable111, %_A_vtable** %this_vtable677
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name649 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call650 = load i8** %_name649
  ret i8* %lhs_or_call650
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name647 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name647
  %this_vtable648 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable110, %_Object_vtable** %this_vtable648
  ret %Object* %_this1
}


