%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@_const_str55.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str55 = alias bitcast([ 2 x i8 ]* @_const_str55.str. to i8*)@_const_str54.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str54 = alias bitcast([ 7 x i8 ]* @_const_str54.str. to i8*)@_A_vtable53 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable52, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_addToMine}, align 4
@_Object_vtable52 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh82:
  ret void
}


define i32 @program (i32 %argc318, { i32, [ 0 x i8* ] }* %argv316){
__fresh81:
  %argc_slot319 = alloca i32
  store i32 %argc318, i32* %argc_slot319
  %argv_slot317 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv316, { i32, [ 0 x i8* ] }** %argv_slot317
  %mem_ptr320 = call i32* @oat_malloc ( i32 12 )
  %obj321 = bitcast i32* %mem_ptr320 to %A* 
  %new_obj322 = call %A* @_A_ctor ( %A* %obj321, i32 1 )
  %vdecl_slot323 = alloca %A*
  store %A* %new_obj322, %A** %vdecl_slot323
  %lhs_or_call324 = load %A** %vdecl_slot323
  %vtable_ptr325 = getelementptr %A* %lhs_or_call324, i32 0
  %vtable326 = load %_A_vtable** %vtable_ptr325
  %addToMine328 = getelementptr %_A_vtable* %vtable326, i32 0, i32 2
  %addToMine327 = load i32 (%A*, i32)** %addToMine328
  %cast_op329 = bitcast %A %lhs_or_call324 to %A* 
  %ret330 = call i32 %addToMine327 ( %A* %cast_op329, i32 2 )
  ret i32 %ret330
}


define i32 @_A_addToMine (%A* %_this1, i32 %n310){
__fresh80:
  %n_slot311 = alloca i32
  store i32 %n310, i32* %n_slot311
  %mine312 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call313 = load i32* %mine312
  %lhs_or_call314 = load i32* %n_slot311
  %bop315 = add i32 %lhs_or_call313, %lhs_or_call314
  ret i32 %bop315
}


define %A* @_A_ctor (%A* %_this1, i32 %v301){
__fresh79:
  %v_slot302 = alloca i32
  store i32 %v301, i32* %v_slot302
  %mem_ptr305 = call i32* @oat_malloc ( i32 8 )
  %obj306 = bitcast i32* %mem_ptr305 to %Object* 
  %new_obj307 = call %Object* @_Object_ctor ( %Object* %obj306 )
  %_this1 = bitcast %Object* %new_obj307 to %A 
  %_name308 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str55, i8** %_name308
  %this_vtable309 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable53, %_A_vtable** %this_vtable309
  %mine303 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call304 = load i32* %v_slot302
  store i32 %lhs_or_call304, i32* %mine303
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh78:
  %_name299 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call300 = load i8** %_name299
  ret i8* %lhs_or_call300
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh77:
  %_name297 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str54, i8** %_name297
  %this_vtable298 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable52, %_Object_vtable** %this_vtable298
  ret %Object* %_this1
}


