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
__fresh15:
  ret void
}


define i32 @program (i32 %argc26, { i32, [ 0 x i8* ] }* %argv24){
__fresh10:
  %argc_slot27 = alloca i32
  store i32 %argc26, i32* %argc_slot27
  %argv_slot25 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv24, { i32, [ 0 x i8* ] }** %argv_slot25
  %mem_ptr28 = call i32* @oat_malloc ( i32 12 )
  %obj29 = bitcast i32* %mem_ptr28 to %A* 
  %new_obj30 = call %A* @_A_ctor ( %A* %obj29 )
  %vdecl_slot31 = alloca %A*
  store %A* %new_obj30, %A** %vdecl_slot31
  %unop32 = sub i32 0, 1
  %vdecl_slot33 = alloca i32
  store i32 %unop32, i32* %vdecl_slot33
  br label %__bound_check5

__fresh11:
  br label %__bound_check5

__bound_check5:
  %cast_op46 = bitcast %_C_vtable* @_C_vtable4 to i8** 
  %rvtable45 = load i8** %rvtable42
  %lvtable43 = load i8** %cast_op46
  %compare44 = icmp eq i8* %rvtable45, null
  br i1 %compare44, label %__end_no8, label %__check_curr7

__fresh12:
  br label %__check_curr7

__check_curr7:
  %compare44 = icmp eq i8** %lvtable43, %rvtable45
  br i1 %compare44, label %__end_yes9, label %__move_up6

__fresh13:
  br label %__move_up6

__move_up6:
  %rvtable42 = getelementptr i8* %rvtable45, i32 0
  br label %__bound_check5

__fresh14:
  br label %__end_yes9

__end_yes9:
  %lhs_or_call35 = load %A** %vdecl_slot31
  %cast_ptr34 = bitcast %A* %lhs_or_call35 to %C** 
  call void @print_string( i8* @_const_str9 )
  %lhs_or_call36 = load %C** %cast_ptr34
  %i37 = getelementptr %C* %lhs_or_call36, i32 0, i32 2
  %lhs_or_call38 = load i32* %i37
  store i32 %lhs_or_call38, i32* %vdecl_slot33
  br label %__end_no8

__end_no8:
  call void @print_string( i8* @_const_str10 )
  %lhs_or_call39 = load %A** %vdecl_slot31
  %i40 = getelementptr %A* %lhs_or_call39, i32 0, i32 2
  %lhs_or_call41 = load i32* %i40
  store i32 %lhs_or_call41, i32* %vdecl_slot33
  %lhs_or_call47 = load i32* %vdecl_slot33
  ret i32 %lhs_or_call47
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


