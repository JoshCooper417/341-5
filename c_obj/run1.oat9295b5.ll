%B = type { %_B_vtable*, i8*, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8*, i32, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)* }
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
@_const_str6.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str6 = alias bitcast([ 2 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str5 = alias bitcast([ 2 x i8 ]* @_const_str5.str. to i8*)@_const_str4.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str4 = alias bitcast([ 7 x i8 ]* @_const_str4.str. to i8*)@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f, void (%A*)* @_A_p, i32 (%B*)* @_B_g}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f, void (%A*)* @_A_p}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh24:
  ret void
}


define i32 @program (i32 %argc27, { i32, [ 0 x i8* ] }* %argv25){
__fresh16:
  %argc_slot28 = alloca i32
  store i32 %argc27, i32* %argc_slot28
  %argv_slot26 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv25, { i32, [ 0 x i8* ] }** %argv_slot26
  %mem_ptr29 = call i32* @oat_malloc ( i32 16 )
  %obj30 = bitcast i32* %mem_ptr29 to %A* 
  %new_obj31 = call %A* @_A_ctor ( %A* %obj30 )
  %vdecl_slot32 = alloca %A*
  store %A* %new_obj31, %A** %vdecl_slot32
  %vdecl_slot33 = alloca i32
  store i32 0, i32* %vdecl_slot33
  %lhs_or_call34 = load %A** %vdecl_slot32
  %ifnull_slot35 = alloca %A*
  store %A* %lhs_or_call34, %A** %ifnull_slot35
  %ifnull_guard36 = icmp ne %A* %lhs_or_call34, null
  br i1 %ifnull_guard36, label %__then15, label %__else14

__fresh17:
  br label %__then15

__then15:
  br label %__init7

__fresh18:
  br label %__init7

__init7:
  %lhs_or_call38 = load %A** %ifnull_slot35
  %rvtable51 = getelementptr %A* %lhs_or_call38, i32 0
  br label %__bound_check8

__fresh19:
  br label %__bound_check8

__bound_check8:
  %cast_op55 = bitcast %_A_vtable* @_A_vtable2 to i8** 
  %lvtable52 = load i8** %cast_op55
  %cast_vtable56 = bitcast i8** %rvtable51 to i8** 
  %rvtable54 = load i8** %cast_vtable56
  %compare53 = icmp eq i8* %rvtable54, null
  br i1 %compare53, label %__end_no11, label %__check_curr10

__fresh20:
  br label %__check_curr10

__check_curr10:
  %compare53 = icmp eq i8** %lvtable52, %rvtable54
  br i1 %compare53, label %__end_yes12, label %__move_up9

__fresh21:
  br label %__move_up9

__move_up9:
  %rvtable51 = getelementptr i8* %rvtable54, i32 0
  br label %__bound_check8

__fresh22:
  br label %__end_yes12

__end_yes12:
  %lhs_or_call38 = load %A** %ifnull_slot35
  %cast_ptr37 = bitcast %A* %lhs_or_call38 to %A* 
  %lhs_or_call39 = load %A** %cast_ptr37
  %vtable_ptr40 = getelementptr %A* %lhs_or_call39, i32 0
  %vtable41 = load %_A_vtable** %vtable_ptr40
  %f43 = getelementptr %_A_vtable* %vtable41, i32 0, i32 2
  %f42 = load i32 (%A*)** %f43
  %cast_op44 = bitcast %A %lhs_or_call39 to %A* 
  %ret45 = call i32 %f42 ( %A* %cast_op44 )
  store i32 %ret45, i32* %vdecl_slot33
  %lhs_or_call46 = load %A** %ifnull_slot35
  %i47 = getelementptr %A* %lhs_or_call46, i32 0, i32 2
  %lhs_or_call48 = load i32* %i47
  %lhs_or_call49 = load i32* %vdecl_slot33
  %bop50 = add i32 %lhs_or_call48, %lhs_or_call49
  store i32 %bop50, i32* %vdecl_slot33
  br label %__end_no11

__end_no11:
  br label %__merge13

__fresh23:
  br label %__else14

__else14:
  br label %__merge13

__merge13:
  %lhs_or_call57 = load i32* %vdecl_slot33
  ret i32 %lhs_or_call57
}


define i32 @_B_g (%B* %_this1){
__fresh6:
  %vtable_ptr19 = getelementptr %B* %_this1, i32 0
  %vtable20 = load %_B_vtable** %vtable_ptr19
  %f22 = getelementptr %_B_vtable* %vtable20, i32 0, i32 2
  %f21 = load i32 (%A*)** %f22
  %cast_op23 = bitcast %B %_this1 to %A* 
  %ret24 = call i32 %f21 ( %A* %cast_op23 )
  ret i32 %ret24
}


define %B* @_B_ctor (%B* %_this1){
__fresh5:
  %mem_ptr14 = call i32* @oat_malloc ( i32 16 )
  %obj15 = bitcast i32* %mem_ptr14 to %A* 
  %new_obj16 = call %A* @_A_ctor ( %A* %obj15 )
  %_this1 = bitcast %A* %new_obj16 to %B 
  %_name17 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %_name17
  %this_vtable18 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable3, %_B_vtable** %this_vtable18
  ret %B* %_this1
}


define void @_A_p (%A* %_this1){
__fresh4:
  ret void
}


define i32 @_A_f (%A* %_this1){
__fresh3:
  %i12 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call13 = load i32* %i12
  ret i32 %lhs_or_call13
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %mem_ptr7 = call i32* @oat_malloc ( i32 8 )
  %obj8 = bitcast i32* %mem_ptr7 to %Object* 
  %new_obj9 = call %Object* @_Object_ctor ( %Object* %obj8 )
  %_this1 = bitcast %Object* %new_obj9 to %A 
  %_name10 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str5, i8** %_name10
  %this_vtable11 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable2, %_A_vtable** %this_vtable11
  %i6 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i6
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %_name4 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5 = load i8** %_name4
  ret i8* %lhs_or_call5
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %_name2 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str4, i8** %_name2
  %this_vtable3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %this_vtable3
  ret %Object* %_this1
}


