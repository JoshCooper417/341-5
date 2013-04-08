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


define i32 @program (i32 %argc603, { i32, [ 0 x i8* ] }* %argv601){
__fresh158:
  %argc_slot604 = alloca i32
  store i32 %argc603, i32* %argc_slot604
  %argv_slot602 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv601, { i32, [ 0 x i8* ] }** %argv_slot602
  %mem_ptr605 = call i32* @oat_malloc ( i32 12 )
  %obj606 = bitcast i32* %mem_ptr605 to %B* 
  %new_obj607 = call %B* @_B_ctor ( %B* %obj606 )
  %vdecl_slot608 = alloca %B*
  store %B* %new_obj607, %B** %vdecl_slot608
  %lhs_or_call609 = load %B** %vdecl_slot608
  %arr610 = getelementptr %B* %lhs_or_call609, i32 0, i32 2
  %lhs_or_call611 = load { i32, [ 0 x i32 ] }** %arr610
  %ret612 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call611 )
  call void @print_string( i8* %ret612 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh157:
  %mem_ptr596 = call i32* @oat_malloc ( i32 12 )
  %obj597 = bitcast i32* %mem_ptr596 to %A* 
  %new_obj598 = call %A* @_A_ctor ( %A* %obj597 )
  %_this1 = bitcast %A* %new_obj598 to %B 
  %_name599 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str102, i8** %_name599
  %this_vtable600 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable99, %_B_vtable** %this_vtable600
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh154:
  %mem_ptr575 = call i32* @oat_malloc ( i32 8 )
  %obj576 = bitcast i32* %mem_ptr575 to %Object* 
  %new_obj577 = call %Object* @_Object_ctor ( %Object* %obj576 )
  %_this1 = bitcast %Object* %new_obj577 to %A 
  %_name578 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str101, i8** %_name578
  %arr579 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr580 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array581 = bitcast { i32, [ 0 x i32 ] }* %array_ptr580 to { i32, [ 0 x i32 ] }* 
  %_tmp100582 = alloca i32
  store i32 10, i32* %_tmp100582
  %_tmp101583 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array581, { i32, [ 0 x i32 ] }** %_tmp101583
  %vdecl_slot584 = alloca i32
  store i32 0, i32* %vdecl_slot584
  br label %__cond153

__cond153:
  %lhs_or_call585 = load i32* %vdecl_slot584
  %lhs_or_call586 = load i32* %_tmp100582
  %bop587 = icmp slt i32 %lhs_or_call585, %lhs_or_call586
  br i1 %bop587, label %__body152, label %__post151

__fresh155:
  br label %__body152

__body152:
  %lhs_or_call588 = load { i32, [ 0 x i32 ] }** %_tmp101583
  %lhs_or_call589 = load i32* %vdecl_slot584
  %bound_ptr591 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call588, i32 0, i32 0
  %bound592 = load i32* %bound_ptr591
  call void @oat_array_bounds_check( i32 %bound592, i32 %lhs_or_call589 )
  %elt590 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call588, i32 0, i32 1, i32 %lhs_or_call589
  store i32 110, i32* %elt590
  %lhs_or_call593 = load i32* %vdecl_slot584
  %bop594 = add i32 %lhs_or_call593, 1
  store i32 %bop594, i32* %vdecl_slot584
  br label %__cond153

__fresh156:
  br label %__post151

__post151:
  store { i32, [ 0 x i32 ] }* %array581, { i32, [ 0 x i32 ] }** %arr579
  %this_vtable595 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable98, %_A_vtable** %this_vtable595
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh150:
  %_name573 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call574 = load i8** %_name573
  ret i8* %lhs_or_call574
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh149:
  %_name571 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str100, i8** %_name571
  %this_vtable572 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable97, %_Object_vtable** %this_vtable572
  ret %Object* %_this1
}


