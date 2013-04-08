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
  %init123 = getelementptr %_A_vtable* @_A_vtable3, i32 0, i32 2
  %init122 = load void (%A*)** %init123
  %cast_op124 = bitcast %A %lhs_or_call121 to %A* 
  call void %init122( %A* %cast_op124 )
  %lhs_or_call125 = load %A** %vdecl_slot120
  %sum127 = getelementptr %_A_vtable* @_A_vtable3, i32 0, i32 4
  %sum126 = load i32 (%A*)** %sum127
  %cast_op128 = bitcast %A %lhs_or_call125 to %A* 
  %ret129 = call i32 %sum126 ( %A* %cast_op128 )
  ret i32 %ret129
}


define i32 @_A_sum (%A* %_this1){
__fresh34:
  %vdecl_slot62 = alloca i32
  store i32 0, i32* %vdecl_slot62
  %arr63 = getelementptr %A* %_this1, i32 0, i32 5
  %lhs_or_call64 = load { i32, [ 0 x %A* ] }** %arr63
  %ifnull_slot65 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %lhs_or_call64, { i32, [ 0 x %A* ] }** %ifnull_slot65
  %ifnull_guard66 = icmp ne { i32, [ 0 x %A* ] }* %lhs_or_call64, null
  br i1 %ifnull_guard66, label %__then33, label %__else32

__fresh35:
  br label %__then33

__then33:
  %vdecl_slot67 = alloca i32
  store i32 0, i32* %vdecl_slot67
  br label %__cond27

__cond27:
  %lhs_or_call68 = load i32* %vdecl_slot67
  %lhs_or_call69 = load { i32, [ 0 x %A* ] }** %ifnull_slot65
  %len_ptr70 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call69, i32 0, i32 0
  %len71 = load i32* %len_ptr70
  %bop72 = icmp slt i32 %lhs_or_call68, %len71
  br i1 %bop72, label %__body26, label %__post25

__fresh36:
  br label %__body26

__body26:
  %lhs_or_call73 = load { i32, [ 0 x %A* ] }** %ifnull_slot65
  %lhs_or_call74 = load i32* %vdecl_slot67
  %bound_ptr76 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call73, i32 0, i32 0
  %bound77 = load i32* %bound_ptr76
  call void @oat_array_bounds_check( i32 %bound77, i32 %lhs_or_call74 )
  %elt75 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call73, i32 0, i32 1, i32 %lhs_or_call74
  %lhs_or_call78 = load %A** %elt75
  %incr80 = getelementptr %_A_vtable* @_A_vtable3, i32 0, i32 3
  %incr79 = load void (%A*)** %incr80
  %cast_op81 = bitcast %A %lhs_or_call78 to %A* 
  call void %incr79( %A* %cast_op81 )
  %lhs_or_call82 = load i32* %vdecl_slot67
  %bop83 = add i32 %lhs_or_call82, 1
  store i32 %bop83, i32* %vdecl_slot67
  br label %__cond27

__fresh37:
  br label %__post25

__post25:
  %vdecl_slot84 = alloca i32
  store i32 0, i32* %vdecl_slot84
  br label %__cond30

__cond30:
  %lhs_or_call85 = load i32* %vdecl_slot84
  %lhs_or_call86 = load { i32, [ 0 x %A* ] }** %ifnull_slot65
  %len_ptr87 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call86, i32 0, i32 0
  %len88 = load i32* %len_ptr87
  %bop89 = icmp slt i32 %lhs_or_call85, %len88
  br i1 %bop89, label %__body29, label %__post28

__fresh38:
  br label %__body29

__body29:
  %lhs_or_call90 = load i32* %vdecl_slot62
  %lhs_or_call91 = load { i32, [ 0 x %A* ] }** %ifnull_slot65
  %lhs_or_call92 = load i32* %vdecl_slot84
  %bound_ptr94 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call91, i32 0, i32 0
  %bound95 = load i32* %bound_ptr94
  call void @oat_array_bounds_check( i32 %bound95, i32 %lhs_or_call92 )
  %elt93 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call91, i32 0, i32 1, i32 %lhs_or_call92
  %lhs_or_call96 = load %A** %elt93
  %a97 = getelementptr %A* %lhs_or_call96, i32 0, i32 2
  %lhs_or_call98 = load i32* %a97
  %bop99 = add i32 %lhs_or_call90, %lhs_or_call98
  store i32 %bop99, i32* %vdecl_slot62
  %lhs_or_call100 = load i32* %vdecl_slot62
  %lhs_or_call101 = load { i32, [ 0 x %A* ] }** %ifnull_slot65
  %lhs_or_call102 = load i32* %vdecl_slot84
  %bound_ptr104 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call101, i32 0, i32 0
  %bound105 = load i32* %bound_ptr104
  call void @oat_array_bounds_check( i32 %bound105, i32 %lhs_or_call102 )
  %elt103 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call101, i32 0, i32 1, i32 %lhs_or_call102
  %lhs_or_call106 = load %A** %elt103
  %b107 = getelementptr %A* %lhs_or_call106, i32 0, i32 3
  %lhs_or_call108 = load i32* %b107
  %bop109 = add i32 %lhs_or_call100, %lhs_or_call108
  store i32 %bop109, i32* %vdecl_slot62
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
  %lhs_or_call112 = load i32* %vdecl_slot62
  ret i32 %lhs_or_call112
}


