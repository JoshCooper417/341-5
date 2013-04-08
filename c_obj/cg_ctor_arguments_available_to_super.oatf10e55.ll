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
@_B_vtable185 = private constant %_B_vtable {%_A_vtable* @_A_vtable184, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable184 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable183, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable183 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh372:
  ret void
}


define i32 @program (i32 %argc2162, { i32, [ 0 x i8* ] }* %argv2160){
__fresh371:
  %argc_slot2163 = alloca i32
  store i32 %argc2162, i32* %argc_slot2163
  %argv_slot2161 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2160, { i32, [ 0 x i8* ] }** %argv_slot2161
  %mem_ptr2164 = call i32* @oat_malloc ( i32 12 )
  %obj2165 = bitcast i32* %mem_ptr2164 to %B* 
  %new_obj2166 = call %B* @_B_ctor ( %B* %obj2165, i32 1, i32 2 )
  %vdecl_slot2167 = alloca %B*
  store %B* %new_obj2166, %B** %vdecl_slot2167
  %lhs_or_call2168 = load %B** %vdecl_slot2167
  %x2169 = getelementptr %B* %lhs_or_call2168, i32 0, i32 2
  %lhs_or_call2170 = load i32* %x2169
  ret i32 %lhs_or_call2170
}


define %B* @_B_ctor (%B* %_this1, i32 %a2144, i32 %b2142){
__fresh370:
  %a_slot2145 = alloca i32
  store i32 %a2144, i32* %a_slot2145
  %b_slot2143 = alloca i32
  store i32 %b2142, i32* %b_slot2143
  %lhs_or_call2146 = load %B* %_this1
  %lhs_or_call2147 = load i32* %a_slot2145
  %bop2148 = mul i32 %lhs_or_call2147, 10
  %lhs_or_call2149 = load i32* %b_slot2143
  %bop2150 = add i32 %bop2148, %lhs_or_call2149
  %cast_op2151 = bitcast %B %lhs_or_call2146 to i32 
  %cast_op2152 = bitcast i32 %bop2150 to %A* 
  %mem_ptr2153 = call i32* @oat_malloc ( i32 12 )
  %obj2154 = bitcast i32* %mem_ptr2153 to %A* 
  %new_obj2155 = call %A* @_A_ctor ( %A* %obj2154, %A* %cast_op2152, i32 %cast_op2151 )
  %_name2156 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call2157 = load %B* %_this1
  %cast_op2158 = bitcast %B %lhs_or_call2157 to i8* 
  store i8* %cast_op2158, i8** %_name2156
  %this_vtable2159 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable2159
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x2131){
__fresh369:
  %x_slot2132 = alloca i32
  store i32 %x2131, i32* %x_slot2132
  %lhs_or_call2133 = load %A* %_this1
  %cast_op2134 = bitcast %A %lhs_or_call2133 to %Object* 
  %mem_ptr2135 = call i32* @oat_malloc ( i32 8 )
  %obj2136 = bitcast i32* %mem_ptr2135 to %Object* 
  %new_obj2137 = call %Object* @_Object_ctor ( %Object* %obj2136, %Object* %cast_op2134 )
  %_name2138 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call2139 = load %A* %_this1
  %cast_op2140 = bitcast %A %lhs_or_call2139 to i8* 
  store i8* %cast_op2140, i8** %_name2138
  %this_vtable2141 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable2141
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh368:
  %_name2129 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2130 = load i8** %_name2129
  ret i8* %lhs_or_call2130
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh367:
  %_name2125 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2126 = load %Object* %_this1
  %cast_op2127 = bitcast %Object %lhs_or_call2126 to i8* 
  store i8* %cast_op2127, i8** %_name2125
  %this_vtable2128 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2128
  ret %Object* %_this1
}


