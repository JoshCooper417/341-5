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
@_const_str348.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str348 = alias bitcast([ 2 x i8 ]* @_const_str348.str. to i8*)@_const_str347.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str347 = alias bitcast([ 2 x i8 ]* @_const_str347.str. to i8*)@_const_str346.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str346 = alias bitcast([ 7 x i8 ]* @_const_str346.str. to i8*)@_B_vtable345 = private constant %_B_vtable {%_A_vtable* @_A_vtable344, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable344 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable343, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable343 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh584:
  ret void
}


define i32 @program (i32 %argc2167, { i32, [ 0 x i8* ] }* %argv2165){
__fresh583:
  %argc_slot2168 = alloca i32
  store i32 %argc2167, i32* %argc_slot2168
  %argv_slot2166 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2165, { i32, [ 0 x i8* ] }** %argv_slot2166
  %mem_ptr2169 = call i32* @oat_malloc ( i32 12 )
  %obj2170 = bitcast i32* %mem_ptr2169 to %B* 
  %new_obj2171 = call %B* @_B_ctor ( %B* %obj2170, i32 1, i32 2 )
  %vdecl_slot2172 = alloca %B*
  store %B* %new_obj2171, %B** %vdecl_slot2172
  %lhs_or_call2173 = load %B** %vdecl_slot2172
  %x2174 = getelementptr %B* %lhs_or_call2173, i32 0, i32 2
  %lhs_or_call2175 = load i32* %x2174
  ret i32 %lhs_or_call2175
}


define %B* @_B_ctor (%B* %_this1, i32 %a2154, i32 %b2152){
__fresh582:
  %a_slot2155 = alloca i32
  store i32 %a2154, i32* %a_slot2155
  %b_slot2153 = alloca i32
  store i32 %b2152, i32* %b_slot2153
  %lhs_or_call2156 = load i32* %a_slot2155
  %bop2157 = mul i32 %lhs_or_call2156, 10
  %lhs_or_call2158 = load i32* %b_slot2153
  %bop2159 = add i32 %bop2157, %lhs_or_call2158
  %mem_ptr2160 = call i32* @oat_malloc ( i32 12 )
  %obj2161 = bitcast i32* %mem_ptr2160 to %A* 
  %new_obj2162 = call %A* @_A_ctor ( %A* %obj2161, i32 %bop2159 )
  %_this1 = bitcast %A* %new_obj2162 to %B 
  %_name2163 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str348, i8** %_name2163
  %this_vtable2164 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable345, %_B_vtable** %this_vtable2164
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x2143){
__fresh581:
  %x_slot2144 = alloca i32
  store i32 %x2143, i32* %x_slot2144
  %mem_ptr2147 = call i32* @oat_malloc ( i32 8 )
  %obj2148 = bitcast i32* %mem_ptr2147 to %Object* 
  %new_obj2149 = call %Object* @_Object_ctor ( %Object* %obj2148 )
  %_this1 = bitcast %Object* %new_obj2149 to %A 
  %_name2150 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str347, i8** %_name2150
  %this_vtable2151 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable344, %_A_vtable** %this_vtable2151
  %x2145 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2146 = load i32* %x_slot2144
  store i32 %lhs_or_call2146, i32* %x2145
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh580:
  %_name2141 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2142 = load i8** %_name2141
  ret i8* %lhs_or_call2142
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh579:
  %_name2139 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str346, i8** %_name2139
  %this_vtable2140 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable343, %_Object_vtable** %this_vtable2140
  ret %Object* %_this1
}


