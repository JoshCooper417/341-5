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
@a421 = global %A* zeroinitializer, align 4		; initialized by @a421.init422
@_const_str420.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str420 = alias bitcast([ 2 x i8 ]* @_const_str420.str. to i8*)@_const_str419.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str419 = alias bitcast([ 2 x i8 ]* @_const_str419.str. to i8*)@_const_str418.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str418 = alias bitcast([ 2 x i8 ]* @_const_str418.str. to i8*)@_const_str417.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str417 = alias bitcast([ 7 x i8 ]* @_const_str417.str. to i8*)@_C_vtable416 = private constant %_C_vtable {%_B_vtable* @_B_vtable415, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable415 = private constant %_B_vtable {%_A_vtable* @_A_vtable414, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo}, align 4
@_A_vtable414 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable413, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo}, align 4
@_Object_vtable413 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh457:
  call void @a421.init422(  )
  ret void
}


define i32 @program (i32 %argc2184, { i32, [ 0 x i8* ] }* %argv2182){
__fresh456:
  %argc_slot2185 = alloca i32
  store i32 %argc2184, i32* %argc_slot2185
  %argv_slot2183 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2182, { i32, [ 0 x i8* ] }** %argv_slot2183
  %lhs_or_call2186 = load %A** @a421
  %vtable_ptr2187 = getelementptr %A* %lhs_or_call2186, i32 0
  %vtable2188 = load %_A_vtable** %vtable_ptr2187
  %foo2190 = getelementptr %_A_vtable* %vtable2188, i32 0, i32 3
  %foo2189 = load i32 (%A*, i32)** %foo2190
  %cast_op2191 = bitcast %A %lhs_or_call2186 to %A* 
  %ret2192 = call i32 %foo2189 ( %A* %cast_op2191, i32 3 )
  ret i32 %ret2192
}


define void @a421.init422 (){
__fresh455:
  %mem_ptr2178 = call i32* @oat_malloc ( i32 8 )
  %obj2179 = bitcast i32* %mem_ptr2178 to %C* 
  %new_obj2180 = call %C* @_C_ctor ( %C* %obj2179 )
  %cast_op2181 = bitcast %C* %new_obj2180 to %A* 
  store %A* %cast_op2181, %A** @a421
  ret void
}


define i32 @_C_notover (%C* %_this1, i32 %x2174){
__fresh454:
  %x_slot2175 = alloca i32
  store i32 %x2174, i32* %x_slot2175
  %lhs_or_call2176 = load i32* %x_slot2175
  %bop2177 = add i32 %lhs_or_call2176, 1
  ret i32 %bop2177
}


define %C* @_C_ctor (%C* %_this1){
__fresh453:
  %mem_ptr2169 = call i32* @oat_malloc ( i32 8 )
  %obj2170 = bitcast i32* %mem_ptr2169 to %B* 
  %new_obj2171 = call %B* @_B_ctor ( %B* %obj2170 )
  %_this1 = bitcast %B* %new_obj2171 to %C 
  %_name2172 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str420, i8** %_name2172
  %this_vtable2173 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable416, %_C_vtable** %this_vtable2173
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2165){
__fresh452:
  %x_slot2166 = alloca i32
  store i32 %x2165, i32* %x_slot2166
  %lhs_or_call2167 = load i32* %x_slot2166
  %bop2168 = add i32 %lhs_or_call2167, 2
  ret i32 %bop2168
}


define %B* @_B_ctor (%B* %_this1){
__fresh451:
  %mem_ptr2160 = call i32* @oat_malloc ( i32 8 )
  %obj2161 = bitcast i32* %mem_ptr2160 to %A* 
  %new_obj2162 = call %A* @_A_ctor ( %A* %obj2161 )
  %_this1 = bitcast %A* %new_obj2162 to %B 
  %_name2163 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str419, i8** %_name2163
  %this_vtable2164 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable415, %_B_vtable** %this_vtable2164
  ret %B* %_this1
}


define i32 @_A_foo (%A* %_this1, i32 %x2156){
__fresh450:
  %x_slot2157 = alloca i32
  store i32 %x2156, i32* %x_slot2157
  %lhs_or_call2158 = load i32* %x_slot2157
  %bop2159 = add i32 %lhs_or_call2158, 8
  ret i32 %bop2159
}


define i32 @_A_over (%A* %_this1, i32 %x2152){
__fresh449:
  %x_slot2153 = alloca i32
  store i32 %x2152, i32* %x_slot2153
  %lhs_or_call2154 = load i32* %x_slot2153
  %bop2155 = add i32 %lhs_or_call2154, 1
  ret i32 %bop2155
}


define %A* @_A_ctor (%A* %_this1){
__fresh448:
  %mem_ptr2147 = call i32* @oat_malloc ( i32 8 )
  %obj2148 = bitcast i32* %mem_ptr2147 to %Object* 
  %new_obj2149 = call %Object* @_Object_ctor ( %Object* %obj2148 )
  %_this1 = bitcast %Object* %new_obj2149 to %A 
  %_name2150 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str418, i8** %_name2150
  %this_vtable2151 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable414, %_A_vtable** %this_vtable2151
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh447:
  %_name2145 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2146 = load i8** %_name2145
  ret i8* %lhs_or_call2146
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh446:
  %_name2143 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str417, i8** %_name2143
  %this_vtable2144 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable413, %_Object_vtable** %this_vtable2144
  ret %Object* %_this1
}


