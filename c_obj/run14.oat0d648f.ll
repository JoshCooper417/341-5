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
__fresh142:
  ret void
}


define i32 @program (i32 %argc529, { i32, [ 0 x i8* ] }* %argv527){
__fresh141:
  %argc_slot530 = alloca i32
  store i32 %argc529, i32* %argc_slot530
  %argv_slot528 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv527, { i32, [ 0 x i8* ] }** %argv_slot528
  %mem_ptr531 = call i32* @oat_malloc ( i32 12 )
  %obj532 = bitcast i32* %mem_ptr531 to %B* 
  %new_obj533 = call %B* @_B_ctor ( %B* %obj532 )
  %vdecl_slot534 = alloca %B*
  store %B* %new_obj533, %B** %vdecl_slot534
  %lhs_or_call535 = load %B** %vdecl_slot534
  %i536 = getelementptr %B* %lhs_or_call535, i32 0, i32 2
  %lhs_or_call537 = load i32* %i536
  ret i32 %lhs_or_call537
}


define %B* @_B_ctor (%B* %_this1){
__fresh140:
  %mem_ptr522 = call i32* @oat_malloc ( i32 12 )
  %obj523 = bitcast i32* %mem_ptr522 to %A* 
  %new_obj524 = call %A* @_A_ctor ( %A* %obj523 )
  %_this1 = bitcast %A* %new_obj524 to %B 
  %_name525 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str89, i8** %_name525
  %this_vtable526 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable86, %_B_vtable** %this_vtable526
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh139:
  %mem_ptr517 = call i32* @oat_malloc ( i32 8 )
  %obj518 = bitcast i32* %mem_ptr517 to %Object* 
  %new_obj519 = call %Object* @_Object_ctor ( %Object* %obj518 )
  %_this1 = bitcast %Object* %new_obj519 to %A 
  %_name520 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str88, i8** %_name520
  %this_vtable521 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable85, %_A_vtable** %this_vtable521
  %i516 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i516
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh138:
  %_name514 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call515 = load i8** %_name514
  ret i8* %lhs_or_call515
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh137:
  %_name512 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str87, i8** %_name512
  %this_vtable513 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable84, %_Object_vtable** %this_vtable513
  ret %Object* %_this1
}


