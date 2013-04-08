%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%B*)* }
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
@_const_str449.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str449 = alias bitcast([ 2 x i8 ]* @_const_str449.str. to i8*)@_const_str448.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str448 = alias bitcast([ 2 x i8 ]* @_const_str448.str. to i8*)@_const_str447.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str447 = alias bitcast([ 7 x i8 ]* @_const_str447.str. to i8*)@_B_vtable446 = private constant %_B_vtable {%_A_vtable* @_A_vtable445, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%B*)* @_B_call}, align 4
@_A_vtable445 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable444, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable444 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh477:
  ret void
}


define i32 @program (i32 %argc2163, { i32, [ 0 x i8* ] }* %argv2161){
__fresh476:
  %argc_slot2164 = alloca i32
  store i32 %argc2163, i32* %argc_slot2164
  %argv_slot2162 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2161, { i32, [ 0 x i8* ] }** %argv_slot2162
  %mem_ptr2165 = call i32* @oat_malloc ( i32 8 )
  %obj2166 = bitcast i32* %mem_ptr2165 to %B* 
  %new_obj2167 = call %B* @_B_ctor ( %B* %obj2166 )
  %vdecl_slot2168 = alloca %B*
  store %B* %new_obj2167, %B** %vdecl_slot2168
  %lhs_or_call2169 = load %B** %vdecl_slot2168
  %call2171 = getelementptr %_B_vtable* @_B_vtable446, i32 0, i32 3
  %call2170 = load i32 (%B*)** %call2171
  %cast_op2172 = bitcast %B %lhs_or_call2169 to %B* 
  %ret2173 = call i32 %call2170 ( %B* %cast_op2172 )
  ret i32 %ret2173
}


define i32 @_B_call (%B* %_this1){
__fresh475:
  %over2158 = getelementptr %_B_vtable* @_B_vtable446, i32 0, i32 2
  %over2157 = load i32 (%B*, i32)** %over2158
  %cast_op2159 = bitcast %B %_this1 to %B* 
  %ret2160 = call i32 %over2157 ( %B* %cast_op2159, i32 3 )
  ret i32 %ret2160
}


define i32 @_B_over (%B* %_this1, i32 %x2153){
__fresh474:
  %x_slot2154 = alloca i32
  store i32 %x2153, i32* %x_slot2154
  %lhs_or_call2155 = load i32* %x_slot2154
  %bop2156 = add i32 %lhs_or_call2155, 2
  ret i32 %bop2156
}


define %B* @_B_ctor (%B* %_this1){
__fresh473:
  %mem_ptr2148 = call i32* @oat_malloc ( i32 8 )
  %obj2149 = bitcast i32* %mem_ptr2148 to %A* 
  %new_obj2150 = call %A* @_A_ctor ( %A* %obj2149 )
  %_this1 = bitcast %A* %new_obj2150 to %B 
  %_name2151 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str449, i8** %_name2151
  %this_vtable2152 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable446, %_B_vtable** %this_vtable2152
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2144){
__fresh472:
  %x_slot2145 = alloca i32
  store i32 %x2144, i32* %x_slot2145
  %lhs_or_call2146 = load i32* %x_slot2145
  %bop2147 = add i32 %lhs_or_call2146, 1
  ret i32 %bop2147
}


define %A* @_A_ctor (%A* %_this1){
__fresh471:
  %mem_ptr2139 = call i32* @oat_malloc ( i32 8 )
  %obj2140 = bitcast i32* %mem_ptr2139 to %Object* 
  %new_obj2141 = call %Object* @_Object_ctor ( %Object* %obj2140 )
  %_this1 = bitcast %Object* %new_obj2141 to %A 
  %_name2142 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str448, i8** %_name2142
  %this_vtable2143 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable445, %_A_vtable** %this_vtable2143
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh470:
  %_name2137 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2138 = load i8** %_name2137
  ret i8* %lhs_or_call2138
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh469:
  %_name2135 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str447, i8** %_name2135
  %this_vtable2136 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable444, %_Object_vtable** %this_vtable2136
  ret %Object* %_this1
}


