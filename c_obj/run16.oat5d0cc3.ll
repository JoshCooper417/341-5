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
@_const_str102.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str102 = alias bitcast([ 2 x i8 ]* @_const_str102.str. to i8*)@_const_str101.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str101 = alias bitcast([ 2 x i8 ]* @_const_str101.str. to i8*)@_const_str100.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str100 = alias bitcast([ 7 x i8 ]* @_const_str100.str. to i8*)@_B_vtable99 = private constant %_B_vtable {%_A_vtable* @_A_vtable98, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable98 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable97, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable97 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh159:
  ret void
}


define i32 @program (i32 %argc596, { i32, [ 0 x i8* ] }* %argv594){
__fresh158:
  %argc_slot597 = alloca i32
  store i32 %argc596, i32* %argc_slot597
  %argv_slot595 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv594, { i32, [ 0 x i8* ] }** %argv_slot595
  %mem_ptr598 = call i32* @oat_malloc ( i32 12 )
  %obj599 = bitcast i32* %mem_ptr598 to %B* 
  %new_obj600 = call %B* @_B_ctor ( %B* %obj599 )
  %vdecl_slot601 = alloca %B*
  store %B* %new_obj600, %B** %vdecl_slot601
  %lhs_or_call602 = load %B** %vdecl_slot601
  %arr603 = getelementptr %B* %lhs_or_call602, i32 0, i32 2
  %lhs_or_call604 = load { i32, [ 0 x i32 ] }** %arr603
  %ret605 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call604 )
  call void @print_string( i8* %ret605 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh157:
  %mem_ptr589 = call i32* @oat_malloc ( i32 12 )
  %obj590 = bitcast i32* %mem_ptr589 to %A* 
  %new_obj591 = call %A* @_A_ctor ( %A* %obj590 )
  %_this1 = bitcast %A* %new_obj591 to %B 
  %_name592 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str102, i8** %_name592
  %this_vtable593 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable99, %_B_vtable** %this_vtable593
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh154:
  %mem_ptr568 = call i32* @oat_malloc ( i32 8 )
  %obj569 = bitcast i32* %mem_ptr568 to %Object* 
  %new_obj570 = call %Object* @_Object_ctor ( %Object* %obj569 )
  %_this1 = bitcast %Object* %new_obj570 to %A 
  %_name571 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str101, i8** %_name571
  %arr572 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr573 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array574 = bitcast { i32, [ 0 x i32 ] }* %array_ptr573 to { i32, [ 0 x i32 ] }* 
  %_tmp100575 = alloca i32
  store i32 10, i32* %_tmp100575
  %_tmp101576 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array574, { i32, [ 0 x i32 ] }** %_tmp101576
  %vdecl_slot577 = alloca i32
  store i32 0, i32* %vdecl_slot577
  br label %__cond153

__cond153:
  %lhs_or_call578 = load i32* %vdecl_slot577
  %lhs_or_call579 = load i32* %_tmp100575
  %bop580 = icmp slt i32 %lhs_or_call578, %lhs_or_call579
  br i1 %bop580, label %__body152, label %__post151

__fresh155:
  br label %__body152

__body152:
  %lhs_or_call581 = load { i32, [ 0 x i32 ] }** %_tmp101576
  %lhs_or_call582 = load i32* %vdecl_slot577
  %bound_ptr584 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call581, i32 0, i32 0
  %bound585 = load i32* %bound_ptr584
  call void @oat_array_bounds_check( i32 %bound585, i32 %lhs_or_call582 )
  %elt583 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call581, i32 0, i32 1, i32 %lhs_or_call582
  store i32 110, i32* %elt583
  %lhs_or_call586 = load i32* %vdecl_slot577
  %bop587 = add i32 %lhs_or_call586, 1
  store i32 %bop587, i32* %vdecl_slot577
  br label %__cond153

__fresh156:
  br label %__post151

__post151:
  store { i32, [ 0 x i32 ] }* %array574, { i32, [ 0 x i32 ] }** %arr572
  %this_vtable588 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable98, %_A_vtable** %this_vtable588
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh150:
  %_name566 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call567 = load i8** %_name566
  ret i8* %lhs_or_call567
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh149:
  %_name564 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str100, i8** %_name564
  %this_vtable565 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable97, %_Object_vtable** %this_vtable565
  ret %Object* %_this1
}


