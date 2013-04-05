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
@_const_str117.str. = private unnamed_addr constant [ 12 x i8 ] c "X is three!\00", align 4
@_const_str117 = alias bitcast([ 12 x i8 ]* @_const_str117.str. to i8*)@x116 = global i32 3, align 4
@_Object_vtable115 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh106:
  ret void
}


define i32 @program (i32 %argc214, { i32, [ 0 x i8* ] }* %argv212){
__fresh103:
  %argc_slot215 = alloca i32
  store i32 %argc214, i32* %argc_slot215
  %argv_slot213 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv212, { i32, [ 0 x i8* ] }** %argv_slot213
  %lhs_or_call216 = load i32* @x116
  %bop217 = icmp eq i32 %lhs_or_call216, 3
  br i1 %bop217, label %__then102, label %__else101

__fresh104:
  br label %__then102

__then102:
  call void @print_string( i8* @_const_str117 )
  call void @oat_abort( i32 -1 )
  br label %__merge100

__fresh105:
  br label %__else101

__else101:
  store i32 4, i32* @x116
  br label %__merge100

__merge100:
  %lhs_or_call218 = load i32* @x116
  ret i32 %lhs_or_call218
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh99:
  %_name209 = getelementptr %Object* %_this1, i32 1
  %lhs_or_call210 = load i8* %_name209
  %cast_op211 = bitcast i8 %lhs_or_call210 to i8* 
  ret i8* %cast_op211
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh98:
  ret %Object* %_this1
}


