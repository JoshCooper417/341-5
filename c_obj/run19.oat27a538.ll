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
@_const_str109.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str109 = alias bitcast([ 7 x i8 ]* @_const_str109.str. to i8*)@_const_str108.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str108 = alias bitcast([ 2 x i8 ]* @_const_str108.str. to i8*)@_const_str107.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str107 = alias bitcast([ 2 x i8 ]* @_const_str107.str. to i8*)@_const_str106.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str106 = alias bitcast([ 7 x i8 ]* @_const_str106.str. to i8*)@_B_vtable105 = private constant %_B_vtable {%_A_vtable* @_A_vtable104, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable104 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable103, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable103 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh165:
  ret void
}


define i32 @program (i32 %argc638, { i32, [ 0 x i8* ] }* %argv636){
__fresh164:
  %argc_slot639 = alloca i32
  store i32 %argc638, i32* %argc_slot639
  %argv_slot637 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv636, { i32, [ 0 x i8* ] }** %argv_slot637
  %mem_ptr640 = call i32* @oat_malloc ( i32 12 )
  %obj641 = bitcast i32* %mem_ptr640 to %B* 
  %new_obj642 = call %B* @_B_ctor ( %B* %obj641, i8* @_const_str109 )
  %vdecl_slot643 = alloca %B*
  store %B* %new_obj642, %B** %vdecl_slot643
  %lhs_or_call644 = load %B** %vdecl_slot643
  %str645 = getelementptr %B* %lhs_or_call644, i32 0, i32 2
  %lhs_or_call646 = load i8** %str645
  call void @print_string( i8* %lhs_or_call646 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str628){
__fresh163:
  %str_slot629 = alloca i8*
  store i8* %str628, i8** %str_slot629
  %lhs_or_call630 = load i8** %str_slot629
  %mem_ptr631 = call i32* @oat_malloc ( i32 12 )
  %obj632 = bitcast i32* %mem_ptr631 to %A* 
  %new_obj633 = call %A* @_A_ctor ( %A* %obj632, i8* %lhs_or_call630 )
  %_this1 = bitcast %A* %new_obj633 to %B 
  %_name634 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str108, i8** %_name634
  %this_vtable635 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable105, %_B_vtable** %this_vtable635
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str619){
__fresh162:
  %str_slot620 = alloca i8*
  store i8* %str619, i8** %str_slot620
  %mem_ptr621 = call i32* @oat_malloc ( i32 8 )
  %obj622 = bitcast i32* %mem_ptr621 to %Object* 
  %new_obj623 = call %Object* @_Object_ctor ( %Object* %obj622 )
  %_this1 = bitcast %Object* %new_obj623 to %A 
  %_name624 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str107, i8** %_name624
  %str625 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call626 = load i8** %str_slot620
  store i8* %lhs_or_call626, i8** %str625
  %this_vtable627 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable104, %_A_vtable** %this_vtable627
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh161:
  %_name617 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call618 = load i8** %_name617
  ret i8* %lhs_or_call618
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh160:
  %_name615 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str106, i8** %_name615
  %this_vtable616 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable103, %_Object_vtable** %this_vtable616
  ret %Object* %_this1
}


