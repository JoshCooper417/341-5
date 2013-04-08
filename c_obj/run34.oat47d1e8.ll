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
@_const_str193.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str193 = alias bitcast([ 3 x i8 ]* @_const_str193.str. to i8*)@_const_str192.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str192 = alias bitcast([ 4 x i8 ]* @_const_str192.str. to i8*)@_const_str191.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str191 = alias bitcast([ 2 x i8 ]* @_const_str191.str. to i8*)@_const_str190.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str190 = alias bitcast([ 2 x i8 ]* @_const_str190.str. to i8*)@_const_str189.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str189 = alias bitcast([ 2 x i8 ]* @_const_str189.str. to i8*)@_const_str188.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str188 = alias bitcast([ 7 x i8 ]* @_const_str188.str. to i8*)@_C_vtable187 = private constant %_C_vtable {%_B_vtable* @_B_vtable186, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable186 = private constant %_B_vtable {%_A_vtable* @_A_vtable185, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable185 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable184, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable184 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh314:
  ret void
}


define i32 @program (i32 %argc1035, { i32, [ 0 x i8* ] }* %argv1033){
__fresh308:
  %argc_slot1036 = alloca i32
  store i32 %argc1035, i32* %argc_slot1036
  %argv_slot1034 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1033, { i32, [ 0 x i8* ] }** %argv_slot1034
  %mem_ptr1037 = call i32* @oat_malloc ( i32 12 )
  %obj1038 = bitcast i32* %mem_ptr1037 to %A* 
  %new_obj1039 = call %A* @_A_ctor ( %A* %obj1038 )
  %vdecl_slot1040 = alloca %A*
  store %A* %new_obj1039, %A** %vdecl_slot1040
  %unop1041 = sub i32 0, 1
  %vdecl_slot1042 = alloca i32
  store i32 %unop1041, i32* %vdecl_slot1042
  br label %__init302

__fresh309:
  br label %__init302

__init302:
  %lhs_or_call1044 = load %A** %vdecl_slot1040
  %rvtable1051 = getelementptr %A* %lhs_or_call1044, i32 0
  br label %__bound_check303

__fresh310:
  br label %__bound_check303

__bound_check303:
  %cast_op1055 = bitcast %_B_vtable* @_B_vtable186 to i8** 
  %lvtable1052 = load i8** %cast_op1055
  %cast_vtable1056 = bitcast i8** %rvtable1051 to i8** 
  %rvtable1054 = load i8** %cast_vtable1056
  %compare1053 = icmp eq i8* %rvtable1054, null
  br i1 %compare1053, label %__end_no306, label %__check_curr305

__fresh311:
  br label %__check_curr305

__check_curr305:
  %compare1053 = icmp eq i8** %lvtable1052, %rvtable1054
  br i1 %compare1053, label %__end_yes307, label %__move_up304

__fresh312:
  br label %__move_up304

__move_up304:
  %rvtable1051 = getelementptr i8* %rvtable1054, i32 0
  br label %__bound_check303

__fresh313:
  br label %__end_yes307

__end_yes307:
  %lhs_or_call1044 = load %A** %vdecl_slot1040
  %cast_ptr1043 = bitcast %A* %lhs_or_call1044 to %B* 
  call void @print_string( i8* @_const_str192 )
  %lhs_or_call1045 = load %B** %cast_ptr1043
  %i1046 = getelementptr %B* %lhs_or_call1045, i32 0, i32 2
  %lhs_or_call1047 = load i32* %i1046
  store i32 %lhs_or_call1047, i32* %vdecl_slot1042
  br label %__end_no306

__end_no306:
  call void @print_string( i8* @_const_str193 )
  %lhs_or_call1048 = load %A** %vdecl_slot1040
  %i1049 = getelementptr %A* %lhs_or_call1048, i32 0, i32 2
  %lhs_or_call1050 = load i32* %i1049
  store i32 %lhs_or_call1050, i32* %vdecl_slot1042
  %lhs_or_call1057 = load i32* %vdecl_slot1042
  ret i32 %lhs_or_call1057
}


define %C* @_C_ctor (%C* %_this1){
__fresh301:
  %mem_ptr1028 = call i32* @oat_malloc ( i32 12 )
  %obj1029 = bitcast i32* %mem_ptr1028 to %B* 
  %new_obj1030 = call %B* @_B_ctor ( %B* %obj1029 )
  %_this1 = bitcast %B* %new_obj1030 to %C 
  %_name1031 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str191, i8** %_name1031
  %this_vtable1032 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable187, %_C_vtable** %this_vtable1032
  %i1027 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1027
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh300:
  %mem_ptr1022 = call i32* @oat_malloc ( i32 12 )
  %obj1023 = bitcast i32* %mem_ptr1022 to %A* 
  %new_obj1024 = call %A* @_A_ctor ( %A* %obj1023 )
  %_this1 = bitcast %A* %new_obj1024 to %B 
  %_name1025 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str190, i8** %_name1025
  %this_vtable1026 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable186, %_B_vtable** %this_vtable1026
  %i1021 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1021
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh299:
  %mem_ptr1016 = call i32* @oat_malloc ( i32 8 )
  %obj1017 = bitcast i32* %mem_ptr1016 to %Object* 
  %new_obj1018 = call %Object* @_Object_ctor ( %Object* %obj1017 )
  %_this1 = bitcast %Object* %new_obj1018 to %A 
  %_name1019 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str189, i8** %_name1019
  %this_vtable1020 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable185, %_A_vtable** %this_vtable1020
  %i1015 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1015
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh298:
  %_name1013 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1014 = load i8** %_name1013
  ret i8* %lhs_or_call1014
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh297:
  %_name1011 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str188, i8** %_name1011
  %this_vtable1012 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable184, %_Object_vtable** %this_vtable1012
  ret %Object* %_this1
}


