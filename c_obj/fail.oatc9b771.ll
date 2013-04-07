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
@_const_str133.str. = private unnamed_addr constant [ 12 x i8 ] c "X is three!\00", align 4
@_const_str133 = alias bitcast([ 12 x i8 ]* @_const_str133.str. to i8*)@x132 = global i32 3, align 4
@_Object_vtable131 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh208:
  ret void
}


define i32 @program (i32 %argc975, { i32, [ 0 x i8* ] }* %argv973){
__fresh205:
  %argc_slot976 = alloca i32
  store i32 %argc975, i32* %argc_slot976
  %argv_slot974 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv973, { i32, [ 0 x i8* ] }** %argv_slot974
  %lhs_or_call977 = load i32* @x132
  %bop978 = icmp eq i32 %lhs_or_call977, 3
  br i1 %bop978, label %__then204, label %__else203

__fresh206:
  br label %__then204

__then204:
  call void @print_string( i8* @_const_str133 )
  call void @oat_abort( i32 -1 )
  br label %__merge202

__fresh207:
  br label %__else203

__else203:
  store i32 4, i32* @x132
  br label %__merge202

__merge202:
  %lhs_or_call979 = load i32* @x132
  ret i32 %lhs_or_call979
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh201:
  %_name970 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call971 = load i8* %_name970
  %cast_op972 = bitcast i8 %lhs_or_call971 to i8* 
  ret i8* %cast_op972
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh200:
  ret %Object* %_this1
}


