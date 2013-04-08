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
@_const_str73.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str73 = alias bitcast([ 6 x i8 ]* @_const_str73.str. to i8*)@_const_str72.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str72 = alias bitcast([ 2 x i8 ]* @_const_str72.str. to i8*)@_const_str71.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str71 = alias bitcast([ 7 x i8 ]* @_const_str71.str. to i8*)@_A_vtable70 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable69, i8* (%Object*)* @_Object_get_name, i8* (%A*)* @_A_f}, align 4
@_Object_vtable69 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh130:
  ret void
}


define i32 @program (i32 %argc449, { i32, [ 0 x i8* ] }* %argv447){
__fresh127:
  %argc_slot450 = alloca i32
  store i32 %argc449, i32* %argc_slot450
  %argv_slot448 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv447, { i32, [ 0 x i8* ] }** %argv_slot448
  %mem_ptr451 = call i32* @oat_malloc ( i32 12 )
  %obj452 = bitcast i32* %mem_ptr451 to %A* 
  %new_obj453 = call %A* @_A_ctor ( %A* %obj452 )
  %vdecl_slot454 = alloca %A*
  store %A* %new_obj453, %A** %vdecl_slot454
  %lhs_or_call455 = load %A** %vdecl_slot454
  %vtable_ptr456 = getelementptr %A* %lhs_or_call455, i32 0
  %vtable457 = load %_A_vtable** %vtable_ptr456
  %f459 = getelementptr %_A_vtable* %vtable457, i32 0, i32 2
  %f458 = load i8* (%A*)** %f459
  %cast_op460 = bitcast %A %lhs_or_call455 to %A* 
  %ret461 = call i8* %f458 ( %A* %cast_op460 )
  %ifnull_slot462 = alloca i8*
  store i8* %ret461, i8** %ifnull_slot462
  %ifnull_guard463 = icmp ne i8* %ret461, null
  br i1 %ifnull_guard463, label %__then126, label %__else125

__fresh128:
  br label %__then126

__then126:
  %lhs_or_call464 = load i8** %ifnull_slot462
  call void @print_string( i8* %lhs_or_call464 )
  br label %__merge124

__fresh129:
  br label %__else125

__else125:
  br label %__merge124

__merge124:
  ret i32 0
}


define i8* @_A_f (%A* %_this1){
__fresh123:
  %str444 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str73, i8** %str444
  %str445 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call446 = load i8** %str445
  ret i8* %lhs_or_call446
}


define %A* @_A_ctor (%A* %_this1){
__fresh122:
  %mem_ptr439 = call i32* @oat_malloc ( i32 8 )
  %obj440 = bitcast i32* %mem_ptr439 to %Object* 
  %new_obj441 = call %Object* @_Object_ctor ( %Object* %obj440 )
  %_this1 = bitcast %Object* %new_obj441 to %A 
  %_name442 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str72, i8** %_name442
  %this_vtable443 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable70, %_A_vtable** %this_vtable443
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh121:
  %_name437 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call438 = load i8** %_name437
  ret i8* %lhs_or_call438
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh120:
  %_name435 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str71, i8** %_name435
  %this_vtable436 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable69, %_Object_vtable** %this_vtable436
  ret %Object* %_this1
}


