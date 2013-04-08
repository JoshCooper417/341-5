%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@_const_str273.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str273 = alias bitcast([ 2 x i8 ]* @_const_str273.str. to i8*)@_const_str272.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str272 = alias bitcast([ 2 x i8 ]* @_const_str272.str. to i8*)@_const_str271.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str271 = alias bitcast([ 2 x i8 ]* @_const_str271.str. to i8*)@_const_str270.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str270 = alias bitcast([ 7 x i8 ]* @_const_str270.str. to i8*)@_C_vtable269 = private constant %_C_vtable {%_A_vtable* @_A_vtable267, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable268 = private constant %_B_vtable {%_A_vtable* @_A_vtable267, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable267 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable266, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable266 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh312:
  ret void
}


define i32 @program (i32 %argc1238, { i32, [ 0 x i8* ] }* %argv1236){
__fresh309:
  %argc_slot1239 = alloca i32
  store i32 %argc1238, i32* %argc_slot1239
  %argv_slot1237 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1236, { i32, [ 0 x i8* ] }** %argv_slot1237
  %array_ptr1240 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1241 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1240 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1242 = call i32* @oat_malloc ( i32 12 )
  %obj1243 = bitcast i32* %mem_ptr1242 to %A* 
  %new_obj1244 = call %A* @_A_ctor ( %A* %obj1243 )
  %index_ptr1245 = getelementptr { i32, [ 0 x %A* ] }* %array1241, i32 0, i32 1, i32 0
  store %A* %new_obj1244, %A** %index_ptr1245
  %mem_ptr1246 = call i32* @oat_malloc ( i32 12 )
  %obj1247 = bitcast i32* %mem_ptr1246 to %B* 
  %new_obj1248 = call %B* @_B_ctor ( %B* %obj1247 )
  %cast_op1249 = bitcast %B* %new_obj1248 to %A* 
  %index_ptr1250 = getelementptr { i32, [ 0 x %A* ] }* %array1241, i32 0, i32 1, i32 1
  store %A* %cast_op1249, %A** %index_ptr1250
  %mem_ptr1251 = call i32* @oat_malloc ( i32 12 )
  %obj1252 = bitcast i32* %mem_ptr1251 to %C* 
  %new_obj1253 = call %C* @_C_ctor ( %C* %obj1252 )
  %cast_op1254 = bitcast %C* %new_obj1253 to %A* 
  %index_ptr1255 = getelementptr { i32, [ 0 x %A* ] }* %array1241, i32 0, i32 1, i32 2
  store %A* %cast_op1254, %A** %index_ptr1255
  %vdecl_slot1256 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1241, { i32, [ 0 x %A* ] }** %vdecl_slot1256
  %vdecl_slot1257 = alloca i32
  store i32 0, i32* %vdecl_slot1257
  br label %__cond308

__cond308:
  %lhs_or_call1258 = load i32* %vdecl_slot1257
  %lhs_or_call1259 = load { i32, [ 0 x %A* ] }** %vdecl_slot1256
  %len_ptr1260 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1259, i32 0, i32 0
  %len1261 = load i32* %len_ptr1260
  %bop1262 = icmp slt i32 %lhs_or_call1258, %len1261
  br i1 %bop1262, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1263 = load { i32, [ 0 x %A* ] }** %vdecl_slot1256
  %lhs_or_call1264 = load i32* %vdecl_slot1257
  %bound_ptr1266 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1263, i32 0, i32 0
  %bound1267 = load i32* %bound_ptr1266
  call void @oat_array_bounds_check( i32 %bound1267, i32 %lhs_or_call1264 )
  %elt1265 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1263, i32 0, i32 1, i32 %lhs_or_call1264
  %lhs_or_call1268 = load %A** %elt1265
  %i1269 = getelementptr %A* %lhs_or_call1268, i32 0, i32 2
  %lhs_or_call1270 = load i32* %i1269
  call void @print_int( i32 %lhs_or_call1270 )
  %lhs_or_call1271 = load i32* %vdecl_slot1257
  %bop1272 = add i32 %lhs_or_call1271, 1
  store i32 %bop1272, i32* %vdecl_slot1257
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %mem_ptr1231 = call i32* @oat_malloc ( i32 12 )
  %obj1232 = bitcast i32* %mem_ptr1231 to %A* 
  %new_obj1233 = call %A* @_A_ctor ( %A* %obj1232 )
  %_this1 = bitcast %A* %new_obj1233 to %C 
  %_name1234 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str273, i8** %_name1234
  %this_vtable1235 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable269, %_C_vtable** %this_vtable1235
  %i1230 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1230
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %mem_ptr1225 = call i32* @oat_malloc ( i32 12 )
  %obj1226 = bitcast i32* %mem_ptr1225 to %A* 
  %new_obj1227 = call %A* @_A_ctor ( %A* %obj1226 )
  %_this1 = bitcast %A* %new_obj1227 to %B 
  %_name1228 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str272, i8** %_name1228
  %this_vtable1229 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable268, %_B_vtable** %this_vtable1229
  %i1224 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1224
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %mem_ptr1219 = call i32* @oat_malloc ( i32 8 )
  %obj1220 = bitcast i32* %mem_ptr1219 to %Object* 
  %new_obj1221 = call %Object* @_Object_ctor ( %Object* %obj1220 )
  %_this1 = bitcast %Object* %new_obj1221 to %A 
  %_name1222 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str271, i8** %_name1222
  %this_vtable1223 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable267, %_A_vtable** %this_vtable1223
  %i1218 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1218
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1216 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1217 = load i8** %_name1216
  ret i8* %lhs_or_call1217
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1214 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str270, i8** %_name1214
  %this_vtable1215 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable266, %_Object_vtable** %this_vtable1215
  ret %Object* %_this1
}


