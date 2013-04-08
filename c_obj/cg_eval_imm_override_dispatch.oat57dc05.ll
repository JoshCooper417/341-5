%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@a7 = global %A* zeroinitializer, align 4		; initialized by @a7.init8
@_const_str6.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str6 = alias bitcast([ 2 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str5 = alias bitcast([ 2 x i8 ]* @_const_str5.str. to i8*)@_const_str4.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str4 = alias bitcast([ 7 x i8 ]* @_const_str4.str. to i8*)@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh7:
  call void @a7.init8(  )
  ret void
}


define i32 @program (i32 %argc26, { i32, [ 0 x i8* ] }* %argv24){
__fresh6:
  %argc_slot27 = alloca i32
  store i32 %argc26, i32* %argc_slot27
  %argv_slot25 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv24, { i32, [ 0 x i8* ] }** %argv_slot25
  %lhs_or_call28 = load %A** @a7
  %over30 = getelementptr %_A_vtable* @_A_vtable2, i32 0, i32 2
  %over29 = load i32 (%A*, i32)** %over30
  %cast_op31 = bitcast %A %lhs_or_call28 to %A* 
  %ret32 = call i32 %over29 ( %A* %cast_op31, i32 3 )
  ret i32 %ret32
}


define void @a7.init8 (){
__fresh5:
  %mem_ptr20 = call i32* @oat_malloc ( i32 8 )
  %obj21 = bitcast i32* %mem_ptr20 to %B* 
  %new_obj22 = call %B* @_B_ctor ( %B* %obj21 )
  %cast_op23 = bitcast %B* %new_obj22 to %A* 
  store %A* %cast_op23, %A** @a7
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh4:
  %mem_ptr15 = call i32* @oat_malloc ( i32 8 )
  %obj16 = bitcast i32* %mem_ptr15 to %A* 
  %new_obj17 = call %A* @_A_ctor ( %A* %obj16 )
  %_this1 = bitcast %A* %new_obj17 to %B 
  %_name18 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %_name18
  %this_vtable19 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable3, %_B_vtable** %this_vtable19
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x11){
__fresh3:
  %x_slot12 = alloca i32
  store i32 %x11, i32* %x_slot12
  %lhs_or_call13 = load i32* %x_slot12
  %bop14 = add i32 %lhs_or_call13, 1
  ret i32 %bop14
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %mem_ptr6 = call i32* @oat_malloc ( i32 8 )
  %obj7 = bitcast i32* %mem_ptr6 to %Object* 
  %new_obj8 = call %Object* @_Object_ctor ( %Object* %obj7 )
  %_this1 = bitcast %Object* %new_obj8 to %A 
  %_name9 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str5, i8** %_name9
  %this_vtable10 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable2, %_A_vtable** %this_vtable10
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


