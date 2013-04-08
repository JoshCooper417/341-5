%A = type { %_A_vtable*, i8*, i32, i32, %O*, { i32, [ 0 x %A* ] }* }
%_A_vtable = type { %_O_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, i32 (%A*)* }
%O = type { %_O_vtable*, i8* }
%_O_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str6.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str6 = alias bitcast([ 2 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 2 x i8 ] c "O\00", align 4
@_const_str5 = alias bitcast([ 2 x i8 ]* @_const_str5.str. to i8*)@_const_str4.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str4 = alias bitcast([ 7 x i8 ]* @_const_str4.str. to i8*)@_A_vtable3 = private constant %_A_vtable {%_O_vtable* @_O_vtable2, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_init, void (%A*)* @_A_incr, i32 (%A*)* @_A_sum}, align 4
@_O_vtable2 = private constant %_O_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh42:
  ret void
}


define i32 @program (i32 %argc115, { i32, [ 0 x i8* ] }* %argv113){
__fresh41:
  %argc_slot116 = alloca i32
  store i32 %argc115, i32* %argc_slot116
  %argv_slot114 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv113, { i32, [ 0 x i8* ] }** %argv_slot114
  %mem_ptr117 = call i32* @oat_malloc ( i32 24 )
  %obj118 = bitcast i32* %mem_ptr117 to %A* 
  %new_obj119 = call %A* @_A_ctor ( %A* %obj118 )
  %vdecl_slot120 = alloca %A*
  store %A* %new_obj119, %A** %vdecl_slot120
  %lhs_or_call121 = load %A** %vdecl_slot120
  %vtable_ptr122 = getelementptr %A* %lhs_or_call121, i32 0
  %vtable123 = load %_A_vtable** %vtable_ptr122
  %init125 = getelementptr %_A_vtable* %vtable123, i32 0, i32 2
  %init124 = load void (%A*)** %init125
  %cast_op126 = bitcast %A %lhs_or_call121 to %A* 
  call void %init124( %A* %cast_op126 )
  %lhs_or_call127 = load %A** %vdecl_slot120
  %vtable_ptr128 = getelementptr %A* %lhs_or_call127, i32 0
  %vtable129 = load %_A_vtable** %vtable_ptr128
  %sum131 = getelementptr %_A_vtable* %vtable129, i32 0, i32 4
  %sum130 = load i32 (%A*)** %sum131
  %cast_op132 = bitcast %A %lhs_or_call127 to %A* 
  %ret133 = call i32 %sum130 ( %A* %cast_op132 )
  ret i32 %ret133
}


