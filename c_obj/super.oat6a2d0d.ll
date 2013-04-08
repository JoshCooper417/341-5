%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str536.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str536 = alias bitcast([ 2 x i8 ]* @_const_str536.str. to i8*)@_const_str535.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str535 = alias bitcast([ 2 x i8 ]* @_const_str535.str. to i8*)@_const_str534.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str534 = alias bitcast([ 2 x i8 ]* @_const_str534.str. to i8*)@_const_str533.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str533 = alias bitcast([ 7 x i8 ]* @_const_str533.str. to i8*)@_C_vtable532 = private constant %_C_vtable {%_B_vtable* @_B_vtable531, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six}, align 4
@_B_vtable531 = private constant %_B_vtable {%_A_vtable* @_A_vtable530, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six}, align 4
@_A_vtable530 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable529, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six}, align 4
@_Object_vtable529 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh739:
  ret void
}


define i32 @program (i32 %argc3031, { i32, [ 0 x i8* ] }* %argv3029){
__fresh738:
  %argc_slot3032 = alloca i32
  store i32 %argc3031, i32* %argc_slot3032
  %argv_slot3030 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3029, { i32, [ 0 x i8* ] }** %argv_slot3030
  %mem_ptr3033 = call i32* @oat_malloc ( i32 8 )
  %obj3034 = bitcast i32* %mem_ptr3033 to %C* 
  %new_obj3035 = call %C* @_C_ctor ( %C* %obj3034 )
  %vdecl_slot3036 = alloca %C*
  store %C* %new_obj3035, %C** %vdecl_slot3036
  %lhs_or_call3037 = load %C** %vdecl_slot3036
  %vtable_ptr3038 = getelementptr %C* %lhs_or_call3037, i32 0
  %vtable3039 = load %_C_vtable** %vtable_ptr3038
  %six3041 = getelementptr %_C_vtable* %vtable3039, i32 0, i32 2
  %six3040 = load i32 (%C*)** %six3041
  %cast_op3042 = bitcast %C %lhs_or_call3037 to %C* 
  %ret3043 = call i32 %six3040 ( %C* %cast_op3042 )
  ret i32 %ret3043
}


define i32 @_C_six (%C* %_this1){
__fresh737:
  %vtable_ptr3022 = getelementptr %C* %_this1, i32 0
  %vtable3023 = load %_C_vtable** %vtable_ptr3022
  %six3025 = getelementptr %_C_vtable* %vtable3023, i32 0, i32 2
  %six3024 = load i32 (%C*)** %six3025
  %cast_op3026 = bitcast %C %_this1 to %C* 
  %ret3027 = call i32 %six3024 ( %C* %cast_op3026 )
  %bop3028 = add i32 %ret3027, 3
  ret i32 %bop3028
}


define %C* @_C_ctor (%C* %_this1){
__fresh736:
  %mem_ptr3017 = call i32* @oat_malloc ( i32 8 )
  %obj3018 = bitcast i32* %mem_ptr3017 to %B* 
  %new_obj3019 = call %B* @_B_ctor ( %B* %obj3018 )
  %_this1 = bitcast %B* %new_obj3019 to %C 
  %_name3020 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str536, i8** %_name3020
  %this_vtable3021 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable532, %_C_vtable** %this_vtable3021
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh735:
  %vtable_ptr3010 = getelementptr %B* %_this1, i32 0
  %vtable3011 = load %_B_vtable** %vtable_ptr3010
  %six3013 = getelementptr %_B_vtable* %vtable3011, i32 0, i32 2
  %six3012 = load i32 (%B*)** %six3013
  %cast_op3014 = bitcast %B %_this1 to %B* 
  %ret3015 = call i32 %six3012 ( %B* %cast_op3014 )
  %bop3016 = add i32 %ret3015, 2
  ret i32 %bop3016
}


define %B* @_B_ctor (%B* %_this1){
__fresh734:
  %mem_ptr3005 = call i32* @oat_malloc ( i32 8 )
  %obj3006 = bitcast i32* %mem_ptr3005 to %A* 
  %new_obj3007 = call %A* @_A_ctor ( %A* %obj3006 )
  %_this1 = bitcast %A* %new_obj3007 to %B 
  %_name3008 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str535, i8** %_name3008
  %this_vtable3009 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable531, %_B_vtable** %this_vtable3009
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh733:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh732:
  %mem_ptr3000 = call i32* @oat_malloc ( i32 8 )
  %obj3001 = bitcast i32* %mem_ptr3000 to %Object* 
  %new_obj3002 = call %Object* @_Object_ctor ( %Object* %obj3001 )
  %_this1 = bitcast %Object* %new_obj3002 to %A 
  %_name3003 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str534, i8** %_name3003
  %this_vtable3004 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable530, %_A_vtable** %this_vtable3004
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh731:
  %_name2998 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2999 = load i8** %_name2998
  ret i8* %lhs_or_call2999
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh730:
  %_name2996 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str533, i8** %_name2996
  %this_vtable2997 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable529, %_Object_vtable** %this_vtable2997
  ret %Object* %_this1
}


