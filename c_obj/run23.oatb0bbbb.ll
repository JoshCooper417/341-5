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
@_const_str122.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str122 = alias bitcast([ 2 x i8 ]* @_const_str122.str. to i8*)@_const_str121.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str121 = alias bitcast([ 2 x i8 ]* @_const_str121.str. to i8*)@_const_str120.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str120 = alias bitcast([ 2 x i8 ]* @_const_str120.str. to i8*)@_const_str119.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str119 = alias bitcast([ 7 x i8 ]* @_const_str119.str. to i8*)@_B_vtable118 = private constant %_B_vtable {%_A_vtable* @_A_vtable117, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable117 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable116, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable116 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh183:
  ret void
}


define i32 @program (i32 %argc717, { i32, [ 0 x i8* ] }* %argv715){
__fresh182:
  %argc_slot718 = alloca i32
  store i32 %argc717, i32* %argc_slot718
  %argv_slot716 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv715, { i32, [ 0 x i8* ] }** %argv_slot716
  %mem_ptr719 = call i32* @oat_malloc ( i32 8 )
  %obj720 = bitcast i32* %mem_ptr719 to %B* 
  %new_obj721 = call %B* @_B_ctor ( %B* %obj720 )
  %vdecl_slot722 = alloca %B*
  store %B* %new_obj721, %B** %vdecl_slot722
  %lhs_or_call723 = load %B** %vdecl_slot722
  %vtable_ptr724 = getelementptr %B* %lhs_or_call723, i32 0
  %vtable725 = load %_B_vtable** %vtable_ptr724
  %f727 = getelementptr %_B_vtable* %vtable725, i32 0, i32 2
  %f726 = load void (%A*)** %f727
  %cast_op728 = bitcast %B %lhs_or_call723 to %A* 
  call void %f726( %A* %cast_op728 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh181:
  %mem_ptr710 = call i32* @oat_malloc ( i32 8 )
  %obj711 = bitcast i32* %mem_ptr710 to %A* 
  %new_obj712 = call %A* @_A_ctor ( %A* %obj711 )
  %_this1 = bitcast %A* %new_obj712 to %B 
  %_name713 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str122, i8** %_name713
  %this_vtable714 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable118, %_B_vtable** %this_vtable714
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh180:
  call void @print_string( i8* @_const_str121 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh179:
  %mem_ptr705 = call i32* @oat_malloc ( i32 8 )
  %obj706 = bitcast i32* %mem_ptr705 to %Object* 
  %new_obj707 = call %Object* @_Object_ctor ( %Object* %obj706 )
  %_this1 = bitcast %Object* %new_obj707 to %A 
  %_name708 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str120, i8** %_name708
  %this_vtable709 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable117, %_A_vtable** %this_vtable709
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh178:
  %_name703 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call704 = load i8** %_name703
  ret i8* %lhs_or_call704
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh177:
  %_name701 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str119, i8** %_name701
  %this_vtable702 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable116, %_Object_vtable** %this_vtable702
  ret %Object* %_this1
}


