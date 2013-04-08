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
@_const_str399.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str399 = alias bitcast([ 2 x i8 ]* @_const_str399.str. to i8*)@_const_str398.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str398 = alias bitcast([ 7 x i8 ]* @_const_str398.str. to i8*)@_A_vtable397 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable396, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable396 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh489:
  ret void
}


define i32 @program (i32 %argc2202, { i32, [ 0 x i8* ] }* %argv2200){
__fresh488:
  %argc_slot2203 = alloca i32
  store i32 %argc2202, i32* %argc_slot2203
  %argv_slot2201 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2200, { i32, [ 0 x i8* ] }** %argv_slot2201
  %mem_ptr2204 = call i32* @oat_malloc ( i32 12 )
  %obj2205 = bitcast i32* %mem_ptr2204 to %A* 
  %new_obj2206 = call %A* @_A_ctor ( %A* %obj2205, i32 11 )
  %ret2207 = call i32 @try_ifnull ( %A* %new_obj2206 )
  ret i32 %ret2207
}


define i32 @try_ifnull (%A* %a2190){
__fresh485:
  %a_slot2191 = alloca %A*
  store %A* %a2190, %A** %a_slot2191
  %vdecl_slot2192 = alloca i32
  store i32 0, i32* %vdecl_slot2192
  %lhs_or_call2193 = load %A** %a_slot2191
  %ifnull_slot2194 = alloca %A*
  store %A* %lhs_or_call2193, %A** %ifnull_slot2194
  %ifnull_guard2195 = icmp ne %A* %lhs_or_call2193, null
  br i1 %ifnull_guard2195, label %__then484, label %__else483

__fresh486:
  br label %__then484

__then484:
  %lhs_or_call2196 = load %A** %ifnull_slot2194
  %x2197 = getelementptr %A* %lhs_or_call2196, i32 0, i32 2
  %lhs_or_call2198 = load i32* %x2197
  store i32 %lhs_or_call2198, i32* %vdecl_slot2192
  br label %__merge482

__fresh487:
  br label %__else483

__else483:
  store i32 12, i32* %vdecl_slot2192
  br label %__merge482

__merge482:
  %lhs_or_call2199 = load i32* %vdecl_slot2192
  ret i32 %lhs_or_call2199
}


define %A* @_A_ctor (%A* %_this1, i32 %x2181){
__fresh481:
  %x_slot2182 = alloca i32
  store i32 %x2181, i32* %x_slot2182
  %mem_ptr2185 = call i32* @oat_malloc ( i32 8 )
  %obj2186 = bitcast i32* %mem_ptr2185 to %Object* 
  %new_obj2187 = call %Object* @_Object_ctor ( %Object* %obj2186 )
  %_this1 = bitcast %Object* %new_obj2187 to %A 
  %_name2188 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str399, i8** %_name2188
  %this_vtable2189 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable397, %_A_vtable** %this_vtable2189
  %x2183 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2184 = load i32* %x_slot2182
  store i32 %lhs_or_call2184, i32* %x2183
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh480:
  %_name2179 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2180 = load i8** %_name2179
  ret i8* %lhs_or_call2180
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh479:
  %_name2177 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str398, i8** %_name2177
  %this_vtable2178 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable396, %_Object_vtable** %this_vtable2178
  ret %Object* %_this1
}


