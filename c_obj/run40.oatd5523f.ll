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
@_const_str263.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str263 = alias bitcast([ 2 x i8 ]* @_const_str263.str. to i8*)@_const_str262.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str262 = alias bitcast([ 2 x i8 ]* @_const_str262.str. to i8*)@_const_str261.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str261 = alias bitcast([ 2 x i8 ]* @_const_str261.str. to i8*)@_const_str260.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str260 = alias bitcast([ 2 x i8 ]* @_const_str260.str. to i8*)@_const_str259.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str259 = alias bitcast([ 2 x i8 ]* @_const_str259.str. to i8*)@_const_str258.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str258 = alias bitcast([ 2 x i8 ]* @_const_str258.str. to i8*)@_const_str257.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str257 = alias bitcast([ 7 x i8 ]* @_const_str257.str. to i8*)@_C_vtable256 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable253, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable255 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable253, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable254 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable253, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable253 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh300:
  ret void
}


define i32 @program (i32 %argc1221, { i32, [ 0 x i8* ] }* %argv1219){
__fresh299:
  %argc_slot1222 = alloca i32
  store i32 %argc1221, i32* %argc_slot1222
  %argv_slot1220 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1219, { i32, [ 0 x i8* ] }** %argv_slot1220
  %mem_ptr1223 = call i32* @oat_malloc ( i32 12 )
  %obj1224 = bitcast i32* %mem_ptr1223 to %C* 
  %new_obj1225 = call %C* @_C_ctor ( %C* %obj1224 )
  %vdecl_slot1226 = alloca %C*
  store %C* %new_obj1225, %C** %vdecl_slot1226
  %lhs_or_call1227 = load %C** %vdecl_slot1226
  %vtable_ptr1228 = getelementptr %C* %lhs_or_call1227, i32 0
  %vtable1229 = load %_C_vtable** %vtable_ptr1228
  %f1231 = getelementptr %_C_vtable* %vtable1229, i32 0, i32 2
  %f1230 = load void (%C*)** %f1231
  %cast_op1232 = bitcast %C %lhs_or_call1227 to %C* 
  call void %f1230( %C* %cast_op1232 )
  %lhs_or_call1233 = load %C** %vdecl_slot1226
  %b1234 = getelementptr %C* %lhs_or_call1233, i32 0, i32 0, i32 2
  %lhs_or_call1235 = load %B** %b1234
  %vtable_ptr1236 = getelementptr %B* %lhs_or_call1235, i32 0
  %vtable1237 = load %_B_vtable** %vtable_ptr1236
  %f1239 = getelementptr %_B_vtable* %vtable1237, i32 0, i32 2
  %f1238 = load void (%B*)** %f1239
  %cast_op1240 = bitcast %B %lhs_or_call1235 to %B* 
  call void %f1238( %B* %cast_op1240 )
  %lhs_or_call1241 = load %C** %vdecl_slot1226
  %b1242 = getelementptr %C* %lhs_or_call1241, i32 0, i32 0, i32 2
  %lhs_or_call1243 = load %B** %b1242
  %a1244 = getelementptr %B* %lhs_or_call1243, i32 0, i32 0, i32 2
  %lhs_or_call1245 = load %A** %a1244
  %vtable_ptr1246 = getelementptr %A* %lhs_or_call1245, i32 0
  %vtable1247 = load %_A_vtable** %vtable_ptr1246
  %f1249 = getelementptr %_A_vtable* %vtable1247, i32 0, i32 2
  %f1248 = load void (%A*)** %f1249
  %cast_op1250 = bitcast %A %lhs_or_call1245 to %A* 
  call void %f1248( %A* %cast_op1250 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str263 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %mem_ptr1210 = call i32* @oat_malloc ( i32 8 )
  %obj1211 = bitcast i32* %mem_ptr1210 to %Object* 
  %new_obj1212 = call %Object* @_Object_ctor ( %Object* %obj1211 )
  %_this1 = bitcast %Object* %new_obj1212 to %C 
  %_name1213 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str262, i8** %_name1213
  %b1214 = getelementptr %C* %_this1, i32 0, i32 0, i32 2
  %mem_ptr1215 = call i32* @oat_malloc ( i32 12 )
  %obj1216 = bitcast i32* %mem_ptr1215 to %B* 
  %new_obj1217 = call %B* @_B_ctor ( %B* %obj1216 )
  store %B* %new_obj1217, %B** %b1214
  %this_vtable1218 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable256, %_C_vtable** %this_vtable1218
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str261 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %mem_ptr1201 = call i32* @oat_malloc ( i32 8 )
  %obj1202 = bitcast i32* %mem_ptr1201 to %Object* 
  %new_obj1203 = call %Object* @_Object_ctor ( %Object* %obj1202 )
  %_this1 = bitcast %Object* %new_obj1203 to %B 
  %_name1204 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str260, i8** %_name1204
  %a1205 = getelementptr %B* %_this1, i32 0, i32 0, i32 2
  %mem_ptr1206 = call i32* @oat_malloc ( i32 8 )
  %obj1207 = bitcast i32* %mem_ptr1206 to %A* 
  %new_obj1208 = call %A* @_A_ctor ( %A* %obj1207 )
  store %A* %new_obj1208, %A** %a1205
  %this_vtable1209 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable255, %_B_vtable** %this_vtable1209
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str259 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %mem_ptr1196 = call i32* @oat_malloc ( i32 8 )
  %obj1197 = bitcast i32* %mem_ptr1196 to %Object* 
  %new_obj1198 = call %Object* @_Object_ctor ( %Object* %obj1197 )
  %_this1 = bitcast %Object* %new_obj1198 to %A 
  %_name1199 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str258, i8** %_name1199
  %this_vtable1200 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable254, %_A_vtable** %this_vtable1200
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1194 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call1195 = load i8** %_name1194
  ret i8* %lhs_or_call1195
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1192 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str257, i8** %_name1192
  %this_vtable1193 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable253, %_Object_vtable** %this_vtable1193
  ret %Object* %_this1
}


