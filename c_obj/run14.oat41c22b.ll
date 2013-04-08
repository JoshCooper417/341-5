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
@_B_vtable49 = private constant %_B_vtable {%_A_vtable* @_A_vtable48, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable48 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable47, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable47 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh142:
  ret void
}


define i32 @program (i32 %argc626, { i32, [ 0 x i8* ] }* %argv624){
__fresh141:
  %argc_slot627 = alloca i32
  store i32 %argc626, i32* %argc_slot627
  %argv_slot625 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv624, { i32, [ 0 x i8* ] }** %argv_slot625
  %mem_ptr628 = call i32* @oat_malloc ( i32 12 )
  %obj629 = bitcast i32* %mem_ptr628 to %B* 
  %new_obj630 = call %B* @_B_ctor ( %B* %obj629 )
  %vdecl_slot631 = alloca %B*
  store %B* %new_obj630, %B** %vdecl_slot631
  %lhs_or_call632 = load %B** %vdecl_slot631
  %i633 = getelementptr %B* %lhs_or_call632, i32 0, i32 2
  %lhs_or_call634 = load i32* %i633
  ret i32 %lhs_or_call634
}


define %B* @_B_ctor (%B* %_this1){
__fresh140:
  %lhs_or_call615 = load %B* %_this1
  %cast_op616 = bitcast %B %lhs_or_call615 to %A* 
  %mem_ptr617 = call i32* @oat_malloc ( i32 12 )
  %obj618 = bitcast i32* %mem_ptr617 to %A* 
  %new_obj619 = call %A* @_A_ctor ( %A* %obj618, %A* %cast_op616 )
  %_name620 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call621 = load %B* %_this1
  %cast_op622 = bitcast %B %lhs_or_call621 to i8* 
  store i8* %cast_op622, i8** %_name620
  %this_vtable623 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable623
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh139:
  %lhs_or_call606 = load %A* %_this1
  %cast_op607 = bitcast %A %lhs_or_call606 to %Object* 
  %mem_ptr608 = call i32* @oat_malloc ( i32 8 )
  %obj609 = bitcast i32* %mem_ptr608 to %Object* 
  %new_obj610 = call %Object* @_Object_ctor ( %Object* %obj609, %Object* %cast_op607 )
  %_name611 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call612 = load %A* %_this1
  %cast_op613 = bitcast %A %lhs_or_call612 to i8* 
  store i8* %cast_op613, i8** %_name611
  %this_vtable614 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable614
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh138:
  %_name604 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call605 = load i8** %_name604
  ret i8* %lhs_or_call605
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh137:
  %_name600 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call601 = load %Object* %_this1
  %cast_op602 = bitcast %Object %lhs_or_call601 to i8* 
  store i8* %cast_op602, i8** %_name600
  %this_vtable603 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable603
  ret %Object* %_this1
}


