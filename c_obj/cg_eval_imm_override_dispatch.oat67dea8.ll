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
@a401 = global %A* zeroinitializer, align 4		; initialized by @a401.init402
@_const_str400.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str400 = alias bitcast([ 2 x i8 ]* @_const_str400.str. to i8*)@_const_str399.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str399 = alias bitcast([ 2 x i8 ]* @_const_str399.str. to i8*)@_const_str398.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str398 = alias bitcast([ 7 x i8 ]* @_const_str398.str. to i8*)@_B_vtable397 = private constant %_B_vtable {%_A_vtable* @_A_vtable396, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable396 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable395, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable395 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh434:
  call void @a401.init402(  )
  ret void
}


define i32 @program (i32 %argc2088, { i32, [ 0 x i8* ] }* %argv2086){
__fresh433:
  %argc_slot2089 = alloca i32
  store i32 %argc2088, i32* %argc_slot2089
  %argv_slot2087 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2086, { i32, [ 0 x i8* ] }** %argv_slot2087
  %lhs_or_call2090 = load %A** @a401
  %vtable_ptr2091 = getelementptr %A* %lhs_or_call2090, i32 0
  %vtable2092 = load %_A_vtable** %vtable_ptr2091
  %over2094 = getelementptr %_A_vtable* %vtable2092, i32 0, i32 2
  %over2093 = load i32 (%A*, i32)** %over2094
  %cast_op2095 = bitcast %A %lhs_or_call2090 to %A* 
  %ret2096 = call i32 %over2093 ( %A* %cast_op2095, i32 3 )
  ret i32 %ret2096
}


define void @a401.init402 (){
__fresh432:
  %mem_ptr2082 = call i32* @oat_malloc ( i32 8 )
  %obj2083 = bitcast i32* %mem_ptr2082 to %B* 
  %new_obj2084 = call %B* @_B_ctor ( %B* %obj2083 )
  %cast_op2085 = bitcast %B* %new_obj2084 to %A* 
  store %A* %cast_op2085, %A** @a401
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x2078){
__fresh431:
  %x_slot2079 = alloca i32
  store i32 %x2078, i32* %x_slot2079
  %lhs_or_call2080 = load i32* %x_slot2079
  %bop2081 = add i32 %lhs_or_call2080, 2
  ret i32 %bop2081
}


define %B* @_B_ctor (%B* %_this1){
__fresh430:
  %mem_ptr2073 = call i32* @oat_malloc ( i32 8 )
  %obj2074 = bitcast i32* %mem_ptr2073 to %A* 
  %new_obj2075 = call %A* @_A_ctor ( %A* %obj2074 )
  %_this1 = bitcast %A* %new_obj2075 to %B 
  %_name2076 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str400, i8** %_name2076
  %this_vtable2077 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable397, %_B_vtable** %this_vtable2077
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2069){
__fresh429:
  %x_slot2070 = alloca i32
  store i32 %x2069, i32* %x_slot2070
  %lhs_or_call2071 = load i32* %x_slot2070
  %bop2072 = add i32 %lhs_or_call2071, 1
  ret i32 %bop2072
}


define %A* @_A_ctor (%A* %_this1){
__fresh428:
  %mem_ptr2064 = call i32* @oat_malloc ( i32 8 )
  %obj2065 = bitcast i32* %mem_ptr2064 to %Object* 
  %new_obj2066 = call %Object* @_Object_ctor ( %Object* %obj2065 )
  %_this1 = bitcast %Object* %new_obj2066 to %A 
  %_name2067 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str399, i8** %_name2067
  %this_vtable2068 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable396, %_A_vtable** %this_vtable2068
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh427:
  %_name2062 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2063 = load i8** %_name2062
  ret i8* %lhs_or_call2063
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh426:
  %_name2060 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str398, i8** %_name2060
  %this_vtable2061 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable395, %_Object_vtable** %this_vtable2061
  ret %Object* %_this1
}


