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
@_const_str8.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str8 = alias bitcast([ 2 x i8 ]* @_const_str8.str. to i8*)@_const_str6.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_const_str6 = alias bitcast([ 2 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 13 x i8 ] c "printing x 
\00", align 4
@_const_str5 = alias bitcast([ 13 x i8 ]* @_const_str5.str. to i8*)@_const_str7.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str7 = alias bitcast([ 2 x i8 ]* @_const_str7.str. to i8*)@_const_str4.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str4 = alias bitcast([ 7 x i8 ]* @_const_str4.str. to i8*)@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh5:
  ret void
}


define i32 @program (i32 %argc31, { i32, [ 0 x i8* ] }* %argv29){
__fresh4:
  %argc_slot32 = alloca i32
  store i32 %argc31, i32* %argc_slot32
  %argv_slot30 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv29, { i32, [ 0 x i8* ] }** %argv_slot30
  %mem_ptr33 = call i32* @oat_malloc ( i32 12 )
  %obj34 = bitcast i32* %mem_ptr33 to %B* 
  %new_obj35 = call %B* @_B_ctor ( %B* %obj34, i32 1, i32 2 )
  %vdecl_slot36 = alloca %B*
  store %B* %new_obj35, %B** %vdecl_slot36
  %lhs_or_call37 = load %B** %vdecl_slot36
  %x38 = getelementptr %B* %lhs_or_call37, i32 0, i32 2
  %lhs_or_call39 = load i32* %x38
  ret i32 %lhs_or_call39
}


define %B* @_B_ctor (%B* %_this1, i32 %a18, i32 %b16){
__fresh3:
  %a_slot19 = alloca i32
  store i32 %a18, i32* %a_slot19
  %b_slot17 = alloca i32
  store i32 %b16, i32* %b_slot17
  %lhs_or_call20 = load i32* %a_slot19
  %bop21 = mul i32 %lhs_or_call20, 10
  %lhs_or_call22 = load i32* %b_slot17
  %bop23 = add i32 %bop21, %lhs_or_call22
  %mem_ptr24 = call i32* @oat_malloc ( i32 12 )
  %obj25 = bitcast i32* %mem_ptr24 to %A* 
  %new_obj26 = call %A* @_A_ctor ( %A* %obj25, i32 %bop23 )
  %_this1 = bitcast %A* %new_obj26 to %B 
  %_name27 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str8, i8** %_name27
  %this_vtable28 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable3, %_B_vtable** %this_vtable28
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x6){
__fresh2:
  %x_slot7 = alloca i32
  store i32 %x6, i32* %x_slot7
  %mem_ptr11 = call i32* @oat_malloc ( i32 8 )
  %obj12 = bitcast i32* %mem_ptr11 to %Object* 
  %new_obj13 = call %Object* @_Object_ctor ( %Object* %obj12 )
  %_this1 = bitcast %Object* %new_obj13 to %A 
  %_name14 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str7, i8** %_name14
  %this_vtable15 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable2, %_A_vtable** %this_vtable15
  call void @print_string( i8* @_const_str5 )
  %lhs_or_call8 = load i32* %x_slot7
  call void @print_int( i32 %lhs_or_call8 )
  call void @print_string( i8* @_const_str6 )
  %x9 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call10 = load i32* %x_slot7
  store i32 %lhs_or_call10, i32* %x9
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


