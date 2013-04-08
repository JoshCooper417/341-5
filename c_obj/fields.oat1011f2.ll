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


define i32 @program (i32 %argc2655, { i32, [ 0 x i8* ] }* %argv2653){
__fresh597:
  %argc_slot2656 = alloca i32
  store i32 %argc2655, i32* %argc_slot2656
  %argv_slot2654 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2653, { i32, [ 0 x i8* ] }** %argv_slot2654
  %mem_ptr2657 = call i32* @oat_malloc ( i32 20 )
  %obj2658 = bitcast i32* %mem_ptr2657 to %Fields* 
  %new_obj2659 = call %Fields* @_Fields_ctor ( %Fields* %obj2658 )
  %vdecl_slot2660 = alloca %Fields*
  store %Fields* %new_obj2659, %Fields** %vdecl_slot2660
  %lhs_or_call2661 = load %Fields** %vdecl_slot2660
  %vtable_ptr2662 = getelementptr %Fields* %lhs_or_call2661, i32 0
  %vtable2663 = load %_Fields_vtable** %vtable_ptr2662
  %sumab2665 = getelementptr %_Fields_vtable* %vtable2663, i32 0, i32 2
  %sumab2664 = load %Fields* (%Fields*)** %sumab2665
  %cast_op2666 = bitcast %Fields %lhs_or_call2661 to %Fields* 
  %ret2667 = call %Fields* %sumab2664 ( %Fields* %cast_op2666 )
  %vdecl_slot2668 = alloca %Fields*
  store %Fields* %ret2667, %Fields** %vdecl_slot2668
  %lhs_or_call2669 = load %Fields** %vdecl_slot2668
  %bfield2670 = getelementptr %Fields* %lhs_or_call2669, i32 0, i32 3
  %lhs_or_call2671 = load i32* %bfield2670
  ret i32 %lhs_or_call2671
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh596:
  %bfield2649 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2650 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2651 = load i32* %afield2650
  %bop2652 = add i32 1, %lhs_or_call2651
  store i32 %bop2652, i32* %bfield2649
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh595:
  %mem_ptr2644 = call i32* @oat_malloc ( i32 8 )
  %obj2645 = bitcast i32* %mem_ptr2644 to %Object* 
  %new_obj2646 = call %Object* @_Object_ctor ( %Object* %obj2645 )
  %_this1 = bitcast %Object* %new_obj2646 to %Fields 
  %_name2647 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str479, i8** %_name2647
  %this_vtable2648 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable477, %_Fields_vtable** %this_vtable2648
  %afield2643 = getelementptr %Fields* %_this1, i32 0, i32 2
  store i32 12, i32* %afield2643
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh594:
  %_name2641 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2642 = load i8** %_name2641
  ret i8* %lhs_or_call2642
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh593:
  %_name2639 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str478, i8** %_name2639
  %this_vtable2640 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable476, %_Object_vtable** %this_vtable2640
  ret %Object* %_this1
}


