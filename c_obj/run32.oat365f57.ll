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
@_const_str213.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str213 = alias bitcast([ 3 x i8 ]* @_const_str213.str. to i8*)@_const_str212.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str212 = alias bitcast([ 4 x i8 ]* @_const_str212.str. to i8*)@_const_str211.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str211 = alias bitcast([ 2 x i8 ]* @_const_str211.str. to i8*)@_const_str210.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str210 = alias bitcast([ 2 x i8 ]* @_const_str210.str. to i8*)@_const_str209.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str209 = alias bitcast([ 2 x i8 ]* @_const_str209.str. to i8*)@_const_str208.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str208 = alias bitcast([ 7 x i8 ]* @_const_str208.str. to i8*)@_C_vtable207 = private constant %_C_vtable {%_B_vtable* @_B_vtable206, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable206 = private constant %_B_vtable {%_A_vtable* @_A_vtable205, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable205 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable204, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable204 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh350:
  ret void
}


define i32 @program (i32 %argc1130, { i32, [ 0 x i8* ] }* %argv1128){
__fresh344:
  %argc_slot1131 = alloca i32
  store i32 %argc1130, i32* %argc_slot1131
  %argv_slot1129 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1128, { i32, [ 0 x i8* ] }** %argv_slot1129
  %mem_ptr1132 = call i32* @oat_malloc ( i32 12 )
  %obj1133 = bitcast i32* %mem_ptr1132 to %C* 
  %new_obj1134 = call %C* @_C_ctor ( %C* %obj1133 )
  %cast_op1135 = bitcast %C* %new_obj1134 to %A* 
  %vdecl_slot1136 = alloca %A*
  store %A* %cast_op1135, %A** %vdecl_slot1136
  %unop1137 = sub i32 0, 1
  %vdecl_slot1138 = alloca i32
  store i32 %unop1137, i32* %vdecl_slot1138
  br label %__init338

__fresh345:
  br label %__init338

__init338:
  %lhs_or_call1140 = load %A** %vdecl_slot1136
  %rvtable1147 = getelementptr %A* %lhs_or_call1140, i32 0
  br label %__bound_check339

__fresh346:
  br label %__bound_check339

__bound_check339:
  %cast_op1151 = bitcast %_B_vtable* @_B_vtable206 to i8** 
  %lvtable1148 = load i8** %cast_op1151
  %cast_vtable1152 = bitcast i8** %rvtable1147 to i8** 
  %rvtable1150 = load i8** %cast_vtable1152
  %compare1149 = icmp eq i8* %rvtable1150, null
  br i1 %compare1149, label %__end_no342, label %__check_curr341

__fresh347:
  br label %__check_curr341

__check_curr341:
  %compare1149 = icmp eq i8** %lvtable1148, %rvtable1150
  br i1 %compare1149, label %__end_yes343, label %__move_up340

__fresh348:
  br label %__move_up340

__move_up340:
  %rvtable1147 = getelementptr i8* %rvtable1150, i32 0
  br label %__bound_check339

__fresh349:
  br label %__end_yes343

__end_yes343:
  %lhs_or_call1140 = load %A** %vdecl_slot1136
  %cast_ptr1139 = bitcast %A* %lhs_or_call1140 to %B* 
  call void @print_string( i8* @_const_str212 )
  %lhs_or_call1141 = load %B** %cast_ptr1139
  %i1142 = getelementptr %B* %lhs_or_call1141, i32 0, i32 2
  %lhs_or_call1143 = load i32* %i1142
  store i32 %lhs_or_call1143, i32* %vdecl_slot1138
  br label %__end_no342

__end_no342:
  call void @print_string( i8* @_const_str213 )
  %lhs_or_call1144 = load %A** %vdecl_slot1136
  %i1145 = getelementptr %A* %lhs_or_call1144, i32 0, i32 2
  %lhs_or_call1146 = load i32* %i1145
  store i32 %lhs_or_call1146, i32* %vdecl_slot1138
  %lhs_or_call1153 = load i32* %vdecl_slot1138
  ret i32 %lhs_or_call1153
}


define %C* @_C_ctor (%C* %_this1){
__fresh337:
  %mem_ptr1123 = call i32* @oat_malloc ( i32 12 )
  %obj1124 = bitcast i32* %mem_ptr1123 to %B* 
  %new_obj1125 = call %B* @_B_ctor ( %B* %obj1124 )
  %_this1 = bitcast %B* %new_obj1125 to %C 
  %_name1126 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str211, i8** %_name1126
  %this_vtable1127 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable207, %_C_vtable** %this_vtable1127
  %i1122 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1122
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh336:
  %mem_ptr1117 = call i32* @oat_malloc ( i32 12 )
  %obj1118 = bitcast i32* %mem_ptr1117 to %A* 
  %new_obj1119 = call %A* @_A_ctor ( %A* %obj1118 )
  %_this1 = bitcast %A* %new_obj1119 to %B 
  %_name1120 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str210, i8** %_name1120
  %this_vtable1121 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable206, %_B_vtable** %this_vtable1121
  %i1116 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1116
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh335:
  %mem_ptr1111 = call i32* @oat_malloc ( i32 8 )
  %obj1112 = bitcast i32* %mem_ptr1111 to %Object* 
  %new_obj1113 = call %Object* @_Object_ctor ( %Object* %obj1112 )
  %_this1 = bitcast %Object* %new_obj1113 to %A 
  %_name1114 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str209, i8** %_name1114
  %this_vtable1115 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable205, %_A_vtable** %this_vtable1115
  %i1110 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1110
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh334:
  %_name1108 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1109 = load i8** %_name1108
  ret i8* %lhs_or_call1109
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh333:
  %_name1106 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str208, i8** %_name1106
  %this_vtable1107 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable204, %_Object_vtable** %this_vtable1107
  ret %Object* %_this1
}


