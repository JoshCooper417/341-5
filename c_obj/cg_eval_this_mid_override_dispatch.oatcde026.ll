%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%C*, i32)*, i32 (%C*)* }
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
@_const_str457.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str457 = alias bitcast([ 2 x i8 ]* @_const_str457.str. to i8*)@_const_str456.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str456 = alias bitcast([ 2 x i8 ]* @_const_str456.str. to i8*)@_const_str455.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str455 = alias bitcast([ 2 x i8 ]* @_const_str455.str. to i8*)@_const_str454.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str454 = alias bitcast([ 7 x i8 ]* @_const_str454.str. to i8*)@_C_vtable453 = private constant %_C_vtable {%_B_vtable* @_B_vtable452, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable452 = private constant %_B_vtable {%_A_vtable* @_A_vtable451, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable451 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable450, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable450 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh488:
  ret void
}


define i32 @program (i32 %argc2211, { i32, [ 0 x i8* ] }* %argv2209){
__fresh487:
  %argc_slot2212 = alloca i32
  store i32 %argc2211, i32* %argc_slot2212
  %argv_slot2210 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2209, { i32, [ 0 x i8* ] }** %argv_slot2210
  %mem_ptr2213 = call i32* @oat_malloc ( i32 8 )
  %obj2214 = bitcast i32* %mem_ptr2213 to %C* 
  %new_obj2215 = call %C* @_C_ctor ( %C* %obj2214 )
  %vdecl_slot2216 = alloca %C*
  store %C* %new_obj2215, %C** %vdecl_slot2216
  %lhs_or_call2217 = load %C** %vdecl_slot2216
  %call2219 = getelementptr %_C_vtable* @_C_vtable453, i32 0, i32 4
  %call2218 = load i32 (%C*)** %call2219
  %cast_op2220 = bitcast %C %lhs_or_call2217 to %C* 
  %ret2221 = call i32 %call2218 ( %C* %cast_op2220 )
  ret i32 %ret2221
}


define i32 @_C_call (%C* %_this1){
__fresh486:
  %over2206 = getelementptr %_C_vtable* @_C_vtable453, i32 0, i32 2
  %over2205 = load i32 (%B*, i32)** %over2206
  %cast_op2207 = bitcast %C %_this1 to %B* 
  %ret2208 = call i32 %over2205 ( %B* %cast_op2207, i32 3 )
  ret i32 %ret2208
}


define i32 @_C_notover (%C* %_this1, i32 %x2201){
__fresh485:
  %x_slot2202 = alloca i32
  store i32 %x2201, i32* %x_slot2202
  %lhs_or_call2203 = load i32* %x_slot2202
  %bop2204 = add i32 %lhs_or_call2203, 1
  ret i32 %bop2204
}


define %C* @_C_ctor (%C* %_this1){
__fresh484:
  %mem_ptr2196 = call i32* @oat_malloc ( i32 8 )
  %obj2197 = bitcast i32* %mem_ptr2196 to %B* 
  %new_obj2198 = call %B* @_B_ctor ( %B* %obj2197 )
  %_this1 = bitcast %B* %new_obj2198 to %C 
  %_name2199 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str457, i8** %_name2199
  %this_vtable2200 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable453, %_C_vtable** %this_vtable2200
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2192){
__fresh483:
  %x_slot2193 = alloca i32
  store i32 %x2192, i32* %x_slot2193
  %lhs_or_call2194 = load i32* %x_slot2193
  %bop2195 = add i32 %lhs_or_call2194, 2
  ret i32 %bop2195
}


define %B* @_B_ctor (%B* %_this1){
__fresh482:
  %mem_ptr2187 = call i32* @oat_malloc ( i32 8 )
  %obj2188 = bitcast i32* %mem_ptr2187 to %A* 
  %new_obj2189 = call %A* @_A_ctor ( %A* %obj2188 )
  %_this1 = bitcast %A* %new_obj2189 to %B 
  %_name2190 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str456, i8** %_name2190
  %this_vtable2191 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable452, %_B_vtable** %this_vtable2191
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2183){
__fresh481:
  %x_slot2184 = alloca i32
  store i32 %x2183, i32* %x_slot2184
  %lhs_or_call2185 = load i32* %x_slot2184
  %bop2186 = add i32 %lhs_or_call2185, 1
  ret i32 %bop2186
}


define %A* @_A_ctor (%A* %_this1){
__fresh480:
  %mem_ptr2178 = call i32* @oat_malloc ( i32 8 )
  %obj2179 = bitcast i32* %mem_ptr2178 to %Object* 
  %new_obj2180 = call %Object* @_Object_ctor ( %Object* %obj2179 )
  %_this1 = bitcast %Object* %new_obj2180 to %A 
  %_name2181 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str455, i8** %_name2181
  %this_vtable2182 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable451, %_A_vtable** %this_vtable2182
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh479:
  %_name2176 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2177 = load i8** %_name2176
  ret i8* %lhs_or_call2177
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh478:
  %_name2174 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %_name2174
  %this_vtable2175 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable450, %_Object_vtable** %this_vtable2175
  ret %Object* %_this1
}


