%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str75.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str75 = alias bitcast([ 7 x i8 ]* @_const_str75.str. to i8*)@_const_str74.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str74 = alias bitcast([ 2 x i8 ]* @_const_str74.str. to i8*)@_const_str73.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str73 = alias bitcast([ 7 x i8 ]* @_const_str73.str. to i8*)@_A_vtable72 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable71, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable71 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh92:
  ret void
}


define i32 @program (i32 %argc373, { i32, [ 0 x i8* ] }* %argv371){
__fresh91:
  %argc_slot374 = alloca i32
  store i32 %argc373, i32* %argc_slot374
  %argv_slot372 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv371, { i32, [ 0 x i8* ] }** %argv_slot372
  %mem_ptr375 = call i32* @oat_malloc ( i32 12 )
  %obj376 = bitcast i32* %mem_ptr375 to %A* 
  %new_obj377 = call %A* @_A_ctor ( %A* %obj376, i8* @_const_str75 )
  %vdecl_slot378 = alloca %A*
  store %A* %new_obj377, %A** %vdecl_slot378
  %lhs_or_call379 = load %A** %vdecl_slot378
  %str380 = getelementptr %A* %lhs_or_call379, i32 0, i32 2
  %lhs_or_call381 = load i8** %str380
  call void @print_string( i8* %lhs_or_call381 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str362){
__fresh90:
  %str_slot363 = alloca i8*
  store i8* %str362, i8** %str_slot363
  %mem_ptr364 = call i32* @oat_malloc ( i32 8 )
  %obj365 = bitcast i32* %mem_ptr364 to %Object* 
  %new_obj366 = call %Object* @_Object_ctor ( %Object* %obj365 )
  %_this1 = bitcast %Object* %new_obj366 to %A 
  %_name367 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str74, i8** %_name367
  %str368 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call369 = load i8** %str_slot363
  store i8* %lhs_or_call369, i8** %str368
  %this_vtable370 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable72, %_A_vtable** %this_vtable370
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh89:
  %_name360 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call361 = load i8** %_name360
  ret i8* %lhs_or_call361
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh88:
  %_name358 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str73, i8** %_name358
  %this_vtable359 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable71, %_Object_vtable** %this_vtable359
  ret %Object* %_this1
}


