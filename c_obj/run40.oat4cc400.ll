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
@_const_str254.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str254 = alias bitcast([ 2 x i8 ]* @_const_str254.str. to i8*)@_const_str253.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str253 = alias bitcast([ 2 x i8 ]* @_const_str253.str. to i8*)@_const_str252.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str252 = alias bitcast([ 2 x i8 ]* @_const_str252.str. to i8*)@_const_str251.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str251 = alias bitcast([ 2 x i8 ]* @_const_str251.str. to i8*)@_const_str250.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str250 = alias bitcast([ 2 x i8 ]* @_const_str250.str. to i8*)@_const_str249.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str249 = alias bitcast([ 2 x i8 ]* @_const_str249.str. to i8*)@_const_str248.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str248 = alias bitcast([ 7 x i8 ]* @_const_str248.str. to i8*)@_C_vtable247 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable244, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable246 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable244, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable245 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable244, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable244 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh300:
  ret void
}


define i32 @program (i32 %argc1210, { i32, [ 0 x i8* ] }* %argv1208){
__fresh299:
  %argc_slot1211 = alloca i32
  store i32 %argc1210, i32* %argc_slot1211
  %argv_slot1209 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1208, { i32, [ 0 x i8* ] }** %argv_slot1209
  %mem_ptr1212 = call i32* @oat_malloc ( i32 12 )
  %obj1213 = bitcast i32* %mem_ptr1212 to %C* 
  %new_obj1214 = call %C* @_C_ctor ( %C* %obj1213 )
  %vdecl_slot1215 = alloca %C*
  store %C* %new_obj1214, %C** %vdecl_slot1215
  %lhs_or_call1216 = load %C** %vdecl_slot1215
  %vtable_ptr1217 = getelementptr %C* %lhs_or_call1216, i32 0
  %vtable1218 = load %_C_vtable** %vtable_ptr1217
  %f1220 = getelementptr %_C_vtable* %vtable1218, i32 0, i32 2
  %f1219 = load void (%C*)** %f1220
  %cast_op1221 = bitcast %C %lhs_or_call1216 to %C* 
  call void %f1219( %C* %cast_op1221 )
  %lhs_or_call1222 = load %C** %vdecl_slot1215
  %b1223 = getelementptr %C* %lhs_or_call1222, i32 0, i32 2
  %lhs_or_call1224 = load %B** %b1223
  %vtable_ptr1225 = getelementptr %B* %lhs_or_call1224, i32 0
  %vtable1226 = load %_B_vtable** %vtable_ptr1225
  %f1228 = getelementptr %_B_vtable* %vtable1226, i32 0, i32 2
  %f1227 = load void (%B*)** %f1228
  %cast_op1229 = bitcast %B %lhs_or_call1224 to %B* 
  call void %f1227( %B* %cast_op1229 )
  %lhs_or_call1230 = load %C** %vdecl_slot1215
  %b1231 = getelementptr %C* %lhs_or_call1230, i32 0, i32 2
  %lhs_or_call1232 = load %B** %b1231
  %a1233 = getelementptr %B* %lhs_or_call1232, i32 0, i32 2
  %lhs_or_call1234 = load %A** %a1233
  %vtable_ptr1235 = getelementptr %A* %lhs_or_call1234, i32 0
  %vtable1236 = load %_A_vtable** %vtable_ptr1235
  %f1238 = getelementptr %_A_vtable* %vtable1236, i32 0, i32 2
  %f1237 = load void (%A*)** %f1238
  %cast_op1239 = bitcast %A %lhs_or_call1234 to %A* 
  call void %f1237( %A* %cast_op1239 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str254 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %mem_ptr1199 = call i32* @oat_malloc ( i32 8 )
  %obj1200 = bitcast i32* %mem_ptr1199 to %Object* 
  %new_obj1201 = call %Object* @_Object_ctor ( %Object* %obj1200 )
  %_this1 = bitcast %Object* %new_obj1201 to %C 
  %_name1202 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str253, i8** %_name1202
  %b1203 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1204 = call i32* @oat_malloc ( i32 12 )
  %obj1205 = bitcast i32* %mem_ptr1204 to %B* 
  %new_obj1206 = call %B* @_B_ctor ( %B* %obj1205 )
  store %B* %new_obj1206, %B** %b1203
  %this_vtable1207 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable247, %_C_vtable** %this_vtable1207
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str252 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %mem_ptr1190 = call i32* @oat_malloc ( i32 8 )
  %obj1191 = bitcast i32* %mem_ptr1190 to %Object* 
  %new_obj1192 = call %Object* @_Object_ctor ( %Object* %obj1191 )
  %_this1 = bitcast %Object* %new_obj1192 to %B 
  %_name1193 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str251, i8** %_name1193
  %a1194 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1195 = call i32* @oat_malloc ( i32 8 )
  %obj1196 = bitcast i32* %mem_ptr1195 to %A* 
  %new_obj1197 = call %A* @_A_ctor ( %A* %obj1196 )
  store %A* %new_obj1197, %A** %a1194
  %this_vtable1198 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable246, %_B_vtable** %this_vtable1198
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str250 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %mem_ptr1185 = call i32* @oat_malloc ( i32 8 )
  %obj1186 = bitcast i32* %mem_ptr1185 to %Object* 
  %new_obj1187 = call %Object* @_Object_ctor ( %Object* %obj1186 )
  %_this1 = bitcast %Object* %new_obj1187 to %A 
  %_name1188 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str249, i8** %_name1188
  %this_vtable1189 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable245, %_A_vtable** %this_vtable1189
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1183 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1184 = load i8** %_name1183
  ret i8* %lhs_or_call1184
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1181 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str248, i8** %_name1181
  %this_vtable1182 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable244, %_Object_vtable** %this_vtable1182
  ret %Object* %_this1
}


