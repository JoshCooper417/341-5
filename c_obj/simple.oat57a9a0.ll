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
@a50 = global %A* zeroinitializer, align 4		; initialized by @a50.init51
@_const_str49.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str49 = alias bitcast([ 6 x i8 ]* @_const_str49.str. to i8*)@_const_str48.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str48 = alias bitcast([ 2 x i8 ]* @_const_str48.str. to i8*)@_const_str47.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str47 = alias bitcast([ 7 x i8 ]* @_const_str47.str. to i8*)@_A_vtable46 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable45, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable45 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh76:
  call void @a50.init51(  )
  ret void
}


define i32 @program (i32 %argc289, { i32, [ 0 x i8* ] }* %argv287){
__fresh75:
  %argc_slot290 = alloca i32
  store i32 %argc289, i32* %argc_slot290
  %argv_slot288 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv287, { i32, [ 0 x i8* ] }** %argv_slot288
  %lhs_or_call291 = load %A** @a50
  %vtable_ptr292 = getelementptr %A* %lhs_or_call291, i32 0
  %vtable293 = load %_A_vtable** %vtable_ptr292
  %print295 = getelementptr %_A_vtable* %vtable293, i32 0, i32 2
  %print294 = load void (%A*)** %print295
  %cast_op296 = bitcast %A %lhs_or_call291 to %A* 
  call void %print294( %A* %cast_op296 )
  ret i32 0
}


define void @a50.init51 (){
__fresh74:
  %bop283 = add i32 1, 2
  %mem_ptr284 = call i32* @oat_malloc ( i32 12 )
  %obj285 = bitcast i32* %mem_ptr284 to %A* 
  %new_obj286 = call %A* @_A_ctor ( %A* %obj285, i32 %bop283 )
  store %A* %new_obj286, %A** @a50
  ret void
}


define void @_A_print (%A* %_this1){
__fresh73:
  %x279 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call280 = load i32* %x279
  %ret281 = call i8* @string_of_int ( i32 %lhs_or_call280 )
  %ret282 = call i8* @string_cat ( i8* @_const_str49, i8* %ret281 )
  call void @print_string( i8* %ret282 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %y270){
__fresh72:
  %y_slot271 = alloca i32
  store i32 %y270, i32* %y_slot271
  %mem_ptr272 = call i32* @oat_malloc ( i32 8 )
  %obj273 = bitcast i32* %mem_ptr272 to %Object* 
  %new_obj274 = call %Object* @_Object_ctor ( %Object* %obj273 )
  %_this1 = bitcast %Object* %new_obj274 to %A 
  %_name275 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str48, i8** %_name275
  %x276 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call277 = load i32* %y_slot271
  store i32 %lhs_or_call277, i32* %x276
  %this_vtable278 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable46, %_A_vtable** %this_vtable278
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh71:
  %_name268 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call269 = load i8** %_name268
  ret i8* %lhs_or_call269
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh70:
  %_name266 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str47, i8** %_name266
  %this_vtable267 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable45, %_Object_vtable** %this_vtable267
  ret %Object* %_this1
}


