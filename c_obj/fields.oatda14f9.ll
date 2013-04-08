%Fields = type { %_Fields_vtable*, i8*, i32, i32, i32 }
%_Fields_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Fields* (%Fields*)* }
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
@_Fields_vtable262 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable261, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable261 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh523:
  ret void
}


define i32 @program (i32 %argc2982, { i32, [ 0 x i8* ] }* %argv2980){
__fresh522:
  %argc_slot2983 = alloca i32
  store i32 %argc2982, i32* %argc_slot2983
  %argv_slot2981 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2980, { i32, [ 0 x i8* ] }** %argv_slot2981
  %mem_ptr2984 = call i32* @oat_malloc ( i32 20 )
  %obj2985 = bitcast i32* %mem_ptr2984 to %Fields* 
  %new_obj2986 = call %Fields* @_Fields_ctor ( %Fields* %obj2985 )
  %vdecl_slot2987 = alloca %Fields*
  store %Fields* %new_obj2986, %Fields** %vdecl_slot2987
  %lhs_or_call2988 = load %Fields** %vdecl_slot2987
  %sumab2990 = getelementptr %_Fields_vtable* @_Fields_vtable262, i32 0, i32 2
  %sumab2989 = load %Fields* (%Fields*)** %sumab2990
  %cast_op2991 = bitcast %Fields %lhs_or_call2988 to %Fields* 
  %ret2992 = call %Fields* %sumab2989 ( %Fields* %cast_op2991 )
  %vdecl_slot2993 = alloca %Fields*
  store %Fields* %ret2992, %Fields** %vdecl_slot2993
  %lhs_or_call2994 = load %Fields** %vdecl_slot2993
  %bfield2995 = getelementptr %Fields* %lhs_or_call2994, i32 0, i32 3
  %lhs_or_call2996 = load i32* %bfield2995
  ret i32 %lhs_or_call2996
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh521:
  %bfield2976 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2977 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2978 = load i32* %afield2977
  %bop2979 = add i32 1, %lhs_or_call2978
  store i32 %bop2979, i32* %bfield2976
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh520:
  %lhs_or_call2967 = load %Fields* %_this1
  %cast_op2968 = bitcast %Fields %lhs_or_call2967 to %Object* 
  %mem_ptr2969 = call i32* @oat_malloc ( i32 8 )
  %obj2970 = bitcast i32* %mem_ptr2969 to %Object* 
  %new_obj2971 = call %Object* @_Object_ctor ( %Object* %obj2970, %Object* %cast_op2968 )
  %_name2972 = getelementptr %Fields* %_this1, i32 0, i32 1
  %lhs_or_call2973 = load %Fields* %_this1
  %cast_op2974 = bitcast %Fields %lhs_or_call2973 to i8* 
  store i8* %cast_op2974, i8** %_name2972
  %this_vtable2975 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %Fields* %_this1, %_Fields_vtable* %this_vtable2975
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh519:
  %_name2965 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2966 = load i8** %_name2965
  ret i8* %lhs_or_call2966
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh518:
  %_name2961 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2962 = load %Object* %_this1
  %cast_op2963 = bitcast %Object %lhs_or_call2962 to i8* 
  store i8* %cast_op2963, i8** %_name2961
  %this_vtable2964 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable2964
  ret %Object* %_this1
}


