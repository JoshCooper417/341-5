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
@_const_str113.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str113 = alias bitcast([ 2 x i8 ]* @_const_str113.str. to i8*)@_const_str112.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str112 = alias bitcast([ 2 x i8 ]* @_const_str112.str. to i8*)@_const_str111.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str111 = alias bitcast([ 7 x i8 ]* @_const_str111.str. to i8*)@_B_vtable110 = private constant %_B_vtable {%_A_vtable* @_A_vtable109, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable109 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable108, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable108 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh159:
  ret void
}


define i32 @program (i32 %argc615, { i32, [ 0 x i8* ] }* %argv613){
__fresh158:
  %argc_slot616 = alloca i32
  store i32 %argc615, i32* %argc_slot616
  %argv_slot614 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv613, { i32, [ 0 x i8* ] }** %argv_slot614
  %mem_ptr617 = call i32* @oat_malloc ( i32 12 )
  %obj618 = bitcast i32* %mem_ptr617 to %B* 
  %new_obj619 = call %B* @_B_ctor ( %B* %obj618 )
  %vdecl_slot620 = alloca %B*
  store %B* %new_obj619, %B** %vdecl_slot620
  %lhs_or_call621 = load %B** %vdecl_slot620
  %arr622 = getelementptr %B* %lhs_or_call621, i32 0, i32 2
  %lhs_or_call623 = load { i32, [ 0 x i32 ] }** %arr622
  %ret624 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call623 )
  call void @print_string( i8* %ret624 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh157:
  %mem_ptr608 = call i32* @oat_malloc ( i32 12 )
  %obj609 = bitcast i32* %mem_ptr608 to %A* 
  %new_obj610 = call %A* @_A_ctor ( %A* %obj609 )
  %_this1 = bitcast %A* %new_obj610 to %B 
  %_name611 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name611
  %this_vtable612 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable110, %_B_vtable** %this_vtable612
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh154:
  %mem_ptr587 = call i32* @oat_malloc ( i32 8 )
  %obj588 = bitcast i32* %mem_ptr587 to %Object* 
  %new_obj589 = call %Object* @_Object_ctor ( %Object* %obj588 )
  %_this1 = bitcast %Object* %new_obj589 to %A 
  %_name590 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str112, i8** %_name590
  %arr591 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr592 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array593 = bitcast { i32, [ 0 x i32 ] }* %array_ptr592 to { i32, [ 0 x i32 ] }* 
  %_tmp111594 = alloca i32
  store i32 10, i32* %_tmp111594
  %_tmp112595 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array593, { i32, [ 0 x i32 ] }** %_tmp112595
  %vdecl_slot596 = alloca i32
  store i32 0, i32* %vdecl_slot596
  br label %__cond153

__cond153:
  %lhs_or_call597 = load i32* %vdecl_slot596
  %lhs_or_call598 = load i32* %_tmp111594
  %bop599 = icmp slt i32 %lhs_or_call597, %lhs_or_call598
  br i1 %bop599, label %__body152, label %__post151

__fresh155:
  br label %__body152

__body152:
  %lhs_or_call600 = load { i32, [ 0 x i32 ] }** %_tmp112595
  %lhs_or_call601 = load i32* %vdecl_slot596
  %bound_ptr603 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call600, i32 0, i32 0
  %bound604 = load i32* %bound_ptr603
  call void @oat_array_bounds_check( i32 %bound604, i32 %lhs_or_call601 )
  %elt602 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call600, i32 0, i32 1, i32 %lhs_or_call601
  store i32 110, i32* %elt602
  %lhs_or_call605 = load i32* %vdecl_slot596
  %bop606 = add i32 %lhs_or_call605, 1
  store i32 %bop606, i32* %vdecl_slot596
  br label %__cond153

__fresh156:
  br label %__post151

__post151:
  store { i32, [ 0 x i32 ] }* %array593, { i32, [ 0 x i32 ] }** %arr591
  %this_vtable607 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable109, %_A_vtable** %this_vtable607
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh150:
  %_name585 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call586 = load i8** %_name585
  ret i8* %lhs_or_call586
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh149:
  %_name583 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str111, i8** %_name583
  %this_vtable584 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable108, %_Object_vtable** %this_vtable584
  ret %Object* %_this1
}


