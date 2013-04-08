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
@_const_str120.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str120 = alias bitcast([ 7 x i8 ]* @_const_str120.str. to i8*)@_const_str119.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str119 = alias bitcast([ 2 x i8 ]* @_const_str119.str. to i8*)@_const_str118.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str118 = alias bitcast([ 2 x i8 ]* @_const_str118.str. to i8*)@_const_str117.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str117 = alias bitcast([ 7 x i8 ]* @_const_str117.str. to i8*)@_B_vtable116 = private constant %_B_vtable {%_A_vtable* @_A_vtable115, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable115 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable114, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable114 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh165:
  ret void
}


define i32 @program (i32 %argc654, { i32, [ 0 x i8* ] }* %argv652){
__fresh164:
  %argc_slot655 = alloca i32
  store i32 %argc654, i32* %argc_slot655
  %argv_slot653 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv652, { i32, [ 0 x i8* ] }** %argv_slot653
  %mem_ptr656 = call i32* @oat_malloc ( i32 12 )
  %obj657 = bitcast i32* %mem_ptr656 to %B* 
  %new_obj658 = call %B* @_B_ctor ( %B* %obj657, i8* @_const_str120 )
  %vdecl_slot659 = alloca %B*
  store %B* %new_obj658, %B** %vdecl_slot659
  %lhs_or_call660 = load %B** %vdecl_slot659
  %str661 = getelementptr %B* %lhs_or_call660, i32 0, i32 2
  %lhs_or_call662 = load i8** %str661
  call void @print_string( i8* %lhs_or_call662 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str643){
__fresh163:
  %str_slot644 = alloca i8*
  store i8* %str643, i8** %str_slot644
  %lhs_or_call645 = load i8** %str_slot644
  %cast_op646 = bitcast %B* %_this1 to %A* 
  %mem_ptr647 = call i32* @oat_malloc ( i32 12 )
  %obj648 = bitcast i32* %mem_ptr647 to %B* 
  %new_obj649 = call %A* @_A_ctor ( %B* %obj648, %A* %cast_op646, i8* %lhs_or_call645 )
  %_this1 = bitcast %A* %new_obj649 to %B 
  %_name650 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str119, i8** %_name650
  %this_vtable651 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable116, %_B_vtable** %this_vtable651
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str633){
__fresh162:
  %str_slot634 = alloca i8*
  store i8* %str633, i8** %str_slot634
  %cast_op635 = bitcast %A* %_this1 to %Object* 
  %mem_ptr636 = call i32* @oat_malloc ( i32 12 )
  %obj637 = bitcast i32* %mem_ptr636 to %A* 
  %new_obj638 = call %Object* @_Object_ctor ( %A* %obj637, %Object* %cast_op635 )
  %_this1 = bitcast %Object* %new_obj638 to %A 
  %_name639 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str118, i8** %_name639
  %str640 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call641 = load i8** %str_slot634
  store i8* %lhs_or_call641, i8** %str640
  %this_vtable642 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable115, %_A_vtable** %this_vtable642
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh161:
  %_name631 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call632 = load i8** %_name631
  ret i8* %lhs_or_call632
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh160:
  %_name629 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str117, i8** %_name629
  %this_vtable630 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable114, %_Object_vtable** %this_vtable630
  ret %Object* %_this1
}


