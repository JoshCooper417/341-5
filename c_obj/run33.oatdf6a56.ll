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
@_const_str203.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str203 = alias bitcast([ 3 x i8 ]* @_const_str203.str. to i8*)@_const_str202.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str202 = alias bitcast([ 4 x i8 ]* @_const_str202.str. to i8*)@_const_str201.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str201 = alias bitcast([ 2 x i8 ]* @_const_str201.str. to i8*)@_const_str200.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str200 = alias bitcast([ 2 x i8 ]* @_const_str200.str. to i8*)@_const_str199.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str199 = alias bitcast([ 2 x i8 ]* @_const_str199.str. to i8*)@_const_str198.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str198 = alias bitcast([ 7 x i8 ]* @_const_str198.str. to i8*)@_C_vtable197 = private constant %_C_vtable {%_B_vtable* @_B_vtable196, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable196 = private constant %_B_vtable {%_A_vtable* @_A_vtable195, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable195 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable194, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable194 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh332:
  ret void
}


define i32 @program (i32 %argc1082, { i32, [ 0 x i8* ] }* %argv1080){
__fresh326:
  %argc_slot1083 = alloca i32
  store i32 %argc1082, i32* %argc_slot1083
  %argv_slot1081 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1080, { i32, [ 0 x i8* ] }** %argv_slot1081
  %mem_ptr1084 = call i32* @oat_malloc ( i32 12 )
  %obj1085 = bitcast i32* %mem_ptr1084 to %B* 
  %new_obj1086 = call %B* @_B_ctor ( %B* %obj1085 )
  %cast_op1087 = bitcast %B* %new_obj1086 to %A* 
  %vdecl_slot1088 = alloca %A*
  store %A* %cast_op1087, %A** %vdecl_slot1088
  %unop1089 = sub i32 0, 1
  %vdecl_slot1090 = alloca i32
  store i32 %unop1089, i32* %vdecl_slot1090
  br label %__init320

__fresh327:
  br label %__init320

__init320:
  %lhs_or_call1092 = load %A** %vdecl_slot1088
  %rvtable1099 = getelementptr %A* %lhs_or_call1092, i32 0
  br label %__bound_check321

__fresh328:
  br label %__bound_check321

__bound_check321:
  %cast_op1103 = bitcast %_B_vtable* @_B_vtable196 to i8** 
  %lvtable1100 = load i8** %cast_op1103
  %cast_vtable1104 = bitcast i8** %rvtable1099 to i8** 
  %rvtable1102 = load i8** %cast_vtable1104
  %compare1101 = icmp eq i8* %rvtable1102, null
  br i1 %compare1101, label %__end_no324, label %__check_curr323

__fresh329:
  br label %__check_curr323

__check_curr323:
  %compare1101 = icmp eq i8** %lvtable1100, %rvtable1102
  br i1 %compare1101, label %__end_yes325, label %__move_up322

__fresh330:
  br label %__move_up322

__move_up322:
  %rvtable1099 = getelementptr i8* %rvtable1102, i32 0
  br label %__bound_check321

__fresh331:
  br label %__end_yes325

__end_yes325:
  %lhs_or_call1092 = load %A** %vdecl_slot1088
  %cast_ptr1091 = bitcast %A* %lhs_or_call1092 to %B* 
  call void @print_string( i8* @_const_str202 )
  %lhs_or_call1093 = load %B** %cast_ptr1091
  %i1094 = getelementptr %B* %lhs_or_call1093, i32 0, i32 2
  %lhs_or_call1095 = load i32* %i1094
  store i32 %lhs_or_call1095, i32* %vdecl_slot1090
  br label %__end_no324

__end_no324:
  call void @print_string( i8* @_const_str203 )
  %lhs_or_call1096 = load %A** %vdecl_slot1088
  %i1097 = getelementptr %A* %lhs_or_call1096, i32 0, i32 2
  %lhs_or_call1098 = load i32* %i1097
  store i32 %lhs_or_call1098, i32* %vdecl_slot1090
  %lhs_or_call1105 = load i32* %vdecl_slot1090
  ret i32 %lhs_or_call1105
}


define %C* @_C_ctor (%C* %_this1){
__fresh319:
  %mem_ptr1075 = call i32* @oat_malloc ( i32 12 )
  %obj1076 = bitcast i32* %mem_ptr1075 to %B* 
  %new_obj1077 = call %B* @_B_ctor ( %B* %obj1076 )
  %_this1 = bitcast %B* %new_obj1077 to %C 
  %_name1078 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str201, i8** %_name1078
  %this_vtable1079 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable197, %_C_vtable** %this_vtable1079
  %i1074 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1074
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh318:
  %mem_ptr1069 = call i32* @oat_malloc ( i32 12 )
  %obj1070 = bitcast i32* %mem_ptr1069 to %A* 
  %new_obj1071 = call %A* @_A_ctor ( %A* %obj1070 )
  %_this1 = bitcast %A* %new_obj1071 to %B 
  %_name1072 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str200, i8** %_name1072
  %this_vtable1073 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable196, %_B_vtable** %this_vtable1073
  %i1068 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1068
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh317:
  %mem_ptr1063 = call i32* @oat_malloc ( i32 8 )
  %obj1064 = bitcast i32* %mem_ptr1063 to %Object* 
  %new_obj1065 = call %Object* @_Object_ctor ( %Object* %obj1064 )
  %_this1 = bitcast %Object* %new_obj1065 to %A 
  %_name1066 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str199, i8** %_name1066
  %this_vtable1067 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable195, %_A_vtable** %this_vtable1067
  %i1062 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1062
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh316:
  %_name1060 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1061 = load i8** %_name1060
  ret i8* %lhs_or_call1061
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh315:
  %_name1058 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str198, i8** %_name1058
  %this_vtable1059 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable194, %_Object_vtable** %this_vtable1059
  ret %Object* %_this1
}


