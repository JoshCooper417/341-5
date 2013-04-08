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


define i32 @program (i32 %argc779, { i32, [ 0 x i8* ] }* %argv777){
__fresh197:
  %argc_slot780 = alloca i32
  store i32 %argc779, i32* %argc_slot780
  %argv_slot778 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv777, { i32, [ 0 x i8* ] }** %argv_slot778
  %mem_ptr781 = call i32* @oat_malloc ( i32 8 )
  %obj782 = bitcast i32* %mem_ptr781 to %B* 
  %new_obj783 = call %B* @_B_ctor ( %B* %obj782 )
  %vdecl_slot784 = alloca %B*
  store %B* %new_obj783, %B** %vdecl_slot784
  %lhs_or_call785 = load %B** %vdecl_slot784
  %vtable_ptr786 = getelementptr %B* %lhs_or_call785, i32 0
  %vtable787 = load %_B_vtable** %vtable_ptr786
  %f789 = getelementptr %_B_vtable* %vtable787, i32 0, i32 2
  %f788 = load void (%B*)** %f789
  %cast_op790 = bitcast %B %lhs_or_call785 to %B* 
  call void %f788( %B* %cast_op790 )
  ret i32 0
}


define void @_B_f (%B* %_this1){
__fresh196:
  call void @print_string( i8* @_const_str138 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh195:
  %mem_ptr772 = call i32* @oat_malloc ( i32 8 )
  %obj773 = bitcast i32* %mem_ptr772 to %A* 
  %new_obj774 = call %A* @_A_ctor ( %A* %obj773 )
  %_this1 = bitcast %A* %new_obj774 to %B 
  %_name775 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str137, i8** %_name775
  %this_vtable776 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable133, %_B_vtable** %this_vtable776
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh194:
  call void @print_string( i8* @_const_str136 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh193:
  %mem_ptr767 = call i32* @oat_malloc ( i32 8 )
  %obj768 = bitcast i32* %mem_ptr767 to %Object* 
  %new_obj769 = call %Object* @_Object_ctor ( %Object* %obj768 )
  %_this1 = bitcast %Object* %new_obj769 to %A 
  %_name770 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str135, i8** %_name770
  %this_vtable771 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable132, %_A_vtable** %this_vtable771
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh192:
  %_name765 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call766 = load i8** %_name765
  ret i8* %lhs_or_call766
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh191:
  %_name763 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str134, i8** %_name763
  %this_vtable764 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable131, %_Object_vtable** %this_vtable764
  ret %Object* %_this1
}


