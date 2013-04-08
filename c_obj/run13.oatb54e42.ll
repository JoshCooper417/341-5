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
__fresh157:
  ret void
}


define i32 @program (i32 %argc528, { i32, [ 0 x i8* ] }* %argv526){
__fresh154:
  %argc_slot529 = alloca i32
  store i32 %argc528, i32* %argc_slot529
  %argv_slot527 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv526, { i32, [ 0 x i8* ] }** %argv_slot527
  %mem_ptr530 = call i32* @oat_malloc ( i32 12 )
  %obj531 = bitcast i32* %mem_ptr530 to %B* 
  %new_obj532 = call %B* @_B_ctor ( %B* %obj531 )
  %vdecl_slot533 = alloca %B*
  store %B* %new_obj532, %B** %vdecl_slot533
  %vdecl_slot534 = alloca i1
  store i1 0, i1* %vdecl_slot534
  %vdecl_slot535 = alloca i32
  store i32 0, i32* %vdecl_slot535
  %lhs_or_call536 = load %B** %vdecl_slot533
  %b537 = getelementptr %B* %lhs_or_call536, i32 0, i32 2
  %lhs_or_call538 = load i1* %b537
  br i1 %lhs_or_call538, label %__then153, label %__else152

__fresh155:
  br label %__then153

__then153:
  store i32 1, i32* %vdecl_slot535
  br label %__merge151

__fresh156:
  br label %__else152

__else152:
  store i32 0, i32* %vdecl_slot535
  br label %__merge151

__merge151:
  %lhs_or_call539 = load i32* %vdecl_slot535
  ret i32 %lhs_or_call539
}


define %B* @_B_ctor (%B* %_this1){
__fresh150:
  %mem_ptr521 = call i32* @oat_malloc ( i32 12 )
  %obj522 = bitcast i32* %mem_ptr521 to %A* 
  %new_obj523 = call %A* @_A_ctor ( %A* %obj522 )
  %_this1 = bitcast %A* %new_obj523 to %B 
  %_name524 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str83, i8** %_name524
  %this_vtable525 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable80, %_B_vtable** %this_vtable525
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh149:
  %mem_ptr516 = call i32* @oat_malloc ( i32 8 )
  %obj517 = bitcast i32* %mem_ptr516 to %Object* 
  %new_obj518 = call %Object* @_Object_ctor ( %Object* %obj517 )
  %_this1 = bitcast %Object* %new_obj518 to %A 
  %_name519 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str82, i8** %_name519
  %this_vtable520 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable79, %_A_vtable** %this_vtable520
  %b515 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b515
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh148:
  %_name513 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call514 = load i8** %_name513
  ret i8* %lhs_or_call514
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh147:
  %_name511 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str81, i8** %_name511
  %this_vtable512 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable78, %_Object_vtable** %this_vtable512
  ret %Object* %_this1
}


