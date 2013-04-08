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
@_const_str233.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str233 = alias bitcast([ 3 x i8 ]* @_const_str233.str. to i8*)@_const_str232.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str232 = alias bitcast([ 4 x i8 ]* @_const_str232.str. to i8*)@_const_str231.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str231 = alias bitcast([ 2 x i8 ]* @_const_str231.str. to i8*)@_const_str230.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str230 = alias bitcast([ 2 x i8 ]* @_const_str230.str. to i8*)@_const_str229.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str229 = alias bitcast([ 2 x i8 ]* @_const_str229.str. to i8*)@_const_str228.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str228 = alias bitcast([ 7 x i8 ]* @_const_str228.str. to i8*)@_C_vtable227 = private constant %_C_vtable {%_B_vtable* @_B_vtable226, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable226 = private constant %_B_vtable {%_A_vtable* @_A_vtable225, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable225 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable224, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable224 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh413:
  ret void
}


define i32 @program (i32 %argc1225, { i32, [ 0 x i8* ] }* %argv1223){
__fresh405:
  %argc_slot1226 = alloca i32
  store i32 %argc1225, i32* %argc_slot1226
  %argv_slot1224 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1223, { i32, [ 0 x i8* ] }** %argv_slot1224
  %mem_ptr1227 = call i32* @oat_malloc ( i32 12 )
  %obj1228 = bitcast i32* %mem_ptr1227 to %B* 
  %new_obj1229 = call %B* @_B_ctor ( %B* %obj1228 )
  %cast_op1230 = bitcast %B* %new_obj1229 to %A* 
  %vdecl_slot1231 = alloca %A*
  store %A* %cast_op1230, %A** %vdecl_slot1231
  %unop1232 = sub i32 0, 1
  %vdecl_slot1233 = alloca i32
  store i32 %unop1232, i32* %vdecl_slot1233
  br label %__init398

__fresh406:
  br label %__init398

__init398:
  %lhs_or_call1235 = load %A** %vdecl_slot1231
  %rvtable1242 = getelementptr %A* %lhs_or_call1235, i32 0
  br label %__bound_check399

__fresh407:
  br label %__bound_check399

__bound_check399:
  %cast_op1246 = bitcast %_A_vtable* @_A_vtable225 to i8** 
  %lvtable1243 = load i8** %cast_op1246
  %cast_vtable1247 = bitcast i8** %rvtable1242 to i8** 
  %rvtable1245 = load i8** %cast_vtable1247
  %compare1244 = icmp eq i8* %rvtable1245, null
  br i1 %compare1244, label %__end_no402, label %__check_curr401

__fresh408:
  br label %__check_curr401

__check_curr401:
  %compare1244 = icmp eq i8** %lvtable1243, %rvtable1245
  br i1 %compare1244, label %__end_yes403, label %__move_up400

__fresh409:
  br label %__move_up400

__move_up400:
  %rvtable1242 = getelementptr i8* %rvtable1245, i32 0
  br label %__bound_check399

__fresh410:
  br label %__end_yes403

__end_yes403:
  %lhs_or_call1235 = load %A** %vdecl_slot1231
  %cast_ptr1234 = bitcast %A* %lhs_or_call1235 to %A* 
  call void @print_string( i8* @_const_str232 )
  %lhs_or_call1236 = load %A** %cast_ptr1234
  %i1237 = getelementptr %A* %lhs_or_call1236, i32 0, i32 2
  %lhs_or_call1238 = load i32* %i1237
  store i32 %lhs_or_call1238, i32* %vdecl_slot1233
  br label %__end404

__fresh411:
  br label %__end_no402

__end_no402:
  call void @print_string( i8* @_const_str233 )
  %lhs_or_call1239 = load %A** %vdecl_slot1231
  %i1240 = getelementptr %A* %lhs_or_call1239, i32 0, i32 2
  %lhs_or_call1241 = load i32* %i1240
  store i32 %lhs_or_call1241, i32* %vdecl_slot1233
  br label %__end404

__fresh412:
  br label %__end404

__end404:
  %lhs_or_call1248 = load i32* %vdecl_slot1233
  ret i32 %lhs_or_call1248
}


define %C* @_C_ctor (%C* %_this1){
__fresh397:
  %mem_ptr1218 = call i32* @oat_malloc ( i32 12 )
  %obj1219 = bitcast i32* %mem_ptr1218 to %B* 
  %new_obj1220 = call %B* @_B_ctor ( %B* %obj1219 )
  %_this1 = bitcast %B* %new_obj1220 to %C 
  %_name1221 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str231, i8** %_name1221
  %this_vtable1222 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable227, %_C_vtable** %this_vtable1222
  %i1217 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1217
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh396:
  %mem_ptr1212 = call i32* @oat_malloc ( i32 12 )
  %obj1213 = bitcast i32* %mem_ptr1212 to %A* 
  %new_obj1214 = call %A* @_A_ctor ( %A* %obj1213 )
  %_this1 = bitcast %A* %new_obj1214 to %B 
  %_name1215 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str230, i8** %_name1215
  %this_vtable1216 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable226, %_B_vtable** %this_vtable1216
  %i1211 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1211
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh395:
  %mem_ptr1206 = call i32* @oat_malloc ( i32 8 )
  %obj1207 = bitcast i32* %mem_ptr1206 to %Object* 
  %new_obj1208 = call %Object* @_Object_ctor ( %Object* %obj1207 )
  %_this1 = bitcast %Object* %new_obj1208 to %A 
  %_name1209 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str229, i8** %_name1209
  %this_vtable1210 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable225, %_A_vtable** %this_vtable1210
  %i1205 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1205
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh394:
  %_name1203 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1204 = load i8** %_name1203
  ret i8* %lhs_or_call1204
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh393:
  %_name1201 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str228, i8** %_name1201
  %this_vtable1202 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable224, %_Object_vtable** %this_vtable1202
  ret %Object* %_this1
}


