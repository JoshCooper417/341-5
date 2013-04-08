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
@a432 = global %A* zeroinitializer, align 4		; initialized by @a432.init433
@_const_str431.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str431 = alias bitcast([ 2 x i8 ]* @_const_str431.str. to i8*)@_const_str430.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str430 = alias bitcast([ 2 x i8 ]* @_const_str430.str. to i8*)@_const_str429.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str429 = alias bitcast([ 2 x i8 ]* @_const_str429.str. to i8*)@_const_str428.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str428 = alias bitcast([ 7 x i8 ]* @_const_str428.str. to i8*)@_C_vtable427 = private constant %_C_vtable {%_B_vtable* @_B_vtable426, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable426 = private constant %_B_vtable {%_A_vtable* @_A_vtable425, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo}, align 4
@_A_vtable425 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable424, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo}, align 4
@_Object_vtable424 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh457:
  call void @a432.init433(  )
  ret void
}


define i32 @program (i32 %argc2196, { i32, [ 0 x i8* ] }* %argv2194){
__fresh456:
  %argc_slot2197 = alloca i32
  store i32 %argc2196, i32* %argc_slot2197
  %argv_slot2195 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2194, { i32, [ 0 x i8* ] }** %argv_slot2195
  %lhs_or_call2198 = load %A** @a432
  %vtable_ptr2199 = getelementptr %A* %lhs_or_call2198, i32 0
  %vtable2200 = load %_A_vtable** %vtable_ptr2199
  %foo2202 = getelementptr %_A_vtable* %vtable2200, i32 0, i32 3
  %foo2201 = load i32 (%A*, i32)** %foo2202
  %cast_op2203 = bitcast %A %lhs_or_call2198 to %A* 
  %ret2204 = call i32 %foo2201 ( %A* %cast_op2203, i32 3 )
  ret i32 %ret2204
}


define void @a432.init433 (){
__fresh455:
  %mem_ptr2190 = call i32* @oat_malloc ( i32 8 )
  %obj2191 = bitcast i32* %mem_ptr2190 to %C* 
  %new_obj2192 = call %C* @_C_ctor ( %C* %obj2191 )
  %cast_op2193 = bitcast %C* %new_obj2192 to %A* 
  store %A* %cast_op2193, %A** @a432
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2186){
__fresh454:
  %x_slot2187 = alloca i32
  store i32 %x2186, i32* %x_slot2187
  %lhs_or_call2188 = load i32* %x_slot2187
  %bop2189 = add i32 %lhs_or_call2188, 1
  ret i32 %bop2189
}


define %C* @_C_ctor (%C* %_this1){
__fresh453:
  %mem_ptr2181 = call i32* @oat_malloc ( i32 8 )
  %obj2182 = bitcast i32* %mem_ptr2181 to %B* 
  %new_obj2183 = call %B* @_B_ctor ( %B* %obj2182 )
  %_this1 = bitcast %B* %new_obj2183 to %C 
  %_name2184 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str431, i8** %_name2184
  %this_vtable2185 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable427, %_C_vtable** %this_vtable2185
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2177){
__fresh452:
  %x_slot2178 = alloca i32
  store i32 %x2177, i32* %x_slot2178
  %lhs_or_call2179 = load i32* %x_slot2178
  %bop2180 = add i32 %lhs_or_call2179, 2
  ret i32 %bop2180
}


define %B* @_B_ctor (%B* %_this1){
__fresh451:
  %mem_ptr2172 = call i32* @oat_malloc ( i32 8 )
  %obj2173 = bitcast i32* %mem_ptr2172 to %A* 
  %new_obj2174 = call %A* @_A_ctor ( %A* %obj2173 )
  %_this1 = bitcast %A* %new_obj2174 to %B 
  %_name2175 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str430, i8** %_name2175
  %this_vtable2176 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable426, %_B_vtable** %this_vtable2176
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2168){
__fresh450:
  %x_slot2169 = alloca i32
  store i32 %x2168, i32* %x_slot2169
  %lhs_or_call2170 = load i32* %x_slot2169
  %bop2171 = add i32 %lhs_or_call2170, 8
  ret i32 %bop2171
}


define i32 @_A_over (%A* %_this1, i32 %x2164){
__fresh449:
  %x_slot2165 = alloca i32
  store i32 %x2164, i32* %x_slot2165
  %lhs_or_call2166 = load i32* %x_slot2165
  %bop2167 = add i32 %lhs_or_call2166, 1
  ret i32 %bop2167
}


define %A* @_A_ctor (%A* %_this1){
__fresh448:
  %mem_ptr2159 = call i32* @oat_malloc ( i32 8 )
  %obj2160 = bitcast i32* %mem_ptr2159 to %Object* 
  %new_obj2161 = call %Object* @_Object_ctor ( %Object* %obj2160 )
  %_this1 = bitcast %Object* %new_obj2161 to %A 
  %_name2162 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str429, i8** %_name2162
  %this_vtable2163 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable425, %_A_vtable** %this_vtable2163
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh447:
  %_name2157 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2158 = load i8** %_name2157
  ret i8* %lhs_or_call2158
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh446:
  %_name2155 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str428, i8** %_name2155
  %this_vtable2156 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable424, %_Object_vtable** %this_vtable2156
  ret %Object* %_this1
}


