%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str10.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str10 = alias bitcast([ 3 x i8 ]* @_const_str10.str. to i8*)@_const_str9.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str9 = alias bitcast([ 4 x i8 ]* @_const_str9.str. to i8*)@_const_str8.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str8 = alias bitcast([ 2 x i8 ]* @_const_str8.str. to i8*)@_const_str7.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str7 = alias bitcast([ 2 x i8 ]* @_const_str7.str. to i8*)@_const_str6.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str6 = alias bitcast([ 2 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str5 = alias bitcast([ 7 x i8 ]* @_const_str5.str. to i8*)@_C_vtable4 = private constant %_C_vtable {%_B_vtable* @_B_vtable3, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh20:
  ret void
}


define i32 @program (i32 %argc26, { i32, [ 0 x i8* ] }* %argv24){
__fresh12:
  %argc_slot27 = alloca i32
  store i32 %argc26, i32* %argc_slot27
  %argv_slot25 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv24, { i32, [ 0 x i8* ] }** %argv_slot25
  %mem_ptr28 = call i32* @oat_malloc ( i32 12 )
  %obj29 = bitcast i32* %mem_ptr28 to %B* 
  %new_obj30 = call %B* @_B_ctor ( %B* %obj29 )
  %cast_op31 = bitcast %B* %new_obj30 to %A* 
  %vdecl_slot32 = alloca %A*
  store %A* %cast_op31, %A** %vdecl_slot32
  %unop33 = sub i32 0, 1
  %vdecl_slot34 = alloca i32
  store i32 %unop33, i32* %vdecl_slot34
  br label %__init5

__fresh13:
  br label %__init5

__init5:
  %lhs_or_call36 = load %A** %vdecl_slot32
  %rvtable43 = getelementptr %A* %lhs_or_call36, i32 0
  br label %__bound_check6

__fresh14:
  br label %__bound_check6

__bound_check6:
  %cast_op47 = bitcast %_C_vtable* @_C_vtable4 to i8** 
  %lvtable44 = load i8** %cast_op47
  %cast_vtable48 = bitcast i8** %rvtable43 to i8** 
  %rvtable46 = load i8** %cast_vtable48
  %compare45 = icmp eq i8* %rvtable46, null
  br i1 %compare45, label %__end_no9, label %__check_curr8

__fresh15:
  br label %__check_curr8

__check_curr8:
  %compare45 = icmp eq i8** %lvtable44, %rvtable46
  br i1 %compare45, label %__end_yes10, label %__move_up7

__fresh16:
  br label %__move_up7

__move_up7:
  %rvtable43 = getelementptr i8* %rvtable46, i32 0
  br label %__bound_check6

__fresh17:
  br label %__end_yes10

__end_yes10:
  %lhs_or_call36 = load %A** %vdecl_slot32
  %cast_ptr35 = bitcast %A* %lhs_or_call36 to %C* 
  call void @print_string( i8* @_const_str9 )
  %lhs_or_call37 = load %C** %cast_ptr35
  %i38 = getelementptr %C* %lhs_or_call37, i32 0, i32 2
  %lhs_or_call39 = load i32* %i38
  store i32 %lhs_or_call39, i32* %vdecl_slot34
  br label %__end11

__fresh18:
  br label %__end_no9

__end_no9:
  call void @print_string( i8* @_const_str10 )
  %lhs_or_call40 = load %A** %vdecl_slot32
  %i41 = getelementptr %A* %lhs_or_call40, i32 0, i32 2
  %lhs_or_call42 = load i32* %i41
  store i32 %lhs_or_call42, i32* %vdecl_slot34
  br label %__end11

__fresh19:
  br label %__end11

__end11:
  %lhs_or_call49 = load i32* %vdecl_slot34
  ret i32 %lhs_or_call49
}


define %C* @_C_ctor (%C* %_this1){
__fresh4:
  %mem_ptr19 = call i32* @oat_malloc ( i32 12 )
  %obj20 = bitcast i32* %mem_ptr19 to %B* 
  %new_obj21 = call %B* @_B_ctor ( %B* %obj20 )
  %_this1 = bitcast %B* %new_obj21 to %C 
  %_name22 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str8, i8** %_name22
  %this_vtable23 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable4, %_C_vtable** %this_vtable23
  %i18 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i18
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh3:
  %mem_ptr13 = call i32* @oat_malloc ( i32 12 )
  %obj14 = bitcast i32* %mem_ptr13 to %A* 
  %new_obj15 = call %A* @_A_ctor ( %A* %obj14 )
  %_this1 = bitcast %A* %new_obj15 to %B 
  %_name16 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str7, i8** %_name16
  %this_vtable17 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable3, %_B_vtable** %this_vtable17
  %i12 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i12
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %mem_ptr7 = call i32* @oat_malloc ( i32 8 )
  %obj8 = bitcast i32* %mem_ptr7 to %Object* 
  %new_obj9 = call %Object* @_Object_ctor ( %Object* %obj8 )
  %_this1 = bitcast %Object* %new_obj9 to %A 
  %_name10 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %_name10
  %this_vtable11 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable2, %_A_vtable** %this_vtable11
  %i6 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i6
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
  store i8* @_const_str5, i8** %_name2
  %this_vtable3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %this_vtable3
  ret %Object* %_this1
}


