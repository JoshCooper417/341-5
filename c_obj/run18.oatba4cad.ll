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
@_const_str64.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str64 = alias bitcast([ 7 x i8 ]* @_const_str64.str. to i8*)@_const_str63.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str63 = alias bitcast([ 2 x i8 ]* @_const_str63.str. to i8*)@_const_str62.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str62 = alias bitcast([ 7 x i8 ]* @_const_str62.str. to i8*)@_A_vtable61 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable60, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable60 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh92:
  ret void
}


define i32 @program (i32 %argc379, { i32, [ 0 x i8* ] }* %argv377){
__fresh91:
  %argc_slot380 = alloca i32
  store i32 %argc379, i32* %argc_slot380
  %argv_slot378 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv377, { i32, [ 0 x i8* ] }** %argv_slot378
  %mem_ptr381 = call i32* @oat_malloc ( i32 12 )
  %obj382 = bitcast i32* %mem_ptr381 to %A* 
  %new_obj383 = call %A* @_A_ctor ( %A* %obj382, i8* @_const_str64 )
  %vdecl_slot384 = alloca %A*
  store %A* %new_obj383, %A** %vdecl_slot384
  %lhs_or_call385 = load %A** %vdecl_slot384
  %str386 = getelementptr %A* %lhs_or_call385, i32 0, i32 2
  %lhs_or_call387 = load i8** %str386
  call void @print_string( i8* %lhs_or_call387 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str368){
__fresh90:
  %str_slot369 = alloca i8*
  store i8* %str368, i8** %str_slot369
  %mem_ptr370 = call i32* @oat_malloc ( i32 8 )
  %obj371 = bitcast i32* %mem_ptr370 to %Object* 
  %new_obj372 = call %Object* @_Object_ctor ( %Object* %obj371 )
  %_this1 = bitcast %Object* %new_obj372 to %A 
  %_name373 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str63, i8** %_name373
  %str374 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call375 = load i8** %str_slot369
  store i8* %lhs_or_call375, i8** %str374
  %this_vtable376 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable61, %_A_vtable** %this_vtable376
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh89:
  %_name366 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call367 = load i8** %_name366
  ret i8* %lhs_or_call367
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh88:
  %_name364 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str62, i8** %_name364
  %this_vtable365 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable60, %_Object_vtable** %this_vtable365
  ret %Object* %_this1
}


