%C = type { %_C_vtable*, i8*, %B* }
%_C_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8*, %A* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str265.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str265 = alias bitcast([ 2 x i8 ]* @_const_str265.str. to i8*)@_const_str264.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str264 = alias bitcast([ 2 x i8 ]* @_const_str264.str. to i8*)@_const_str263.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str263 = alias bitcast([ 2 x i8 ]* @_const_str263.str. to i8*)@_const_str262.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str262 = alias bitcast([ 2 x i8 ]* @_const_str262.str. to i8*)@_const_str261.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str261 = alias bitcast([ 2 x i8 ]* @_const_str261.str. to i8*)@_const_str260.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str260 = alias bitcast([ 2 x i8 ]* @_const_str260.str. to i8*)@_const_str259.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str259 = alias bitcast([ 7 x i8 ]* @_const_str259.str. to i8*)@_C_vtable258 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable255, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable257 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable255, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable256 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable255, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable255 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh300:
  ret void
}


define i32 @program (i32 %argc1190, { i32, [ 0 x i8* ] }* %argv1188){
__fresh299:
  %argc_slot1191 = alloca i32
  store i32 %argc1190, i32* %argc_slot1191
  %argv_slot1189 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1188, { i32, [ 0 x i8* ] }** %argv_slot1189
  %mem_ptr1192 = call i32* @oat_malloc ( i32 12 )
  %obj1193 = bitcast i32* %mem_ptr1192 to %C* 
  %new_obj1194 = call %C* @_C_ctor ( %C* %obj1193 )
  %vdecl_slot1195 = alloca %C*
  store %C* %new_obj1194, %C** %vdecl_slot1195
  %lhs_or_call1196 = load %C** %vdecl_slot1195
  %f1198 = getelementptr %_C_vtable* @_C_vtable258, i32 0, i32 2
  %f1197 = load void (%C*)** %f1198
  %cast_op1199 = bitcast %C %lhs_or_call1196 to %C* 
  call void %f1197( %C* %cast_op1199 )
  %lhs_or_call1200 = load %C** %vdecl_slot1195
  %b1201 = getelementptr %C* %lhs_or_call1200, i32 0, i32 2
  %lhs_or_call1202 = load %B** %b1201
  %f1204 = getelementptr %_B_vtable* @_B_vtable257, i32 0, i32 2
  %f1203 = load void (%B*)** %f1204
  %cast_op1205 = bitcast %B %lhs_or_call1202 to %B* 
  call void %f1203( %B* %cast_op1205 )
  %lhs_or_call1206 = load %C** %vdecl_slot1195
  %b1207 = getelementptr %C* %lhs_or_call1206, i32 0, i32 2
  %lhs_or_call1208 = load %B** %b1207
  %a1209 = getelementptr %B* %lhs_or_call1208, i32 0, i32 2
  %lhs_or_call1210 = load %A** %a1209
  %f1212 = getelementptr %_A_vtable* @_A_vtable256, i32 0, i32 2
  %f1211 = load void (%A*)** %f1212
  %cast_op1213 = bitcast %A %lhs_or_call1210 to %A* 
  call void %f1211( %A* %cast_op1213 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str265 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %mem_ptr1179 = call i32* @oat_malloc ( i32 8 )
  %obj1180 = bitcast i32* %mem_ptr1179 to %Object* 
  %new_obj1181 = call %Object* @_Object_ctor ( %Object* %obj1180 )
  %_this1 = bitcast %Object* %new_obj1181 to %C 
  %_name1182 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str264, i8** %_name1182
  %b1183 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1184 = call i32* @oat_malloc ( i32 12 )
  %obj1185 = bitcast i32* %mem_ptr1184 to %B* 
  %new_obj1186 = call %B* @_B_ctor ( %B* %obj1185 )
  store %B* %new_obj1186, %B** %b1183
  %this_vtable1187 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable258, %_C_vtable** %this_vtable1187
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str263 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %mem_ptr1170 = call i32* @oat_malloc ( i32 8 )
  %obj1171 = bitcast i32* %mem_ptr1170 to %Object* 
  %new_obj1172 = call %Object* @_Object_ctor ( %Object* %obj1171 )
  %_this1 = bitcast %Object* %new_obj1172 to %B 
  %_name1173 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str262, i8** %_name1173
  %a1174 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1175 = call i32* @oat_malloc ( i32 8 )
  %obj1176 = bitcast i32* %mem_ptr1175 to %A* 
  %new_obj1177 = call %A* @_A_ctor ( %A* %obj1176 )
  store %A* %new_obj1177, %A** %a1174
  %this_vtable1178 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable257, %_B_vtable** %this_vtable1178
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str261 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %mem_ptr1165 = call i32* @oat_malloc ( i32 8 )
  %obj1166 = bitcast i32* %mem_ptr1165 to %Object* 
  %new_obj1167 = call %Object* @_Object_ctor ( %Object* %obj1166 )
  %_this1 = bitcast %Object* %new_obj1167 to %A 
  %_name1168 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str260, i8** %_name1168
  %this_vtable1169 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable256, %_A_vtable** %this_vtable1169
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1163 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1164 = load i8** %_name1163
  ret i8* %lhs_or_call1164
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1161 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str259, i8** %_name1161
  %this_vtable1162 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable255, %_Object_vtable** %this_vtable1162
  ret %Object* %_this1
}


