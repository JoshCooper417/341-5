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


define i32 @program (i32 %argc604, { i32, [ 0 x i8* ] }* %argv602){
__fresh158:
  %argc_slot605 = alloca i32
  store i32 %argc604, i32* %argc_slot605
  %argv_slot603 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv602, { i32, [ 0 x i8* ] }** %argv_slot603
  %mem_ptr606 = call i32* @oat_malloc ( i32 12 )
  %obj607 = bitcast i32* %mem_ptr606 to %B* 
  %new_obj608 = call %B* @_B_ctor ( %B* %obj607 )
  %vdecl_slot609 = alloca %B*
  store %B* %new_obj608, %B** %vdecl_slot609
  %lhs_or_call610 = load %B** %vdecl_slot609
  %arr611 = getelementptr %B* %lhs_or_call610, i32 0, i32 0, i32 2
  %lhs_or_call612 = load { i32, [ 0 x i32 ] }** %arr611
  %ret613 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call612 )
  call void @print_string( i8* %ret613 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh157:
  %mem_ptr597 = call i32* @oat_malloc ( i32 12 )
  %obj598 = bitcast i32* %mem_ptr597 to %A* 
  %new_obj599 = call %A* @_A_ctor ( %A* %obj598 )
  %_this1 = bitcast %A* %new_obj599 to %B 
  %_name600 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str102, i8** %_name600
  %this_vtable601 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable99, %_B_vtable** %this_vtable601
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh154:
  %mem_ptr576 = call i32* @oat_malloc ( i32 8 )
  %obj577 = bitcast i32* %mem_ptr576 to %Object* 
  %new_obj578 = call %Object* @_Object_ctor ( %Object* %obj577 )
  %_this1 = bitcast %Object* %new_obj578 to %A 
  %_name579 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str101, i8** %_name579
  %arr580 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %array_ptr581 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array582 = bitcast { i32, [ 0 x i32 ] }* %array_ptr581 to { i32, [ 0 x i32 ] }* 
  %_tmp100583 = alloca i32
  store i32 10, i32* %_tmp100583
  %_tmp101584 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array582, { i32, [ 0 x i32 ] }** %_tmp101584
  %vdecl_slot585 = alloca i32
  store i32 0, i32* %vdecl_slot585
  br label %__cond153

__cond153:
  %lhs_or_call586 = load i32* %vdecl_slot585
  %lhs_or_call587 = load i32* %_tmp100583
  %bop588 = icmp slt i32 %lhs_or_call586, %lhs_or_call587
  br i1 %bop588, label %__body152, label %__post151

__fresh155:
  br label %__body152

__body152:
  %lhs_or_call589 = load { i32, [ 0 x i32 ] }** %_tmp101584
  %lhs_or_call590 = load i32* %vdecl_slot585
  %bound_ptr592 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call589, i32 0, i32 0
  %bound593 = load i32* %bound_ptr592
  call void @oat_array_bounds_check( i32 %bound593, i32 %lhs_or_call590 )
  %elt591 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call589, i32 0, i32 1, i32 %lhs_or_call590
  store i32 110, i32* %elt591
  %lhs_or_call594 = load i32* %vdecl_slot585
  %bop595 = add i32 %lhs_or_call594, 1
  store i32 %bop595, i32* %vdecl_slot585
  br label %__cond153

__fresh156:
  br label %__post151

__post151:
  store { i32, [ 0 x i32 ] }* %array582, { i32, [ 0 x i32 ] }** %arr580
  %this_vtable596 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable98, %_A_vtable** %this_vtable596
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh150:
  %_name574 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call575 = load i8** %_name574
  ret i8* %lhs_or_call575
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh149:
  %_name572 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str100, i8** %_name572
  %this_vtable573 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable97, %_Object_vtable** %this_vtable573
  ret %Object* %_this1
}


