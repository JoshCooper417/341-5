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


define i32 @program (i32 %argc637, { i32, [ 0 x i8* ] }* %argv635){
__fresh164:
  %argc_slot638 = alloca i32
  store i32 %argc637, i32* %argc_slot638
  %argv_slot636 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv635, { i32, [ 0 x i8* ] }** %argv_slot636
  %mem_ptr639 = call i32* @oat_malloc ( i32 12 )
  %obj640 = bitcast i32* %mem_ptr639 to %B* 
  %new_obj641 = call %B* @_B_ctor ( %B* %obj640, i8* @_const_str109 )
  %vdecl_slot642 = alloca %B*
  store %B* %new_obj641, %B** %vdecl_slot642
  %lhs_or_call643 = load %B** %vdecl_slot642
  %str644 = getelementptr %B* %lhs_or_call643, i32 0, i32 2
  %lhs_or_call645 = load i8** %str644
  call void @print_string( i8* %lhs_or_call645 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str627){
__fresh163:
  %str_slot628 = alloca i8*
  store i8* %str627, i8** %str_slot628
  %lhs_or_call629 = load i8** %str_slot628
  %mem_ptr630 = call i32* @oat_malloc ( i32 12 )
  %obj631 = bitcast i32* %mem_ptr630 to %A* 
  %new_obj632 = call %A* @_A_ctor ( %A* %obj631, i8* %lhs_or_call629 )
  %_this1 = bitcast %A* %new_obj632 to %B 
  %_name633 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str108, i8** %_name633
  %this_vtable634 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable105, %_B_vtable** %this_vtable634
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str618){
__fresh162:
  %str_slot619 = alloca i8*
  store i8* %str618, i8** %str_slot619
  %mem_ptr620 = call i32* @oat_malloc ( i32 8 )
  %obj621 = bitcast i32* %mem_ptr620 to %Object* 
  %new_obj622 = call %Object* @_Object_ctor ( %Object* %obj621 )
  %_this1 = bitcast %Object* %new_obj622 to %A 
  %_name623 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str107, i8** %_name623
  %str624 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call625 = load i8** %str_slot619
  store i8* %lhs_or_call625, i8** %str624
  %this_vtable626 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable104, %_A_vtable** %this_vtable626
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh161:
  %_name616 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call617 = load i8** %_name616
  ret i8* %lhs_or_call617
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh160:
  %_name614 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str106, i8** %_name614
  %this_vtable615 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable103, %_Object_vtable** %this_vtable615
  ret %Object* %_this1
}


