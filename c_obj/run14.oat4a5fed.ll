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
@_const_str89.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str89 = alias bitcast([ 2 x i8 ]* @_const_str89.str. to i8*)@_const_str88.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str88 = alias bitcast([ 2 x i8 ]* @_const_str88.str. to i8*)@_const_str87.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str87 = alias bitcast([ 7 x i8 ]* @_const_str87.str. to i8*)@_B_vtable86 = private constant %_B_vtable {%_A_vtable* @_A_vtable85, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable85 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable84, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable84 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh163:
  ret void
}


define i32 @program (i32 %argc557, { i32, [ 0 x i8* ] }* %argv555){
__fresh162:
  %argc_slot558 = alloca i32
  store i32 %argc557, i32* %argc_slot558
  %argv_slot556 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv555, { i32, [ 0 x i8* ] }** %argv_slot556
  %mem_ptr559 = call i32* @oat_malloc ( i32 12 )
  %obj560 = bitcast i32* %mem_ptr559 to %B* 
  %new_obj561 = call %B* @_B_ctor ( %B* %obj560 )
  %vdecl_slot562 = alloca %B*
  store %B* %new_obj561, %B** %vdecl_slot562
  %lhs_or_call563 = load %B** %vdecl_slot562
  %i564 = getelementptr %B* %lhs_or_call563, i32 0, i32 2
  %lhs_or_call565 = load i32* %i564
  ret i32 %lhs_or_call565
}


define %B* @_B_ctor (%B* %_this1){
__fresh161:
  %mem_ptr550 = call i32* @oat_malloc ( i32 12 )
  %obj551 = bitcast i32* %mem_ptr550 to %A* 
  %new_obj552 = call %A* @_A_ctor ( %A* %obj551 )
  %_this1 = bitcast %A* %new_obj552 to %B 
  %_name553 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str89, i8** %_name553
  %this_vtable554 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable86, %_B_vtable** %this_vtable554
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh160:
  %mem_ptr545 = call i32* @oat_malloc ( i32 8 )
  %obj546 = bitcast i32* %mem_ptr545 to %Object* 
  %new_obj547 = call %Object* @_Object_ctor ( %Object* %obj546 )
  %_this1 = bitcast %Object* %new_obj547 to %A 
  %_name548 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str88, i8** %_name548
  %this_vtable549 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable85, %_A_vtable** %this_vtable549
  %i544 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i544
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh159:
  %_name542 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call543 = load i8** %_name542
  ret i8* %lhs_or_call543
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh158:
  %_name540 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str87, i8** %_name540
  %this_vtable541 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable84, %_Object_vtable** %this_vtable541
  ret %Object* %_this1
}


