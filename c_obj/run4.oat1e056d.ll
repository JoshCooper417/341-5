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
@_const_str30.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str30 = alias bitcast([ 2 x i8 ]* @_const_str30.str. to i8*)@_const_str29.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str29 = alias bitcast([ 7 x i8 ]* @_const_str29.str. to i8*)@_A_vtable28 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable27, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable27 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh34:
  ret void
}


define i32 @program (i32 %argc116, { i32, [ 0 x i8* ] }* %argv114){
__fresh33:
  %argc_slot117 = alloca i32
  store i32 %argc116, i32* %argc_slot117
  %argv_slot115 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv114, { i32, [ 0 x i8* ] }** %argv_slot115
  %mem_ptr118 = call i32* @oat_malloc ( i32 12 )
  %obj119 = bitcast i32* %mem_ptr118 to %A* 
  %new_obj120 = call %A* @_A_ctor ( %A* %obj119 )
  %vdecl_slot121 = alloca %A*
  store %A* %new_obj120, %A** %vdecl_slot121
  %lhs_or_call122 = load %A** %vdecl_slot121
  %i123 = getelementptr %A* %lhs_or_call122, i32 0, i32 2
  %lhs_or_call124 = load i32* %i123
  ret i32 %lhs_or_call124
}


define %A* @_A_ctor (%A* %_this1){
__fresh32:
  %mem_ptr109 = call i32* @oat_malloc ( i32 8 )
  %obj110 = bitcast i32* %mem_ptr109 to %Object* 
  %new_obj111 = call %Object* @_Object_ctor ( %Object* %obj110 )
  %_this1 = bitcast %Object* %new_obj111 to %A 
  %_name112 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str30, i8** %_name112
  %this_vtable113 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable28, %_A_vtable** %this_vtable113
  %i108 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i108
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh31:
  %_name106 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call107 = load i8** %_name106
  ret i8* %lhs_or_call107
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh30:
  %_name104 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str29, i8** %_name104
  %this_vtable105 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable27, %_Object_vtable** %this_vtable105
  ret %Object* %_this1
}


