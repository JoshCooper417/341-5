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
@_const_str102.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str102 = alias bitcast([ 2 x i8 ]* @_const_str102.str. to i8*)@_const_str101.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str101 = alias bitcast([ 2 x i8 ]* @_const_str101.str. to i8*)@_const_str100.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str100 = alias bitcast([ 7 x i8 ]* @_const_str100.str. to i8*)@_B_vtable99 = private constant %_B_vtable {%_A_vtable* @_A_vtable98, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable98 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable97, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable97 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh177:
  ret void
}


define i32 @program (i32 %argc624, { i32, [ 0 x i8* ] }* %argv622){
__fresh176:
  %argc_slot625 = alloca i32
  store i32 %argc624, i32* %argc_slot625
  %argv_slot623 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv622, { i32, [ 0 x i8* ] }** %argv_slot623
  %mem_ptr626 = call i32* @oat_malloc ( i32 12 )
  %obj627 = bitcast i32* %mem_ptr626 to %B* 
  %new_obj628 = call %B* @_B_ctor ( %B* %obj627 )
  %vdecl_slot629 = alloca %B*
  store %B* %new_obj628, %B** %vdecl_slot629
  %lhs_or_call630 = load %B** %vdecl_slot629
  %arr631 = getelementptr %B* %lhs_or_call630, i32 0, i32 2
  %lhs_or_call632 = load { i32, [ 0 x i32 ] }** %arr631
  %ret633 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call632 )
  call void @print_string( i8* %ret633 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh175:
  %mem_ptr617 = call i32* @oat_malloc ( i32 12 )
  %obj618 = bitcast i32* %mem_ptr617 to %A* 
  %new_obj619 = call %A* @_A_ctor ( %A* %obj618 )
  %_this1 = bitcast %A* %new_obj619 to %B 
  %_name620 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str102, i8** %_name620
  %this_vtable621 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable99, %_B_vtable** %this_vtable621
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh172:
  %mem_ptr596 = call i32* @oat_malloc ( i32 8 )
  %obj597 = bitcast i32* %mem_ptr596 to %Object* 
  %new_obj598 = call %Object* @_Object_ctor ( %Object* %obj597 )
  %_this1 = bitcast %Object* %new_obj598 to %A 
  %_name599 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str101, i8** %_name599
  %arr600 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr601 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array602 = bitcast { i32, [ 0 x i32 ] }* %array_ptr601 to { i32, [ 0 x i32 ] }* 
  %_tmp100603 = alloca i32
  store i32 10, i32* %_tmp100603
  %_tmp101604 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array602, { i32, [ 0 x i32 ] }** %_tmp101604
  %vdecl_slot605 = alloca i32
  store i32 0, i32* %vdecl_slot605
  br label %__cond171

__cond171:
  %lhs_or_call606 = load i32* %vdecl_slot605
  %lhs_or_call607 = load i32* %_tmp100603
  %bop608 = icmp slt i32 %lhs_or_call606, %lhs_or_call607
  br i1 %bop608, label %__body170, label %__post169

__fresh173:
  br label %__body170

__body170:
  %lhs_or_call609 = load { i32, [ 0 x i32 ] }** %_tmp101604
  %lhs_or_call610 = load i32* %vdecl_slot605
  %bound_ptr612 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call609, i32 0, i32 0
  %bound613 = load i32* %bound_ptr612
  call void @oat_array_bounds_check( i32 %bound613, i32 %lhs_or_call610 )
  %elt611 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call609, i32 0, i32 1, i32 %lhs_or_call610
  store i32 110, i32* %elt611
  %lhs_or_call614 = load i32* %vdecl_slot605
  %bop615 = add i32 %lhs_or_call614, 1
  store i32 %bop615, i32* %vdecl_slot605
  br label %__cond171

__fresh174:
  br label %__post169

__post169:
  store { i32, [ 0 x i32 ] }* %array602, { i32, [ 0 x i32 ] }** %arr600
  %this_vtable616 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable98, %_A_vtable** %this_vtable616
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh168:
  %_name594 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call595 = load i8** %_name594
  ret i8* %lhs_or_call595
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh167:
  %_name592 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str100, i8** %_name592
  %this_vtable593 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable97, %_Object_vtable** %this_vtable593
  ret %Object* %_this1
}


