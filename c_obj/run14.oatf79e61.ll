%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@_const_str88.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str88 = alias bitcast([ 2 x i8 ]* @_const_str88.str. to i8*)@_const_str87.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str87 = alias bitcast([ 2 x i8 ]* @_const_str87.str. to i8*)@_const_str86.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str86 = alias bitcast([ 7 x i8 ]* @_const_str86.str. to i8*)@_B_vtable85 = private constant %_B_vtable {%_A_vtable* @_A_vtable84, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable84 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable83, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable83 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh112:
  ret void
}


define i32 @program (i32 %argc453, { i32, [ 0 x i8* ] }* %argv451){
__fresh111:
  %argc_slot454 = alloca i32
  store i32 %argc453, i32* %argc_slot454
  %argv_slot452 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv451, { i32, [ 0 x i8* ] }** %argv_slot452
  %mem_ptr455 = call i32* @oat_malloc ( i32 12 )
  %obj456 = bitcast i32* %mem_ptr455 to %B* 
  %new_obj457 = call %B* @_B_ctor ( %B* %obj456 )
  %vdecl_slot458 = alloca %B*
  store %B* %new_obj457, %B** %vdecl_slot458
  %lhs_or_call459 = load %B** %vdecl_slot458
  %i460 = getelementptr %B* %lhs_or_call459, i32 0, i32 2
  %lhs_or_call461 = load i32* %i460
  ret i32 %lhs_or_call461
}


define %B* @_B_ctor (%B* %_this1){
__fresh110:
  %mem_ptr446 = call i32* @oat_malloc ( i32 12 )
  %obj447 = bitcast i32* %mem_ptr446 to %A* 
  %new_obj448 = call %A* @_A_ctor ( %A* %obj447 )
  %_this1 = bitcast %A* %new_obj448 to %B 
  %_name449 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str88, i8** %_name449
  %this_vtable450 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable85, %_B_vtable** %this_vtable450
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh109:
  %mem_ptr441 = call i32* @oat_malloc ( i32 8 )
  %obj442 = bitcast i32* %mem_ptr441 to %Object* 
  %new_obj443 = call %Object* @_Object_ctor ( %Object* %obj442 )
  %_this1 = bitcast %Object* %new_obj443 to %A 
  %_name444 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str87, i8** %_name444
  %this_vtable445 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable84, %_A_vtable** %this_vtable445
  %i440 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 10, i32* %i440
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh108:
  %_name438 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call439 = load i8** %_name438
  ret i8* %lhs_or_call439
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh107:
  %_name436 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str86, i8** %_name436
  %this_vtable437 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable83, %_Object_vtable** %this_vtable437
  ret %Object* %_this1
}


