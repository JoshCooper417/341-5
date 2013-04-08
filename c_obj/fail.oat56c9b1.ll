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
@_const_str251.str. = private unnamed_addr constant [ 12 x i8 ] c "X is three!\00", align 4
@_const_str251 = alias bitcast([ 12 x i8 ]* @_const_str251.str. to i8*)@x250 = global i32 3, align 4
@_const_str249.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str249 = alias bitcast([ 7 x i8 ]* @_const_str249.str. to i8*)@_Object_vtable248 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh251:
  ret void
}


define i32 @program (i32 %argc1085, { i32, [ 0 x i8* ] }* %argv1083){
__fresh248:
  %argc_slot1086 = alloca i32
  store i32 %argc1085, i32* %argc_slot1086
  %argv_slot1084 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1083, { i32, [ 0 x i8* ] }** %argv_slot1084
  %lhs_or_call1087 = load i32* @x250
  %bop1088 = icmp eq i32 %lhs_or_call1087, 3
  br i1 %bop1088, label %__then247, label %__else246

__fresh249:
  br label %__then247

__then247:
  call void @print_string( i8* @_const_str251 )
  call void @oat_abort( i32 -1 )
  br label %__merge245

__fresh250:
  br label %__else246

__else246:
  store i32 4, i32* @x250
  br label %__merge245

__merge245:
  %lhs_or_call1089 = load i32* @x250
  ret i32 %lhs_or_call1089
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh244:
  %_name1081 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1082 = load i8** %_name1081
  ret i8* %lhs_or_call1082
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh243:
  %_name1079 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str249, i8** %_name1079
  %this_vtable1080 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable248, %_Object_vtable** %this_vtable1080
  ret %Object* %_this1
}


