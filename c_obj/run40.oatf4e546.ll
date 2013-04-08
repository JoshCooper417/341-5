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


define i32 @program (i32 %argc1203, { i32, [ 0 x i8* ] }* %argv1201){
__fresh299:
  %argc_slot1204 = alloca i32
  store i32 %argc1203, i32* %argc_slot1204
  %argv_slot1202 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1201, { i32, [ 0 x i8* ] }** %argv_slot1202
  %mem_ptr1205 = call i32* @oat_malloc ( i32 12 )
  %obj1206 = bitcast i32* %mem_ptr1205 to %C* 
  %new_obj1207 = call %C* @_C_ctor ( %C* %obj1206 )
  %vdecl_slot1208 = alloca %C*
  store %C* %new_obj1207, %C** %vdecl_slot1208
  %lhs_or_call1209 = load %C** %vdecl_slot1208
  %vtable_ptr1210 = getelementptr %C* %lhs_or_call1209, i32 0
  %vtable1211 = load %_C_vtable** %vtable_ptr1210
  %f1213 = getelementptr %_C_vtable* %vtable1211, i32 0, i32 2
  %f1212 = load void (%C*)** %f1213
  %cast_op1214 = bitcast %C %lhs_or_call1209 to %C* 
  call void %f1212( %C* %cast_op1214 )
  %lhs_or_call1215 = load %C** %vdecl_slot1208
  %b1216 = getelementptr %C* %lhs_or_call1215, i32 0, i32 2
  %lhs_or_call1217 = load %B** %b1216
  %vtable_ptr1218 = getelementptr %B* %lhs_or_call1217, i32 0
  %vtable1219 = load %_B_vtable** %vtable_ptr1218
  %f1221 = getelementptr %_B_vtable* %vtable1219, i32 0, i32 2
  %f1220 = load void (%B*)** %f1221
  %cast_op1222 = bitcast %B %lhs_or_call1217 to %B* 
  call void %f1220( %B* %cast_op1222 )
  %lhs_or_call1223 = load %C** %vdecl_slot1208
  %b1224 = getelementptr %C* %lhs_or_call1223, i32 0, i32 2
  %lhs_or_call1225 = load %B** %b1224
  %a1226 = getelementptr %B* %lhs_or_call1225, i32 0, i32 2
  %lhs_or_call1227 = load %A** %a1226
  %vtable_ptr1228 = getelementptr %A* %lhs_or_call1227, i32 0
  %vtable1229 = load %_A_vtable** %vtable_ptr1228
  %f1231 = getelementptr %_A_vtable* %vtable1229, i32 0, i32 2
  %f1230 = load void (%A*)** %f1231
  %cast_op1232 = bitcast %A %lhs_or_call1227 to %A* 
  call void %f1230( %A* %cast_op1232 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str254 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %mem_ptr1192 = call i32* @oat_malloc ( i32 8 )
  %obj1193 = bitcast i32* %mem_ptr1192 to %Object* 
  %new_obj1194 = call %Object* @_Object_ctor ( %Object* %obj1193 )
  %_this1 = bitcast %Object* %new_obj1194 to %C 
  %_name1195 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str253, i8** %_name1195
  %b1196 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1197 = call i32* @oat_malloc ( i32 12 )
  %obj1198 = bitcast i32* %mem_ptr1197 to %B* 
  %new_obj1199 = call %B* @_B_ctor ( %B* %obj1198 )
  store %B* %new_obj1199, %B** %b1196
  %this_vtable1200 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable247, %_C_vtable** %this_vtable1200
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str252 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %mem_ptr1183 = call i32* @oat_malloc ( i32 8 )
  %obj1184 = bitcast i32* %mem_ptr1183 to %Object* 
  %new_obj1185 = call %Object* @_Object_ctor ( %Object* %obj1184 )
  %_this1 = bitcast %Object* %new_obj1185 to %B 
  %_name1186 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str251, i8** %_name1186
  %a1187 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1188 = call i32* @oat_malloc ( i32 8 )
  %obj1189 = bitcast i32* %mem_ptr1188 to %A* 
  %new_obj1190 = call %A* @_A_ctor ( %A* %obj1189 )
  store %A* %new_obj1190, %A** %a1187
  %this_vtable1191 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable246, %_B_vtable** %this_vtable1191
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str250 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %mem_ptr1178 = call i32* @oat_malloc ( i32 8 )
  %obj1179 = bitcast i32* %mem_ptr1178 to %Object* 
  %new_obj1180 = call %Object* @_Object_ctor ( %Object* %obj1179 )
  %_this1 = bitcast %Object* %new_obj1180 to %A 
  %_name1181 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str249, i8** %_name1181
  %this_vtable1182 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable245, %_A_vtable** %this_vtable1182
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1176 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1177 = load i8** %_name1176
  ret i8* %lhs_or_call1177
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1174 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str248, i8** %_name1174
  %this_vtable1175 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable244, %_Object_vtable** %this_vtable1175
  ret %Object* %_this1
}


