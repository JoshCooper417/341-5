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
@_const_str83.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str83 = alias bitcast([ 2 x i8 ]* @_const_str83.str. to i8*)@_const_str82.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str82 = alias bitcast([ 2 x i8 ]* @_const_str82.str. to i8*)@_const_str81.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str81 = alias bitcast([ 7 x i8 ]* @_const_str81.str. to i8*)@_B_vtable80 = private constant %_B_vtable {%_A_vtable* @_A_vtable79, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable79 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable78, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable78 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh136:
  ret void
}


define i32 @program (i32 %argc508, { i32, [ 0 x i8* ] }* %argv506){
__fresh133:
  %argc_slot509 = alloca i32
  store i32 %argc508, i32* %argc_slot509
  %argv_slot507 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv506, { i32, [ 0 x i8* ] }** %argv_slot507
  %mem_ptr510 = call i32* @oat_malloc ( i32 12 )
  %obj511 = bitcast i32* %mem_ptr510 to %B* 
  %new_obj512 = call %B* @_B_ctor ( %B* %obj511 )
  %vdecl_slot513 = alloca %B*
  store %B* %new_obj512, %B** %vdecl_slot513
  %vdecl_slot514 = alloca i1
  store i1 0, i1* %vdecl_slot514
  %vdecl_slot515 = alloca i32
  store i32 0, i32* %vdecl_slot515
  %lhs_or_call516 = load %B** %vdecl_slot513
  %b517 = getelementptr %B* %lhs_or_call516, i32 0, i32 0, i32 2
  %lhs_or_call518 = load i1* %b517
  br i1 %lhs_or_call518, label %__then132, label %__else131

__fresh134:
  br label %__then132

__then132:
  store i32 1, i32* %vdecl_slot515
  br label %__merge130

__fresh135:
  br label %__else131

__else131:
  store i32 0, i32* %vdecl_slot515
  br label %__merge130

__merge130:
  %lhs_or_call519 = load i32* %vdecl_slot515
  ret i32 %lhs_or_call519
}


define %B* @_B_ctor (%B* %_this1){
__fresh129:
  %mem_ptr501 = call i32* @oat_malloc ( i32 12 )
  %obj502 = bitcast i32* %mem_ptr501 to %A* 
  %new_obj503 = call %A* @_A_ctor ( %A* %obj502 )
  %_this1 = bitcast %A* %new_obj503 to %B 
  %_name504 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str83, i8** %_name504
  %this_vtable505 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable80, %_B_vtable** %this_vtable505
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh128:
  %mem_ptr496 = call i32* @oat_malloc ( i32 8 )
  %obj497 = bitcast i32* %mem_ptr496 to %Object* 
  %new_obj498 = call %Object* @_Object_ctor ( %Object* %obj497 )
  %_this1 = bitcast %Object* %new_obj498 to %A 
  %_name499 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str82, i8** %_name499
  %this_vtable500 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable79, %_A_vtable** %this_vtable500
  %b495 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  store i1 1, i1* %b495
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh127:
  %_name493 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call494 = load i8** %_name493
  ret i8* %lhs_or_call494
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh126:
  %_name491 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str81, i8** %_name491
  %this_vtable492 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable78, %_Object_vtable** %this_vtable492
  ret %Object* %_this1
}