define i32 @_A_sum (%A* %_this1){
__fresh34:
  %vdecl_slot60 = alloca i32
  store i32 0, i32* %vdecl_slot60
  %arr61 = getelementptr %A* %_this1, i32 0, i32 5
  %lhs_or_call62 = load { i32, [ 0 x %A* ] }** %arr61
  %ifnull_slot63 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %lhs_or_call62, { i32, [ 0 x %A* ] }** %ifnull_slot63
  %ifnull_guard64 = icmp ne { i32, [ 0 x %A* ] }* %lhs_or_call62, null
  br i1 %ifnull_guard64, label %__then33, label %__else32

__fresh35:
  br label %__then33

__then33:
  %vdecl_slot65 = alloca i32
  store i32 0, i32* %vdecl_slot65
  br label %__cond27

__cond27:
  %lhs_or_call66 = load i32* %vdecl_slot65
  %lhs_or_call67 = load { i32, [ 0 x %A* ] }** %ifnull_slot63
  %len_ptr68 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call67, i32 0, i32 0
  %len69 = load i32* %len_ptr68
  %bop70 = icmp slt i32 %lhs_or_call66, %len69
  br i1 %bop70, label %__body26, label %__post25

__fresh36:
  br label %__body26

__body26:
  %lhs_or_call71 = load { i32, [ 0 x %A* ] }** %ifnull_slot63
  %lhs_or_call72 = load i32* %vdecl_slot65
  %bound_ptr74 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call71, i32 0, i32 0
  %bound75 = load i32* %bound_ptr74
  call void @oat_array_bounds_check( i32 %bound75, i32 %lhs_or_call72 )
  %elt73 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call71, i32 0, i32 1, i32 %lhs_or_call72
  %lhs_or_call76 = load %A** %elt73
  %vtable_ptr77 = getelementptr %A* %lhs_or_call76, i32 0
  %vtable78 = load %_A_vtable** %vtable_ptr77
  %incr80 = getelementptr %_A_vtable* %vtable78, i32 0, i32 3
  %incr79 = load void (%A*)** %incr80
  %cast_op81 = bitcast %A %lhs_or_call76 to %A* 
  call void %incr79( %A* %cast_op81 )
  %lhs_or_call82 = load i32* %vdecl_slot65
  %bop83 = add i32 %lhs_or_call82, 1
  store i32 %bop83, i32* %vdecl_slot65
  br label %__cond27

__fresh37:
  br label %__post25

__post25:
  %vdecl_slot84 = alloca i32
  store i32 0, i32* %vdecl_slot84
  br label %__cond30

__cond30:
  %lhs_or_call85 = load i32* %vdecl_slot84
  %lhs_or_call86 = load { i32, [ 0 x %A* ] }** %ifnull_slot63
  %len_ptr87 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call86, i32 0, i32 0
  %len88 = load i32* %len_ptr87
  %bop89 = icmp slt i32 %lhs_or_call85, %len88
  br i1 %bop89, label %__body29, label %__post28

__fresh38:
  br label %__body29

__body29:
  %lhs_or_call90 = load i32* %vdecl_slot60
  %lhs_or_call91 = load { i32, [ 0 x %A* ] }** %ifnull_slot63
  %lhs_or_call92 = load i32* %vdecl_slot84
  %bound_ptr94 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call91, i32 0, i32 0
  %bound95 = load i32* %bound_ptr94
  call void @oat_array_bounds_check( i32 %bound95, i32 %lhs_or_call92 )
  %elt93 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call91, i32 0, i32 1, i32 %lhs_or_call92
  %lhs_or_call96 = load %A** %elt93
  %a97 = getelementptr %A* %lhs_or_call96, i32 0, i32 2
  %lhs_or_call98 = load i32* %a97
  %bop99 = add i32 %lhs_or_call90, %lhs_or_call98
  store i32 %bop99, i32* %vdecl_slot60
  %lhs_or_call100 = load i32* %vdecl_slot60
  %lhs_or_call101 = load { i32, [ 0 x %A* ] }** %ifnull_slot63
  %lhs_or_call102 = load i32* %vdecl_slot84
  %bound_ptr104 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call101, i32 0, i32 0
  %bound105 = load i32* %bound_ptr104
  call void @oat_array_bounds_check( i32 %bound105, i32 %lhs_or_call102 )
  %elt103 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call101, i32 0, i32 1, i32 %lhs_or_call102
  %lhs_or_call106 = load %A** %elt103
  %b107 = getelementptr %A* %lhs_or_call106, i32 0, i32 3
  %lhs_or_call108 = load i32* %b107
  %bop109 = add i32 %lhs_or_call100, %lhs_or_call108
  store i32 %bop109, i32* %vdecl_slot60
  %lhs_or_call110 = load i32* %vdecl_slot84
  %bop111 = add i32 %lhs_or_call110, 1
  store i32 %bop111, i32* %vdecl_slot84
  br label %__cond30

__fresh39:
  br label %__post28

__post28:
  br label %__merge31

__fresh40:
  br label %__else32

__else32:
  br label %__merge31

__merge31:
  %lhs_or_call112 = load i32* %vdecl_slot60
  ret i32 %lhs_or_call112
}


define void @_A_incr (%A* %_this1){
__fresh24:
  %a52 = getelementptr %A* %_this1, i32 0, i32 2
  %a53 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call54 = load i32* %a53
  %bop55 = add i32 %lhs_or_call54, 1
  store i32 %bop55, i32* %a52
  %b56 = getelementptr %A* %_this1, i32 0, i32 3
  %b57 = getelementptr %A* %_this1, i32 0, i32 3
  %lhs_or_call58 = load i32* %b57
  %bop59 = add i32 %lhs_or_call58, 1
  store i32 %bop59, i32* %b56
  ret void
}


