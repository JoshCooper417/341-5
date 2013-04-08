%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
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
@_const_str8.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str8 = alias bitcast([ 2 x i8 ]* @_const_str8.str. to i8*)@_const_str7.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str7 = alias bitcast([ 2 x i8 ]* @_const_str7.str. to i8*)@_const_str6.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str6 = alias bitcast([ 2 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str5 = alias bitcast([ 7 x i8 ]* @_const_str5.str. to i8*)@_C_vtable4 = private constant %_C_vtable {%_B_vtable* @_B_vtable3, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh6:
  ret void
}


define i32 @program (i32 %argc29, { i32, [ 0 x i8* ] }* %argv27){
__fresh5:
  %argc_slot30 = alloca i32
  store i32 %argc29, i32* %argc_slot30
  %argv_slot28 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv27, { i32, [ 0 x i8* ] }** %argv_slot28
  %mem_ptr31 = call i32* @oat_malloc ( i32 12 )
  %obj32 = bitcast i32* %mem_ptr31 to %A* 
  %new_obj33 = call %A* @_A_ctor ( %A* %obj32 )
  %vdecl_slot34 = alloca %A*
  store %A* %new_obj33, %A** %vdecl_slot34
  %unop35 = sub i32 0, 1
  %vdecl_slot36 = alloca i32
  store i32 %unop35, i32* %vdecl_slot36
  %lhs_or_call37 = load i32* %vdecl_slot36
  ret i32 %lhs_or_call37
}


define %C* @_C_ctor (%C* %_this1){
__fresh4:
  %cast_op21 = bitcast %C* %_this1 to %B* 
  %mem_ptr22 = call i32* @oat_malloc ( i32 12 )
  %obj23 = bitcast i32* %mem_ptr22 to %C* 
  %new_obj24 = call %B* @_B_ctor ( %C* %obj23, %B* %cast_op21 )
  %_this1 = bitcast %B* %new_obj24 to %C 
  %_name25 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str8, i8** %_name25
  %this_vtable26 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable4, %_C_vtable** %this_vtable26
  %i20 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i20
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh3:
  %cast_op14 = bitcast %B* %_this1 to %A* 
  %mem_ptr15 = call i32* @oat_malloc ( i32 12 )
  %obj16 = bitcast i32* %mem_ptr15 to %B* 
  %new_obj17 = call %A* @_A_ctor ( %B* %obj16, %A* %cast_op14 )
  %_this1 = bitcast %A* %new_obj17 to %B 
  %_name18 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str7, i8** %_name18
  %this_vtable19 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable3, %_B_vtable** %this_vtable19
  %i13 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i13
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  %cast_op7 = bitcast %A* %_this1 to %Object* 
  %mem_ptr8 = call i32* @oat_malloc ( i32 12 )
  %obj9 = bitcast i32* %mem_ptr8 to %A* 
  %new_obj10 = call %Object* @_Object_ctor ( %A* %obj9, %Object* %cast_op7 )
  %_this1 = bitcast %Object* %new_obj10 to %A 
  %_name11 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %_name11
  %this_vtable12 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable2, %_A_vtable** %this_vtable12
  %i6 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i6
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %_name4 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5 = load i8** %_name4
  ret i8* %lhs_or_call5
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %_name2 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str5, i8** %_name2
  %this_vtable3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %this_vtable3
  ret %Object* %_this1
}


