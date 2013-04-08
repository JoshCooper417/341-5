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
@_const_str100.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str100 = alias bitcast([ 2 x i8 ]* @_const_str100.str. to i8*)@_const_str99.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str99 = alias bitcast([ 2 x i8 ]* @_const_str99.str. to i8*)@_const_str98.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str98 = alias bitcast([ 7 x i8 ]* @_const_str98.str. to i8*)@_B_vtable97 = private constant %_B_vtable {%_A_vtable* @_A_vtable96, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable96 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable95, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable95 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh142:
  ret void
}


define i32 @program (i32 %argc548, { i32, [ 0 x i8* ] }* %argv546){
__fresh141:
  %argc_slot549 = alloca i32
  store i32 %argc548, i32* %argc_slot549
  %argv_slot547 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv546, { i32, [ 0 x i8* ] }** %argv_slot547
  %mem_ptr550 = call i32* @oat_malloc ( i32 12 )
  %obj551 = bitcast i32* %mem_ptr550 to %B* 
  %new_obj552 = call %B* @_B_ctor ( %B* %obj551 )
  %vdecl_slot553 = alloca %B*
  store %B* %new_obj552, %B** %vdecl_slot553
  %lhs_or_call554 = load %B** %vdecl_slot553
  %i555 = getelementptr %B* %lhs_or_call554, i32 0, i32 2
  %lhs_or_call556 = load i32* %i555
  ret i32 %lhs_or_call556
}


define %B* @_B_ctor (%B* %_this1){
__fresh140:
  %cast_op540 = bitcast %B* %_this1 to %A* 
  %mem_ptr541 = call i32* @oat_malloc ( i32 12 )
  %obj542 = bitcast i32* %mem_ptr541 to %B* 
  %new_obj543 = call %A* @_A_ctor ( %B* %obj542, %A* %cast_op540 )
  %_this1 = bitcast %A* %new_obj543 to %B 
  %_name544 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str100, i8** %_name544
  %this_vtable545 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable97, %_B_vtable** %this_vtable545
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh139:
  %cast_op534 = bitcast %A* %_this1 to %Object* 
  %mem_ptr535 = call i32* @oat_malloc ( i32 12 )
  %obj536 = bitcast i32* %mem_ptr535 to %A* 
  %new_obj537 = call %Object* @_Object_ctor ( %A* %obj536, %Object* %cast_op534 )
  %_this1 = bitcast %Object* %new_obj537 to %A 
  %_name538 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str99, i8** %_name538
  %this_vtable539 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable96, %_A_vtable** %this_vtable539
  %i533 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i533
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh138:
  %_name531 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call532 = load i8** %_name531
  ret i8* %lhs_or_call532
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh137:
  %_name529 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str98, i8** %_name529
  %this_vtable530 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable95, %_Object_vtable** %this_vtable530
  ret %Object* %_this1
}


