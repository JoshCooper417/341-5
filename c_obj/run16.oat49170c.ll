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
@_B_vtable56 = private constant %_B_vtable {%_A_vtable* @_A_vtable55, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable55 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable54, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable54 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh159:
  ret void
}


define i32 @program (i32 %argc713, { i32, [ 0 x i8* ] }* %argv711){
__fresh158:
  %argc_slot714 = alloca i32
  store i32 %argc713, i32* %argc_slot714
  %argv_slot712 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv711, { i32, [ 0 x i8* ] }** %argv_slot712
  %mem_ptr715 = call i32* @oat_malloc ( i32 12 )
  %obj716 = bitcast i32* %mem_ptr715 to %B* 
  %new_obj717 = call %B* @_B_ctor ( %B* %obj716 )
  %vdecl_slot718 = alloca %B*
  store %B* %new_obj717, %B** %vdecl_slot718
  %lhs_or_call719 = load %B** %vdecl_slot718
  %arr720 = getelementptr %B* %lhs_or_call719, i32 0, i32 2
  %lhs_or_call721 = load { i32, [ 0 x i32 ] }** %arr720
  %ret722 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call721 )
  call void @print_string( i8* %ret722 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh157:
  %lhs_or_call702 = load %B* %_this1
  %cast_op703 = bitcast %B %lhs_or_call702 to %A* 
  %mem_ptr704 = call i32* @oat_malloc ( i32 12 )
  %obj705 = bitcast i32* %mem_ptr704 to %A* 
  %new_obj706 = call %A* @_A_ctor ( %A* %obj705, %A* %cast_op703 )
  %_name707 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call708 = load %B* %_this1
  %cast_op709 = bitcast %B %lhs_or_call708 to i8* 
  store i8* %cast_op709, i8** %_name707
  %this_vtable710 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable710
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh154:
  %lhs_or_call677 = load %A* %_this1
  %cast_op678 = bitcast %A %lhs_or_call677 to %Object* 
  %mem_ptr679 = call i32* @oat_malloc ( i32 8 )
  %obj680 = bitcast i32* %mem_ptr679 to %Object* 
  %new_obj681 = call %Object* @_Object_ctor ( %Object* %obj680, %Object* %cast_op678 )
  %_name682 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call683 = load %A* %_this1
  %cast_op684 = bitcast %A %lhs_or_call683 to i8* 
  store i8* %cast_op684, i8** %_name682
  %arr685 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr686 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array687 = bitcast { i32, [ 0 x i32 ] }* %array_ptr686 to { i32, [ 0 x i32 ] }* 
  %_tmp56688 = alloca i32
  store i32 10, i32* %_tmp56688
  %_tmp57689 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array687, { i32, [ 0 x i32 ] }** %_tmp57689
  %vdecl_slot690 = alloca i32
  store i32 0, i32* %vdecl_slot690
  br label %__cond153

__cond153:
  %lhs_or_call691 = load i32* %vdecl_slot690
  %lhs_or_call692 = load i32* %_tmp56688
  %bop693 = icmp slt i32 %lhs_or_call691, %lhs_or_call692
  br i1 %bop693, label %__body152, label %__post151

__fresh155:
  br label %__body152

__body152:
  %lhs_or_call694 = load { i32, [ 0 x i32 ] }** %_tmp57689
  %lhs_or_call695 = load i32* %vdecl_slot690
  %bound_ptr697 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call694, i32 0, i32 0
  %bound698 = load i32* %bound_ptr697
  call void @oat_array_bounds_check( i32 %bound698, i32 %lhs_or_call695 )
  %elt696 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call694, i32 0, i32 1, i32 %lhs_or_call695
  store i32 110, i32* %elt696
  %lhs_or_call699 = load i32* %vdecl_slot690
  %bop700 = add i32 %lhs_or_call699, 1
  store i32 %bop700, i32* %vdecl_slot690
  br label %__cond153

__fresh156:
  br label %__post151

__post151:
  store { i32, [ 0 x i32 ] }* %array687, { i32, [ 0 x i32 ] }** %arr685
  %this_vtable701 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable701
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh150:
  %_name675 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call676 = load i8** %_name675
  ret i8* %lhs_or_call676
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh149:
  %_name671 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call672 = load %Object* %_this1
  %cast_op673 = bitcast %Object %lhs_or_call672 to i8* 
  store i8* %cast_op673, i8** %_name671
  %this_vtable674 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable674
  ret %Object* %_this1
}


