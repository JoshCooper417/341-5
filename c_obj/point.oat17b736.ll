%Point = type { %_Point_vtable*, i8*, i32, i32 }
%_Point_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Point* (%Point*, i32, i32)* }
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
@_const_str516.str. = private unnamed_addr constant [ 6 x i8 ] c "Point\00", align 4
@_const_str516 = alias bitcast([ 6 x i8 ]* @_const_str516.str. to i8*)@_const_str515.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str515 = alias bitcast([ 7 x i8 ]* @_const_str515.str. to i8*)@_Point_vtable514 = private constant %_Point_vtable {%_Object_vtable* @_Object_vtable513, i8* (%Object*)* @_Object_get_name, %Point* (%Point*, i32, i32)* @_Point_move}, align 4
@_Object_vtable513 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh563:
  ret void
}


define i32 @program (i32 %argc2549, { i32, [ 0 x i8* ] }* %argv2547){
__fresh562:
  %argc_slot2550 = alloca i32
  store i32 %argc2549, i32* %argc_slot2550
  %argv_slot2548 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2547, { i32, [ 0 x i8* ] }** %argv_slot2548
  %mem_ptr2551 = call i32* @oat_malloc ( i32 16 )
  %obj2552 = bitcast i32* %mem_ptr2551 to %Point* 
  %new_obj2553 = call %Point* @_Point_ctor ( %Point* %obj2552 )
  %vdecl_slot2554 = alloca %Point*
  store %Point* %new_obj2553, %Point** %vdecl_slot2554
  %lhs_or_call2555 = load %Point** %vdecl_slot2554
  %move2557 = getelementptr %_Point_vtable* @_Point_vtable514, i32 0, i32 2
  %move2556 = load %Point* (%Point*, i32, i32)** %move2557
  %cast_op2558 = bitcast %Point %lhs_or_call2555 to %Point* 
  %ret2559 = call %Point* %move2556 ( %Point* %cast_op2558, i32 3, i32 4 )
  %vdecl_slot2560 = alloca %Point*
  store %Point* %ret2559, %Point** %vdecl_slot2560
  %lhs_or_call2561 = load %Point** %vdecl_slot2560
  %x2562 = getelementptr %Point* %lhs_or_call2561, i32 0, i32 2
  %lhs_or_call2563 = load i32* %x2562
  ret i32 %lhs_or_call2563
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2535, i32 %dy2533){
__fresh561:
  %dx_slot2536 = alloca i32
  store i32 %dx2535, i32* %dx_slot2536
  %dy_slot2534 = alloca i32
  store i32 %dy2533, i32* %dy_slot2534
  %x2537 = getelementptr %Point* %_this1, i32 0, i32 2
  %x2538 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2539 = load i32* %x2538
  %lhs_or_call2540 = load i32* %dx_slot2536
  %bop2541 = add i32 %lhs_or_call2539, %lhs_or_call2540
  store i32 %bop2541, i32* %x2537
  %y2542 = getelementptr %Point* %_this1, i32 0, i32 3
  %y2543 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2544 = load i32* %y2543
  %lhs_or_call2545 = load i32* %dy_slot2534
  %bop2546 = add i32 %lhs_or_call2544, %lhs_or_call2545
  store i32 %bop2546, i32* %y2542
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh560:
  %mem_ptr2528 = call i32* @oat_malloc ( i32 8 )
  %obj2529 = bitcast i32* %mem_ptr2528 to %Object* 
  %new_obj2530 = call %Object* @_Object_ctor ( %Object* %obj2529 )
  %_this1 = bitcast %Object* %new_obj2530 to %Point 
  %_name2531 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str516, i8** %_name2531
  %this_vtable2532 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable514, %_Point_vtable** %this_vtable2532
  %x2526 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %x2526
  %y2527 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %y2527
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh559:
  %_name2524 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2525 = load i8** %_name2524
  ret i8* %lhs_or_call2525
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh558:
  %_name2522 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str515, i8** %_name2522
  %this_vtable2523 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable513, %_Object_vtable** %this_vtable2523
  ret %Object* %_this1
}


