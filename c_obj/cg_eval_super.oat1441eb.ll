%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*, i32)* }
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
@a449 = global %A* zeroinitializer, align 4		; initialized by @a449.init450
@_const_str448.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str448 = alias bitcast([ 2 x i8 ]* @_const_str448.str. to i8*)@_const_str447.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str447 = alias bitcast([ 2 x i8 ]* @_const_str447.str. to i8*)@_const_str446.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str446 = alias bitcast([ 2 x i8 ]* @_const_str446.str. to i8*)@_const_str445.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str445 = alias bitcast([ 7 x i8 ]* @_const_str445.str. to i8*)@_C_vtable444 = private constant %_C_vtable {%_B_vtable* @_B_vtable443, i8* (%Object*)* @_Object_get_name, i32 (%C*, i32)* @_C_over}, align 4
@_B_vtable443 = private constant %_B_vtable {%_A_vtable* @_A_vtable442, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable442 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable441, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable441 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh773:
  call void @a449.init450(  )
  ret void
}


define i32 @program (i32 %argc2614, { i32, [ 0 x i8* ] }* %argv2612){
__fresh772:
  %argc_slot2615 = alloca i32
  store i32 %argc2614, i32* %argc_slot2615
  %argv_slot2613 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2612, { i32, [ 0 x i8* ] }** %argv_slot2613
  %lhs_or_call2616 = load %A** @a449
  %vtable_ptr2617 = getelementptr %A* %lhs_or_call2616, i32 0
  %vtable2618 = load %_A_vtable** %vtable_ptr2617
  %over2620 = getelementptr %_A_vtable* %vtable2618, i32 0, i32 2
  %over2619 = load i32 (%A*, i32)** %over2620
  %cast_op2621 = bitcast %A %lhs_or_call2616 to %A* 
  %ret2622 = call i32 %over2619 ( %A* %cast_op2621, i32 3 )
  ret i32 %ret2622
}


define void @a449.init450 (){
__fresh771:
  %mem_ptr2608 = call i32* @oat_malloc ( i32 8 )
  %obj2609 = bitcast i32* %mem_ptr2608 to %C* 
  %new_obj2610 = call %C* @_C_ctor ( %C* %obj2609 )
  %cast_op2611 = bitcast %C* %new_obj2610 to %A* 
  store %A* %cast_op2611, %A** @a449
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2596){
__fresh770:
  %x_slot2597 = alloca i32
  store i32 %x2596, i32* %x_slot2597
  %lhs_or_call2598 = load i32* %x_slot2597
  %bop2599 = add i32 %lhs_or_call2598, 1
  %lhs_or_call2600 = load i32* %x_slot2597
  %vtable_ptr2601 = getelementptr %C* %_this1, i32 0
  %vtable2602 = load %_C_vtable** %vtable_ptr2601
  %over2604 = getelementptr %_C_vtable* %vtable2602, i32 0, i32 2
  %over2603 = load i32 (%C*, i32)** %over2604
  %cast_op2605 = bitcast %C %_this1 to %C* 
  %ret2606 = call i32 %over2603 ( %C* %cast_op2605, i32 %lhs_or_call2600 )
  %bop2607 = add i32 %bop2599, %ret2606
  ret i32 %bop2607
}


define %C* @_C_ctor (%C* %_this1){
__fresh769:
  %mem_ptr2591 = call i32* @oat_malloc ( i32 8 )
  %obj2592 = bitcast i32* %mem_ptr2591 to %B* 
  %new_obj2593 = call %B* @_B_ctor ( %B* %obj2592 )
  %_this1 = bitcast %B* %new_obj2593 to %C 
  %_name2594 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str448, i8** %_name2594
  %this_vtable2595 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable444, %_C_vtable** %this_vtable2595
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2587){
__fresh768:
  %x_slot2588 = alloca i32
  store i32 %x2587, i32* %x_slot2588
  %lhs_or_call2589 = load i32* %x_slot2588
  %bop2590 = add i32 %lhs_or_call2589, 2
  ret i32 %bop2590
}


define %B* @_B_ctor (%B* %_this1){
__fresh767:
  %mem_ptr2582 = call i32* @oat_malloc ( i32 8 )
  %obj2583 = bitcast i32* %mem_ptr2582 to %A* 
  %new_obj2584 = call %A* @_A_ctor ( %A* %obj2583 )
  %_this1 = bitcast %A* %new_obj2584 to %B 
  %_name2585 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str447, i8** %_name2585
  %this_vtable2586 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable443, %_B_vtable** %this_vtable2586
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2578){
__fresh766:
  %x_slot2579 = alloca i32
  store i32 %x2578, i32* %x_slot2579
  %lhs_or_call2580 = load i32* %x_slot2579
  %bop2581 = add i32 %lhs_or_call2580, 1
  ret i32 %bop2581
}


define %A* @_A_ctor (%A* %_this1){
__fresh765:
  %mem_ptr2573 = call i32* @oat_malloc ( i32 8 )
  %obj2574 = bitcast i32* %mem_ptr2573 to %Object* 
  %new_obj2575 = call %Object* @_Object_ctor ( %Object* %obj2574 )
  %_this1 = bitcast %Object* %new_obj2575 to %A 
  %_name2576 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str446, i8** %_name2576
  %this_vtable2577 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable442, %_A_vtable** %this_vtable2577
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh764:
  %_name2571 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2572 = load i8** %_name2571
  ret i8* %lhs_or_call2572
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh763:
  %_name2569 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str445, i8** %_name2569
  %this_vtable2570 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable441, %_Object_vtable** %this_vtable2570
  ret %Object* %_this1
}


