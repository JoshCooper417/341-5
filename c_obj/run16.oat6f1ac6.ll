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


define i32 @program (i32 %argc619, { i32, [ 0 x i8* ] }* %argv617){
__fresh158:
  %argc_slot620 = alloca i32
  store i32 %argc619, i32* %argc_slot620
  %argv_slot618 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv617, { i32, [ 0 x i8* ] }** %argv_slot618
  %mem_ptr621 = call i32* @oat_malloc ( i32 12 )
  %obj622 = bitcast i32* %mem_ptr621 to %B* 
  %new_obj623 = call %B* @_B_ctor ( %B* %obj622 )
  %vdecl_slot624 = alloca %B*
  store %B* %new_obj623, %B** %vdecl_slot624
  %lhs_or_call625 = load %B** %vdecl_slot624
  %arr626 = getelementptr %B* %lhs_or_call625, i32 0, i32 2
  %lhs_or_call627 = load { i32, [ 0 x i32 ] }** %arr626
  %ret628 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call627 )
  call void @print_string( i8* %ret628 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh157:
  %cast_op611 = bitcast %B* %_this1 to %A* 
  %mem_ptr612 = call i32* @oat_malloc ( i32 12 )
  %obj613 = bitcast i32* %mem_ptr612 to %B* 
  %new_obj614 = call %A* @_A_ctor ( %B* %obj613, %A* %cast_op611 )
  %_this1 = bitcast %A* %new_obj614 to %B 
  %_name615 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name615
  %this_vtable616 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable110, %_B_vtable** %this_vtable616
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh154:
  %cast_op589 = bitcast %A* %_this1 to %Object* 
  %mem_ptr590 = call i32* @oat_malloc ( i32 12 )
  %obj591 = bitcast i32* %mem_ptr590 to %A* 
  %new_obj592 = call %Object* @_Object_ctor ( %A* %obj591, %Object* %cast_op589 )
  %_this1 = bitcast %Object* %new_obj592 to %A 
  %_name593 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str112, i8** %_name593
  %arr594 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr595 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array596 = bitcast { i32, [ 0 x i32 ] }* %array_ptr595 to { i32, [ 0 x i32 ] }* 
  %_tmp111597 = alloca i32
  store i32 10, i32* %_tmp111597
  %_tmp112598 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array596, { i32, [ 0 x i32 ] }** %_tmp112598
  %vdecl_slot599 = alloca i32
  store i32 0, i32* %vdecl_slot599
  br label %__cond153

__cond153:
  %lhs_or_call600 = load i32* %vdecl_slot599
  %lhs_or_call601 = load i32* %_tmp111597
  %bop602 = icmp slt i32 %lhs_or_call600, %lhs_or_call601
  br i1 %bop602, label %__body152, label %__post151

__fresh155:
  br label %__body152

__body152:
  %lhs_or_call603 = load { i32, [ 0 x i32 ] }** %_tmp112598
  %lhs_or_call604 = load i32* %vdecl_slot599
  %bound_ptr606 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call603, i32 0, i32 0
  %bound607 = load i32* %bound_ptr606
  call void @oat_array_bounds_check( i32 %bound607, i32 %lhs_or_call604 )
  %elt605 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call603, i32 0, i32 1, i32 %lhs_or_call604
  store i32 110, i32* %elt605
  %lhs_or_call608 = load i32* %vdecl_slot599
  %bop609 = add i32 %lhs_or_call608, 1
  store i32 %bop609, i32* %vdecl_slot599
  br label %__cond153

__fresh156:
  br label %__post151

__post151:
  store { i32, [ 0 x i32 ] }* %array596, { i32, [ 0 x i32 ] }** %arr594
  %this_vtable610 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable109, %_A_vtable** %this_vtable610
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh150:
  %_name587 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call588 = load i8** %_name587
  ret i8* %lhs_or_call588
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh149:
  %_name585 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str111, i8** %_name585
  %this_vtable586 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable108, %_Object_vtable** %this_vtable586
  ret %Object* %_this1
}


