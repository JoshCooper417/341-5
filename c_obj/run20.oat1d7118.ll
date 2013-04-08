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
@_B_vtable63 = private constant %_B_vtable {%_A_vtable* @_A_vtable62, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable62 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable61, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable61 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh176:
  ret void
}


define i32 @program (i32 %argc823, { i32, [ 0 x i8* ] }* %argv821){
__fresh175:
  %argc_slot824 = alloca i32
  store i32 %argc823, i32* %argc_slot824
  %argv_slot822 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv821, { i32, [ 0 x i8* ] }** %argv_slot822
  %mem_ptr825 = call i32* @oat_malloc ( i32 12 )
  %obj826 = bitcast i32* %mem_ptr825 to %B* 
  %new_obj827 = call %B* @_B_ctor ( %B* %obj826, i32 4, i32 109 )
  %vdecl_slot828 = alloca %B*
  store %B* %new_obj827, %B** %vdecl_slot828
  %lhs_or_call829 = load %B** %vdecl_slot828
  %arr830 = getelementptr %B* %lhs_or_call829, i32 0, i32 2
  %lhs_or_call831 = load { i32, [ 0 x i32 ] }** %arr830
  %ret832 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call831 )
  call void @print_string( i8* %ret832 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n805, i32 %c803){
__fresh174:
  %n_slot806 = alloca i32
  store i32 %n805, i32* %n_slot806
  %c_slot804 = alloca i32
  store i32 %c803, i32* %c_slot804
  %lhs_or_call807 = load %B* %_this1
  %lhs_or_call808 = load i32* %n_slot806
  %bop809 = add i32 %lhs_or_call808, 1
  %lhs_or_call810 = load i32* %c_slot804
  %bop811 = add i32 %lhs_or_call810, 1
  %cast_op812 = bitcast %B %lhs_or_call807 to i32 
  %cast_op813 = bitcast i32 %bop811 to %A* 
  %mem_ptr814 = call i32* @oat_malloc ( i32 12 )
  %obj815 = bitcast i32* %mem_ptr814 to %A* 
  %new_obj816 = call %A* @_A_ctor ( %A* %obj815, %A* %cast_op813, i32 %bop809, i32 %cast_op812 )
  %_name817 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call818 = load %B* %_this1
  %cast_op819 = bitcast %B %lhs_or_call818 to i8* 
  store i8* %cast_op819, i8** %_name817
  %this_vtable820 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable820
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n774, i32 %c772){
__fresh171:
  %n_slot775 = alloca i32
  store i32 %n774, i32* %n_slot775
  %c_slot773 = alloca i32
  store i32 %c772, i32* %c_slot773
  %lhs_or_call776 = load %A* %_this1
  %cast_op777 = bitcast %A %lhs_or_call776 to %Object* 
  %mem_ptr778 = call i32* @oat_malloc ( i32 8 )
  %obj779 = bitcast i32* %mem_ptr778 to %Object* 
  %new_obj780 = call %Object* @_Object_ctor ( %Object* %obj779, %Object* %cast_op777 )
  %_name781 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call782 = load %A* %_this1
  %cast_op783 = bitcast %A %lhs_or_call782 to i8* 
  store i8* %cast_op783, i8** %_name781
  %arr784 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call785 = load i32* %n_slot775
  %array_ptr786 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call785 )
  %array787 = bitcast { i32, [ 0 x i32 ] }* %array_ptr786 to { i32, [ 0 x i32 ] }* 
  %_tmp65788 = alloca i32
  store i32 %lhs_or_call785, i32* %_tmp65788
  %_tmp66789 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array787, { i32, [ 0 x i32 ] }** %_tmp66789
  %vdecl_slot790 = alloca i32
  store i32 0, i32* %vdecl_slot790
  br label %__cond170

__cond170:
  %lhs_or_call791 = load i32* %vdecl_slot790
  %lhs_or_call792 = load i32* %_tmp65788
  %bop793 = icmp slt i32 %lhs_or_call791, %lhs_or_call792
  br i1 %bop793, label %__body169, label %__post168

__fresh172:
  br label %__body169

__body169:
  %lhs_or_call794 = load { i32, [ 0 x i32 ] }** %_tmp66789
  %lhs_or_call795 = load i32* %vdecl_slot790
  %bound_ptr797 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call794, i32 0, i32 0
  %bound798 = load i32* %bound_ptr797
  call void @oat_array_bounds_check( i32 %bound798, i32 %lhs_or_call795 )
  %elt796 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call794, i32 0, i32 1, i32 %lhs_or_call795
  %lhs_or_call799 = load i32* %c_slot773
  store i32 %lhs_or_call799, i32* %elt796
  %lhs_or_call800 = load i32* %vdecl_slot790
  %bop801 = add i32 %lhs_or_call800, 1
  store i32 %bop801, i32* %vdecl_slot790
  br label %__cond170

__fresh173:
  br label %__post168

__post168:
  store { i32, [ 0 x i32 ] }* %array787, { i32, [ 0 x i32 ] }** %arr784
  %this_vtable802 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable802
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh167:
  %_name770 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call771 = load i8** %_name770
  ret i8* %lhs_or_call771
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh166:
  %_name766 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call767 = load %Object* %_this1
  %cast_op768 = bitcast %Object %lhs_or_call767 to i8* 
  store i8* %cast_op768, i8** %_name766
  %this_vtable769 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable769
  ret %Object* %_this1
}


