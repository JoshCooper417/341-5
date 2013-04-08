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
@_const_str403.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str403 = alias bitcast([ 2 x i8 ]* @_const_str403.str. to i8*)@_const_str402.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str402 = alias bitcast([ 7 x i8 ]* @_const_str402.str. to i8*)@_A_vtable401 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable400, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable400 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh500:
  ret void
}


define i32 @program (i32 %argc2222, { i32, [ 0 x i8* ] }* %argv2220){
__fresh499:
  %argc_slot2223 = alloca i32
  store i32 %argc2222, i32* %argc_slot2223
  %argv_slot2221 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2220, { i32, [ 0 x i8* ] }** %argv_slot2221
  %cast_op2224 = bitcast i8* null to %A* 
  %ret2225 = call i32 @try_ifnull ( %A* %cast_op2224 )
  ret i32 %ret2225
}


define i32 @try_ifnull (%A* %a2210){
__fresh496:
  %a_slot2211 = alloca %A*
  store %A* %a2210, %A** %a_slot2211
  %vdecl_slot2212 = alloca i32
  store i32 0, i32* %vdecl_slot2212
  %lhs_or_call2213 = load %A** %a_slot2211
  %ifnull_slot2214 = alloca %A*
  store %A* %lhs_or_call2213, %A** %ifnull_slot2214
  %ifnull_guard2215 = icmp ne %A* %lhs_or_call2213, null
  br i1 %ifnull_guard2215, label %__then495, label %__else494

__fresh497:
  br label %__then495

__then495:
  %lhs_or_call2216 = load %A** %ifnull_slot2214
  %x2217 = getelementptr %A* %lhs_or_call2216, i32 0, i32 0, i32 2
  %lhs_or_call2218 = load i32* %x2217
  store i32 %lhs_or_call2218, i32* %vdecl_slot2212
  br label %__merge493

__fresh498:
  br label %__else494

__else494:
  store i32 12, i32* %vdecl_slot2212
  br label %__merge493

__merge493:
  %lhs_or_call2219 = load i32* %vdecl_slot2212
  ret i32 %lhs_or_call2219
}


define %A* @_A_ctor (%A* %_this1, i32 %x2201){
__fresh492:
  %x_slot2202 = alloca i32
  store i32 %x2201, i32* %x_slot2202
  %mem_ptr2205 = call i32* @oat_malloc ( i32 8 )
  %obj2206 = bitcast i32* %mem_ptr2205 to %Object* 
  %new_obj2207 = call %Object* @_Object_ctor ( %Object* %obj2206 )
  %_this1 = bitcast %Object* %new_obj2207 to %A 
  %_name2208 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str403, i8** %_name2208
  %this_vtable2209 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable401, %_A_vtable** %this_vtable2209
  %x2203 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call2204 = load i32* %x_slot2202
  store i32 %lhs_or_call2204, i32* %x2203
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh491:
  %_name2199 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2200 = load i8** %_name2199
  ret i8* %lhs_or_call2200
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh490:
  %_name2197 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str402, i8** %_name2197
  %this_vtable2198 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable400, %_Object_vtable** %this_vtable2198
  ret %Object* %_this1
}


