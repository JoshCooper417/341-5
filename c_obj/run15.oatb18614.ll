%B = type { %_B_vtable*, i8*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@_const_str95.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str95 = alias bitcast([ 2 x i8 ]* @_const_str95.str. to i8*)@_const_str94.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str94 = alias bitcast([ 4 x i8 ]* @_const_str94.str. to i8*)@_const_str93.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str93 = alias bitcast([ 2 x i8 ]* @_const_str93.str. to i8*)@_const_str92.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str92 = alias bitcast([ 7 x i8 ]* @_const_str92.str. to i8*)@_B_vtable91 = private constant %_B_vtable {%_A_vtable* @_A_vtable90, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable90 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable89, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable89 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh118:
  ret void
}


define i32 @program (i32 %argc479, { i32, [ 0 x i8* ] }* %argv477){
__fresh117:
  %argc_slot480 = alloca i32
  store i32 %argc479, i32* %argc_slot480
  %argv_slot478 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv477, { i32, [ 0 x i8* ] }** %argv_slot478
  %mem_ptr481 = call i32* @oat_malloc ( i32 12 )
  %obj482 = bitcast i32* %mem_ptr481 to %B* 
  %new_obj483 = call %B* @_B_ctor ( %B* %obj482 )
  %vdecl_slot484 = alloca %B*
  store %B* %new_obj483, %B** %vdecl_slot484
  %lhs_or_call485 = load %B** %vdecl_slot484
  %str486 = getelementptr %B* %lhs_or_call485, i32 0, i32 2
  %lhs_or_call487 = load i8** %str486
  call void @print_string( i8* %lhs_or_call487 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh116:
  %mem_ptr472 = call i32* @oat_malloc ( i32 12 )
  %obj473 = bitcast i32* %mem_ptr472 to %A* 
  %new_obj474 = call %A* @_A_ctor ( %A* %obj473 )
  %_this1 = bitcast %A* %new_obj474 to %B 
  %_name475 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str95, i8** %_name475
  %this_vtable476 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable91, %_B_vtable** %this_vtable476
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh115:
  %mem_ptr466 = call i32* @oat_malloc ( i32 8 )
  %obj467 = bitcast i32* %mem_ptr466 to %Object* 
  %new_obj468 = call %Object* @_Object_ctor ( %Object* %obj467 )
  %_this1 = bitcast %Object* %new_obj468 to %A 
  %_name469 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str93, i8** %_name469
  %str470 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str94, i8** %str470
  %this_vtable471 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable90, %_A_vtable** %this_vtable471
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh114:
  %_name464 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call465 = load i8** %_name464
  ret i8* %lhs_or_call465
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh113:
  %_name462 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str92, i8** %_name462
  %this_vtable463 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable89, %_Object_vtable** %this_vtable463
  ret %Object* %_this1
}


