%B = type { %_B_vtable*, i8*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str96.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str96 = alias bitcast([ 2 x i8 ]* @_const_str96.str. to i8*)@_const_str95.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str95 = alias bitcast([ 4 x i8 ]* @_const_str95.str. to i8*)@_const_str94.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str94 = alias bitcast([ 2 x i8 ]* @_const_str94.str. to i8*)@_const_str93.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str93 = alias bitcast([ 7 x i8 ]* @_const_str93.str. to i8*)@_B_vtable92 = private constant %_B_vtable {%_A_vtable* @_A_vtable91, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable91 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable90, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable90 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh169:
  ret void
}


define i32 @program (i32 %argc583, { i32, [ 0 x i8* ] }* %argv581){
__fresh168:
  %argc_slot584 = alloca i32
  store i32 %argc583, i32* %argc_slot584
  %argv_slot582 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv581, { i32, [ 0 x i8* ] }** %argv_slot582
  %mem_ptr585 = call i32* @oat_malloc ( i32 12 )
  %obj586 = bitcast i32* %mem_ptr585 to %B* 
  %new_obj587 = call %B* @_B_ctor ( %B* %obj586 )
  %vdecl_slot588 = alloca %B*
  store %B* %new_obj587, %B** %vdecl_slot588
  %lhs_or_call589 = load %B** %vdecl_slot588
  %str590 = getelementptr %B* %lhs_or_call589, i32 0, i32 2
  %lhs_or_call591 = load i8** %str590
  call void @print_string( i8* %lhs_or_call591 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh167:
  %mem_ptr576 = call i32* @oat_malloc ( i32 12 )
  %obj577 = bitcast i32* %mem_ptr576 to %A* 
  %new_obj578 = call %A* @_A_ctor ( %A* %obj577 )
  %_this1 = bitcast %A* %new_obj578 to %B 
  %_name579 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str96, i8** %_name579
  %this_vtable580 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable92, %_B_vtable** %this_vtable580
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh166:
  %mem_ptr570 = call i32* @oat_malloc ( i32 8 )
  %obj571 = bitcast i32* %mem_ptr570 to %Object* 
  %new_obj572 = call %Object* @_Object_ctor ( %Object* %obj571 )
  %_this1 = bitcast %Object* %new_obj572 to %A 
  %_name573 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str94, i8** %_name573
  %str574 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str95, i8** %str574
  %this_vtable575 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable91, %_A_vtable** %this_vtable575
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh165:
  %_name568 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call569 = load i8** %_name568
  ret i8* %lhs_or_call569
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh164:
  %_name566 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str93, i8** %_name566
  %this_vtable567 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable90, %_Object_vtable** %this_vtable567
  ret %Object* %_this1
}


