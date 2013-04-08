%B = type { %_B_vtable*, i8*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)* }
%A = type { %_A_vtable*, i8*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str141.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str141 = alias bitcast([ 2 x i8 ]* @_const_str141.str. to i8*)@_const_str140.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str140 = alias bitcast([ 2 x i8 ]* @_const_str140.str. to i8*)@_const_str139.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str139 = alias bitcast([ 2 x i8 ]* @_const_str139.str. to i8*)@_const_str138.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str138 = alias bitcast([ 2 x i8 ]* @_const_str138.str. to i8*)@_const_str137.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str137 = alias bitcast([ 7 x i8 ]* @_const_str137.str. to i8*)@_B_vtable136 = private constant %_B_vtable {%_A_vtable* @_A_vtable135, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable135 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable134, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable134 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh190:
  ret void
}


define i32 @program (i32 %argc772, { i32, [ 0 x i8* ] }* %argv770){
__fresh189:
  %argc_slot773 = alloca i32
  store i32 %argc772, i32* %argc_slot773
  %argv_slot771 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv770, { i32, [ 0 x i8* ] }** %argv_slot771
  %mem_ptr774 = call i32* @oat_malloc ( i32 12 )
  %obj775 = bitcast i32* %mem_ptr774 to %B* 
  %new_obj776 = call %B* @_B_ctor ( %B* %obj775 )
  %vdecl_slot777 = alloca %B*
  store %B* %new_obj776, %B** %vdecl_slot777
  %lhs_or_call778 = load %B** %vdecl_slot777
  %f780 = getelementptr %_B_vtable* @_B_vtable136, i32 0, i32 2
  %f779 = load void (%A*)** %f780
  %cast_op781 = bitcast %B %lhs_or_call778 to %A* 
  call void %f779( %A* %cast_op781 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh188:
  %cast_op763 = bitcast %B* %_this1 to %A* 
  %mem_ptr764 = call i32* @oat_malloc ( i32 12 )
  %obj765 = bitcast i32* %mem_ptr764 to %B* 
  %new_obj766 = call %A* @_A_ctor ( %B* %obj765, %A* %cast_op763 )
  %_this1 = bitcast %A* %new_obj766 to %B 
  %_name767 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str140, i8** %_name767
  %str768 = getelementptr %B* %_this1, i32 0, i32 2
  store i8* @_const_str141, i8** %str768
  %this_vtable769 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable136, %_B_vtable** %this_vtable769
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh187:
  %str761 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call762 = load i8** %str761
  call void @print_string( i8* %lhs_or_call762 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh186:
  %cast_op754 = bitcast %A* %_this1 to %Object* 
  %mem_ptr755 = call i32* @oat_malloc ( i32 12 )
  %obj756 = bitcast i32* %mem_ptr755 to %A* 
  %new_obj757 = call %Object* @_Object_ctor ( %A* %obj756, %Object* %cast_op754 )
  %_this1 = bitcast %Object* %new_obj757 to %A 
  %_name758 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str138, i8** %_name758
  %str759 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str139, i8** %str759
  %this_vtable760 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable135, %_A_vtable** %this_vtable760
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh185:
  %_name752 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call753 = load i8** %_name752
  ret i8* %lhs_or_call753
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh184:
  %_name750 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str137, i8** %_name750
  %this_vtable751 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable134, %_Object_vtable** %this_vtable751
  ret %Object* %_this1
}


