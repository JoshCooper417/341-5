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
@_const_str130.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str130 = alias bitcast([ 2 x i8 ]* @_const_str130.str. to i8*)@_const_str129.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str129 = alias bitcast([ 2 x i8 ]* @_const_str129.str. to i8*)@_const_str128.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str128 = alias bitcast([ 2 x i8 ]* @_const_str128.str. to i8*)@_const_str127.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str127 = alias bitcast([ 2 x i8 ]* @_const_str127.str. to i8*)@_const_str126.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str126 = alias bitcast([ 7 x i8 ]* @_const_str126.str. to i8*)@_B_vtable125 = private constant %_B_vtable {%_A_vtable* @_A_vtable124, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable124 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable123, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable123 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh211:
  ret void
}


define i32 @program (i32 %argc770, { i32, [ 0 x i8* ] }* %argv768){
__fresh210:
  %argc_slot771 = alloca i32
  store i32 %argc770, i32* %argc_slot771
  %argv_slot769 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv768, { i32, [ 0 x i8* ] }** %argv_slot769
  %mem_ptr772 = call i32* @oat_malloc ( i32 12 )
  %obj773 = bitcast i32* %mem_ptr772 to %B* 
  %new_obj774 = call %B* @_B_ctor ( %B* %obj773 )
  %vdecl_slot775 = alloca %B*
  store %B* %new_obj774, %B** %vdecl_slot775
  %lhs_or_call776 = load %B** %vdecl_slot775
  %vtable_ptr777 = getelementptr %B* %lhs_or_call776, i32 0
  %vtable778 = load %_B_vtable** %vtable_ptr777
  %f780 = getelementptr %_B_vtable* %vtable778, i32 0, i32 2
  %f779 = load void (%A*)** %f780
  %cast_op781 = bitcast %B %lhs_or_call776 to %A* 
  call void %f779( %A* %cast_op781 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh209:
  %mem_ptr762 = call i32* @oat_malloc ( i32 12 )
  %obj763 = bitcast i32* %mem_ptr762 to %A* 
  %new_obj764 = call %A* @_A_ctor ( %A* %obj763 )
  %_this1 = bitcast %A* %new_obj764 to %B 
  %_name765 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str129, i8** %_name765
  %str766 = getelementptr %B* %_this1, i32 0, i32 2
  store i8* @_const_str130, i8** %str766
  %this_vtable767 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable125, %_B_vtable** %this_vtable767
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh208:
  %str760 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call761 = load i8** %str760
  call void @print_string( i8* %lhs_or_call761 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh207:
  %mem_ptr754 = call i32* @oat_malloc ( i32 8 )
  %obj755 = bitcast i32* %mem_ptr754 to %Object* 
  %new_obj756 = call %Object* @_Object_ctor ( %Object* %obj755 )
  %_this1 = bitcast %Object* %new_obj756 to %A 
  %_name757 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str127, i8** %_name757
  %str758 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str128, i8** %str758
  %this_vtable759 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable124, %_A_vtable** %this_vtable759
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh206:
  %_name752 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call753 = load i8** %_name752
  ret i8* %lhs_or_call753
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh205:
  %_name750 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str126, i8** %_name750
  %this_vtable751 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable123, %_Object_vtable** %this_vtable751
  ret %Object* %_this1
}


