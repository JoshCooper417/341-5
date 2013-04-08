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


define i32 @program (i32 %argc1232, { i32, [ 0 x i8* ] }* %argv1230){
__fresh299:
  %argc_slot1233 = alloca i32
  store i32 %argc1232, i32* %argc_slot1233
  %argv_slot1231 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1230, { i32, [ 0 x i8* ] }** %argv_slot1231
  %mem_ptr1234 = call i32* @oat_malloc ( i32 12 )
  %obj1235 = bitcast i32* %mem_ptr1234 to %C* 
  %new_obj1236 = call %C* @_C_ctor ( %C* %obj1235 )
  %vdecl_slot1237 = alloca %C*
  store %C* %new_obj1236, %C** %vdecl_slot1237
  %lhs_or_call1238 = load %C** %vdecl_slot1237
  %vtable_ptr1239 = getelementptr %C* %lhs_or_call1238, i32 0
  %vtable1240 = load %_C_vtable** %vtable_ptr1239
  %f1242 = getelementptr %_C_vtable* %vtable1240, i32 0, i32 2
  %f1241 = load void (%C*)** %f1242
  %cast_op1243 = bitcast %C %lhs_or_call1238 to %C* 
  call void %f1241( %C* %cast_op1243 )
  %lhs_or_call1244 = load %C** %vdecl_slot1237
  %b1245 = getelementptr %C* %lhs_or_call1244, i32 0, i32 2
  %lhs_or_call1246 = load %B** %b1245
  %vtable_ptr1247 = getelementptr %B* %lhs_or_call1246, i32 0
  %vtable1248 = load %_B_vtable** %vtable_ptr1247
  %f1250 = getelementptr %_B_vtable* %vtable1248, i32 0, i32 2
  %f1249 = load void (%B*)** %f1250
  %cast_op1251 = bitcast %B %lhs_or_call1246 to %B* 
  call void %f1249( %B* %cast_op1251 )
  %lhs_or_call1252 = load %C** %vdecl_slot1237
  %b1253 = getelementptr %C* %lhs_or_call1252, i32 0, i32 2
  %lhs_or_call1254 = load %B** %b1253
  %a1255 = getelementptr %B* %lhs_or_call1254, i32 0, i32 2
  %lhs_or_call1256 = load %A** %a1255
  %vtable_ptr1257 = getelementptr %A* %lhs_or_call1256, i32 0
  %vtable1258 = load %_A_vtable** %vtable_ptr1257
  %f1260 = getelementptr %_A_vtable* %vtable1258, i32 0, i32 2
  %f1259 = load void (%A*)** %f1260
  %cast_op1261 = bitcast %A %lhs_or_call1256 to %A* 
  call void %f1259( %A* %cast_op1261 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh298:
  call void @print_string( i8* @_const_str263 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %mem_ptr1221 = call i32* @oat_malloc ( i32 8 )
  %obj1222 = bitcast i32* %mem_ptr1221 to %Object* 
  %new_obj1223 = call %Object* @_Object_ctor ( %Object* %obj1222 )
  %_this1 = bitcast %Object* %new_obj1223 to %C 
  %_name1224 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str262, i8** %_name1224
  %b1225 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1226 = call i32* @oat_malloc ( i32 12 )
  %obj1227 = bitcast i32* %mem_ptr1226 to %B* 
  %new_obj1228 = call %B* @_B_ctor ( %B* %obj1227 )
  store %B* %new_obj1228, %B** %b1225
  %this_vtable1229 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable256, %_C_vtable** %this_vtable1229
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh296:
  call void @print_string( i8* @_const_str261 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh295:
  %mem_ptr1212 = call i32* @oat_malloc ( i32 8 )
  %obj1213 = bitcast i32* %mem_ptr1212 to %Object* 
  %new_obj1214 = call %Object* @_Object_ctor ( %Object* %obj1213 )
  %_this1 = bitcast %Object* %new_obj1214 to %B 
  %_name1215 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str260, i8** %_name1215
  %a1216 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1217 = call i32* @oat_malloc ( i32 8 )
  %obj1218 = bitcast i32* %mem_ptr1217 to %A* 
  %new_obj1219 = call %A* @_A_ctor ( %A* %obj1218 )
  store %A* %new_obj1219, %A** %a1216
  %this_vtable1220 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable255, %_B_vtable** %this_vtable1220
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh294:
  call void @print_string( i8* @_const_str259 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh293:
  %mem_ptr1207 = call i32* @oat_malloc ( i32 8 )
  %obj1208 = bitcast i32* %mem_ptr1207 to %Object* 
  %new_obj1209 = call %Object* @_Object_ctor ( %Object* %obj1208 )
  %_this1 = bitcast %Object* %new_obj1209 to %A 
  %_name1210 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str258, i8** %_name1210
  %this_vtable1211 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable254, %_A_vtable** %this_vtable1211
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh292:
  %_name1205 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1206 = load i8** %_name1205
  ret i8* %lhs_or_call1206
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh291:
  %_name1203 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str257, i8** %_name1203
  %this_vtable1204 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable253, %_Object_vtable** %this_vtable1204
  ret %Object* %_this1
}


