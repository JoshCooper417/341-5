%B = type { %_B_vtable*, i8*, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, void (%B*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, void (%A*)* }
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
@_B_vtable3 = private constant %_B_vtable {%_A_vtable* @_A_vtable2, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%B*)* @_B_f, i32 (%B*, i32)* @_B_h}, align 4
@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%A*)* @_A_f}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh10:
  ret void
}


define i32 @program (i32 %argc53, { i32, [ 0 x i8* ] }* %argv51){
__fresh9:
  %argc_slot54 = alloca i32
  store i32 %argc53, i32* %argc_slot54
  %argv_slot52 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv51, { i32, [ 0 x i8* ] }** %argv_slot52
  %mem_ptr55 = call i32* @oat_malloc ( i32 16 )
  %obj56 = bitcast i32* %mem_ptr55 to %B* 
  %new_obj57 = call %B* @_B_ctor ( %B* %obj56 )
  %vdecl_slot58 = alloca %B*
  store %B* %new_obj57, %B** %vdecl_slot58
  %lhs_or_call59 = load %B** %vdecl_slot58
  %h61 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 5
  %h60 = load i32 (%B*, i32)** %h61
  %cast_op62 = bitcast %B %lhs_or_call59 to %B* 
  %ret63 = call i32 %h60 ( %B* %cast_op62, i32 3 )
  ret i32 %ret63
}


define i32 @_B_h (%B* %_this1, i32 %i36){
__fresh8:
  %i_slot37 = alloca i32
  store i32 %i36, i32* %i_slot37
  %f39 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 4
  %f38 = load void (%B*)** %f39
  %cast_op40 = bitcast %B %_this1 to %B* 
  call void %f38( %B* %cast_op40 )
  %g42 = getelementptr %_B_vtable* @_B_vtable3, i32 0, i32 3
  %g41 = load void (%A*)** %g42
  %cast_op43 = bitcast %B %_this1 to %A* 
  call void %g41( %A* %cast_op43 )
  %i44 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call45 = load i32* %i44
  %j46 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call47 = load i32* %j46
  %bop48 = add i32 %lhs_or_call45, %lhs_or_call47
  %lhs_or_call49 = load i32* %i_slot37
  %bop50 = add i32 %bop48, %lhs_or_call49
  ret i32 %bop50
}


define void @_B_f (%B* %_this1){
__fresh7:
  %j32 = getelementptr %B* %_this1, i32 0, i32 3
  %j33 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call34 = load i32* %j33
  %bop35 = add i32 %lhs_or_call34, 1
  store i32 %bop35, i32* %j32
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh6:
  %this_vtable31 = getelementptr %B* %_this1, i32 0, i32 0
