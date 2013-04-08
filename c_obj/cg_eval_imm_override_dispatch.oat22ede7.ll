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
@a412 = global %A* zeroinitializer, align 4		; initialized by @a412.init413
@_const_str411.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str411 = alias bitcast([ 2 x i8 ]* @_const_str411.str. to i8*)@_const_str410.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str410 = alias bitcast([ 2 x i8 ]* @_const_str410.str. to i8*)@_const_str409.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str409 = alias bitcast([ 7 x i8 ]* @_const_str409.str. to i8*)@_B_vtable408 = private constant %_B_vtable {%_A_vtable* @_A_vtable407, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable407 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable406, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable406 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh434:
  call void @a412.init413(  )
  ret void
}


define i32 @program (i32 %argc2100, { i32, [ 0 x i8* ] }* %argv2098){
__fresh433:
  %argc_slot2101 = alloca i32
  store i32 %argc2100, i32* %argc_slot2101
  %argv_slot2099 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2098, { i32, [ 0 x i8* ] }** %argv_slot2099
  %lhs_or_call2102 = load %A** @a412
  %vtable_ptr2103 = getelementptr %A* %lhs_or_call2102, i32 0
  %vtable2104 = load %_A_vtable** %vtable_ptr2103
  %over2106 = getelementptr %_A_vtable* %vtable2104, i32 0, i32 2
  %over2105 = load i32 (%A*, i32)** %over2106
  %cast_op2107 = bitcast %A %lhs_or_call2102 to %A* 
  %ret2108 = call i32 %over2105 ( %A* %cast_op2107, i32 3 )
  ret i32 %ret2108
}


define void @a412.init413 (){
__fresh432:
  %mem_ptr2094 = call i32* @oat_malloc ( i32 8 )
  %obj2095 = bitcast i32* %mem_ptr2094 to %B* 
  %new_obj2096 = call %B* @_B_ctor ( %B* %obj2095 )
  %cast_op2097 = bitcast %B* %new_obj2096 to %A* 
  store %A* %cast_op2097, %A** @a412
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x2090){
__fresh431:
  %x_slot2091 = alloca i32
  store i32 %x2090, i32* %x_slot2091
  %lhs_or_call2092 = load i32* %x_slot2091
  %bop2093 = add i32 %lhs_or_call2092, 2
  ret i32 %bop2093
}


define %B* @_B_ctor (%B* %_this1){
__fresh430:
  %mem_ptr2085 = call i32* @oat_malloc ( i32 8 )
  %obj2086 = bitcast i32* %mem_ptr2085 to %A* 
  %new_obj2087 = call %A* @_A_ctor ( %A* %obj2086 )
  %_this1 = bitcast %A* %new_obj2087 to %B 
  %_name2088 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str411, i8** %_name2088
  %this_vtable2089 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable408, %_B_vtable** %this_vtable2089
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2081){
__fresh429:
  %x_slot2082 = alloca i32
  store i32 %x2081, i32* %x_slot2082
  %lhs_or_call2083 = load i32* %x_slot2082
  %bop2084 = add i32 %lhs_or_call2083, 1
  ret i32 %bop2084
}


define %A* @_A_ctor (%A* %_this1){
__fresh428:
  %mem_ptr2076 = call i32* @oat_malloc ( i32 8 )
  %obj2077 = bitcast i32* %mem_ptr2076 to %Object* 
  %new_obj2078 = call %Object* @_Object_ctor ( %Object* %obj2077 )
  %_this1 = bitcast %Object* %new_obj2078 to %A 
  %_name2079 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str410, i8** %_name2079
  %this_vtable2080 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable407, %_A_vtable** %this_vtable2080
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh427:
  %_name2074 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2075 = load i8** %_name2074
  ret i8* %lhs_or_call2075
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh426:
  %_name2072 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str409, i8** %_name2072
  %this_vtable2073 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable406, %_Object_vtable** %this_vtable2073
  ret %Object* %_this1
}


