%B = type { %_B_vtable*, i8*, { i32, [ 0 x i32 ] }* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, { i32, [ 0 x i32 ] }* }
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
@_const_str114.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str114 = alias bitcast([ 2 x i8 ]* @_const_str114.str. to i8*)@_const_str113.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str113 = alias bitcast([ 2 x i8 ]* @_const_str113.str. to i8*)@_const_str112.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str112 = alias bitcast([ 7 x i8 ]* @_const_str112.str. to i8*)@_B_vtable111 = private constant %_B_vtable {%_A_vtable* @_A_vtable110, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable110 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable109, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable109 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh146:
  ret void
}


define i32 @program (i32 %argc608, { i32, [ 0 x i8* ] }* %argv606){
__fresh145:
  %argc_slot609 = alloca i32
  store i32 %argc608, i32* %argc_slot609
  %argv_slot607 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv606, { i32, [ 0 x i8* ] }** %argv_slot607
  %mem_ptr610 = call i32* @oat_malloc ( i32 12 )
  %obj611 = bitcast i32* %mem_ptr610 to %B* 
  %new_obj612 = call %B* @_B_ctor ( %B* %obj611, i32 4, i32 109 )
  %vdecl_slot613 = alloca %B*
  store %B* %new_obj612, %B** %vdecl_slot613
  %lhs_or_call614 = load %B** %vdecl_slot613
  %arr615 = getelementptr %B* %lhs_or_call614, i32 0, i32 2
  %lhs_or_call616 = load { i32, [ 0 x i32 ] }** %arr615
  %ret617 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call616 )
  call void @print_string( i8* %ret617 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i32 %n595, i32 %c593){
__fresh144:
  %n_slot596 = alloca i32
  store i32 %n595, i32* %n_slot596
  %c_slot594 = alloca i32
  store i32 %c593, i32* %c_slot594
  %lhs_or_call597 = load i32* %n_slot596
  %bop598 = add i32 %lhs_or_call597, 1
  %lhs_or_call599 = load i32* %c_slot594
  %bop600 = add i32 %lhs_or_call599, 1
  %mem_ptr601 = call i32* @oat_malloc ( i32 12 )
  %obj602 = bitcast i32* %mem_ptr601 to %A* 
  %new_obj603 = call %A* @_A_ctor ( %A* %obj602, i32 %bop600, i32 %bop598 )
  %_this1 = bitcast %A* %new_obj603 to %B 
  %_name604 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str114, i8** %_name604
  %this_vtable605 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable111, %_B_vtable** %this_vtable605
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %n568, i32 %c566){
__fresh141:
  %n_slot569 = alloca i32
  store i32 %n568, i32* %n_slot569
  %c_slot567 = alloca i32
  store i32 %c566, i32* %c_slot567
  %mem_ptr570 = call i32* @oat_malloc ( i32 8 )
  %obj571 = bitcast i32* %mem_ptr570 to %Object* 
  %new_obj572 = call %Object* @_Object_ctor ( %Object* %obj571 )
  %_this1 = bitcast %Object* %new_obj572 to %A 
  %_name573 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name573
  %arr574 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call575 = load i32* %n_slot569
  %array_ptr576 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call575 )
  %array577 = bitcast { i32, [ 0 x i32 ] }* %array_ptr576 to { i32, [ 0 x i32 ] }* 
  %_tmp114578 = alloca i32
  store i32 %lhs_or_call575, i32* %_tmp114578
  %_tmp115579 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array577, { i32, [ 0 x i32 ] }** %_tmp115579
  %vdecl_slot580 = alloca i32
  store i32 0, i32* %vdecl_slot580
  br label %__cond140

__cond140:
  %lhs_or_call581 = load i32* %vdecl_slot580
  %lhs_or_call582 = load i32* %_tmp114578
  %bop583 = icmp slt i32 %lhs_or_call581, %lhs_or_call582
  br i1 %bop583, label %__body139, label %__post138

__fresh142:
  br label %__body139

__body139:
  %lhs_or_call584 = load { i32, [ 0 x i32 ] }** %_tmp115579
  %lhs_or_call585 = load i32* %vdecl_slot580
  %bound_ptr587 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call584, i32 0, i32 0
  %bound588 = load i32* %bound_ptr587
  call void @oat_array_bounds_check( i32 %bound588, i32 %lhs_or_call585 )
  %elt586 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call584, i32 0, i32 1, i32 %lhs_or_call585
  %lhs_or_call589 = load i32* %c_slot567
  store i32 %lhs_or_call589, i32* %elt586
  %lhs_or_call590 = load i32* %vdecl_slot580
  %bop591 = add i32 %lhs_or_call590, 1
  store i32 %bop591, i32* %vdecl_slot580
  br label %__cond140

__fresh143:
  br label %__post138

__post138:
  store { i32, [ 0 x i32 ] }* %array577, { i32, [ 0 x i32 ] }** %arr574
  %this_vtable592 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable110, %_A_vtable** %this_vtable592
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh137:
  %_name564 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call565 = load i8** %_name564
  ret i8* %lhs_or_call565
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh136:
  %_name562 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str112, i8** %_name562
  %this_vtable563 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable109, %_Object_vtable** %this_vtable563
  ret %Object* %_this1
}


