%B = type { %_B_vtable*, i8*, i1 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i1 }
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
@_const_str82.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str82 = alias bitcast([ 2 x i8 ]* @_const_str82.str. to i8*)@_const_str81.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str81 = alias bitcast([ 2 x i8 ]* @_const_str81.str. to i8*)@_const_str80.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str80 = alias bitcast([ 7 x i8 ]* @_const_str80.str. to i8*)@_B_vtable79 = private constant %_B_vtable {%_A_vtable* @_A_vtable78, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable78 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable77, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable77 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh106:
  ret void
}


define i32 @program (i32 %argc424, { i32, [ 0 x i8* ] }* %argv422){
__fresh103:
  %argc_slot425 = alloca i32
  store i32 %argc424, i32* %argc_slot425
  %argv_slot423 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv422, { i32, [ 0 x i8* ] }** %argv_slot423
  %mem_ptr426 = call i32* @oat_malloc ( i32 12 )
  %obj427 = bitcast i32* %mem_ptr426 to %B* 
  %new_obj428 = call %B* @_B_ctor ( %B* %obj427 )
  %vdecl_slot429 = alloca %B*
  store %B* %new_obj428, %B** %vdecl_slot429
  %vdecl_slot430 = alloca i1
  store i1 0, i1* %vdecl_slot430
  %vdecl_slot431 = alloca i32
  store i32 0, i32* %vdecl_slot431
  %lhs_or_call432 = load %B** %vdecl_slot429
  %b433 = getelementptr %B* %lhs_or_call432, i32 0, i32 2
  %lhs_or_call434 = load i1* %b433
  br i1 %lhs_or_call434, label %__then102, label %__else101

__fresh104:
  br label %__then102

__then102:
  store i32 1, i32* %vdecl_slot431
  br label %__merge100

__fresh105:
  br label %__else101

__else101:
  store i32 0, i32* %vdecl_slot431
  br label %__merge100

__merge100:
  %lhs_or_call435 = load i32* %vdecl_slot431
  ret i32 %lhs_or_call435
}


define %B* @_B_ctor (%B* %_this1){
__fresh99:
  %mem_ptr417 = call i32* @oat_malloc ( i32 12 )
  %obj418 = bitcast i32* %mem_ptr417 to %A* 
  %new_obj419 = call %A* @_A_ctor ( %A* %obj418 )
  %_this1 = bitcast %A* %new_obj419 to %B 
  %_name420 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str82, i8** %_name420
  %this_vtable421 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable79, %_B_vtable** %this_vtable421
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh98:
  %mem_ptr412 = call i32* @oat_malloc ( i32 8 )
  %obj413 = bitcast i32* %mem_ptr412 to %Object* 
  %new_obj414 = call %Object* @_Object_ctor ( %Object* %obj413 )
  %_this1 = bitcast %Object* %new_obj414 to %A 
  %_name415 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str81, i8** %_name415
  %this_vtable416 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable78, %_A_vtable** %this_vtable416
  %b411 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b411
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh97:
  %_name409 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call410 = load i8** %_name409
  ret i8* %lhs_or_call410
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh96:
  %_name407 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str80, i8** %_name407
  %this_vtable408 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable77, %_Object_vtable** %this_vtable408
  ret %Object* %_this1
}


