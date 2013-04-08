%Point = type { %_Point_vtable*, i8*, i32, i32 }
%_Point_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Point* (%Point*, i32, i32)* }
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
@_const_str523.str. = private unnamed_addr constant [ 6 x i8 ] c "Point\00", align 4
@_const_str523 = alias bitcast([ 6 x i8 ]* @_const_str523.str. to i8*)@_const_str522.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str522 = alias bitcast([ 7 x i8 ]* @_const_str522.str. to i8*)@_Point_vtable521 = private constant %_Point_vtable {%_Object_vtable* @_Object_vtable520, i8* (%Object*)* @_Object_get_name, %Point* (%Point*, i32, i32)* @_Point_move}, align 4
@_Object_vtable520 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh868:
  ret void
}


define i32 @program (i32 %argc3069, { i32, [ 0 x i8* ] }* %argv3067){
__fresh867:
  %argc_slot3070 = alloca i32
  store i32 %argc3069, i32* %argc_slot3070
  %argv_slot3068 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3067, { i32, [ 0 x i8* ] }** %argv_slot3068
  %mem_ptr3071 = call i32* @oat_malloc ( i32 16 )
  %obj3072 = bitcast i32* %mem_ptr3071 to %Point* 
  %new_obj3073 = call %Point* @_Point_ctor ( %Point* %obj3072 )
  %vdecl_slot3074 = alloca %Point*
  store %Point* %new_obj3073, %Point** %vdecl_slot3074
  %lhs_or_call3075 = load %Point** %vdecl_slot3074
  %vtable_ptr3076 = getelementptr %Point* %lhs_or_call3075, i32 0
  %vtable3077 = load %_Point_vtable** %vtable_ptr3076
  %move3079 = getelementptr %_Point_vtable* %vtable3077, i32 0, i32 2
  %move3078 = load %Point* (%Point*, i32, i32)** %move3079
  %cast_op3080 = bitcast %Point %lhs_or_call3075 to %Point* 
  %ret3081 = call %Point* %move3078 ( %Point* %cast_op3080, i32 3, i32 4 )
  %vdecl_slot3082 = alloca %Point*
  store %Point* %ret3081, %Point** %vdecl_slot3082
  %lhs_or_call3083 = load %Point** %vdecl_slot3082
  %x3084 = getelementptr %Point* %lhs_or_call3083, i32 0, i32 2
  %lhs_or_call3085 = load i32* %x3084
  ret i32 %lhs_or_call3085
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx3055, i32 %dy3053){
__fresh866:
  %dx_slot3056 = alloca i32
  store i32 %dx3055, i32* %dx_slot3056
  %dy_slot3054 = alloca i32
  store i32 %dy3053, i32* %dy_slot3054
  %x3057 = getelementptr %Point* %_this1, i32 0, i32 2
  %x3058 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call3059 = load i32* %x3058
  %lhs_or_call3060 = load i32* %dx_slot3056
  %bop3061 = add i32 %lhs_or_call3059, %lhs_or_call3060
  store i32 %bop3061, i32* %x3057
  %y3062 = getelementptr %Point* %_this1, i32 0, i32 3
  %y3063 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call3064 = load i32* %y3063
  %lhs_or_call3065 = load i32* %dy_slot3054
  %bop3066 = add i32 %lhs_or_call3064, %lhs_or_call3065
  store i32 %bop3066, i32* %y3062
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh865:
  %mem_ptr3048 = call i32* @oat_malloc ( i32 8 )
  %obj3049 = bitcast i32* %mem_ptr3048 to %Object* 
  %new_obj3050 = call %Object* @_Object_ctor ( %Object* %obj3049 )
  %_this1 = bitcast %Object* %new_obj3050 to %Point 
  %_name3051 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str523, i8** %_name3051
  %this_vtable3052 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable521, %_Point_vtable** %this_vtable3052
  %x3046 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x3046
  %y3047 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y3047
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh864:
  %_name3044 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3045 = load i8** %_name3044
  ret i8* %lhs_or_call3045
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh863:
  %_name3042 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str522, i8** %_name3042
  %this_vtable3043 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable520, %_Object_vtable** %this_vtable3043
  ret %Object* %_this1
}


