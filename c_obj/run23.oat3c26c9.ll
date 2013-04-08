%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str133.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str133 = alias bitcast([ 2 x i8 ]* @_const_str133.str. to i8*)@_const_str132.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str132 = alias bitcast([ 2 x i8 ]* @_const_str132.str. to i8*)@_const_str131.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str131 = alias bitcast([ 2 x i8 ]* @_const_str131.str. to i8*)@_const_str130.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str130 = alias bitcast([ 7 x i8 ]* @_const_str130.str. to i8*)@_B_vtable129 = private constant %_B_vtable {%_A_vtable* @_A_vtable128, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable128 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable127, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable127 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh183:
  ret void
}


define i32 @program (i32 %argc707, { i32, [ 0 x i8* ] }* %argv705){
__fresh182:
  %argc_slot708 = alloca i32
  store i32 %argc707, i32* %argc_slot708
  %argv_slot706 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv705, { i32, [ 0 x i8* ] }** %argv_slot706
  %mem_ptr709 = call i32* @oat_malloc ( i32 8 )
  %obj710 = bitcast i32* %mem_ptr709 to %B* 
  %new_obj711 = call %B* @_B_ctor ( %B* %obj710 )
  %vdecl_slot712 = alloca %B*
  store %B* %new_obj711, %B** %vdecl_slot712
  %lhs_or_call713 = load %B** %vdecl_slot712
  %f715 = getelementptr %_B_vtable* @_B_vtable129, i32 0, i32 2
  %f714 = load void (%A*)** %f715
  %cast_op716 = bitcast %B %lhs_or_call713 to %A* 
  call void %f714( %A* %cast_op716 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh181:
  %mem_ptr700 = call i32* @oat_malloc ( i32 8 )
  %obj701 = bitcast i32* %mem_ptr700 to %A* 
  %new_obj702 = call %A* @_A_ctor ( %A* %obj701 )
  %_this1 = bitcast %A* %new_obj702 to %B 
  %_name703 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str133, i8** %_name703
  %this_vtable704 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable129, %_B_vtable** %this_vtable704
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh180:
  call void @print_string( i8* @_const_str132 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh179:
  %mem_ptr695 = call i32* @oat_malloc ( i32 8 )
  %obj696 = bitcast i32* %mem_ptr695 to %Object* 
  %new_obj697 = call %Object* @_Object_ctor ( %Object* %obj696 )
  %_this1 = bitcast %Object* %new_obj697 to %A 
  %_name698 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str131, i8** %_name698
  %this_vtable699 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable128, %_A_vtable** %this_vtable699
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh178:
  %_name693 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call694 = load i8** %_name693
  ret i8* %lhs_or_call694
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh177:
  %_name691 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str130, i8** %_name691
  %this_vtable692 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable127, %_Object_vtable** %this_vtable692
  ret %Object* %_this1
}


