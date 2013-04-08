%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)* }
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
@a441 = global %A* zeroinitializer, align 4		; initialized by @a441.init442
@_const_str440.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str440 = alias bitcast([ 2 x i8 ]* @_const_str440.str. to i8*)@_const_str439.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str439 = alias bitcast([ 2 x i8 ]* @_const_str439.str. to i8*)@_const_str438.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str438 = alias bitcast([ 2 x i8 ]* @_const_str438.str. to i8*)@_const_str437.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str437 = alias bitcast([ 7 x i8 ]* @_const_str437.str. to i8*)@_C_vtable436 = private constant %_C_vtable {%_B_vtable* @_B_vtable435, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable435 = private constant %_B_vtable {%_A_vtable* @_A_vtable434, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo}, align 4
@_A_vtable434 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable433, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo}, align 4
@_Object_vtable433 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh477:
  call void @a441.init442(  )
  ret void
}


define i32 @program (i32 %argc2242, { i32, [ 0 x i8* ] }* %argv2240){
__fresh476:
  %argc_slot2243 = alloca i32
  store i32 %argc2242, i32* %argc_slot2243
  %argv_slot2241 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2240, { i32, [ 0 x i8* ] }** %argv_slot2241
  %lhs_or_call2244 = load %A** @a441
  %foo2246 = getelementptr %_A_vtable* @_A_vtable434, i32 0, i32 3
  %foo2245 = load i32 (%A*, i32)** %foo2246
  %cast_op2247 = bitcast %A %lhs_or_call2244 to %A* 
  %ret2248 = call i32 %foo2245 ( %A* %cast_op2247, i32 3 )
  ret i32 %ret2248
}


define void @a441.init442 (){
__fresh475:
  %mem_ptr2236 = call i32* @oat_malloc ( i32 8 )
  %obj2237 = bitcast i32* %mem_ptr2236 to %C* 
  %new_obj2238 = call %C* @_C_ctor ( %C* %obj2237 )
  %cast_op2239 = bitcast %C* %new_obj2238 to %A* 
  store %A* %cast_op2239, %A** @a441
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2232){
__fresh474:
  %x_slot2233 = alloca i32
  store i32 %x2232, i32* %x_slot2233
  %lhs_or_call2234 = load i32* %x_slot2233
  %bop2235 = add i32 %lhs_or_call2234, 1
  ret i32 %bop2235
}


define %C* @_C_ctor (%C* %_this1){
__fresh473:
  %cast_op2226 = bitcast %C* %_this1 to %B* 
  %mem_ptr2227 = call i32* @oat_malloc ( i32 8 )
  %obj2228 = bitcast i32* %mem_ptr2227 to %C* 
  %new_obj2229 = call %B* @_B_ctor ( %C* %obj2228, %B* %cast_op2226 )
  %_this1 = bitcast %B* %new_obj2229 to %C 
  %_name2230 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str440, i8** %_name2230
  %this_vtable2231 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable436, %_C_vtable** %this_vtable2231
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2222){
__fresh472:
  %x_slot2223 = alloca i32
  store i32 %x2222, i32* %x_slot2223
  %lhs_or_call2224 = load i32* %x_slot2223
  %bop2225 = add i32 %lhs_or_call2224, 2
  ret i32 %bop2225
}


define %B* @_B_ctor (%B* %_this1){
__fresh471:
  %cast_op2216 = bitcast %B* %_this1 to %A* 
  %mem_ptr2217 = call i32* @oat_malloc ( i32 8 )
  %obj2218 = bitcast i32* %mem_ptr2217 to %B* 
  %new_obj2219 = call %A* @_A_ctor ( %B* %obj2218, %A* %cast_op2216 )
  %_this1 = bitcast %A* %new_obj2219 to %B 
  %_name2220 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str439, i8** %_name2220
  %this_vtable2221 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable435, %_B_vtable** %this_vtable2221
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2212){
__fresh470:
  %x_slot2213 = alloca i32
  store i32 %x2212, i32* %x_slot2213
  %lhs_or_call2214 = load i32* %x_slot2213
  %bop2215 = add i32 %lhs_or_call2214, 8
  ret i32 %bop2215
}


define i32 @_A_over (%A* %_this1, i32 %x2208){
__fresh469:
  %x_slot2209 = alloca i32
  store i32 %x2208, i32* %x_slot2209
  %lhs_or_call2210 = load i32* %x_slot2209
  %bop2211 = add i32 %lhs_or_call2210, 1
  ret i32 %bop2211
}


define %A* @_A_ctor (%A* %_this1){
__fresh468:
  %cast_op2202 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2203 = call i32* @oat_malloc ( i32 8 )
  %obj2204 = bitcast i32* %mem_ptr2203 to %A* 
  %new_obj2205 = call %Object* @_Object_ctor ( %A* %obj2204, %Object* %cast_op2202 )
  %_this1 = bitcast %Object* %new_obj2205 to %A 
  %_name2206 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str438, i8** %_name2206
  %this_vtable2207 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable434, %_A_vtable** %this_vtable2207
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh467:
  %_name2200 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2201 = load i8** %_name2200
  ret i8* %lhs_or_call2201
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh466:
  %_name2198 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str437, i8** %_name2198
  %this_vtable2199 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable433, %_Object_vtable** %this_vtable2199
  ret %Object* %_this1
}


