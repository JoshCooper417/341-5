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
@_const_str6.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str6 = alias bitcast([ 2 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str5 = alias bitcast([ 2 x i8 ]* @_const_str5.str. to i8*)@_const_str4.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str4 = alias bitcast([ 7 x i8 ]* @_const_str4.str. to i8*)@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh5:
  ret void
}


define i32 @program (i32 %argc21, { i32, [ 0 x i8* ] }* %argv19){
__fresh4:
  %argc_slot22 = alloca i32
  store i32 %argc21, i32* %argc_slot22
  %argv_slot20 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv19, { i32, [ 0 x i8* ] }** %argv_slot20
  %mem_ptr23 = call i32* @oat_malloc ( i32 12 )
  %obj24 = bitcast i32* %mem_ptr23 to %B* 
  %new_obj25 = call %B* @_B_ctor ( %B* %obj24 )
  %vdecl_slot26 = alloca %B*
  store %B* %new_obj25, %B** %vdecl_slot26
  %lhs_or_call27 = load %B** %vdecl_slot26
  %i28 = getelementptr %B* %lhs_or_call27, i32 0, i32 2
  %lhs_or_call29 = load i32* %i28
  ret i32 %lhs_or_call29
}


define %B* @_B_ctor (%B* %_this1){
__fresh3:
  %cast_op13 = bitcast %B* %_this1 to %A* 
  %mem_ptr14 = call i32* @oat_malloc ( i32 12 )
  %obj15 = bitcast i32* %mem_ptr14 to %B* 
  %new_obj16 = call %A* @_A_ctor ( %B* %obj15, %A* %cast_op13 )
  %_this1 = bitcast %A* %new_obj16 to %B 
  %_name17 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %_name17
  %this_vtable18 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable3, %_B_vtable** %this_vtable18
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %cast_op7 = bitcast %A* %_this1 to %Object* 
  %mem_ptr8 = call i32* @oat_malloc ( i32 12 )
  %obj9 = bitcast i32* %mem_ptr8 to %A* 
  %new_obj10 = call %Object* @_Object_ctor ( %A* %obj9, %Object* %cast_op7 )
  %_this1 = bitcast %Object* %new_obj10 to %A 
  %_name11 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str5, i8** %_name11
  %this_vtable12 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable2, %_A_vtable** %this_vtable12
  %i6 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i6
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %_name4 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5 = load i8** %_name4
  ret i8* %lhs_or_call5
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %_name2 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str4, i8** %_name2
  %this_vtable3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %this_vtable3
  ret %Object* %_this1
}


