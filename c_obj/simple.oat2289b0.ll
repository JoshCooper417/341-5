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
__fresh97:
  call void @a50.init51(  )
  ret void
}


define i32 @program (i32 %argc317, { i32, [ 0 x i8* ] }* %argv315){
__fresh96:
  %argc_slot318 = alloca i32
  store i32 %argc317, i32* %argc_slot318
  %argv_slot316 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv315, { i32, [ 0 x i8* ] }** %argv_slot316
  %lhs_or_call319 = load %A** @a50
  %vtable_ptr320 = getelementptr %A* %lhs_or_call319, i32 0
  %vtable321 = load %_A_vtable** %vtable_ptr320
  %print323 = getelementptr %_A_vtable* %vtable321, i32 0, i32 2
  %print322 = load void (%A*)** %print323
  %cast_op324 = bitcast %A %lhs_or_call319 to %A* 
  call void %print322( %A* %cast_op324 )
  ret i32 0
}


define void @a50.init51 (){
__fresh95:
  %bop311 = add i32 1, 2
  %mem_ptr312 = call i32* @oat_malloc ( i32 12 )
  %obj313 = bitcast i32* %mem_ptr312 to %A* 
  %new_obj314 = call %A* @_A_ctor ( %A* %obj313, i32 %bop311 )
  store %A* %new_obj314, %A** @a50
  ret void
}


define void @_A_print (%A* %_this1){
__fresh94:
  %x307 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call308 = load i32* %x307
  %ret309 = call i8* @string_of_int ( i32 %lhs_or_call308 )
  %ret310 = call i8* @string_cat ( i8* @_const_str49, i8* %ret309 )
  call void @print_string( i8* %ret310 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %y298){
__fresh93:
  %y_slot299 = alloca i32
  store i32 %y298, i32* %y_slot299
  %mem_ptr300 = call i32* @oat_malloc ( i32 8 )
  %obj301 = bitcast i32* %mem_ptr300 to %Object* 
  %new_obj302 = call %Object* @_Object_ctor ( %Object* %obj301 )
  %_this1 = bitcast %Object* %new_obj302 to %A 
  %_name303 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str48, i8** %_name303
  %x304 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call305 = load i32* %y_slot299
  store i32 %lhs_or_call305, i32* %x304
  %this_vtable306 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable46, %_A_vtable** %this_vtable306
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh92:
  %_name296 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call297 = load i8** %_name296
  ret i8* %lhs_or_call297
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh91:
  %_name294 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str47, i8** %_name294
  %this_vtable295 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable45, %_Object_vtable** %this_vtable295
  ret %Object* %_this1
}


