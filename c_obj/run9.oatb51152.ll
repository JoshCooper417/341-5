%A = type { %_A_vtable*, i8*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%A*)* }
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
@_const_str84.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str84 = alias bitcast([ 6 x i8 ]* @_const_str84.str. to i8*)@_const_str83.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str83 = alias bitcast([ 2 x i8 ]* @_const_str83.str. to i8*)@_const_str82.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str82 = alias bitcast([ 7 x i8 ]* @_const_str82.str. to i8*)@_A_vtable81 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable80, i8* (%Object*)* @_Object_get_name, i8* (%A*)* @_A_f}, align 4
@_Object_vtable80 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh109:
  ret void
}


define i32 @program (i32 %argc439, { i32, [ 0 x i8* ] }* %argv437){
__fresh106:
  %argc_slot440 = alloca i32
  store i32 %argc439, i32* %argc_slot440
  %argv_slot438 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv437, { i32, [ 0 x i8* ] }** %argv_slot438
  %mem_ptr441 = call i32* @oat_malloc ( i32 12 )
  %obj442 = bitcast i32* %mem_ptr441 to %A* 
  %new_obj443 = call %A* @_A_ctor ( %A* %obj442 )
  %vdecl_slot444 = alloca %A*
  store %A* %new_obj443, %A** %vdecl_slot444
  %lhs_or_call445 = load %A** %vdecl_slot444
  %f447 = getelementptr %_A_vtable* @_A_vtable81, i32 0, i32 2
  %f446 = load i8* (%A*)** %f447
  %cast_op448 = bitcast %A %lhs_or_call445 to %A* 
  %ret449 = call i8* %f446 ( %A* %cast_op448 )
  %ifnull_slot450 = alloca i8*
  store i8* %ret449, i8** %ifnull_slot450
  %ifnull_guard451 = icmp ne i8* %ret449, null
  br i1 %ifnull_guard451, label %__then105, label %__else104

__fresh107:
  br label %__then105

__then105:
  %lhs_or_call452 = load i8** %ifnull_slot450
  call void @print_string( i8* %lhs_or_call452 )
  br label %__merge103

__fresh108:
  br label %__else104

__else104:
  br label %__merge103

__merge103:
  ret i32 0
}


define i8* @_A_f (%A* %_this1){
__fresh102:
  %str434 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str84, i8** %str434
  %str435 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call436 = load i8** %str435
  ret i8* %lhs_or_call436
}


define %A* @_A_ctor (%A* %_this1){
__fresh101:
  %cast_op428 = bitcast %A* %_this1 to %Object* 
  %mem_ptr429 = call i32* @oat_malloc ( i32 12 )
  %obj430 = bitcast i32* %mem_ptr429 to %A* 
  %new_obj431 = call %Object* @_Object_ctor ( %A* %obj430, %Object* %cast_op428 )
  %_this1 = bitcast %Object* %new_obj431 to %A 
  %_name432 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str83, i8** %_name432
  %this_vtable433 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable81, %_A_vtable** %this_vtable433
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh100:
  %_name426 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call427 = load i8** %_name426
  ret i8* %lhs_or_call427
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh99:
  %_name424 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str82, i8** %_name424
  %this_vtable425 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable80, %_Object_vtable** %this_vtable425
  ret %Object* %_this1
}


