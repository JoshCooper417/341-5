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
@a61 = global %A* zeroinitializer, align 4		; initialized by @a61.init62
@_const_str60.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str60 = alias bitcast([ 6 x i8 ]* @_const_str60.str. to i8*)@_const_str59.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str59 = alias bitcast([ 2 x i8 ]* @_const_str59.str. to i8*)@_const_str58.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str58 = alias bitcast([ 7 x i8 ]* @_const_str58.str. to i8*)@_A_vtable57 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable56, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable56 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh76:
  call void @a61.init62(  )
  ret void
}


define i32 @program (i32 %argc309, { i32, [ 0 x i8* ] }* %argv307){
__fresh75:
  %argc_slot310 = alloca i32
  store i32 %argc309, i32* %argc_slot310
  %argv_slot308 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv307, { i32, [ 0 x i8* ] }** %argv_slot308
  %lhs_or_call311 = load %A** @a61
  %print313 = getelementptr %_A_vtable* @_A_vtable57, i32 0, i32 2
  %print312 = load void (%A*)** %print313
  %cast_op314 = bitcast %A %lhs_or_call311 to %A* 
  call void %print312( %A* %cast_op314 )
  ret i32 0
}


define void @a61.init62 (){
__fresh74:
  %bop303 = add i32 1, 2
  %mem_ptr304 = call i32* @oat_malloc ( i32 12 )
  %obj305 = bitcast i32* %mem_ptr304 to %A* 
  %new_obj306 = call %A* @_A_ctor ( %A* %obj305, i32 %bop303 )
  store %A* %new_obj306, %A** @a61
  ret void
}


define void @_A_print (%A* %_this1){
__fresh73:
  %x299 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call300 = load i32* %x299
  %ret301 = call i8* @string_of_int ( i32 %lhs_or_call300 )
  %ret302 = call i8* @string_cat ( i8* @_const_str60, i8* %ret301 )
  call void @print_string( i8* %ret302 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %y289){
__fresh72:
  %y_slot290 = alloca i32
  store i32 %y289, i32* %y_slot290
  %cast_op291 = bitcast %A* %_this1 to %Object* 
  %mem_ptr292 = call i32* @oat_malloc ( i32 12 )
  %obj293 = bitcast i32* %mem_ptr292 to %A* 
  %new_obj294 = call %Object* @_Object_ctor ( %A* %obj293, %Object* %cast_op291 )
  %_this1 = bitcast %Object* %new_obj294 to %A 
  %_name295 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str59, i8** %_name295
  %x296 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call297 = load i32* %y_slot290
  store i32 %lhs_or_call297, i32* %x296
  %this_vtable298 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable57, %_A_vtable** %this_vtable298
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh71:
  %_name287 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call288 = load i8** %_name287
  ret i8* %lhs_or_call288
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh70:
  %_name285 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str58, i8** %_name285
  %this_vtable286 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable56, %_Object_vtable** %this_vtable286
  ret %Object* %_this1
}


