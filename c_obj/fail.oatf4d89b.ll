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
@_const_str243.str. = private unnamed_addr constant [ 12 x i8 ] c "X is three!\00", align 4
@_const_str243 = alias bitcast([ 12 x i8 ]* @_const_str243.str. to i8*)@x242 = global i32 3, align 4
@_const_str241.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str241 = alias bitcast([ 7 x i8 ]* @_const_str241.str. to i8*)@_Object_vtable240 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh290:
  ret void
}


define i32 @program (i32 %argc1176, { i32, [ 0 x i8* ] }* %argv1174){
__fresh287:
  %argc_slot1177 = alloca i32
  store i32 %argc1176, i32* %argc_slot1177
  %argv_slot1175 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1174, { i32, [ 0 x i8* ] }** %argv_slot1175
  %lhs_or_call1178 = load i32* @x242
  %bop1179 = icmp eq i32 %lhs_or_call1178, 3
  br i1 %bop1179, label %__then286, label %__else285

__fresh288:
  br label %__then286

__then286:
  call void @print_string( i8* @_const_str243 )
  call void @oat_abort( i32 -1 )
  br label %__merge284

__fresh289:
  br label %__else285

__else285:
  store i32 4, i32* @x242
  br label %__merge284

__merge284:
  %lhs_or_call1180 = load i32* @x242
  ret i32 %lhs_or_call1180
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh283:
  %_name1172 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1173 = load i8** %_name1172
  ret i8* %lhs_or_call1173
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh282:
  %_name1170 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str241, i8** %_name1170
  %this_vtable1171 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable240, %_Object_vtable** %this_vtable1171
  ret %Object* %_this1
}


