%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
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
@_const_str138.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str138 = alias bitcast([ 2 x i8 ]* @_const_str138.str. to i8*)@_const_str137.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str137 = alias bitcast([ 2 x i8 ]* @_const_str137.str. to i8*)@_const_str136.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str136 = alias bitcast([ 2 x i8 ]* @_const_str136.str. to i8*)@_const_str135.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str135 = alias bitcast([ 2 x i8 ]* @_const_str135.str. to i8*)@_const_str134.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str134 = alias bitcast([ 7 x i8 ]* @_const_str134.str. to i8*)@_B_vtable133 = private constant %_B_vtable {%_A_vtable* @_A_vtable132, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable132 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable131, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable131 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh198:
  ret void
}


define i32 @program (i32 %argc770, { i32, [ 0 x i8* ] }* %argv768){
__fresh197:
  %argc_slot771 = alloca i32
  store i32 %argc770, i32* %argc_slot771
  %argv_slot769 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv768, { i32, [ 0 x i8* ] }** %argv_slot769
  %mem_ptr772 = call i32* @oat_malloc ( i32 8 )
  %obj773 = bitcast i32* %mem_ptr772 to %B* 
  %new_obj774 = call %B* @_B_ctor ( %B* %obj773 )
  %vdecl_slot775 = alloca %B*
  store %B* %new_obj774, %B** %vdecl_slot775
  %lhs_or_call776 = load %B** %vdecl_slot775
  %vtable_ptr777 = getelementptr %B* %lhs_or_call776, i32 0
  %vtable778 = load %_B_vtable** %vtable_ptr777
  %f780 = getelementptr %_B_vtable* %vtable778, i32 0, i32 2
  %f779 = load void (%B*)** %f780
  %cast_op781 = bitcast %B %lhs_or_call776 to %B* 
  call void %f779( %B* %cast_op781 )
  ret i32 0
}


define void @_B_f (%B* %_this1){
__fresh196:
  call void @print_string( i8* @_const_str138 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh195:
  %mem_ptr763 = call i32* @oat_malloc ( i32 8 )
  %obj764 = bitcast i32* %mem_ptr763 to %A* 
  %new_obj765 = call %A* @_A_ctor ( %A* %obj764 )
  %_this1 = bitcast %A* %new_obj765 to %B 
  %_name766 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str137, i8** %_name766
  %this_vtable767 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable133, %_B_vtable** %this_vtable767
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh194:
  call void @print_string( i8* @_const_str136 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh193:
  %mem_ptr758 = call i32* @oat_malloc ( i32 8 )
  %obj759 = bitcast i32* %mem_ptr758 to %Object* 
  %new_obj760 = call %Object* @_Object_ctor ( %Object* %obj759 )
  %_this1 = bitcast %Object* %new_obj760 to %A 
  %_name761 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str135, i8** %_name761
  %this_vtable762 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable132, %_A_vtable** %this_vtable762
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh192:
  %_name756 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call757 = load i8** %_name756
  ret i8* %lhs_or_call757
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh191:
  %_name754 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str134, i8** %_name754
  %this_vtable755 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable131, %_Object_vtable** %this_vtable755
  ret %Object* %_this1
}


