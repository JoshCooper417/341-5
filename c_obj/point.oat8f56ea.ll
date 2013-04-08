%Point = type { %_Point_vtable*, i8*, i32, i32 }
%_Point_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Point* (%Point*, i32, i32)* }
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
@_Point_vtable290 = private constant %_Point_vtable {%_Object_vtable* @_Object_vtable289, i8* (%Object*)* @_Object_get_name, %Point* (%Point*, i32, i32)* @_Point_move}, align 4
@_Object_vtable289 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh563:
  ret void
}


define i32 @program (i32 %argc3201, { i32, [ 0 x i8* ] }* %argv3199){
__fresh562:
  %argc_slot3202 = alloca i32
  store i32 %argc3201, i32* %argc_slot3202
  %argv_slot3200 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3199, { i32, [ 0 x i8* ] }** %argv_slot3200
  %mem_ptr3203 = call i32* @oat_malloc ( i32 16 )
  %obj3204 = bitcast i32* %mem_ptr3203 to %Point* 
  %new_obj3205 = call %Point* @_Point_ctor ( %Point* %obj3204 )
  %vdecl_slot3206 = alloca %Point*
  store %Point* %new_obj3205, %Point** %vdecl_slot3206
  %lhs_or_call3207 = load %Point** %vdecl_slot3206
  %move3209 = getelementptr %_Point_vtable* @_Point_vtable290, i32 0, i32 2
  %move3208 = load %Point* (%Point*, i32, i32)** %move3209
  %cast_op3210 = bitcast %Point %lhs_or_call3207 to %Point* 
  %ret3211 = call %Point* %move3208 ( %Point* %cast_op3210, i32 3, i32 4 )
  %vdecl_slot3212 = alloca %Point*
  store %Point* %ret3211, %Point** %vdecl_slot3212
  %lhs_or_call3213 = load %Point** %vdecl_slot3212
  %x3214 = getelementptr %Point* %lhs_or_call3213, i32 0, i32 2
  %lhs_or_call3215 = load i32* %x3214
  ret i32 %lhs_or_call3215
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx3187, i32 %dy3185){
__fresh561:
  %dx_slot3188 = alloca i32
  store i32 %dx3187, i32* %dx_slot3188
  %dy_slot3186 = alloca i32
  store i32 %dy3185, i32* %dy_slot3186
  %x3189 = getelementptr %Point* %_this1, i32 0, i32 2
  %x3190 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call3191 = load i32* %x3190
  %lhs_or_call3192 = load i32* %dx_slot3188
  %bop3193 = add i32 %lhs_or_call3191, %lhs_or_call3192
  store i32 %bop3193, i32* %x3189
  %y3194 = getelementptr %Point* %_this1, i32 0, i32 3
  %y3195 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call3196 = load i32* %y3195
  %lhs_or_call3197 = load i32* %dy_slot3186
  %bop3198 = add i32 %lhs_or_call3196, %lhs_or_call3197
  store i32 %bop3198, i32* %y3194
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh560:
  %lhs_or_call3176 = load %Point* %_this1
  %cast_op3177 = bitcast %Point %lhs_or_call3176 to %Object* 
  %mem_ptr3178 = call i32* @oat_malloc ( i32 8 )
  %obj3179 = bitcast i32* %mem_ptr3178 to %Object* 
  %new_obj3180 = call %Object* @_Object_ctor ( %Object* %obj3179, %Object* %cast_op3177 )
  %_name3181 = getelementptr %Point* %_this1, i32 0, i32 1
  %lhs_or_call3182 = load %Point* %_this1
  %cast_op3183 = bitcast %Point %lhs_or_call3182 to i8* 
  store i8* %cast_op3183, i8** %_name3181
  %this_vtable3184 = getelementptr %Point* %_this1, i32 0, i32 0
  store %Point* %_this1, %_Point_vtable* %this_vtable3184
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh559:
  %_name3174 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3175 = load i8** %_name3174
  ret i8* %lhs_or_call3175
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh558:
  %_name3170 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3171 = load %Object* %_this1
  %cast_op3172 = bitcast %Object %lhs_or_call3171 to i8* 
  store i8* %cast_op3172, i8** %_name3170
  %this_vtable3173 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable3173
  ret %Object* %_this1
}


