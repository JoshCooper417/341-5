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
@_const_str12.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str12 = alias bitcast([ 2 x i8 ]* @_const_str12.str. to i8*)@_const_str11.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str11 = alias bitcast([ 2 x i8 ]* @_const_str11.str. to i8*)@_const_str10.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str10 = alias bitcast([ 7 x i8 ]* @_const_str10.str. to i8*)@_B_vtable9 = private constant %_B_vtable {%_A_vtable* @_A_vtable8, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f, void (%A*)* @_A_p, i32 (%B*)* @_B_g}, align 4
@_A_vtable8 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable7, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_f, void (%A*)* @_A_p}, align 4
@_Object_vtable7 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh36:
  ret void
}


define i32 @program (i32 %argc76, { i32, [ 0 x i8* ] }* %argv74){
__fresh35:
  %argc_slot77 = alloca i32
  store i32 %argc76, i32* %argc_slot77
  %argv_slot75 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv74, { i32, [ 0 x i8* ] }** %argv_slot75
  %vdecl_slot78 = alloca i32
  store i32 0, i32* %vdecl_slot78
  %lhs_or_call79 = load i32* %vdecl_slot78
  ret i32 %lhs_or_call79
}


define i32 @_B_g (%B* %_this1){
__fresh34:
  %i72 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call73 = load i32* %i72
  ret i32 %lhs_or_call73
}


define %B* @_B_ctor (%B* %_this1){
__fresh33:
  %mem_ptr67 = call i32* @oat_malloc ( i32 16 )
  %obj68 = bitcast i32* %mem_ptr67 to %A* 
  %new_obj69 = call %A* @_A_ctor ( %A* %obj68 )
  %_this1 = bitcast %A* %new_obj69 to %B 
  %_name70 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str12, i8** %_name70
  %this_vtable71 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable9, %_B_vtable** %this_vtable71
  ret %B* %_this1
}


define void @_A_p (%A* %_this1){
__fresh32:
  ret void
}


define i32 @_A_f (%A* %_this1){
__fresh31:
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh30:
  %mem_ptr62 = call i32* @oat_malloc ( i32 8 )
  %obj63 = bitcast i32* %mem_ptr62 to %Object* 
  %new_obj64 = call %Object* @_Object_ctor ( %Object* %obj63 )
  %_this1 = bitcast %Object* %new_obj64 to %A 
  %_name65 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str11, i8** %_name65
  %this_vtable66 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable8, %_A_vtable** %this_vtable66
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh29:
  %_name60 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call61 = load i8** %_name60
  ret i8* %lhs_or_call61
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh28:
  %_name58 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str10, i8** %_name58
  %this_vtable59 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable7, %_Object_vtable** %this_vtable59
  ret %Object* %_this1
}


