%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@a28 = global %A* zeroinitializer, align 4		; initialized by @a28.init29
@_const_str27.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str27 = alias bitcast([ 6 x i8 ]* @_const_str27.str. to i8*)@_A_vtable26 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable25, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable25 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh76:
  call void @a28.init29(  )
  ret void
}


define i32 @program (i32 %argc348, { i32, [ 0 x i8* ] }* %argv346){
__fresh75:
  %argc_slot349 = alloca i32
  store i32 %argc348, i32* %argc_slot349
  %argv_slot347 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv346, { i32, [ 0 x i8* ] }** %argv_slot347
  %lhs_or_call350 = load %A** @a28
  %print352 = getelementptr %_A_vtable* @_A_vtable26, i32 0, i32 2
  %print351 = load void (%A*)** %print352
  %cast_op353 = bitcast %A %lhs_or_call350 to %A* 
  call void %print351( %A* %cast_op353 )
  ret i32 0
}


define void @a28.init29 (){
__fresh74:
  %bop342 = add i32 1, 2
  %mem_ptr343 = call i32* @oat_malloc ( i32 12 )
  %obj344 = bitcast i32* %mem_ptr343 to %A* 
  %new_obj345 = call %A* @_A_ctor ( %A* %obj344, i32 %bop342 )
  store %A* %new_obj345, %A** @a28
  ret void
}


define void @_A_print (%A* %_this1){
__fresh73:
  %x338 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call339 = load i32* %x338
  %ret340 = call i8* @string_of_int ( i32 %lhs_or_call339 )
  %ret341 = call i8* @string_cat ( i8* @_const_str27, i8* %ret340 )
  call void @print_string( i8* %ret341 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %y325){
__fresh72:
  %y_slot326 = alloca i32
  store i32 %y325, i32* %y_slot326
  %lhs_or_call327 = load %A* %_this1
  %cast_op328 = bitcast %A %lhs_or_call327 to %Object* 
  %mem_ptr329 = call i32* @oat_malloc ( i32 8 )
  %obj330 = bitcast i32* %mem_ptr329 to %Object* 
  %new_obj331 = call %Object* @_Object_ctor ( %Object* %obj330, %Object* %cast_op328 )
  %_name332 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call333 = load %A* %_this1
  %cast_op334 = bitcast %A %lhs_or_call333 to i8* 
  store i8* %cast_op334, i8** %_name332
  %x335 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call336 = load i32* %y_slot326
  store i32 %lhs_or_call336, i32* %x335
  %this_vtable337 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable337
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh71:
  %_name323 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call324 = load i8** %_name323
  ret i8* %lhs_or_call324
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh70:
  %_name319 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call320 = load %Object* %_this1
  %cast_op321 = bitcast %Object %lhs_or_call320 to i8* 
  store i8* %cast_op321, i8** %_name319
  %this_vtable322 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable322
  ret %Object* %_this1
}


