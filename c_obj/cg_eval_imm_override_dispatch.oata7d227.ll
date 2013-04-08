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


define i32 @program (i32 %argc2109, { i32, [ 0 x i8* ] }* %argv2107){
__fresh433:
  %argc_slot2110 = alloca i32
  store i32 %argc2109, i32* %argc_slot2110
  %argv_slot2108 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2107, { i32, [ 0 x i8* ] }** %argv_slot2108
  %lhs_or_call2111 = load %A** @a412
  %over2113 = getelementptr %_A_vtable* @_A_vtable407, i32 0, i32 2
  %over2112 = load i32 (%A*, i32)** %over2113
  %cast_op2114 = bitcast %A %lhs_or_call2111 to %A* 
  %ret2115 = call i32 %over2112 ( %A* %cast_op2114, i32 3 )
  ret i32 %ret2115
}


define void @a412.init413 (){
__fresh432:
  %mem_ptr2103 = call i32* @oat_malloc ( i32 8 )
  %obj2104 = bitcast i32* %mem_ptr2103 to %B* 
  %new_obj2105 = call %B* @_B_ctor ( %B* %obj2104 )
  %cast_op2106 = bitcast %B* %new_obj2105 to %A* 
  store %A* %cast_op2106, %A** @a412
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x2099){
__fresh431:
  %x_slot2100 = alloca i32
  store i32 %x2099, i32* %x_slot2100
  %lhs_or_call2101 = load i32* %x_slot2100
  %bop2102 = add i32 %lhs_or_call2101, 2
  ret i32 %bop2102
}


define %B* @_B_ctor (%B* %_this1){
__fresh430:
  %cast_op2093 = bitcast %B* %_this1 to %A* 
  %mem_ptr2094 = call i32* @oat_malloc ( i32 8 )
  %obj2095 = bitcast i32* %mem_ptr2094 to %B* 
  %new_obj2096 = call %A* @_A_ctor ( %B* %obj2095, %A* %cast_op2093 )
  %_this1 = bitcast %A* %new_obj2096 to %B 
  %_name2097 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str411, i8** %_name2097
  %this_vtable2098 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable408, %_B_vtable** %this_vtable2098
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2089){
__fresh429:
  %x_slot2090 = alloca i32
  store i32 %x2089, i32* %x_slot2090
  %lhs_or_call2091 = load i32* %x_slot2090
  %bop2092 = add i32 %lhs_or_call2091, 1
  ret i32 %bop2092
}


define %A* @_A_ctor (%A* %_this1){
__fresh428:
  %cast_op2083 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2084 = call i32* @oat_malloc ( i32 8 )
  %obj2085 = bitcast i32* %mem_ptr2084 to %A* 
  %new_obj2086 = call %Object* @_Object_ctor ( %A* %obj2085, %Object* %cast_op2083 )
  %_this1 = bitcast %Object* %new_obj2086 to %A 
  %_name2087 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str410, i8** %_name2087
  %this_vtable2088 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable407, %_A_vtable** %this_vtable2088
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh427:
  %_name2081 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2082 = load i8** %_name2081
  ret i8* %lhs_or_call2082
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh426:
  %_name2079 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str409, i8** %_name2079
  %this_vtable2080 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable406, %_Object_vtable** %this_vtable2080
  ret %Object* %_this1
}


