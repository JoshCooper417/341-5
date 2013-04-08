%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_A_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i32 }
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
@_C_vtable146 = private constant %_C_vtable {%_A_vtable* @_A_vtable144, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable145 = private constant %_B_vtable {%_A_vtable* @_A_vtable144, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable144 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable143, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable143 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh312:
  ret void
}


define i32 @program (i32 %argc1566, { i32, [ 0 x i8* ] }* %argv1564){
__fresh309:
  %argc_slot1567 = alloca i32
  store i32 %argc1566, i32* %argc_slot1567
  %argv_slot1565 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1564, { i32, [ 0 x i8* ] }** %argv_slot1565
  %array_ptr1568 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1569 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1568 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1570 = call i32* @oat_malloc ( i32 12 )
  %obj1571 = bitcast i32* %mem_ptr1570 to %A* 
  %new_obj1572 = call %A* @_A_ctor ( %A* %obj1571 )
  %index_ptr1573 = getelementptr { i32, [ 0 x %A* ] }* %array1569, i32 0, i32 1, i32 0
  store %A* %new_obj1572, %A** %index_ptr1573
  %mem_ptr1574 = call i32* @oat_malloc ( i32 12 )
  %obj1575 = bitcast i32* %mem_ptr1574 to %B* 
  %new_obj1576 = call %B* @_B_ctor ( %B* %obj1575 )
  %cast_op1577 = bitcast %B* %new_obj1576 to %A* 
  %index_ptr1578 = getelementptr { i32, [ 0 x %A* ] }* %array1569, i32 0, i32 1, i32 1
  store %A* %cast_op1577, %A** %index_ptr1578
  %mem_ptr1579 = call i32* @oat_malloc ( i32 12 )
  %obj1580 = bitcast i32* %mem_ptr1579 to %C* 
  %new_obj1581 = call %C* @_C_ctor ( %C* %obj1580 )
  %cast_op1582 = bitcast %C* %new_obj1581 to %A* 
  %index_ptr1583 = getelementptr { i32, [ 0 x %A* ] }* %array1569, i32 0, i32 1, i32 2
  store %A* %cast_op1582, %A** %index_ptr1583
  %vdecl_slot1584 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1569, { i32, [ 0 x %A* ] }** %vdecl_slot1584
  %vdecl_slot1585 = alloca i32
  store i32 0, i32* %vdecl_slot1585
  br label %__cond308

__cond308:
  %lhs_or_call1586 = load i32* %vdecl_slot1585
  %lhs_or_call1587 = load { i32, [ 0 x %A* ] }** %vdecl_slot1584
  %len_ptr1588 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1587, i32 0, i32 0
  %len1589 = load i32* %len_ptr1588
  %bop1590 = icmp slt i32 %lhs_or_call1586, %len1589
  br i1 %bop1590, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %lhs_or_call1591 = load { i32, [ 0 x %A* ] }** %vdecl_slot1584
  %lhs_or_call1592 = load i32* %vdecl_slot1585
  %bound_ptr1594 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1591, i32 0, i32 0
  %bound1595 = load i32* %bound_ptr1594
  call void @oat_array_bounds_check( i32 %bound1595, i32 %lhs_or_call1592 )
  %elt1593 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1591, i32 0, i32 1, i32 %lhs_or_call1592
  %lhs_or_call1596 = load %A** %elt1593
  %i1597 = getelementptr %A* %lhs_or_call1596, i32 0, i32 2
  %lhs_or_call1598 = load i32* %i1597
  call void @print_int( i32 %lhs_or_call1598 )
  %lhs_or_call1599 = load i32* %vdecl_slot1585
  %bop1600 = add i32 %lhs_or_call1599, 1
  store i32 %bop1600, i32* %vdecl_slot1585
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh305:
  %lhs_or_call1555 = load %C* %_this1
  %cast_op1556 = bitcast %C %lhs_or_call1555 to %A* 
  %mem_ptr1557 = call i32* @oat_malloc ( i32 12 )
  %obj1558 = bitcast i32* %mem_ptr1557 to %A* 
  %new_obj1559 = call %A* @_A_ctor ( %A* %obj1558, %A* %cast_op1556 )
  %_name1560 = getelementptr %C* %_this1, i32 0, i32 1
  %lhs_or_call1561 = load %C* %_this1
  %cast_op1562 = bitcast %C %lhs_or_call1561 to i8* 
  store i8* %cast_op1562, i8** %_name1560
  %this_vtable1563 = getelementptr %C* %_this1, i32 0, i32 0
  store %C* %_this1, %_C_vtable* %this_vtable1563
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh304:
  %lhs_or_call1546 = load %B* %_this1
  %cast_op1547 = bitcast %B %lhs_or_call1546 to %A* 
  %mem_ptr1548 = call i32* @oat_malloc ( i32 12 )
  %obj1549 = bitcast i32* %mem_ptr1548 to %A* 
  %new_obj1550 = call %A* @_A_ctor ( %A* %obj1549, %A* %cast_op1547 )
  %_name1551 = getelementptr %B* %_this1, i32 0, i32 1
  %lhs_or_call1552 = load %B* %_this1
  %cast_op1553 = bitcast %B %lhs_or_call1552 to i8* 
  store i8* %cast_op1553, i8** %_name1551
  %this_vtable1554 = getelementptr %B* %_this1, i32 0, i32 0
  store %B* %_this1, %_B_vtable* %this_vtable1554
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh303:
  %lhs_or_call1537 = load %A* %_this1
  %cast_op1538 = bitcast %A %lhs_or_call1537 to %Object* 
  %mem_ptr1539 = call i32* @oat_malloc ( i32 8 )
  %obj1540 = bitcast i32* %mem_ptr1539 to %Object* 
  %new_obj1541 = call %Object* @_Object_ctor ( %Object* %obj1540, %Object* %cast_op1538 )
  %_name1542 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call1543 = load %A* %_this1
  %cast_op1544 = bitcast %A %lhs_or_call1543 to i8* 
  store i8* %cast_op1544, i8** %_name1542
  %this_vtable1545 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable1545
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh302:
  %_name1535 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1536 = load i8** %_name1535
  ret i8* %lhs_or_call1536
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh301:
  %_name1531 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1532 = load %Object* %_this1
  %cast_op1533 = bitcast %Object %lhs_or_call1532 to i8* 
  store i8* %cast_op1533, i8** %_name1531
  %this_vtable1534 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable1534
  ret %Object* %_this1
}


