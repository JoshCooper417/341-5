%B = type { %_B_vtable*, i8*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str60.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str60 = alias bitcast([ 7 x i8 ]* @_const_str60.str. to i8*)@_B_vtable59 = private constant %_B_vtable {%_A_vtable* @_A_vtable58, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable58 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable57, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable57 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh165:
  ret void
}


define i32 @program (i32 %argc757, { i32, [ 0 x i8* ] }* %argv755){
__fresh164:
  %argc_slot758 = alloca i32
  store i32 %argc757, i32* %argc_slot758
  %argv_slot756 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv755, { i32, [ 0 x i8* ] }** %argv_slot756
  %mem_ptr759 = call i32* @oat_malloc ( i32 12 )
  %obj760 = bitcast i32* %mem_ptr759 to %B* 
  %new_obj761 = call %B* @_B_ctor ( %B* %obj760, i8* @_const_str60 )
  %vdecl_slot762 = alloca %B*
  store %B* %new_obj761, %B** %vdecl_slot762
  %lhs_or_call763 = load %B** %vdecl_slot762
  %str764 = getelementptr %B* %lhs_or_call763, i32 0, i32 2
  %lhs_or_call765 = load i8** %str764
  call void @print_string( i8* %lhs_or_call765 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str742){
__fresh163:
  %str_slot743 = alloca i8*
  store i8* %str742, i8** %str_slot743
  %lhs_or_call744 = load %B* %_this1
  %lhs_or_call745 = load i8** %str_slot743
  %cast_op746 = bitcast %B %lhs_or_call744 to i8* 
  %cast_op747 = bitcast i8* %lhs_or_call745 to %A* 
  %mem_ptr748 = call i32* @oat_malloc ( i32 12 )
  %obj749 = bitcast i32* %mem_ptr748 to %A* 
  %new_obj750 = call %A* @_A_ctor ( %A* %obj749, %A* %cast_op747, i8* %cast_op746 )
  %_name751 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call752 = load %B* %_this1
  %cast_op753 = bitcast %B %lhs_or_call752 to i8* 
  store i8* %cast_op753, i8** %_name751
  %this_vtable754 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable754
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str729){
__fresh162:
  %str_slot730 = alloca i8*
  store i8* %str729, i8** %str_slot730
  %lhs_or_call731 = load %A* %_this1
  %cast_op732 = bitcast %A %lhs_or_call731 to %Object* 
  %mem_ptr733 = call i32* @oat_malloc ( i32 8 )
  %obj734 = bitcast i32* %mem_ptr733 to %Object* 
  %new_obj735 = call %Object* @_Object_ctor ( %Object* %obj734, %Object* %cast_op732 )
  %_name736 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call737 = load %A* %_this1
  %cast_op738 = bitcast %A %lhs_or_call737 to i8* 
  store i8* %cast_op738, i8** %_name736
  %str739 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call740 = load i8** %str_slot730
  store i8* %lhs_or_call740, i8** %str739
  %this_vtable741 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable741
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh161:
  %_name727 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call728 = load i8** %_name727
  ret i8* %lhs_or_call728
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh160:
  %_name723 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call724 = load %Object* %_this1
  %cast_op725 = bitcast %Object %lhs_or_call724 to i8* 
  store i8* %cast_op725, i8** %_name723
  %this_vtable726 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable726
  ret %Object* %_this1
}


