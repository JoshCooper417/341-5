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
@a421 = global %A* zeroinitializer, align 4		; initialized by @a421.init422
@_const_str420.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str420 = alias bitcast([ 2 x i8 ]* @_const_str420.str. to i8*)@_const_str419.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str419 = alias bitcast([ 2 x i8 ]* @_const_str419.str. to i8*)@_const_str418.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str418 = alias bitcast([ 7 x i8 ]* @_const_str418.str. to i8*)@_B_vtable417 = private constant %_B_vtable {%_A_vtable* @_A_vtable416, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable416 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable415, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable415 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh454:
  call void @a421.init422(  )
  ret void
}


define i32 @program (i32 %argc2144, { i32, [ 0 x i8* ] }* %argv2142){
__fresh453:
  %argc_slot2145 = alloca i32
  store i32 %argc2144, i32* %argc_slot2145
  %argv_slot2143 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2142, { i32, [ 0 x i8* ] }** %argv_slot2143
  %lhs_or_call2146 = load %A** @a421
  %over2148 = getelementptr %_A_vtable* @_A_vtable416, i32 0, i32 2
  %over2147 = load i32 (%A*, i32)** %over2148
  %cast_op2149 = bitcast %A %lhs_or_call2146 to %A* 
  %ret2150 = call i32 %over2147 ( %A* %cast_op2149, i32 3 )
  ret i32 %ret2150
}


define void @a421.init422 (){
__fresh452:
  %mem_ptr2138 = call i32* @oat_malloc ( i32 8 )
  %obj2139 = bitcast i32* %mem_ptr2138 to %B* 
  %new_obj2140 = call %B* @_B_ctor ( %B* %obj2139 )
  %cast_op2141 = bitcast %B* %new_obj2140 to %A* 
  store %A* %cast_op2141, %A** @a421
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x2134){
__fresh451:
  %x_slot2135 = alloca i32
  store i32 %x2134, i32* %x_slot2135
  %lhs_or_call2136 = load i32* %x_slot2135
  %bop2137 = add i32 %lhs_or_call2136, 2
  ret i32 %bop2137
}


define %B* @_B_ctor (%B* %_this1){
__fresh450:
  %cast_op2128 = bitcast %B* %_this1 to %A* 
  %mem_ptr2129 = call i32* @oat_malloc ( i32 8 )
  %obj2130 = bitcast i32* %mem_ptr2129 to %B* 
  %new_obj2131 = call %A* @_A_ctor ( %B* %obj2130, %A* %cast_op2128 )
  %_this1 = bitcast %A* %new_obj2131 to %B 
  %_name2132 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str420, i8** %_name2132
  %this_vtable2133 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable417, %_B_vtable** %this_vtable2133
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2124){
__fresh449:
  %x_slot2125 = alloca i32
  store i32 %x2124, i32* %x_slot2125
  %lhs_or_call2126 = load i32* %x_slot2125
  %bop2127 = add i32 %lhs_or_call2126, 1
  ret i32 %bop2127
}


define %A* @_A_ctor (%A* %_this1){
__fresh448:
  %cast_op2118 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2119 = call i32* @oat_malloc ( i32 8 )
  %obj2120 = bitcast i32* %mem_ptr2119 to %A* 
  %new_obj2121 = call %Object* @_Object_ctor ( %A* %obj2120, %Object* %cast_op2118 )
  %_this1 = bitcast %Object* %new_obj2121 to %A 
  %_name2122 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str419, i8** %_name2122
  %this_vtable2123 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable416, %_A_vtable** %this_vtable2123
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh447:
  %_name2116 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2117 = load i8** %_name2116
  ret i8* %lhs_or_call2117
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh446:
  %_name2114 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str418, i8** %_name2114
  %this_vtable2115 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable415, %_Object_vtable** %this_vtable2115
  ret %Object* %_this1
}


