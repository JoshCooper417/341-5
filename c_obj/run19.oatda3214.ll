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
@_const_str109.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str109 = alias bitcast([ 7 x i8 ]* @_const_str109.str. to i8*)@_const_str108.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str108 = alias bitcast([ 2 x i8 ]* @_const_str108.str. to i8*)@_const_str107.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str107 = alias bitcast([ 2 x i8 ]* @_const_str107.str. to i8*)@_const_str106.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str106 = alias bitcast([ 7 x i8 ]* @_const_str106.str. to i8*)@_B_vtable105 = private constant %_B_vtable {%_A_vtable* @_A_vtable104, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable104 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable103, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable103 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh165:
  ret void
}


define i32 @program (i32 %argc636, { i32, [ 0 x i8* ] }* %argv634){
__fresh164:
  %argc_slot637 = alloca i32
  store i32 %argc636, i32* %argc_slot637
  %argv_slot635 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv634, { i32, [ 0 x i8* ] }** %argv_slot635
  %mem_ptr638 = call i32* @oat_malloc ( i32 12 )
  %obj639 = bitcast i32* %mem_ptr638 to %B* 
  %new_obj640 = call %B* @_B_ctor ( %B* %obj639, i8* @_const_str109 )
  %vdecl_slot641 = alloca %B*
  store %B* %new_obj640, %B** %vdecl_slot641
  %lhs_or_call642 = load %B** %vdecl_slot641
  %str643 = getelementptr %B* %lhs_or_call642, i32 0, i32 2
  %lhs_or_call644 = load i8** %str643
  call void @print_string( i8* %lhs_or_call644 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str626){
__fresh163:
  %str_slot627 = alloca i8*
  store i8* %str626, i8** %str_slot627
  %lhs_or_call628 = load i8** %str_slot627
  %mem_ptr629 = call i32* @oat_malloc ( i32 12 )
  %obj630 = bitcast i32* %mem_ptr629 to %A* 
  %new_obj631 = call %A* @_A_ctor ( %A* %obj630, i8* %lhs_or_call628 )
  %_this1 = bitcast %A* %new_obj631 to %B 
  %_name632 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str108, i8** %_name632
  %this_vtable633 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable105, %_B_vtable** %this_vtable633
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str617){
__fresh162:
  %str_slot618 = alloca i8*
  store i8* %str617, i8** %str_slot618
  %mem_ptr619 = call i32* @oat_malloc ( i32 8 )
  %obj620 = bitcast i32* %mem_ptr619 to %Object* 
  %new_obj621 = call %Object* @_Object_ctor ( %Object* %obj620 )
  %_this1 = bitcast %Object* %new_obj621 to %A 
  %_name622 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str107, i8** %_name622
  %str623 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call624 = load i8** %str_slot618
  store i8* %lhs_or_call624, i8** %str623
  %this_vtable625 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable104, %_A_vtable** %this_vtable625
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh161:
  %_name615 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call616 = load i8** %_name615
  ret i8* %lhs_or_call616
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh160:
  %_name613 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str106, i8** %_name613
  %this_vtable614 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable103, %_Object_vtable** %this_vtable614
  ret %Object* %_this1
}


