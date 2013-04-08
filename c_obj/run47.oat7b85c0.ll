%A = type { %_A_vtable*, i8* }
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
@a3318 = global %A* zeroinitializer, align 4		; initialized by @a3318.init319
@a2316 = global %A* zeroinitializer, align 4		; initialized by @a2316.init317
@a1314 = global %A* zeroinitializer, align 4		; initialized by @a1314.init315
@_const_str313.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str313 = alias bitcast([ 2 x i8 ]* @_const_str313.str. to i8*)@_const_str312.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str312 = alias bitcast([ 2 x i8 ]* @_const_str312.str. to i8*)@_const_str311.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str311 = alias bitcast([ 7 x i8 ]* @_const_str311.str. to i8*)@_A_vtable310 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable309, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable309 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh355:
  call void @a1314.init315(  )
  call void @a2316.init317(  )
  call void @a3318.init319(  )
  ret void
}


define i32 @program (i32 %argc1575, { i32, [ 0 x i8* ] }* %argv1573){
__fresh354:
  %argc_slot1576 = alloca i32
  store i32 %argc1575, i32* %argc_slot1576
  %argv_slot1574 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1573, { i32, [ 0 x i8* ] }** %argv_slot1574
  %mem_ptr1577 = call i32* @oat_malloc ( i32 8 )
  %obj1578 = bitcast i32* %mem_ptr1577 to %A* 
  %new_obj1579 = call %A* @_A_ctor ( %A* %obj1578 )
  %vdecl_slot1580 = alloca %A*
  store %A* %new_obj1579, %A** %vdecl_slot1580
  %lhs_or_call1581 = load %A** %vdecl_slot1580
  %print1583 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %print1582 = load void (%A*)** %print1583
  %cast_op1584 = bitcast %A %lhs_or_call1581 to %A* 
  call void %print1582( %A* %cast_op1584 )
  %lhs_or_call1585 = load %A** @a1314
  %print1587 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %print1586 = load void (%A*)** %print1587
  %cast_op1588 = bitcast %A %lhs_or_call1585 to %A* 
  call void %print1586( %A* %cast_op1588 )
  %lhs_or_call1589 = load %A** @a2316
  %print1591 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %print1590 = load void (%A*)** %print1591
  %cast_op1592 = bitcast %A %lhs_or_call1589 to %A* 
  call void %print1590( %A* %cast_op1592 )
  %lhs_or_call1593 = load %A** @a3318
  %print1595 = getelementptr %_A_vtable* @_A_vtable310, i32 0, i32 2
  %print1594 = load void (%A*)** %print1595
  %cast_op1596 = bitcast %A %lhs_or_call1593 to %A* 
  call void %print1594( %A* %cast_op1596 )
  ret i32 0
}


define void @a3318.init319 (){
__fresh353:
  %mem_ptr1570 = call i32* @oat_malloc ( i32 8 )
  %obj1571 = bitcast i32* %mem_ptr1570 to %A* 
  %new_obj1572 = call %A* @_A_ctor ( %A* %obj1571 )
  store %A* %new_obj1572, %A** @a3318
  ret void
}


define void @a2316.init317 (){
__fresh352:
  %mem_ptr1567 = call i32* @oat_malloc ( i32 8 )
  %obj1568 = bitcast i32* %mem_ptr1567 to %A* 
  %new_obj1569 = call %A* @_A_ctor ( %A* %obj1568 )
  store %A* %new_obj1569, %A** @a2316
  ret void
}


define void @a1314.init315 (){
__fresh351:
  %mem_ptr1564 = call i32* @oat_malloc ( i32 8 )
  %obj1565 = bitcast i32* %mem_ptr1564 to %A* 
  %new_obj1566 = call %A* @_A_ctor ( %A* %obj1565 )
  store %A* %new_obj1566, %A** @a1314
  ret void
}


define void @_A_print (%A* %_this1){
__fresh350:
  call void @print_string( i8* @_const_str313 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh349:
  %mem_ptr1559 = call i32* @oat_malloc ( i32 8 )
  %obj1560 = bitcast i32* %mem_ptr1559 to %Object* 
  %new_obj1561 = call %Object* @_Object_ctor ( %Object* %obj1560 )
  %_this1 = bitcast %Object* %new_obj1561 to %A 
  %_name1562 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str312, i8** %_name1562
  %this_vtable1563 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable310, %_A_vtable** %this_vtable1563
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh348:
  %_name1557 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1558 = load i8** %_name1557
  ret i8* %lhs_or_call1558
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh347:
  %_name1555 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str311, i8** %_name1555
  %this_vtable1556 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable309, %_Object_vtable** %this_vtable1556
  ret %Object* %_this1
}


