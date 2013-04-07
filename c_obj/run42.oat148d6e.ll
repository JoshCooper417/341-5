%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)* }
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
@_const_str3.str. = private unnamed_addr constant [ 2 x i8 ] c "g\00", align 4
@_const_str3 = alias bitcast([ 2 x i8 ]* @_const_str3.str. to i8*)@_A_vtable2 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f, void (%A*)* @_A_g}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh6:
  ret void
}


define i32 @program (i32 %argc15, { i32, [ 0 x i8* ] }* %argv13){
__fresh5:
  %argc_slot16 = alloca i32
  store i32 %argc15, i32* %argc_slot16
  %argv_slot14 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv13, { i32, [ 0 x i8* ] }** %argv_slot14
  %mem_ptr17 = call i32* @oat_malloc ( i32 8 )
  %obj18 = bitcast i32* %mem_ptr17 to %A* 
  %new_obj19 = call %A* @_A_ctor ( %A* %obj18 )
  %vdecl_slot20 = alloca %A*
  store %A* %new_obj19, %A** %vdecl_slot20
  %g22 = load void (%A*)** %g23
  %g23 = getelementptr %_A_vtable* @_A_vtable2, i32 0, i32 3
  %cast_op24 = bitcast %A %lhs_or_call21 to %A* 
  call void @g224( %A* %cast_op24 )
  ret i32 0
}


define void @_A_g (%A* %_this1){
__fresh4:
  call void @print_string( i8* @_const_str3 )
  ret void
}


define void @_A_f (%A* %_this1){
__fresh3:
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh2:
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %_name6 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call7 = load i8* %_name6
  %cast_op8 = bitcast i8 %lhs_or_call7 to i8* 
  ret i8* %cast_op8
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  ret %Object* %_this1
}


