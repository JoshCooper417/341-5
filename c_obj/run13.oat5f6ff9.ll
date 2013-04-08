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
@_B_vtable46 = private constant %_B_vtable {%_A_vtable* @_A_vtable45, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable45 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable44, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable44 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh136:
  ret void
}


define i32 @program (i32 %argc589, { i32, [ 0 x i8* ] }* %argv587){
__fresh133:
  %argc_slot590 = alloca i32
  store i32 %argc589, i32* %argc_slot590
  %argv_slot588 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv587, { i32, [ 0 x i8* ] }** %argv_slot588
  %mem_ptr591 = call i32* @oat_malloc ( i32 12 )
  %obj592 = bitcast i32* %mem_ptr591 to %B* 
  %new_obj593 = call %B* @_B_ctor ( %B* %obj592 )
  %vdecl_slot594 = alloca %B*
  store %B* %new_obj593, %B** %vdecl_slot594
  %vdecl_slot595 = alloca i32
  store i32 0, i32* %vdecl_slot595
  %lhs_or_call596 = load %B** %vdecl_slot594
  %b597 = getelementptr %B* %lhs_or_call596, i32 0, i32 2
  %lhs_or_call598 = load i1* %b597
  br i1 %lhs_or_call598, label %__then132, label %__else131

__fresh134:
  br label %__then132

__then132:
  store i32 1, i32* %vdecl_slot595
  br label %__merge130

__fresh135:
  br label %__else131

__else131:
  store i32 0, i32* %vdecl_slot595
  br label %__merge130

__merge130:
  %lhs_or_call599 = load i32* %vdecl_slot595
  ret i32 %lhs_or_call599
}


define %B* @_B_ctor (%B* %_this1){
__fresh129:
  %lhs_or_call578 = load %B* %_this1
  %cast_op579 = bitcast %B %lhs_or_call578 to %A* 
  %mem_ptr580 = call i32* @oat_malloc ( i32 12 )
  %obj581 = bitcast i32* %mem_ptr580 to %A* 
  %new_obj582 = call %A* @_A_ctor ( %A* %obj581, %A* %cast_op579 )
  %_name583 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call584 = load %B* %_this1
  %cast_op585 = bitcast %B %lhs_or_call584 to i8* 
  store i8* %cast_op585, i8** %_name583
  %this_vtable586 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable586
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh128:
  %lhs_or_call569 = load %A* %_this1
  %cast_op570 = bitcast %A %lhs_or_call569 to %Object* 
  %mem_ptr571 = call i32* @oat_malloc ( i32 8 )
  %obj572 = bitcast i32* %mem_ptr571 to %Object* 
  %new_obj573 = call %Object* @_Object_ctor ( %Object* %obj572, %Object* %cast_op570 )
  %_name574 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call575 = load %A* %_this1
  %cast_op576 = bitcast %A %lhs_or_call575 to i8* 
  store i8* %cast_op576, i8** %_name574
  %this_vtable577 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable577
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh127:
  %_name567 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call568 = load i8** %_name567
  ret i8* %lhs_or_call568
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh126:
  %_name563 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call564 = load %Object* %_this1
  %cast_op565 = bitcast %Object %lhs_or_call564 to i8* 
  store i8* %cast_op565, i8** %_name563
  %this_vtable566 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable566
  ret %Object* %_this1
}


