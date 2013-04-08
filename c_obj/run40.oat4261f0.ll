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


define i32 @program (i32 %argc1222, { i32, [ 0 x i8* ] }* %argv1220){
__fresh299:
  %argc_slot1223 = alloca i32
  store i32 %argc1222, i32* %argc_slot1223
  %argv_slot1221 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1220, { i32, [ 0 x i8* ] }** %argv_slot1221
  %mem_ptr1224 = call i32* @oat_malloc ( i32 12 )
  %obj1225 = bitcast i32* %mem_ptr1224 to %C* 
  %new_obj1226 = call %C* @_C_ctor ( %C* %obj1225 )
  %vdecl_slot1227 = alloca %C*
  store %C* %new_obj1226, %C** %vdecl_slot1227
  %lhs_or_call1228 = load %C** %vdecl_slot1227
  %vtable_ptr1229 = getelementptr %C* %lhs_or_call1228, i32 0
  %vtable1230 = load %_C_vtable** %vtable_ptr1229
  %f1232 = getelementptr %_C_vtable* %vtable1230, i32 0, i32 2
  %f1231 = load void (%C*)** %f1232
  %cast_op1233 = bitcast %C %lhs_or_call1228 to %C* 
  call void %f1231( %C* %cast_op1233 )
  %lhs_or_call1234 = load %C** %vdecl_slot1227
  %b1235 = getelementptr %C* %lhs_or_call1234, i32 0, i32 2
  %lhs_or_call1236 = load %B** %b1235
  %vtable_ptr1237 = getelementptr %B* %lhs_or_call1236, i32 0
  %vtable1238 = load %_B_vtable** %vtable_ptr1237
  %f1240 = getelementptr %_B_vtable* %vtable1238, i32 0, i32 2
  %f1239 = load void (%B*)** %f1240
  %cast_op1241 = bitcast %B %lhs_or_call1236 to %B* 
  call void %f1239( %B* %cast_op1241 )
  %lhs_or_call1242 = load %C** %vdecl_slot1227
  %b1243 = getelementptr %C* %lhs_or_call1242, i32 0, i32 2
  %lhs_or_call1244 = load %B** %b1243
  %a1245 = getelementptr %B* %lhs_or_call1244, i32 0, i32 2
  %lhs_or_call1246 = load %A** %a1245
  %vtable_ptr1247 = getelementptr %A* %lhs_or_call1246, i32 0
  %vtable1248 = load %_A_vtable** %vtable_ptr1247
  %f1250 = getelementptr %_A_vtable* %vtable1248, i32 0, i32 2
  %f1249 = load void (%A*)** %f1250
  %cast_op1251 = bitcast %A %lhs_or_call1246 to %A* 
  call void %f1249( %A* %cast_op1251 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str265 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %mem_ptr1211 = call i32* @oat_malloc ( i32 8 )
  %obj1212 = bitcast i32* %mem_ptr1211 to %Object* 
  %new_obj1213 = call %Object* @_Object_ctor ( %Object* %obj1212 )
  %_this1 = bitcast %Object* %new_obj1213 to %C 
  %_name1214 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str264, i8** %_name1214
  %b1215 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1216 = call i32* @oat_malloc ( i32 12 )
  %obj1217 = bitcast i32* %mem_ptr1216 to %B* 
  %new_obj1218 = call %B* @_B_ctor ( %B* %obj1217 )
  store %B* %new_obj1218, %B** %b1215
  %this_vtable1219 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable258, %_C_vtable** %this_vtable1219
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str263 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %mem_ptr1202 = call i32* @oat_malloc ( i32 8 )
  %obj1203 = bitcast i32* %mem_ptr1202 to %Object* 
  %new_obj1204 = call %Object* @_Object_ctor ( %Object* %obj1203 )
  %_this1 = bitcast %Object* %new_obj1204 to %B 
  %_name1205 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str262, i8** %_name1205
  %a1206 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1207 = call i32* @oat_malloc ( i32 8 )
  %obj1208 = bitcast i32* %mem_ptr1207 to %A* 
  %new_obj1209 = call %A* @_A_ctor ( %A* %obj1208 )
  store %A* %new_obj1209, %A** %a1206
  %this_vtable1210 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable257, %_B_vtable** %this_vtable1210
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str261 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %mem_ptr1197 = call i32* @oat_malloc ( i32 8 )
  %obj1198 = bitcast i32* %mem_ptr1197 to %Object* 
  %new_obj1199 = call %Object* @_Object_ctor ( %Object* %obj1198 )
  %_this1 = bitcast %Object* %new_obj1199 to %A 
  %_name1200 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str260, i8** %_name1200
  %this_vtable1201 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable256, %_A_vtable** %this_vtable1201
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1195 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1196 = load i8** %_name1195
  ret i8* %lhs_or_call1196
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1193 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str259, i8** %_name1193
  %this_vtable1194 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable255, %_Object_vtable** %this_vtable1194
  ret %Object* %_this1
}


