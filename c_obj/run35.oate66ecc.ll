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
@_const_str223.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str223 = alias bitcast([ 3 x i8 ]* @_const_str223.str. to i8*)@_const_str222.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str222 = alias bitcast([ 4 x i8 ]* @_const_str222.str. to i8*)@_const_str221.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str221 = alias bitcast([ 2 x i8 ]* @_const_str221.str. to i8*)@_const_str220.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str220 = alias bitcast([ 2 x i8 ]* @_const_str220.str. to i8*)@_const_str219.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str219 = alias bitcast([ 2 x i8 ]* @_const_str219.str. to i8*)@_const_str218.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str218 = alias bitcast([ 7 x i8 ]* @_const_str218.str. to i8*)@_C_vtable217 = private constant %_C_vtable {%_B_vtable* @_B_vtable216, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable216 = private constant %_B_vtable {%_A_vtable* @_A_vtable215, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable215 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable214, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable214 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh368:
  ret void
}


define i32 @program (i32 %argc1178, { i32, [ 0 x i8* ] }* %argv1176){
__fresh362:
  %argc_slot1179 = alloca i32
  store i32 %argc1178, i32* %argc_slot1179
  %argv_slot1177 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1176, { i32, [ 0 x i8* ] }** %argv_slot1177
  %mem_ptr1180 = call i32* @oat_malloc ( i32 12 )
  %obj1181 = bitcast i32* %mem_ptr1180 to %A* 
  %new_obj1182 = call %A* @_A_ctor ( %A* %obj1181 )
  %vdecl_slot1183 = alloca %A*
  store %A* %new_obj1182, %A** %vdecl_slot1183
  %unop1184 = sub i32 0, 1
  %vdecl_slot1185 = alloca i32
  store i32 %unop1184, i32* %vdecl_slot1185
  br label %__init356

__fresh363:
  br label %__init356

__init356:
  %lhs_or_call1187 = load %A** %vdecl_slot1183
  %rvtable1194 = getelementptr %A* %lhs_or_call1187, i32 0
  br label %__bound_check357

__fresh364:
  br label %__bound_check357

__bound_check357:
  %cast_op1198 = bitcast %_A_vtable* @_A_vtable215 to i8** 
  %lvtable1195 = load i8** %cast_op1198
  %cast_vtable1199 = bitcast i8** %rvtable1194 to i8** 
  %rvtable1197 = load i8** %cast_vtable1199
  %compare1196 = icmp eq i8* %rvtable1197, null
  br i1 %compare1196, label %__end_no360, label %__check_curr359

__fresh365:
  br label %__check_curr359

__check_curr359:
  %compare1196 = icmp eq i8** %lvtable1195, %rvtable1197
  br i1 %compare1196, label %__end_yes361, label %__move_up358

__fresh366:
  br label %__move_up358

__move_up358:
  %rvtable1194 = getelementptr i8* %rvtable1197, i32 0
  br label %__bound_check357

__fresh367:
  br label %__end_yes361

__end_yes361:
  %lhs_or_call1187 = load %A** %vdecl_slot1183
  %cast_ptr1186 = bitcast %A* %lhs_or_call1187 to %A* 
  call void @print_string( i8* @_const_str222 )
  %lhs_or_call1188 = load %A** %cast_ptr1186
  %i1189 = getelementptr %A* %lhs_or_call1188, i32 0, i32 2
  %lhs_or_call1190 = load i32* %i1189
  store i32 %lhs_or_call1190, i32* %vdecl_slot1185
  br label %__end_no360

__end_no360:
  call void @print_string( i8* @_const_str223 )
  %lhs_or_call1191 = load %A** %vdecl_slot1183
  %i1192 = getelementptr %A* %lhs_or_call1191, i32 0, i32 2
  %lhs_or_call1193 = load i32* %i1192
  store i32 %lhs_or_call1193, i32* %vdecl_slot1185
  %lhs_or_call1200 = load i32* %vdecl_slot1185
  ret i32 %lhs_or_call1200
}


define %C* @_C_ctor (%C* %_this1){
__fresh355:
  %mem_ptr1171 = call i32* @oat_malloc ( i32 12 )
  %obj1172 = bitcast i32* %mem_ptr1171 to %B* 
  %new_obj1173 = call %B* @_B_ctor ( %B* %obj1172 )
  %_this1 = bitcast %B* %new_obj1173 to %C 
  %_name1174 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str221, i8** %_name1174
  %this_vtable1175 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable217, %_C_vtable** %this_vtable1175
  %i1170 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1170
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh354:
  %mem_ptr1165 = call i32* @oat_malloc ( i32 12 )
  %obj1166 = bitcast i32* %mem_ptr1165 to %A* 
  %new_obj1167 = call %A* @_A_ctor ( %A* %obj1166 )
  %_this1 = bitcast %A* %new_obj1167 to %B 
  %_name1168 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str220, i8** %_name1168
  %this_vtable1169 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable216, %_B_vtable** %this_vtable1169
  %i1164 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1164
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh353:
  %mem_ptr1159 = call i32* @oat_malloc ( i32 8 )
  %obj1160 = bitcast i32* %mem_ptr1159 to %Object* 
  %new_obj1161 = call %Object* @_Object_ctor ( %Object* %obj1160 )
  %_this1 = bitcast %Object* %new_obj1161 to %A 
  %_name1162 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str219, i8** %_name1162
  %this_vtable1163 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable215, %_A_vtable** %this_vtable1163
  %i1158 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1158
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh352:
  %_name1156 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1157 = load i8** %_name1156
  ret i8* %lhs_or_call1157
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh351:
  %_name1154 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str218, i8** %_name1154
  %this_vtable1155 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable214, %_Object_vtable** %this_vtable1155
  ret %Object* %_this1
}


