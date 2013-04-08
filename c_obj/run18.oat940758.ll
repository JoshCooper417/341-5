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
@_const_str36.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str36 = alias bitcast([ 7 x i8 ]* @_const_str36.str. to i8*)@_A_vtable35 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable34, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable34 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh92:
  ret void
}


define i32 @program (i32 %argc439, { i32, [ 0 x i8* ] }* %argv437){
__fresh91:
  %argc_slot440 = alloca i32
  store i32 %argc439, i32* %argc_slot440
  %argv_slot438 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv437, { i32, [ 0 x i8* ] }** %argv_slot438
  %mem_ptr441 = call i32* @oat_malloc ( i32 12 )
  %obj442 = bitcast i32* %mem_ptr441 to %A* 
  %new_obj443 = call %A* @_A_ctor ( %A* %obj442, i8* @_const_str36 )
  %vdecl_slot444 = alloca %A*
  store %A* %new_obj443, %A** %vdecl_slot444
  %lhs_or_call445 = load %A** %vdecl_slot444
  %str446 = getelementptr %A* %lhs_or_call445, i32 0, i32 2
  %lhs_or_call447 = load i8** %str446
  call void @print_string( i8* %lhs_or_call447 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str424){
__fresh90:
  %str_slot425 = alloca i8*
  store i8* %str424, i8** %str_slot425
  %lhs_or_call426 = load %A* %_this1
  %cast_op427 = bitcast %A %lhs_or_call426 to %Object* 
  %mem_ptr428 = call i32* @oat_malloc ( i32 8 )
  %obj429 = bitcast i32* %mem_ptr428 to %Object* 
  %new_obj430 = call %Object* @_Object_ctor ( %Object* %obj429, %Object* %cast_op427 )
  %_name431 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call432 = load %A* %_this1
  %cast_op433 = bitcast %A %lhs_or_call432 to i8* 
  store i8* %cast_op433, i8** %_name431
  %str434 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call435 = load i8** %str_slot425
  store i8* %lhs_or_call435, i8** %str434
  %this_vtable436 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable436
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh89:
  %_name422 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call423 = load i8** %_name422
  ret i8* %lhs_or_call423
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh88:
  %_name418 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call419 = load %Object* %_this1
  %cast_op420 = bitcast %Object %lhs_or_call419 to i8* 
  store i8* %cast_op420, i8** %_name418
  %this_vtable421 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable421
  ret %Object* %_this1
}


