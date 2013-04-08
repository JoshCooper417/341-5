%B = type { %_B_vtable*, i8*, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8*, i32, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)* }
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
@_B_vtable6 = private constant %_B_vtable {%_A_vtable* @_A_vtable5, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f, void (%A*)* @_A_p, i32 (%B*)* @_B_g}, align 4
@_A_vtable5 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable4, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f, void (%A*)* @_A_p}, align 4
@_Object_vtable4 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh15:
  ret void
}


define i32 @program (i32 %argc72, { i32, [ 0 x i8* ] }* %argv70){
__fresh14:
  %argc_slot73 = alloca i32
  store i32 %argc72, i32* %argc_slot73
  %argv_slot71 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv70, { i32, [ 0 x i8* ] }** %argv_slot71
  %vdecl_slot74 = alloca i32
  store i32 0, i32* %vdecl_slot74
  %lhs_or_call75 = load i32* %vdecl_slot74
  ret i32 %lhs_or_call75
}


define i32 @_B_g (%B* %_this1){
__fresh13:
  %i68 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call69 = load i32* %i68
  ret i32 %lhs_or_call69
}


define %B* @_B_ctor (%B* %_this1){
__fresh12:
  %lhs_or_call59 = load %B* %_this1
  %cast_op60 = bitcast %B %lhs_or_call59 to %A* 
  %mem_ptr61 = call i32* @oat_malloc ( i32 16 )
  %obj62 = bitcast i32* %mem_ptr61 to %A* 
  %new_obj63 = call %A* @_A_ctor ( %A* %obj62, %A* %cast_op60 )
  %_name64 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call65 = load %B* %_this1
  %cast_op66 = bitcast %B %lhs_or_call65 to i8* 
  store i8* %cast_op66, i8** %_name64
  %this_vtable67 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable67
  ret %B* %_this1
}


define void @_A_p (%A* %_this1){
__fresh11:
  ret void
}


define i32 @_A_f (%A* %_this1){
__fresh10:
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh9:
  %lhs_or_call50 = load %A* %_this1
  %cast_op51 = bitcast %A %lhs_or_call50 to %Object* 
  %mem_ptr52 = call i32* @oat_malloc ( i32 8 )
  %obj53 = bitcast i32* %mem_ptr52 to %Object* 
  %new_obj54 = call %Object* @_Object_ctor ( %Object* %obj53, %Object* %cast_op51 )
  %_name55 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call56 = load %A* %_this1
  %cast_op57 = bitcast %A %lhs_or_call56 to i8* 
  store i8* %cast_op57, i8** %_name55
  %this_vtable58 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable58
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh8:
  %_name48 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call49 = load i8** %_name48
  ret i8* %lhs_or_call49
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh7:
  %_name44 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call45 = load %Object* %_this1
  %cast_op46 = bitcast %Object %lhs_or_call45 to i8* 
  store i8* %cast_op46, i8** %_name44
  %this_vtable47 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable47
  ret %Object* %_this1
}


