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
@_const_str571.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str571 = alias bitcast([ 6 x i8 ]* @_const_str571.str. to i8*)@_const_str570.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str570 = alias bitcast([ 7 x i8 ]* @_const_str570.str. to i8*)@_Object_vtable569 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh782:
  ret void
}


define i32 @program (i32 %argc3193, { i32, [ 0 x i8* ] }* %argv3191){
__fresh777:
  %argc_slot3194 = alloca i32
  store i32 %argc3193, i32* %argc_slot3194
  %argv_slot3192 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3191, { i32, [ 0 x i8* ] }** %argv_slot3192
  %vdecl_slot3195 = alloca i8*
  store i8* null, i8** %vdecl_slot3195
  %vdecl_slot3196 = alloca i8*
  store i8* @_const_str571, i8** %vdecl_slot3196
  %vdecl_slot3197 = alloca i8*
  store i8* null, i8** %vdecl_slot3197
  %vdecl_slot3198 = alloca i32
  store i32 0, i32* %vdecl_slot3198
  %lhs_or_call3199 = load i8** %vdecl_slot3195
  %ifnull_slot3200 = alloca i8*
  store i8* %lhs_or_call3199, i8** %ifnull_slot3200
  %ifnull_guard3201 = icmp ne i8* %lhs_or_call3199, null
  br i1 %ifnull_guard3201, label %__then773, label %__else772

__fresh778:
  br label %__then773

__then773:
  %lhs_or_call3202 = load i8** %ifnull_slot3200
  call void @print_string( i8* %lhs_or_call3202 )
  %lhs_or_call3203 = load i32* %vdecl_slot3198
  %bop3204 = add i32 %lhs_or_call3203, 2
  store i32 %bop3204, i32* %vdecl_slot3198
  %lhs_or_call3205 = load i8** %vdecl_slot3195
  store i8* %lhs_or_call3205, i8** %vdecl_slot3197
  br label %__merge771

__fresh779:
  br label %__else772

__else772:
  br label %__merge771

__merge771:
  %lhs_or_call3206 = load i8** %vdecl_slot3196
  %ifnull_slot3207 = alloca i8*
  store i8* %lhs_or_call3206, i8** %ifnull_slot3207
  %ifnull_guard3208 = icmp ne i8* %lhs_or_call3206, null
  br i1 %ifnull_guard3208, label %__then776, label %__else775

__fresh780:
  br label %__then776

__then776:
  %lhs_or_call3209 = load i8** %ifnull_slot3207
  call void @print_string( i8* %lhs_or_call3209 )
  %lhs_or_call3210 = load i32* %vdecl_slot3198
  %bop3211 = add i32 %lhs_or_call3210, 40
  store i32 %bop3211, i32* %vdecl_slot3198
  %lhs_or_call3212 = load i8** %vdecl_slot3195
  store i8* %lhs_or_call3212, i8** %vdecl_slot3197
  br label %__merge774

__fresh781:
  br label %__else775

__else775:
  br label %__merge774

__merge774:
  %lhs_or_call3213 = load i32* %vdecl_slot3198
  ret i32 %lhs_or_call3213
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh770:
  %_name3189 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3190 = load i8** %_name3189
  ret i8* %lhs_or_call3190
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh769:
  %_name3187 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str570, i8** %_name3187
  %this_vtable3188 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable569, %_Object_vtable** %this_vtable3188
  ret %Object* %_this1
}


