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
@_const_str113.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str113 = alias bitcast([ 2 x i8 ]* @_const_str113.str. to i8*)@_const_str112.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str112 = alias bitcast([ 2 x i8 ]* @_const_str112.str. to i8*)@_const_str111.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str111 = alias bitcast([ 7 x i8 ]* @_const_str111.str. to i8*)@_B_vtable110 = private constant %_B_vtable {%_A_vtable* @_A_vtable109, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable109 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable108, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable108 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh159:
  ret void
}


define i32 @program (i32 %argc593, { i32, [ 0 x i8* ] }* %argv591){
__fresh158:
  %argc_slot594 = alloca i32
  store i32 %argc593, i32* %argc_slot594
  %argv_slot592 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv591, { i32, [ 0 x i8* ] }** %argv_slot592
  %mem_ptr595 = call i32* @oat_malloc ( i32 12 )
  %obj596 = bitcast i32* %mem_ptr595 to %B* 
  %new_obj597 = call %B* @_B_ctor ( %B* %obj596 )
  %vdecl_slot598 = alloca %B*
  store %B* %new_obj597, %B** %vdecl_slot598
  %lhs_or_call599 = load %B** %vdecl_slot598
  %arr600 = getelementptr %B* %lhs_or_call599, i32 0, i32 2
  %lhs_or_call601 = load { i32, [ 0 x i32 ] }** %arr600
  %ret602 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call601 )
  call void @print_string( i8* %ret602 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh157:
  %mem_ptr586 = call i32* @oat_malloc ( i32 12 )
  %obj587 = bitcast i32* %mem_ptr586 to %A* 
  %new_obj588 = call %A* @_A_ctor ( %A* %obj587 )
  %_this1 = bitcast %A* %new_obj588 to %B 
  %_name589 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str113, i8** %_name589
  %this_vtable590 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable110, %_B_vtable** %this_vtable590
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh154:
  %mem_ptr565 = call i32* @oat_malloc ( i32 8 )
  %obj566 = bitcast i32* %mem_ptr565 to %Object* 
  %new_obj567 = call %Object* @_Object_ctor ( %Object* %obj566 )
  %_this1 = bitcast %Object* %new_obj567 to %A 
  %_name568 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str112, i8** %_name568
  %arr569 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr570 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array571 = bitcast { i32, [ 0 x i32 ] }* %array_ptr570 to { i32, [ 0 x i32 ] }* 
  %_tmp111572 = alloca i32
  store i32 10, i32* %_tmp111572
  %_tmp112573 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array571, { i32, [ 0 x i32 ] }** %_tmp112573
  %vdecl_slot574 = alloca i32
  store i32 0, i32* %vdecl_slot574
  br label %__cond153

__cond153:
  %lhs_or_call575 = load i32* %vdecl_slot574
  %lhs_or_call576 = load i32* %_tmp111572
  %bop577 = icmp slt i32 %lhs_or_call575, %lhs_or_call576
  br i1 %bop577, label %__body152, label %__post151

__fresh155:
  br label %__body152

__body152:
  %lhs_or_call578 = load { i32, [ 0 x i32 ] }** %_tmp112573
  %lhs_or_call579 = load i32* %vdecl_slot574
  %bound_ptr581 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call578, i32 0, i32 0
  %bound582 = load i32* %bound_ptr581
  call void @oat_array_bounds_check( i32 %bound582, i32 %lhs_or_call579 )
  %elt580 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call578, i32 0, i32 1, i32 %lhs_or_call579
  store i32 110, i32* %elt580
  %lhs_or_call583 = load i32* %vdecl_slot574
  %bop584 = add i32 %lhs_or_call583, 1
  store i32 %bop584, i32* %vdecl_slot574
  br label %__cond153

__fresh156:
  br label %__post151

__post151:
  store { i32, [ 0 x i32 ] }* %array571, { i32, [ 0 x i32 ] }** %arr569
  %this_vtable585 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable109, %_A_vtable** %this_vtable585
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh150:
  %_name563 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call564 = load i8** %_name563
  ret i8* %lhs_or_call564
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh149:
  %_name561 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str111, i8** %_name561
  %this_vtable562 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable108, %_Object_vtable** %this_vtable562
  ret %Object* %_this1
}


