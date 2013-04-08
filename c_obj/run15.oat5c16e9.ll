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
@_const_str53.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str53 = alias bitcast([ 4 x i8 ]* @_const_str53.str. to i8*)@_B_vtable52 = private constant %_B_vtable {%_A_vtable* @_A_vtable51, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable51 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable50, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable50 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh148:
  ret void
}


define i32 @program (i32 %argc662, { i32, [ 0 x i8* ] }* %argv660){
__fresh147:
  %argc_slot663 = alloca i32
  store i32 %argc662, i32* %argc_slot663
  %argv_slot661 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv660, { i32, [ 0 x i8* ] }** %argv_slot661
  %mem_ptr664 = call i32* @oat_malloc ( i32 12 )
  %obj665 = bitcast i32* %mem_ptr664 to %B* 
  %new_obj666 = call %B* @_B_ctor ( %B* %obj665 )
  %vdecl_slot667 = alloca %B*
  store %B* %new_obj666, %B** %vdecl_slot667
  %lhs_or_call668 = load %B** %vdecl_slot667
  %str669 = getelementptr %B* %lhs_or_call668, i32 0, i32 2
  %lhs_or_call670 = load i8** %str669
  call void @print_string( i8* %lhs_or_call670 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh146:
  %lhs_or_call651 = load %B* %_this1
  %cast_op652 = bitcast %B %lhs_or_call651 to %A* 
  %mem_ptr653 = call i32* @oat_malloc ( i32 12 )
  %obj654 = bitcast i32* %mem_ptr653 to %A* 
  %new_obj655 = call %A* @_A_ctor ( %A* %obj654, %A* %cast_op652 )
  %_name656 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call657 = load %B* %_this1
  %cast_op658 = bitcast %B %lhs_or_call657 to i8* 
  store i8* %cast_op658, i8** %_name656
  %this_vtable659 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable659
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh145:
  %lhs_or_call641 = load %A* %_this1
  %cast_op642 = bitcast %A %lhs_or_call641 to %Object* 
  %mem_ptr643 = call i32* @oat_malloc ( i32 8 )
  %obj644 = bitcast i32* %mem_ptr643 to %Object* 
  %new_obj645 = call %Object* @_Object_ctor ( %Object* %obj644, %Object* %cast_op642 )
  %_name646 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call647 = load %A* %_this1
  %cast_op648 = bitcast %A %lhs_or_call647 to i8* 
  store i8* %cast_op648, i8** %_name646
  %str649 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str53, i8** %str649
  %this_vtable650 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable650
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh144:
  %_name639 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call640 = load i8** %_name639
  ret i8* %lhs_or_call640
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh143:
  %_name635 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call636 = load %Object* %_this1
  %cast_op637 = bitcast %Object %lhs_or_call636 to i8* 
  store i8* %cast_op637, i8** %_name635
  %this_vtable638 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable638
  ret %Object* %_this1
}