define void @_A_init (%A* %_this1){
__fresh15:
  %o18 = getelementptr %A* %_this1, i32 0, i32 4
  %mem_ptr19 = call i32* @oat_malloc ( i32 24 )
  %obj20 = bitcast i32* %mem_ptr19 to %A* 
  %new_obj21 = call %A* @_A_ctor ( %A* %obj20 )
  %cast_op22 = bitcast %A* %new_obj21 to %O* 
  store %O* %cast_op22, %O** %o18
  %o23 = getelementptr %A* %_this1, i32 0, i32 4
  %lhs_or_call24 = load %O** %o23
  %ifnull_slot25 = alloca %O*
  store %O* %lhs_or_call24, %O** %ifnull_slot25
  %ifnull_guard26 = icmp ne %O* %lhs_or_call24, null
  br i1 %ifnull_guard26, label %__then11, label %__else10

__fresh16:
  br label %__then11

__then11:
  br label %__bound_check4

__fresh17:
  br label %__bound_check4

__bound_check4:
  %cast_op32 = bitcast %_A_vtable* @_A_vtable3 to i8** 
  %rvtable31 = load i8** %rvtable28
  %compare30 = icmp eq i8* %rvtable31, null
  br i1 %compare30, label %__end_no7, label %__check_curr6

__fresh18:
  br label %__check_curr6

__check_curr6:
  %compare30 = icmp eq i8** %lvtable29, %rvtable31
  br i1 %compare30, label %__end_yes8, label %__move_up5

__fresh19:
  br label %__move_up5

__move_up5:
  %rvtable28 = getelementptr i8* %rvtable31, i32 0
  br label %__bound_check4

__fresh20:
  br label %__end_yes8

__end_yes8:
  br label %__end_no7

__end_no7:
  br label %__merge9

__fresh21:
  br label %__else10

__else10:
  br label %__merge9

__merge9:
  %arr33 = getelementptr %A* %_this1, i32 0, i32 5
  %array_ptr34 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array35 = bitcast { i32, [ 0 x i32 ] }* %array_ptr34 to { i32, [ 0 x %A* ] }* 
  %_tmp636 = alloca i32
  store i32 2, i32* %_tmp636
  %_tmp737 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array35, { i32, [ 0 x %A* ] }** %_tmp737
  %vdecl_slot38 = alloca i32
  store i32 0, i32* %vdecl_slot38
  br label %__cond14

__cond14:
  %lhs_or_call39 = load i32* %vdecl_slot38
  %lhs_or_call40 = load i32* %_tmp636
  %bop41 = icmp slt i32 %lhs_or_call39, %lhs_or_call40
  br i1 %bop41, label %__body13, label %__post12

__fresh22:
  br label %__body13

__body13:
  %lhs_or_call42 = load { i32, [ 0 x %A* ] }** %_tmp737
  %lhs_or_call43 = load i32* %vdecl_slot38
  %bound_ptr45 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call42, i32 0, i32 0
  %bound46 = load i32* %bound_ptr45
  call void @oat_array_bounds_check( i32 %bound46, i32 %lhs_or_call43 )
  %elt44 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call42, i32 0, i32 1, i32 %lhs_or_call43
  %mem_ptr47 = call i32* @oat_malloc ( i32 24 )
  %obj48 = bitcast i32* %mem_ptr47 to %A* 
  %new_obj49 = call %A* @_A_ctor ( %A* %obj48 )
  store %A* %new_obj49, %A** %elt44
  %lhs_or_call50 = load i32* %vdecl_slot38
  %bop51 = add i32 %lhs_or_call50, 1
  store i32 %bop51, i32* %vdecl_slot38
  br label %__cond14

__fresh23:
  br label %__post12

__post12:
  store { i32, [ 0 x %A* ] }* %array35, { i32, [ 0 x %A* ] }** %arr33
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh3:
  %mem_ptr11 = call i32* @oat_malloc ( i32 8 )
  %obj12 = bitcast i32* %mem_ptr11 to %O* 
  %new_obj13 = call %O* @_O_ctor ( %O* %obj12 )
  %_this1 = bitcast %O* %new_obj13 to %A 
  %_name14 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %_name14
  %a15 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %a15
  %b16 = getelementptr %A* %_this1, i32 0, i32 3
  store i32 2, i32* %b16
  %this_vtable17 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable3, %_A_vtable** %this_vtable17
  ret %A* %_this1
}


define %O* @_O_ctor (%O* %_this1){
__fresh2:
  %mem_ptr6 = call i32* @oat_malloc ( i32 8 )
  %obj7 = bitcast i32* %mem_ptr6 to %Object* 
  %new_obj8 = call %Object* @_Object_ctor ( %Object* %obj7 )
  %_this1 = bitcast %Object* %new_obj8 to %O 
  %_name9 = getelementptr %O* %_this1, i32 0, i32 1
  store i8* @_const_str5, i8** %_name9
  %this_vtable10 = getelementptr %O* %_this1, i32 0, i32 0
  store %_O_vtable* @_O_vtable2, %_O_vtable** %this_vtable10
  ret %O* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %_name4 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5 = load i8** %_name4
  ret i8* %lhs_or_call5
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %_name2 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str4, i8** %_name2
  %this_vtable3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %this_vtable3
  ret %Object* %_this1
}


