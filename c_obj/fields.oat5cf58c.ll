%Fields = type { %_Fields_vtable*, i8*, i32, i32, i32 }
%_Fields_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Fields* (%Fields*)* }
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
@_const_str479.str. = private unnamed_addr constant [ 7 x i8 ] c "Fields\00", align 4
@_const_str479 = alias bitcast([ 7 x i8 ]* @_const_str479.str. to i8*)@_const_str478.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str478 = alias bitcast([ 7 x i8 ]* @_const_str478.str. to i8*)@_Fields_vtable477 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable476, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable476 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh598:
  ret void
}


define i32 @program (i32 %argc2644, { i32, [ 0 x i8* ] }* %argv2642){
__fresh597:
  %argc_slot2645 = alloca i32
  store i32 %argc2644, i32* %argc_slot2645
  %argv_slot2643 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2642, { i32, [ 0 x i8* ] }** %argv_slot2643
  %mem_ptr2646 = call i32* @oat_malloc ( i32 20 )
  %obj2647 = bitcast i32* %mem_ptr2646 to %Fields* 
  %new_obj2648 = call %Fields* @_Fields_ctor ( %Fields* %obj2647 )
  %vdecl_slot2649 = alloca %Fields*
  store %Fields* %new_obj2648, %Fields** %vdecl_slot2649
  %lhs_or_call2650 = load %Fields** %vdecl_slot2649
  %vtable_ptr2651 = getelementptr %Fields* %lhs_or_call2650, i32 0
  %vtable2652 = load %_Fields_vtable** %vtable_ptr2651
  %sumab2654 = getelementptr %_Fields_vtable* %vtable2652, i32 0, i32 2
  %sumab2653 = load %Fields* (%Fields*)** %sumab2654
  %cast_op2655 = bitcast %Fields %lhs_or_call2650 to %Fields* 
  %ret2656 = call %Fields* %sumab2653 ( %Fields* %cast_op2655 )
  %vdecl_slot2657 = alloca %Fields*
  store %Fields* %ret2656, %Fields** %vdecl_slot2657
  %lhs_or_call2658 = load %Fields** %vdecl_slot2657
  %bfield2659 = getelementptr %Fields* %lhs_or_call2658, i32 0, i32 0, i32 3
  %lhs_or_call2660 = load i32* %bfield2659
  ret i32 %lhs_or_call2660
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh596:
  %bfield2638 = getelementptr %Fields* %_this1, i32 0, i32 0, i32 3
  %afield2639 = getelementptr %Fields* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call2640 = load i32* %afield2639
  %bop2641 = add i32 1, %lhs_or_call2640
  store i32 %bop2641, i32* %bfield2638
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh595:
  %mem_ptr2633 = call i32* @oat_malloc ( i32 8 )
  %obj2634 = bitcast i32* %mem_ptr2633 to %Object* 
  %new_obj2635 = call %Object* @_Object_ctor ( %Object* %obj2634 )
  %_this1 = bitcast %Object* %new_obj2635 to %Fields 
  %_name2636 = getelementptr %Fields* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str479, i8** %_name2636
  %this_vtable2637 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable477, %_Fields_vtable** %this_vtable2637
  %afield2632 = getelementptr %Fields* %_this1, i32 0, i32 0, i32 2
  store i32 12, i32* %afield2632
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh594:
  %_name2630 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2631 = load i8** %_name2630
  ret i8* %lhs_or_call2631
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh593:
  %_name2628 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str478, i8** %_name2628
  %this_vtable2629 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable476, %_Object_vtable** %this_vtable2629
  ret %Object* %_this1
}


