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
@_const_str255.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str255 = alias bitcast([ 6 x i8 ]* @_const_str255.str. to i8*)@_Object_vtable254 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh203:
  ret void
}


define i32 @program (i32 %argc607, { i32, [ 0 x i8* ] }* %argv605){
__fresh198:
  %argc_slot608 = alloca i32
  store i32 %argc607, i32* %argc_slot608
  %argv_slot606 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv605, { i32, [ 0 x i8* ] }** %argv_slot606
  %vdecl_slot609 = alloca i8*
  store i8* null, i8** %vdecl_slot609
  %vdecl_slot610 = alloca i8*
  store i8* @_const_str255, i8** %vdecl_slot610
  %vdecl_slot611 = alloca i8*
  store i8* null, i8** %vdecl_slot611
  %vdecl_slot612 = alloca i32
  store i32 0, i32* %vdecl_slot612
  %lhs_or_call613 = load i8** %vdecl_slot609
  %ifnull_slot614 = alloca i8*
  store i8* %lhs_or_call613, i8** %ifnull_slot614
  %ifnull_guard615 = icmp ne i8* %lhs_or_call613, null
  br i1 %ifnull_guard615, label %__then194, label %__else193

__fresh199:
  br label %__then194

__then194:
  %lhs_or_call616 = load i8** %ifnull_slot614
  call void @print_string( i8* %lhs_or_call616 )
  %lhs_or_call617 = load i32* %vdecl_slot612
  %bop618 = add i32 %lhs_or_call617, 2
  store i32 %bop618, i32* %vdecl_slot612
  %lhs_or_call619 = load i8** %vdecl_slot609
  store i8* %lhs_or_call619, i8** %vdecl_slot611
  br label %__merge192

__fresh200:
  br label %__else193

__else193:
  br label %__merge192

__merge192:
  %lhs_or_call620 = load i8** %vdecl_slot610
  %ifnull_slot621 = alloca i8*
  store i8* %lhs_or_call620, i8** %ifnull_slot621
  %ifnull_guard622 = icmp ne i8* %lhs_or_call620, null
  br i1 %ifnull_guard622, label %__then197, label %__else196

__fresh201:
  br label %__then197

__then197:
  %lhs_or_call623 = load i8** %ifnull_slot621
  call void @print_string( i8* %lhs_or_call623 )
  %lhs_or_call624 = load i32* %vdecl_slot612
  %bop625 = add i32 %lhs_or_call624, 40
  store i32 %bop625, i32* %vdecl_slot612
  %lhs_or_call626 = load i8** %vdecl_slot609
  store i8* %lhs_or_call626, i8** %vdecl_slot611
  br label %__merge195

__fresh202:
  br label %__else196

__else196:
  br label %__merge195

__merge195:
  %lhs_or_call627 = load i32* %vdecl_slot612
  ret i32 %lhs_or_call627
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh191:
  %_name602 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call603 = load i8* %_name602
  %cast_op604 = bitcast i8 %lhs_or_call603 to i8* 
  ret i8* %cast_op604
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh190:
  ret %Object* %_this1
}


