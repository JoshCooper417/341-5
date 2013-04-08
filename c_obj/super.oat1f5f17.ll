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


define i32 @program (i32 %argc3020, { i32, [ 0 x i8* ] }* %argv3018){
__fresh738:
  %argc_slot3021 = alloca i32
  store i32 %argc3020, i32* %argc_slot3021
  %argv_slot3019 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3018, { i32, [ 0 x i8* ] }** %argv_slot3019
  %mem_ptr3022 = call i32* @oat_malloc ( i32 8 )
  %obj3023 = bitcast i32* %mem_ptr3022 to %C* 
  %new_obj3024 = call %C* @_C_ctor ( %C* %obj3023 )
  %vdecl_slot3025 = alloca %C*
  store %C* %new_obj3024, %C** %vdecl_slot3025
  %lhs_or_call3026 = load %C** %vdecl_slot3025
  %vtable_ptr3027 = getelementptr %C* %lhs_or_call3026, i32 0
  %vtable3028 = load %_C_vtable** %vtable_ptr3027
  %six3030 = getelementptr %_C_vtable* %vtable3028, i32 0, i32 2
  %six3029 = load i32 (%C*)** %six3030
  %cast_op3031 = bitcast %C %lhs_or_call3026 to %C* 
  %ret3032 = call i32 %six3029 ( %C* %cast_op3031 )
  ret i32 %ret3032
}


define i32 @_C_six (%C* %_this1){
__fresh737:
  %vtable_ptr3011 = getelementptr %C* %_this1, i32 0
  %vtable3012 = load %_C_vtable** %vtable_ptr3011
  %six3014 = getelementptr %_C_vtable* %vtable3012, i32 0, i32 2
  %six3013 = load i32 (%C*)** %six3014
  %cast_op3015 = bitcast %C %_this1 to %C* 
  %ret3016 = call i32 %six3013 ( %C* %cast_op3015 )
  %bop3017 = add i32 %ret3016, 3
  ret i32 %bop3017
}


define %C* @_C_ctor (%C* %_this1){
__fresh736:
  %mem_ptr3006 = call i32* @oat_malloc ( i32 8 )
  %obj3007 = bitcast i32* %mem_ptr3006 to %B* 
  %new_obj3008 = call %B* @_B_ctor ( %B* %obj3007 )
  %_this1 = bitcast %B* %new_obj3008 to %C 
  %_name3009 = getelementptr %C* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str536, i8** %_name3009
  %this_vtable3010 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable532, %_C_vtable** %this_vtable3010
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh735:
  %vtable_ptr2999 = getelementptr %B* %_this1, i32 0
  %vtable3000 = load %_B_vtable** %vtable_ptr2999
  %six3002 = getelementptr %_B_vtable* %vtable3000, i32 0, i32 2
  %six3001 = load i32 (%B*)** %six3002
  %cast_op3003 = bitcast %B %_this1 to %B* 
  %ret3004 = call i32 %six3001 ( %B* %cast_op3003 )
  %bop3005 = add i32 %ret3004, 2
  ret i32 %bop3005
}


define %B* @_B_ctor (%B* %_this1){
__fresh734:
  %mem_ptr2994 = call i32* @oat_malloc ( i32 8 )
  %obj2995 = bitcast i32* %mem_ptr2994 to %A* 
  %new_obj2996 = call %A* @_A_ctor ( %A* %obj2995 )
  %_this1 = bitcast %A* %new_obj2996 to %B 
  %_name2997 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str535, i8** %_name2997
  %this_vtable2998 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable531, %_B_vtable** %this_vtable2998
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh733:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh732:
  %mem_ptr2989 = call i32* @oat_malloc ( i32 8 )
  %obj2990 = bitcast i32* %mem_ptr2989 to %Object* 
  %new_obj2991 = call %Object* @_Object_ctor ( %Object* %obj2990 )
  %_this1 = bitcast %Object* %new_obj2991 to %A 
  %_name2992 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str534, i8** %_name2992
  %this_vtable2993 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable530, %_A_vtable** %this_vtable2993
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh731:
  %_name2987 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call2988 = load i8** %_name2987
  ret i8* %lhs_or_call2988
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh730:
  %_name2985 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str533, i8** %_name2985
  %this_vtable2986 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable529, %_Object_vtable** %this_vtable2986
  ret %Object* %_this1
}


