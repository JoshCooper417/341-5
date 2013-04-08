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


define i32 @program (i32 %argc620, { i32, [ 0 x i8* ] }* %argv618){
__fresh158:
  %argc_slot621 = alloca i32
  store i32 %argc620, i32* %argc_slot621
  %argv_slot619 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv618, { i32, [ 0 x i8* ] }** %argv_slot619
  %mem_ptr622 = call i32* @oat_malloc ( i32 12 )
  %obj623 = bitcast i32* %mem_ptr622 to %B* 
  %new_obj624 = call %B* @_B_ctor ( %B* %obj623 )
  %vdecl_slot625 = alloca %B*
  store %B* %new_obj624, %B** %vdecl_slot625
  %lhs_or_call626 = load %B** %vdecl_slot625
  %arr627 = getelementptr %B* %lhs_or_call626, i32 0, i32 2
  %lhs_or_call628 = load { i32, [ 0 x i32 ] }** %arr627
  %ret629 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call628 )
  call void @print_string( i8* %ret629 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh157:
  %cast_op612 = bitcast %B* %_this1 to %A* 
  %mem_ptr613 = call i32* @oat_malloc ( i32 12 )
  %obj614 = bitcast i32* %mem_ptr613 to %B* 
  %new_obj615 = call %A* @_A_ctor ( %B* %obj614, %A* %cast_op612 )
  %_this1 = bitcast %A* %new_obj615 to %B 
  %_name616 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name616
  %this_vtable617 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable110, %_B_vtable** %this_vtable617
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh154:
  %cast_op590 = bitcast %A* %_this1 to %Object* 
  %mem_ptr591 = call i32* @oat_malloc ( i32 12 )
  %obj592 = bitcast i32* %mem_ptr591 to %A* 
  %new_obj593 = call %Object* @_Object_ctor ( %A* %obj592, %Object* %cast_op590 )
  %_this1 = bitcast %Object* %new_obj593 to %A 
  %_name594 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str112, i8** %_name594
  %arr595 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr596 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array597 = bitcast { i32, [ 0 x i32 ] }* %array_ptr596 to { i32, [ 0 x i32 ] }* 
  %_tmp111598 = alloca i32
  store i32 10, i32* %_tmp111598
  %_tmp112599 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array597, { i32, [ 0 x i32 ] }** %_tmp112599
  %vdecl_slot600 = alloca i32
  store i32 0, i32* %vdecl_slot600
  br label %__cond153

__cond153:
  %lhs_or_call601 = load i32* %vdecl_slot600
  %lhs_or_call602 = load i32* %_tmp111598
  %bop603 = icmp slt i32 %lhs_or_call601, %lhs_or_call602
  br i1 %bop603, label %__body152, label %__post151

__fresh155:
  br label %__body152

__body152:
  %lhs_or_call604 = load { i32, [ 0 x i32 ] }** %_tmp112599
  %lhs_or_call605 = load i32* %vdecl_slot600
  %bound_ptr607 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call604, i32 0, i32 0
  %bound608 = load i32* %bound_ptr607
  call void @oat_array_bounds_check( i32 %bound608, i32 %lhs_or_call605 )
  %elt606 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call604, i32 0, i32 1, i32 %lhs_or_call605
  store i32 110, i32* %elt606
  %lhs_or_call609 = load i32* %vdecl_slot600
  %bop610 = add i32 %lhs_or_call609, 1
  store i32 %bop610, i32* %vdecl_slot600
  br label %__cond153

__fresh156:
  br label %__post151

__post151:
  store { i32, [ 0 x i32 ] }* %array597, { i32, [ 0 x i32 ] }** %arr595
  %this_vtable611 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable109, %_A_vtable** %this_vtable611
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh150:
  %_name588 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call589 = load i8** %_name588
  ret i8* %lhs_or_call589
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh149:
  %_name586 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str111, i8** %_name586
  %this_vtable587 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable108, %_Object_vtable** %this_vtable587
  ret %Object* %_this1
}


