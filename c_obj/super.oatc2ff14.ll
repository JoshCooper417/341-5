%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str538.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str538 = alias bitcast([ 2 x i8 ]* @_const_str538.str. to i8*)@_const_str537.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str537 = alias bitcast([ 2 x i8 ]* @_const_str537.str. to i8*)@_const_str536.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str536 = alias bitcast([ 2 x i8 ]* @_const_str536.str. to i8*)@_const_str535.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str535 = alias bitcast([ 7 x i8 ]* @_const_str535.str. to i8*)@_C_vtable534 = private constant %_C_vtable {%_B_vtable* @_B_vtable533, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six}, align 4
@_B_vtable533 = private constant %_B_vtable {%_A_vtable* @_A_vtable532, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six}, align 4
@_A_vtable532 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable531, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six}, align 4
@_Object_vtable531 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh581:
  ret void
}


define i32 @program (i32 %argc2631, { i32, [ 0 x i8* ] }* %argv2629){
__fresh580:
  %argc_slot2632 = alloca i32
  store i32 %argc2631, i32* %argc_slot2632
  %argv_slot2630 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2629, { i32, [ 0 x i8* ] }** %argv_slot2630
  %mem_ptr2633 = call i32* @oat_malloc ( i32 8 )
  %obj2634 = bitcast i32* %mem_ptr2633 to %C* 
  %new_obj2635 = call %C* @_C_ctor ( %C* %obj2634 )
  %vdecl_slot2636 = alloca %C*
  store %C* %new_obj2635, %C** %vdecl_slot2636
  %lhs_or_call2637 = load %C** %vdecl_slot2636
  %six2639 = getelementptr %_C_vtable* @_C_vtable534, i32 0, i32 2
  %six2638 = load i32 (%C*)** %six2639
  %cast_op2640 = bitcast %C %lhs_or_call2637 to %C* 
  %ret2641 = call i32 %six2638 ( %C* %cast_op2640 )
  ret i32 %ret2641
}


define i32 @_C_six (%C* %_this1){
__fresh579:
  %six2625 = getelementptr %_C_vtable* @_C_vtable534, i32 0, i32 2
  %six2624 = load i32 (%C*)** %six2625
  %cast_op2626 = bitcast %C %_this1 to %C* 
  %ret2627 = call i32 %six2624 ( %C* %cast_op2626 )
  %bop2628 = add i32 %ret2627, 3
  ret i32 %bop2628
}


define %C* @_C_ctor (%C* %_this1){
__fresh578:
  %mem_ptr2619 = call i32* @oat_malloc ( i32 8 )
  %obj2620 = bitcast i32* %mem_ptr2619 to %B* 
  %new_obj2621 = call %B* @_B_ctor ( %B* %obj2620 )
  %_this1 = bitcast %B* %new_obj2621 to %C 
  %_name2622 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str538, i8** %_name2622
  %this_vtable2623 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable534, %_C_vtable** %this_vtable2623
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh577:
  %six2615 = getelementptr %_B_vtable* @_B_vtable533, i32 0, i32 2
  %six2614 = load i32 (%B*)** %six2615
  %cast_op2616 = bitcast %B %_this1 to %B* 
  %ret2617 = call i32 %six2614 ( %B* %cast_op2616 )
  %bop2618 = add i32 %ret2617, 2
  ret i32 %bop2618
}


define %B* @_B_ctor (%B* %_this1){
__fresh576:
  %mem_ptr2609 = call i32* @oat_malloc ( i32 8 )
  %obj2610 = bitcast i32* %mem_ptr2609 to %A* 
  %new_obj2611 = call %A* @_A_ctor ( %A* %obj2610 )
  %_this1 = bitcast %A* %new_obj2611 to %B 
  %_name2612 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str537, i8** %_name2612
  %this_vtable2613 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable533, %_B_vtable** %this_vtable2613
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh575:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh574:
  %mem_ptr2604 = call i32* @oat_malloc ( i32 8 )
  %obj2605 = bitcast i32* %mem_ptr2604 to %Object* 
  %new_obj2606 = call %Object* @_Object_ctor ( %Object* %obj2605 )
  %_this1 = bitcast %Object* %new_obj2606 to %A 
  %_name2607 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str536, i8** %_name2607
  %this_vtable2608 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable532, %_A_vtable** %this_vtable2608
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh573:
  %_name2602 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2603 = load i8** %_name2602
  ret i8* %lhs_or_call2603
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh572:
  %_name2600 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str535, i8** %_name2600
  %this_vtable2601 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable531, %_Object_vtable** %this_vtable2601
  ret %Object* %_this1
}


