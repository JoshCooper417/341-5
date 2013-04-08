%B = type { %_B_vtable*, i8*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str108.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str108 = alias bitcast([ 7 x i8 ]* @_const_str108.str. to i8*)@_const_str107.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str107 = alias bitcast([ 2 x i8 ]* @_const_str107.str. to i8*)@_const_str106.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str106 = alias bitcast([ 2 x i8 ]* @_const_str106.str. to i8*)@_const_str105.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str105 = alias bitcast([ 7 x i8 ]* @_const_str105.str. to i8*)@_B_vtable104 = private constant %_B_vtable {%_A_vtable* @_A_vtable103, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable103 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable102, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable102 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh135:
  ret void
}


define i32 @program (i32 %argc553, { i32, [ 0 x i8* ] }* %argv551){
__fresh134:
  %argc_slot554 = alloca i32
  store i32 %argc553, i32* %argc_slot554
  %argv_slot552 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv551, { i32, [ 0 x i8* ] }** %argv_slot552
  %mem_ptr555 = call i32* @oat_malloc ( i32 12 )
  %obj556 = bitcast i32* %mem_ptr555 to %B* 
  %new_obj557 = call %B* @_B_ctor ( %B* %obj556, i8* @_const_str108 )
  %vdecl_slot558 = alloca %B*
  store %B* %new_obj557, %B** %vdecl_slot558
  %lhs_or_call559 = load %B** %vdecl_slot558
  %str560 = getelementptr %B* %lhs_or_call559, i32 0, i32 2
  %lhs_or_call561 = load i8** %str560
  call void @print_string( i8* %lhs_or_call561 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1, i8* %str543){
__fresh133:
  %str_slot544 = alloca i8*
  store i8* %str543, i8** %str_slot544
  %lhs_or_call545 = load i8** %str_slot544
  %mem_ptr546 = call i32* @oat_malloc ( i32 12 )
  %obj547 = bitcast i32* %mem_ptr546 to %A* 
  %new_obj548 = call %A* @_A_ctor ( %A* %obj547, i8* %lhs_or_call545 )
  %_this1 = bitcast %A* %new_obj548 to %B 
  %_name549 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str107, i8** %_name549
  %this_vtable550 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable104, %_B_vtable** %this_vtable550
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i8* %str534){
__fresh132:
  %str_slot535 = alloca i8*
  store i8* %str534, i8** %str_slot535
  %mem_ptr536 = call i32* @oat_malloc ( i32 8 )
  %obj537 = bitcast i32* %mem_ptr536 to %Object* 
  %new_obj538 = call %Object* @_Object_ctor ( %Object* %obj537 )
  %_this1 = bitcast %Object* %new_obj538 to %A 
  %_name539 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str106, i8** %_name539
  %str540 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call541 = load i8** %str_slot535
  store i8* %lhs_or_call541, i8** %str540
  %this_vtable542 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable103, %_A_vtable** %this_vtable542
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh131:
  %_name532 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call533 = load i8** %_name532
  ret i8* %lhs_or_call533
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh130:
  %_name530 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str105, i8** %_name530
  %this_vtable531 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable102, %_Object_vtable** %this_vtable531
  ret %Object* %_this1
}


