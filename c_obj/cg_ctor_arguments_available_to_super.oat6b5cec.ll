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
@_const_str338.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str338 = alias bitcast([ 2 x i8 ]* @_const_str338.str. to i8*)@_const_str337.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str337 = alias bitcast([ 2 x i8 ]* @_const_str337.str. to i8*)@_const_str336.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str336 = alias bitcast([ 7 x i8 ]* @_const_str336.str. to i8*)@_B_vtable335 = private constant %_B_vtable {%_A_vtable* @_A_vtable334, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable334 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable333, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable333 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh347:
  ret void
}


define i32 @program (i32 %argc1536, { i32, [ 0 x i8* ] }* %argv1534){
__fresh346:
  %argc_slot1537 = alloca i32
  store i32 %argc1536, i32* %argc_slot1537
  %argv_slot1535 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1534, { i32, [ 0 x i8* ] }** %argv_slot1535
  %mem_ptr1538 = call i32* @oat_malloc ( i32 12 )
  %obj1539 = bitcast i32* %mem_ptr1538 to %B* 
  %new_obj1540 = call %B* @_B_ctor ( %B* %obj1539, i32 1, i32 2 )
  %vdecl_slot1541 = alloca %B*
  store %B* %new_obj1540, %B** %vdecl_slot1541
  %lhs_or_call1542 = load %B** %vdecl_slot1541
  %x1543 = getelementptr %B* %lhs_or_call1542, i32 0, i32 2
  %lhs_or_call1544 = load i32* %x1543
  ret i32 %lhs_or_call1544
}


define %B* @_B_ctor (%B* %_this1, i32 %a1523, i32 %b1521){
__fresh345:
  %a_slot1524 = alloca i32
  store i32 %a1523, i32* %a_slot1524
  %b_slot1522 = alloca i32
  store i32 %b1521, i32* %b_slot1522
  %lhs_or_call1525 = load i32* %a_slot1524
  %bop1526 = mul i32 %lhs_or_call1525, 10
  %lhs_or_call1527 = load i32* %b_slot1522
  %bop1528 = add i32 %bop1526, %lhs_or_call1527
  %mem_ptr1529 = call i32* @oat_malloc ( i32 12 )
  %obj1530 = bitcast i32* %mem_ptr1529 to %A* 
  %new_obj1531 = call %A* @_A_ctor ( %A* %obj1530, i32 %bop1528 )
  %_this1 = bitcast %A* %new_obj1531 to %B 
  %_name1532 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str338, i8** %_name1532
  %this_vtable1533 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable335, %_B_vtable** %this_vtable1533
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x1512){
__fresh344:
  %x_slot1513 = alloca i32
  store i32 %x1512, i32* %x_slot1513
  %mem_ptr1516 = call i32* @oat_malloc ( i32 8 )
  %obj1517 = bitcast i32* %mem_ptr1516 to %Object* 
  %new_obj1518 = call %Object* @_Object_ctor ( %Object* %obj1517 )
  %_this1 = bitcast %Object* %new_obj1518 to %A 
  %_name1519 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str337, i8** %_name1519
  %this_vtable1520 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable334, %_A_vtable** %this_vtable1520
  %x1514 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1515 = load i32* %x_slot1513
  store i32 %lhs_or_call1515, i32* %x1514
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh343:
  %_name1510 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1511 = load i8** %_name1510
  ret i8* %lhs_or_call1511
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh342:
  %_name1508 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str336, i8** %_name1508
  %this_vtable1509 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable333, %_Object_vtable** %this_vtable1509
  ret %Object* %_this1
}