define void @_A_incr (%A* %_this1){
__fresh24:
  %a54 = getelementptr %A* %_this1, i32 0, i32 2
  %a55 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call56 = load i32* %a55
  %bop57 = add i32 %lhs_or_call56, 1
  store i32 %bop57, i32* %a54
  %b58 = getelementptr %A* %_this1, i32 0, i32 3
  %b59 = getelementptr %A* %_this1, i32 0, i32 3
  %lhs_or_call60 = load i32* %b59
  %bop61 = add i32 %lhs_or_call60, 1
  store i32 %bop61, i32* %b58
  ret void
}


define void @_A_init (%A* %_this1){
__fresh15:
  %o20 = getelementptr %A* %_this1, i32 0, i32 4
  %mem_ptr21 = call i32* @oat_malloc ( i32 24 )
  %obj22 = bitcast i32* %mem_ptr21 to %A* 
  %new_obj23 = call %A* @_A_ctor ( %A* %obj22 )
  %cast_op24 = bitcast %A* %new_obj23 to %O* 
  store %O* %cast_op24, %O** %o20
  %o25 = getelementptr %A* %_this1, i32 0, i32 4
  %lhs_or_call26 = load %O** %o25
  %ifnull_slot27 = alloca %O*
  store %O* %lhs_or_call26, %O** %ifnull_slot27
  %ifnull_guard28 = icmp ne %O* %lhs_or_call26, null
  br i1 %ifnull_guard28, label %__then11, label %__else10

__fresh16:
  br label %__then11

__then11:
  br label %__bound_check4

__fresh17:
  br label %__bound_check4

__bound_check4:
  %cast_op34 = bitcast %_A_vtable* @_A_vtable3 to i8** 
  %rvtable33 = load i8** %rvtable30
  %compare32 = icmp eq i8* %rvtable33, null
  br i1 %compare32, label %__end_no7, label %__check_curr6

__fresh18:
  br label %__check_curr6

__check_curr6:
  %compare32 = icmp eq i8** %lvtable31, %rvtable33
  br i1 %compare32, label %__end_yes8, label %__move_up5

__fresh19:
  br label %__move_up5

__move_up5:
  %rvtable30 = getelementptr i8* %rvtable33, i32 0
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
  %arr35 = getelementptr %A* %_this1, i32 0, i32 5
  %array_ptr36 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array37 = bitcast { i32, [ 0 x i32 ] }* %array_ptr36 to { i32, [ 0 x %A* ] }* 
  %_tmp638 = alloca i32
  store i32 2, i32* %_tmp638
  %_tmp739 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array37, { i32, [ 0 x %A* ] }** %_tmp739
  %vdecl_slot40 = alloca i32
  store i32 0, i32* %vdecl_slot40
  br label %__cond14

__cond14:
  %lhs_or_call41 = load i32* %vdecl_slot40
  %lhs_or_call42 = load i32* %_tmp638
  %bop43 = icmp slt i32 %lhs_or_call41, %lhs_or_call42
  br i1 %bop43, label %__body13, label %__post12

__fresh22:
  br label %__body13

__body13:
  %lhs_or_call44 = load { i32, [ 0 x %A* ] }** %_tmp739
  %lhs_or_call45 = load i32* %vdecl_slot40
  %bound_ptr47 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call44, i32 0, i32 0
  %bound48 = load i32* %bound_ptr47
  call void @oat_array_bounds_check( i32 %bound48, i32 %lhs_or_call45 )
  %elt46 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call44, i32 0, i32 1, i32 %lhs_or_call45
  %mem_ptr49 = call i32* @oat_malloc ( i32 24 )
  %obj50 = bitcast i32* %mem_ptr49 to %A* 
  %new_obj51 = call %A* @_A_ctor ( %A* %obj50 )
  store %A* %new_obj51, %A** %elt46
  %lhs_or_call52 = load i32* %vdecl_slot40
  %bop53 = add i32 %lhs_or_call52, 1
  store i32 %bop53, i32* %vdecl_slot40
  br label %__cond14

__fresh23:
  br label %__post12

__post12:
  store { i32, [ 0 x %A* ] }* %array37, { i32, [ 0 x %A* ] }** %arr35
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh3:
  %cast_op12 = bitcast %A* %_this1 to %O* 
  %mem_ptr13 = call i32* @oat_malloc ( i32 24 )
  %obj14 = bitcast i32* %mem_ptr13 to %A* 
  %new_obj15 = call %O* @_O_ctor ( %A* %obj14, %O* %cast_op12 )
  %_this1 = bitcast %O* %new_obj15 to %A 
  %_name16 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %_name16
  %a17 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %a17
  %b18 = getelementptr %A* %_this1, i32 0, i32 3
  store i32 2, i32* %b18
  %this_vtable19 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable3, %_A_vtable** %this_vtable19
  ret %A* %_this1
}


define %O* @_O_ctor (%O* %_this1){
__fresh2:
  %cast_op6 = bitcast %O* %_this1 to %Object* 
  %mem_ptr7 = call i32* @oat_malloc ( i32 8 )
  %obj8 = bitcast i32* %mem_ptr7 to %O* 
  %new_obj9 = call %Object* @_Object_ctor ( %O* %obj8, %Object* %cast_op6 )
  %_this1 = bitcast %Object* %new_obj9 to %O 
  %_name10 = getelementptr %O* %_this1, i32 0, i32 1
  store i8* @_const_str5, i8** %_name10
  %this_vtable11 = getelementptr %O* %_this1, i32 0, i32 0
  store %_O_vtable* @_O_vtable2, %_O_vtable** %this_vtable11
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


