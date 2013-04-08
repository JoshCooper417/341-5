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
@_const_str120.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str120 = alias bitcast([ 7 x i8 ]* @_const_str120.str. to i8*)@_const_str119.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str119 = alias bitcast([ 2 x i8 ]* @_const_str119.str. to i8*)@_const_str118.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str118 = alias bitcast([ 2 x i8 ]* @_const_str118.str. to i8*)@_const_str117.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str117 = alias bitcast([ 7 x i8 ]* @_const_str117.str. to i8*)@_B_vtable116 = private constant %_B_vtable {%_A_vtable* @_A_vtable115, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable115 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable114, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable114 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh165:
  ret void
}


define i32 @program (i32 %argc626, { i32, [ 0 x i8* ] }* %argv624){
__fresh164:
  %argc_slot627 = alloca i32
  store i32 %argc626, i32* %argc_slot627
  %argv_slot625 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv624, { i32, [ 0 x i8* ] }** %argv_slot625
  %mem_ptr628 = call i32* @oat_malloc ( i32 12 )
  %obj629 = bitcast i32* %mem_ptr628 to %B* 
  %new_obj630 = call %B* @_B_ctor ( %B* %obj629, i8* @_const_str120 )
  %vdecl_slot631 = alloca %B*
  store %B* %new_obj630, %B** %vdecl_slot631
  %lhs_or_call632 = load %B** %vdecl_slot631
  %str633 = getelementptr %B* %lhs_or_call632, i32 0, i32 2
  %lhs_or_call634 = load i8** %str633
  call void @print_string( i8* %lhs_or_call634 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str616){
__fresh163:
  %str_slot617 = alloca i8*
  store i8* %str616, i8** %str_slot617
  %lhs_or_call618 = load i8** %str_slot617
  %mem_ptr619 = call i32* @oat_malloc ( i32 12 )
  %obj620 = bitcast i32* %mem_ptr619 to %A* 
  %new_obj621 = call %A* @_A_ctor ( %A* %obj620, i8* %lhs_or_call618 )
  %_this1 = bitcast %A* %new_obj621 to %B 
  %_name622 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str119, i8** %_name622
  %this_vtable623 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable116, %_B_vtable** %this_vtable623
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str607){
__fresh162:
  %str_slot608 = alloca i8*
  store i8* %str607, i8** %str_slot608
  %mem_ptr609 = call i32* @oat_malloc ( i32 8 )
  %obj610 = bitcast i32* %mem_ptr609 to %Object* 
  %new_obj611 = call %Object* @_Object_ctor ( %Object* %obj610 )
  %_this1 = bitcast %Object* %new_obj611 to %A 
  %_name612 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str118, i8** %_name612
  %str613 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call614 = load i8** %str_slot608
  store i8* %lhs_or_call614, i8** %str613
  %this_vtable615 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable115, %_A_vtable** %this_vtable615
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh161:
  %_name605 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call606 = load i8** %_name605
  ret i8* %lhs_or_call606
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh160:
  %_name603 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str117, i8** %_name603
  %this_vtable604 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable114, %_Object_vtable** %this_vtable604
  ret %Object* %_this1
}


