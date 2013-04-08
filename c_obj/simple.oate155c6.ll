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


define i32 @program (i32 %argc308, { i32, [ 0 x i8* ] }* %argv306){
__fresh75:
  %argc_slot309 = alloca i32
  store i32 %argc308, i32* %argc_slot309
  %argv_slot307 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv306, { i32, [ 0 x i8* ] }** %argv_slot307
  %lhs_or_call310 = load %A** @a61
  %print312 = getelementptr %_A_vtable* @_A_vtable57, i32 0, i32 2
  %print311 = load void (%A*)** %print312
  %cast_op313 = bitcast %A %lhs_or_call310 to %A* 
  call void %print311( %A* %cast_op313 )
  ret i32 0
}


define void @a61.init62 (){
__fresh74:
  %bop302 = add i32 1, 2
  %mem_ptr303 = call i32* @oat_malloc ( i32 12 )
  %obj304 = bitcast i32* %mem_ptr303 to %A* 
  %new_obj305 = call %A* @_A_ctor ( %A* %obj304, i32 %bop302 )
  store %A* %new_obj305, %A** @a61
  ret void
}


define void @_A_print (%A* %_this1){
__fresh73:
  %x298 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call299 = load i32* %x298
  %ret300 = call i8* @string_of_int ( i32 %lhs_or_call299 )
  %ret301 = call i8* @string_cat ( i8* @_const_str60, i8* %ret300 )
  call void @print_string( i8* %ret301 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %y288){
__fresh72:
  %y_slot289 = alloca i32
  store i32 %y288, i32* %y_slot289
  %cast_op290 = bitcast %A* %_this1 to %Object* 
  %mem_ptr291 = call i32* @oat_malloc ( i32 12 )
  %obj292 = bitcast i32* %mem_ptr291 to %A* 
  %new_obj293 = call %Object* @_Object_ctor ( %A* %obj292, %Object* %cast_op290 )
  %_this1 = bitcast %Object* %new_obj293 to %A 
  %_name294 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str59, i8** %_name294
  %x295 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call296 = load i32* %y_slot289
  store i32 %lhs_or_call296, i32* %x295
  %this_vtable297 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable57, %_A_vtable** %this_vtable297
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh71:
  %_name286 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call287 = load i8** %_name286
  ret i8* %lhs_or_call287
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh70:
  %_name284 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str58, i8** %_name284
  %this_vtable285 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable56, %_Object_vtable** %this_vtable285
  ret %Object* %_this1
}


