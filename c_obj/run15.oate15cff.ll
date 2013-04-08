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
@_const_str107.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str107 = alias bitcast([ 2 x i8 ]* @_const_str107.str. to i8*)@_const_str106.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str106 = alias bitcast([ 4 x i8 ]* @_const_str106.str. to i8*)@_const_str105.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str105 = alias bitcast([ 2 x i8 ]* @_const_str105.str. to i8*)@_const_str104.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str104 = alias bitcast([ 7 x i8 ]* @_const_str104.str. to i8*)@_B_vtable103 = private constant %_B_vtable {%_A_vtable* @_A_vtable102, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable102 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable101, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable101 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh148:
  ret void
}


define i32 @program (i32 %argc576, { i32, [ 0 x i8* ] }* %argv574){
__fresh147:
  %argc_slot577 = alloca i32
  store i32 %argc576, i32* %argc_slot577
  %argv_slot575 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv574, { i32, [ 0 x i8* ] }** %argv_slot575
  %mem_ptr578 = call i32* @oat_malloc ( i32 12 )
  %obj579 = bitcast i32* %mem_ptr578 to %B* 
  %new_obj580 = call %B* @_B_ctor ( %B* %obj579 )
  %vdecl_slot581 = alloca %B*
  store %B* %new_obj580, %B** %vdecl_slot581
  %lhs_or_call582 = load %B** %vdecl_slot581
  %str583 = getelementptr %B* %lhs_or_call582, i32 0, i32 2
  %lhs_or_call584 = load i8** %str583
  call void @print_string( i8* %lhs_or_call584 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh146:
  %cast_op568 = bitcast %B* %_this1 to %A* 
  %mem_ptr569 = call i32* @oat_malloc ( i32 12 )
  %obj570 = bitcast i32* %mem_ptr569 to %B* 
  %new_obj571 = call %A* @_A_ctor ( %B* %obj570, %A* %cast_op568 )
  %_this1 = bitcast %A* %new_obj571 to %B 
  %_name572 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str107, i8** %_name572
  %this_vtable573 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable103, %_B_vtable** %this_vtable573
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh145:
  %cast_op561 = bitcast %A* %_this1 to %Object* 
  %mem_ptr562 = call i32* @oat_malloc ( i32 12 )
  %obj563 = bitcast i32* %mem_ptr562 to %A* 
  %new_obj564 = call %Object* @_Object_ctor ( %A* %obj563, %Object* %cast_op561 )
  %_this1 = bitcast %Object* %new_obj564 to %A 
  %_name565 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str105, i8** %_name565
  %str566 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str106, i8** %str566
  %this_vtable567 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable102, %_A_vtable** %this_vtable567
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh144:
  %_name559 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call560 = load i8** %_name559
  ret i8* %lhs_or_call560
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh143:
  %_name557 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str104, i8** %_name557
  %this_vtable558 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable101, %_Object_vtable** %this_vtable558
  ret %Object* %_this1
}


