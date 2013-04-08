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


define i32 @program (i32 %argc30, { i32, [ 0 x i8* ] }* %argv28){
__fresh4:
  %argc_slot31 = alloca i32
  store i32 %argc30, i32* %argc_slot31
  %argv_slot29 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv28, { i32, [ 0 x i8* ] }** %argv_slot29
  %mem_ptr32 = call i32* @oat_malloc ( i32 12 )
  %obj33 = bitcast i32* %mem_ptr32 to %B* 
  %new_obj34 = call %B* @_B_ctor ( %B* %obj33, i32 1, i32 2 )
  %vdecl_slot35 = alloca %B*
  store %B* %new_obj34, %B** %vdecl_slot35
  %lhs_or_call36 = load %B** %vdecl_slot35
  %x37 = getelementptr %B* %lhs_or_call36, i32 0, i32 2
  %lhs_or_call38 = load i32* %x37
  ret i32 %lhs_or_call38
}


define %B* @_B_ctor (%B* %_this1, i32 %a17, i32 %b15){
__fresh3:
  %a_slot18 = alloca i32
  store i32 %a17, i32* %a_slot18
  %b_slot16 = alloca i32
  store i32 %b15, i32* %b_slot16
  %lhs_or_call19 = load i32* %a_slot18
  %bop20 = mul i32 %lhs_or_call19, 10
  %lhs_or_call21 = load i32* %b_slot16
  %bop22 = add i32 %bop20, %lhs_or_call21
  %mem_ptr23 = call i32* @oat_malloc ( i32 12 )
  %obj24 = bitcast i32* %mem_ptr23 to %A* 
  %new_obj25 = call %A* @_A_ctor ( %A* %obj24, i32 %bop22 )
  %_this1 = bitcast %A* %new_obj25 to %B 
  %_name26 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %_name26
  %this_vtable27 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable3, %_B_vtable** %this_vtable27
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x6){
__fresh2:
  %x_slot7 = alloca i32
  store i32 %x6, i32* %x_slot7
  %mem_ptr10 = call i32* @oat_malloc ( i32 8 )
  %obj11 = bitcast i32* %mem_ptr10 to %Object* 
  %new_obj12 = call %Object* @_Object_ctor ( %Object* %obj11 )
  %_this1 = bitcast %Object* %new_obj12 to %A 
  %_name13 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str5, i8** %_name13
  %this_vtable14 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable2, %_A_vtable** %this_vtable14
  %x8 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call9 = load i32* %x_slot7
  store i32 %lhs_or_call9, i32* %x8
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


