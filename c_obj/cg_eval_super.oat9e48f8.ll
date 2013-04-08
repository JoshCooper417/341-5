%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@a431 = global %A* zeroinitializer, align 4		; initialized by @a431.init432
@_const_str430.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str430 = alias bitcast([ 2 x i8 ]* @_const_str430.str. to i8*)@_const_str429.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str429 = alias bitcast([ 2 x i8 ]* @_const_str429.str. to i8*)@_const_str428.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str428 = alias bitcast([ 2 x i8 ]* @_const_str428.str. to i8*)@_const_str427.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str427 = alias bitcast([ 7 x i8 ]* @_const_str427.str. to i8*)@_C_vtable426 = private constant %_C_vtable {%_B_vtable* @_B_vtable425, i8* (%Object*)* @_Object_get_name, i32 (%C*, i32)* @_C_over}, align 4
@_B_vtable425 = private constant %_B_vtable {%_A_vtable* @_A_vtable424, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable424 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable423, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable423 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh468:
  call void @a431.init432(  )
  ret void
}


define i32 @program (i32 %argc2238, { i32, [ 0 x i8* ] }* %argv2236){
__fresh467:
  %argc_slot2239 = alloca i32
  store i32 %argc2238, i32* %argc_slot2239
  %argv_slot2237 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2236, { i32, [ 0 x i8* ] }** %argv_slot2237
  %lhs_or_call2240 = load %A** @a431
  %vtable_ptr2241 = getelementptr %A* %lhs_or_call2240, i32 0
  %vtable2242 = load %_A_vtable** %vtable_ptr2241
  %over2244 = getelementptr %_A_vtable* %vtable2242, i32 0, i32 2
  %over2243 = load i32 (%A*, i32)** %over2244
  %cast_op2245 = bitcast %A %lhs_or_call2240 to %A* 
  %ret2246 = call i32 %over2243 ( %A* %cast_op2245, i32 3 )
  ret i32 %ret2246
}


define void @a431.init432 (){
__fresh466:
  %mem_ptr2232 = call i32* @oat_malloc ( i32 8 )
  %obj2233 = bitcast i32* %mem_ptr2232 to %C* 
  %new_obj2234 = call %C* @_C_ctor ( %C* %obj2233 )
  %cast_op2235 = bitcast %C* %new_obj2234 to %A* 
  store %A* %cast_op2235, %A** @a431
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2220){
__fresh465:
  %x_slot2221 = alloca i32
  store i32 %x2220, i32* %x_slot2221
  %lhs_or_call2222 = load i32* %x_slot2221
  %bop2223 = add i32 %lhs_or_call2222, 1
  %lhs_or_call2224 = load i32* %x_slot2221
  %vtable_ptr2225 = getelementptr %C* %_this1, i32 0
  %vtable2226 = load %_C_vtable** %vtable_ptr2225
  %over2228 = getelementptr %_C_vtable* %vtable2226, i32 0, i32 2
  %over2227 = load i32 (%C*, i32)** %over2228
  %cast_op2229 = bitcast %C %_this1 to %C* 
  %ret2230 = call i32 %over2227 ( %C* %cast_op2229, i32 %lhs_or_call2224 )
  %bop2231 = add i32 %bop2223, %ret2230
  ret i32 %bop2231
}


define %C* @_C_ctor (%C* %_this1){
__fresh464:
  %mem_ptr2215 = call i32* @oat_malloc ( i32 8 )
  %obj2216 = bitcast i32* %mem_ptr2215 to %B* 
  %new_obj2217 = call %B* @_B_ctor ( %B* %obj2216 )
  %_this1 = bitcast %B* %new_obj2217 to %C 
  %_name2218 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str430, i8** %_name2218
  %this_vtable2219 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable426, %_C_vtable** %this_vtable2219
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2211){
__fresh463:
  %x_slot2212 = alloca i32
  store i32 %x2211, i32* %x_slot2212
  %lhs_or_call2213 = load i32* %x_slot2212
  %bop2214 = add i32 %lhs_or_call2213, 2
  ret i32 %bop2214
}


define %B* @_B_ctor (%B* %_this1){
__fresh462:
  %mem_ptr2206 = call i32* @oat_malloc ( i32 8 )
  %obj2207 = bitcast i32* %mem_ptr2206 to %A* 
  %new_obj2208 = call %A* @_A_ctor ( %A* %obj2207 )
  %_this1 = bitcast %A* %new_obj2208 to %B 
  %_name2209 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str429, i8** %_name2209
  %this_vtable2210 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable425, %_B_vtable** %this_vtable2210
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2202){
__fresh461:
  %x_slot2203 = alloca i32
  store i32 %x2202, i32* %x_slot2203
  %lhs_or_call2204 = load i32* %x_slot2203
  %bop2205 = add i32 %lhs_or_call2204, 1
  ret i32 %bop2205
}


define %A* @_A_ctor (%A* %_this1){
__fresh460:
  %mem_ptr2197 = call i32* @oat_malloc ( i32 8 )
  %obj2198 = bitcast i32* %mem_ptr2197 to %Object* 
  %new_obj2199 = call %Object* @_Object_ctor ( %Object* %obj2198 )
  %_this1 = bitcast %Object* %new_obj2199 to %A 
  %_name2200 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2200
  %this_vtable2201 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable424, %_A_vtable** %this_vtable2201
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh459:
  %_name2195 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2196 = load i8** %_name2195
  ret i8* %lhs_or_call2196
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh458:
  %_name2193 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str427, i8** %_name2193
  %this_vtable2194 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable423, %_Object_vtable** %this_vtable2194
  ret %Object* %_this1
}


