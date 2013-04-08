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


define i32 @program (i32 %argc377, { i32, [ 0 x i8* ] }* %argv375){
__fresh91:
  %argc_slot378 = alloca i32
  store i32 %argc377, i32* %argc_slot378
  %argv_slot376 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv375, { i32, [ 0 x i8* ] }** %argv_slot376
  %mem_ptr379 = call i32* @oat_malloc ( i32 12 )
  %obj380 = bitcast i32* %mem_ptr379 to %A* 
  %new_obj381 = call %A* @_A_ctor ( %A* %obj380, i8* @_const_str64 )
  %vdecl_slot382 = alloca %A*
  store %A* %new_obj381, %A** %vdecl_slot382
  %lhs_or_call383 = load %A** %vdecl_slot382
  %str384 = getelementptr %A* %lhs_or_call383, i32 0, i32 2
  %lhs_or_call385 = load i8** %str384
  call void @print_string( i8* %lhs_or_call385 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str366){
__fresh90:
  %str_slot367 = alloca i8*
  store i8* %str366, i8** %str_slot367
  %mem_ptr368 = call i32* @oat_malloc ( i32 8 )
  %obj369 = bitcast i32* %mem_ptr368 to %Object* 
  %new_obj370 = call %Object* @_Object_ctor ( %Object* %obj369 )
  %_this1 = bitcast %Object* %new_obj370 to %A 
  %_name371 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str63, i8** %_name371
  %str372 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call373 = load i8** %str_slot367
  store i8* %lhs_or_call373, i8** %str372
  %this_vtable374 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable61, %_A_vtable** %this_vtable374
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh89:
  %_name364 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call365 = load i8** %_name364
  ret i8* %lhs_or_call365
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh88:
  %_name362 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str62, i8** %_name362
  %this_vtable363 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable60, %_Object_vtable** %this_vtable363
  ret %Object* %_this1
}


